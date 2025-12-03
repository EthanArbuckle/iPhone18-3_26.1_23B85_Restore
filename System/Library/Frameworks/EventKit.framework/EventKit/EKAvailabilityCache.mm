@interface EKAvailabilityCache
+ (BOOL)_isValidStartDate:(id)date endDate:(id)endDate;
+ (id)_generateEventKitSpansFromPersistenceSpans:(id)spans;
+ (int64_t)_convertType:(int64_t)type;
+ (void)_logRequestElapsedTime:(double)time forNumberOfAddresses:(unint64_t)addresses;
- (BOOL)_validateRequestStartDate:(id)date endDate:(id)endDate addresses:(id)addresses error:(id *)error;
- (EKAvailabilityCache)initWithSource:(id)source;
- (id)_cachedSpanResultsBetweenStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses;
- (id)_dictionaryForIgnoredEventID:(id)d;
- (id)cachedAvailabilityInDateRange:(id)range ignoredEventID:(id)d addresses:(id)addresses;
- (id)description;
- (id)requestAvailabilityBetweenStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock;
- (void)_handleResults:(id)results resultsBlock:(id)block ignoredEventID:(id)d;
- (void)cachedAvailabilityInDateRange:(id)range ignoredEventID:(id)d addresses:(id)addresses results:(id)results;
- (void)cancelAvailabilityRequestWithID:(id)d;
@end

@implementation EKAvailabilityCache

- (EKAvailabilityCache)initWithSource:(id)source
{
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = EKAvailabilityCache;
  v5 = [(EKAvailabilityCache *)&v25 init];
  if (v5)
  {
    if (sourceCopy)
    {
      constraintSupportsAvailabilityRequests = [sourceCopy constraintSupportsAvailabilityRequests];
    }

    else
    {
      constraintSupportsAvailabilityRequests = 0;
    }

    externalID = [sourceCopy externalID];
    if (!externalID)
    {
      v5->_sourceIsInvalid = 1;
      if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_ERROR))
      {
        [EKAvailabilityCache initWithSource:];
      }
    }

    objc_storeStrong(&v5->_accountID, externalID);
    v5->_sourceSupportsAvailabilityRequests = constraintSupportsAvailabilityRequests;
    v5->_nextRequestID = 0;
    v5->_cancelledID = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    addressesToCachedSpanRanges = v5->_addressesToCachedSpanRanges;
    v5->_addressesToCachedSpanRanges = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ignoredEventIDsToAddressBasedCaches = v5->_ignoredEventIDsToAddressBasedCaches;
    v5->_ignoredEventIDsToAddressBasedCaches = v10;

    sourceIdentifier = [sourceCopy sourceIdentifier];
    title = [sourceCopy title];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-processing", title, sourceIdentifier];
    objc_opt_class();
    v15 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v15 UTF8String];

    v17 = dispatch_queue_create(uTF8String, 0);
    processingQueue = v5->_processingQueue;
    v5->_processingQueue = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-callback", title, sourceIdentifier];
    objc_opt_class();
    v20 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v20 UTF8String];

    v22 = dispatch_queue_create(uTF8String2, 0);
    callbackQueue = v5->_callbackQueue;
    v5->_callbackQueue = v22;

    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKAvailabilityCache initWithSource:];
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v8.receiver = self;
  v8.super_class = EKAvailabilityCache;
  v4 = [(EKAvailabilityCache *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"accountID" withString:self->_accountID];
  [v5 setKey:@"sourceIsInvalid" withBoolean:self->_sourceIsInvalid];
  [v5 setKey:@"sourceSupportsAvailabilityRequests" withBoolean:self->_sourceSupportsAvailabilityRequests];
  [v5 setKey:@"addressesToCachedSpanRanges" withDictionary:self->_addressesToCachedSpanRanges];
  [v5 setKey:@"ignoredEventIDsToAddressBasedCaches" withDictionary:self->_ignoredEventIDsToAddressBasedCaches];
  build = [v5 build];

  return build;
}

- (id)_cachedSpanResultsBetweenStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses
{
  v50 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  addressesCopy = addresses;
  dispatch_assert_queue_V2(self->_processingQueue);
  v33 = dCopy;
  v13 = [(EKAvailabilityCache *)self _dictionaryForIgnoredEventID:dCopy];
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = addressesCopy;
  v14 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v40;
    *&v15 = 138412546;
    v32 = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        v20 = EKAvailabilityHandle;
        if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v19;
          _os_log_debug_impl(&dword_1A805E000, v20, OS_LOG_TYPE_DEBUG, "Gathering cached availability for address: [%@]", buf, 0xCu);
        }

        v21 = [v13 objectForKey:{v19, v32}];
        if (v21)
        {
          v22 = v21;
LABEL_11:
          v24 = [v22 gatherFreshlyCachedSpansBetweenStartDate:dateCopy endDate:endDateCopy];
          v25 = v24;
          if (v24 && [v24 count])
          {
            v26 = EKAvailabilityHandle;
            if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
            {
              [EKAvailabilityCache _cachedSpanResultsBetweenStartDate:v38 endDate:v26 ignoredEventID:? addresses:?];
            }

            CalAnalyticsSendEvent();
            [v34 setObject:v25 forKey:v19];
          }

          else
          {
            v27 = EKAvailabilityHandle;
            if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v44 = v19;
              v45 = 2112;
              v46 = dateCopy;
              v47 = 2112;
              v48 = endDateCopy;
              _os_log_debug_impl(&dword_1A805E000, v27, OS_LOG_TYPE_DEBUG, "Found stale cached spans for address [%@] in range with start date [%@] and end date: [%@].  Will send out remote fetch for availability.", buf, 0x20u);
            }

            CalAnalyticsSendEvent();
          }

          goto LABEL_20;
        }

        v23 = EKUtils_AdjustedAttendeeAddress(v19);
        v22 = [v13 objectForKey:v23];

        if (v22)
        {
          goto LABEL_11;
        }

        v28 = EKAvailabilityHandle;
        if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v32;
          v44 = v19;
          v45 = 2112;
          v46 = v33;
          _os_log_debug_impl(&dword_1A805E000, v28, OS_LOG_TYPE_DEBUG, "No cached spans found for address: [%@].  Ignored event ID: [%@].  Will send out remote fetch for availability.", buf, 0x16u);
        }

LABEL_20:
        ++v18;
      }

      while (v16 != v18);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      v16 = v29;
    }

    while (v29);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BOOL)_validateRequestStartDate:(id)date endDate:(id)endDate addresses:(id)addresses error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  addressesCopy = addresses;
  if (self->_sourceIsInvalid)
  {
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_ERROR))
    {
      [EKAvailabilityCache _validateRequestStartDate:endDate:addresses:error:];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = 0;
LABEL_17:
    v15 = [v13 errorWithDomain:@"EKAvailabilityCacheError" code:v14 userInfo:0];
    goto LABEL_18;
  }

  if (!self->_sourceSupportsAvailabilityRequests)
  {
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKAvailabilityCache _validateRequestStartDate:? endDate:? addresses:? error:?];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = 1;
    goto LABEL_17;
  }

  if (([objc_opt_class() _isValidStartDate:dateCopy endDate:endDateCopy] & 1) == 0)
  {
    v17 = EKAvailabilityHandle;
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_ERROR))
    {
      [EKAvailabilityCache _validateRequestStartDate:v17 endDate:? addresses:? error:?];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = 2;
    goto LABEL_17;
  }

  if (addressesCopy && [addressesCopy count])
  {
    v15 = 0;
    v16 = 1;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKAvailabilityCache _validateRequestStartDate:endDate:addresses:error:];
  }

  v15 = 0;
LABEL_18:
  v16 = 0;
  if (error)
  {
LABEL_19:
    v15 = v15;
    *error = v15;
  }

LABEL_20:

  return v16;
}

- (id)requestAvailabilityBetweenStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v49 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  addressesCopy = addresses;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v20 = EKAvailabilityHandle;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    *&buf[22] = 2112;
    v47 = dCopy;
    LOWORD(v48) = 2112;
    *(&v48 + 2) = addressesCopy;
    _os_log_debug_impl(&dword_1A805E000, v20, OS_LOG_TYPE_DEBUG, "A client requested availability between start date [%@] and end date [%@].  Ignored event ID: [%@].  Addresses: [%@]", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  *&v48 = __Block_byref_object_dispose_;
  *(&v48 + 1) = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v41 = 0;
  v21 = [(EKAvailabilityCache *)self _validateRequestStartDate:dateCopy endDate:endDateCopy addresses:addressesCopy error:&v41];
  v22 = v41;
  if (v21)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_1E77FD220;
    block[4] = self;
    v33 = dateCopy;
    v34 = endDateCopy;
    v35 = dCopy;
    v36 = addressesCopy;
    v37 = blockCopy;
    v39 = &v42;
    v40 = buf;
    v38 = completionBlockCopy;
    dispatch_sync(processingQueue, block);

    v24 = *(v43 + 24);
    if (!completionBlockCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 1;
    *(v43 + 24) = 1;
    if (!completionBlockCopy)
    {
      goto LABEL_9;
    }
  }

  if (v24)
  {
    callbackQueue = self->_callbackQueue;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_3;
    v29[3] = &unk_1E77FD108;
    v31 = completionBlockCopy;
    v30 = v22;
    dispatch_async(callbackQueue, v29);
  }

LABEL_9:
  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cachedSpanResultsBetweenStartDate:*(a1 + 40) endDate:*(a1 + 48) ignoredEventID:*(a1 + 56) addresses:*(a1 + 64)];
  v3 = [v2 count];
  if (v3)
  {
    v4 = v3;
    v5 = EKAvailabilityHandle;
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v5;
      v29 = [v2 allKeys];
      v30 = *(a1 + 56);
      *buf = 134218498;
      v56 = v4;
      v57 = 2112;
      v58 = v29;
      v59 = 2112;
      v60 = v30;
      _os_log_debug_impl(&dword_1A805E000, v28, OS_LOG_TYPE_DEBUG, "[%lu] local cached spans were found for addresses: [%@].  Ignored event ID: [%@].  Sending these results immediately to the requesting client.", buf, 0x20u);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_36;
      block[3] = &unk_1E77FD108;
      v54 = v6;
      v53 = v2;
      dispatch_async(v7, block);
    }
  }

  v8 = *(a1 + 64);
  v9 = MEMORY[0x1E696AE18];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2;
  v50[3] = &unk_1E77FD130;
  v10 = v2;
  v51 = v10;
  v11 = [v9 predicateWithBlock:v50];
  v12 = [v8 filteredArrayUsingPredicate:v11];

  v13 = [v12 count];
  if (v13)
  {
    v14 = v13;
    v15 = EKAvailabilityHandle;
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v33 = *(a1 + 40);
      v34 = *(*(a1 + 32) + 16);
      *buf = 138413314;
      v56 = v12;
      v57 = 2112;
      v58 = v33;
      v59 = 2112;
      v60 = v31;
      v61 = 2112;
      v62 = v32;
      v63 = 2112;
      v64 = v34;
      _os_log_debug_impl(&dword_1A805E000, v15, OS_LOG_TYPE_DEBUG, "Sending network request for addresses: [%@].  Start date: [%@].  End date: [%@]  Ignored event ID: [%@].  Account ID: [%@]", buf, 0x34u);
    }

    v16 = objc_alloc_init(MEMORY[0x1E6993060]);
    [v16 start];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_41;
    aBlock[3] = &unk_1E77FD180;
    v49 = *(a1 + 96);
    v17 = v16;
    v18 = *(a1 + 32);
    v45 = v17;
    v46 = v18;
    v48 = *(a1 + 72);
    v47 = *(a1 + 56);
    v19 = _Block_copy(aBlock);
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_44;
    v38 = &unk_1E77FD1F8;
    v42 = *(a1 + 96);
    v20 = *(a1 + 32);
    v39 = v17;
    v40 = v20;
    v41 = *(a1 + 80);
    v43 = v14;
    v21 = v17;
    v22 = _Block_copy(&v35);
    v23 = [MEMORY[0x1E69998A8] sharedConnection];
    v24 = [v23 requestCalendarAvailabilityWithAccountID:*(*(a1 + 32) + 16) startDate:*(a1 + 40) endDate:*(a1 + 48) ignoredEventID:*(a1 + 56) addresses:v12 resultsBlock:v19 completionBlock:{v22, v35, v36, v37, v38}];
    v25 = *(*(a1 + 96) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
}

BOOL __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EKAvailabilityHandle;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_41_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_42;
  v8[3] = &unk_1E77FD158;
  v8[4] = v5;
  v9 = v3;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EKAvailabilityHandle;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_44_cold_1(a1, v3, v4);
  }

  v5 = [*(a1 + 32) elapsedTimeAsNumber:1];
  v6 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_45;
  block[3] = &unk_1E77FD1D0;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  block[4] = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 64);
  v8 = v3;
  dispatch_async(v6, block);
}

uint64_t __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_45(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_46;
    v5[3] = &unk_1E77FD1A8;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    dispatch_async(v2, v5);
  }

  v3 = *(a1 + 32);
  return [objc_opt_class() _logRequestElapsedTime:*(a1 + 64) forNumberOfAddresses:*(a1 + 56)];
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_46(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696AA08];
    v8[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"EKAvailabilityCacheError" code:3 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (id)cachedAvailabilityInDateRange:(id)range ignoredEventID:(id)d addresses:(id)addresses
{
  rangeCopy = range;
  dCopy = d;
  addressesCopy = addresses;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];
  v13 = [(EKAvailabilityCache *)self _validateRequestStartDate:startDate endDate:endDate addresses:addressesCopy error:0];

  if (v13)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__EKAvailabilityCache_cachedAvailabilityInDateRange_ignoredEventID_addresses___block_invoke;
    block[3] = &unk_1E77FD248;
    v21 = &v22;
    block[4] = self;
    v18 = rangeCopy;
    v19 = dCopy;
    v20 = addressesCopy;
    dispatch_sync(processingQueue, block);
  }

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

void __78__EKAvailabilityCache_cachedAvailabilityInDateRange_ignoredEventID_addresses___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) startDate];
  v3 = [*(a1 + 40) endDate];
  v4 = [v2 _cachedSpanResultsBetweenStartDate:v7 endDate:v3 ignoredEventID:*(a1 + 48) addresses:*(a1 + 56)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)cachedAvailabilityInDateRange:(id)range ignoredEventID:(id)d addresses:(id)addresses results:(id)results
{
  rangeCopy = range;
  dCopy = d;
  addressesCopy = addresses;
  resultsCopy = results;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];
  v16 = [(EKAvailabilityCache *)self _validateRequestStartDate:startDate endDate:endDate addresses:addressesCopy error:0];

  if (v16)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__EKAvailabilityCache_cachedAvailabilityInDateRange_ignoredEventID_addresses_results___block_invoke;
    block[3] = &unk_1E77FD270;
    block[4] = self;
    v19 = rangeCopy;
    v20 = dCopy;
    v21 = addressesCopy;
    v22 = resultsCopy;
    dispatch_async(processingQueue, block);
  }

  else
  {
    (*(resultsCopy + 2))(resultsCopy, 0);
  }
}

void __86__EKAvailabilityCache_cachedAvailabilityInDateRange_ignoredEventID_addresses_results___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startDate];
  v4 = [*(a1 + 40) endDate];
  v5 = [v2 _cachedSpanResultsBetweenStartDate:v3 endDate:v4 ignoredEventID:*(a1 + 48) addresses:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
}

- (void)cancelAvailabilityRequestWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKAvailabilityCache cancelAvailabilityRequestWithID:];
    }

    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    [mEMORY[0x1E69998A8] cancelCalendarAvailabilityRequestWithID:dCopy];
  }
}

- (void)_handleResults:(id)results resultsBlock:(id)block ignoredEventID:(id)d
{
  resultsCopy = results;
  blockCopy = block;
  dCopy = d;
  if (resultsCopy && [resultsCopy count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke;
    v20[3] = &unk_1E77FD298;
    v20[4] = self;
    v12 = v11;
    v21 = v12;
    [resultsCopy enumerateKeysAndObjectsUsingBlock:v20];
    if (blockCopy)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke_2;
      block[3] = &unk_1E77FD108;
      v19 = blockCopy;
      v18 = v12;
      dispatch_async(callbackQueue, block);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke_3;
    v14[3] = &unk_1E77FD298;
    v15 = dCopy;
    selfCopy = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [objc_opt_class() _generateEventKitSpansFromPersistenceSpans:v6];

  if (v7)
  {
    [*(a1 + 40) setObject:v7 forKey:v8];
  }
}

void __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [*(a1 + 40) _dictionaryForIgnoredEventID:*(a1 + 32)];
    v8 = [v7 objectForKey:v5];
    if (!v8)
    {
      v8 = objc_alloc_init(EKAvailabilityCachedSpanRange);
      [v7 setObject:v8 forKey:v5];
    }

    [(EKAvailabilityCachedSpanRange *)v8 insertSpans:v6];
  }

  else if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_ERROR))
  {
    __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke_3_cold_1(v5, a1);
  }
}

- (id)_dictionaryForIgnoredEventID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_ignoredEventIDsToAddressBasedCaches objectForKey:dCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_ignoredEventIDsToAddressBasedCaches setObject:v5 forKey:dCopy];
    }
  }

  else
  {
    v5 = self->_addressesToCachedSpanRanges;
  }

  return v5;
}

+ (BOOL)_isValidStartDate:(id)date endDate:(id)endDate
{
  result = 0;
  if (date)
  {
    if (endDate)
    {
      return [date CalIsAfterDate:endDate] ^ 1;
    }
  }

  return result;
}

+ (id)_generateEventKitSpansFromPersistenceSpans:(id)spans
{
  spansCopy = spans;
  v5 = [spansCopy count];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__EKAvailabilityCache__generateEventKitSpansFromPersistenceSpans___block_invoke;
  v9[3] = &unk_1E77FD2C0;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [spansCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __66__EKAvailabilityCache__generateEventKitSpansFromPersistenceSpans___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v8 = [v3 startDate];
  v5 = [v3 endDate];

  v6 = *(a1 + 40);
  v7 = -[EKAvailabilitySpan initWithStartDate:endDate:type:]([EKAvailabilitySpan alloc], "initWithStartDate:endDate:type:", v8, v5, [objc_opt_class() _convertType:v4]);
  [*(a1 + 32) addObject:v7];
}

+ (int64_t)_convertType:(int64_t)type
{
  if ((type - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (void)_logRequestElapsedTime:(double)time forNumberOfAddresses:(unint64_t)addresses
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (addresses >= 3)
  {
    if (addresses >= 6)
    {
      if (addresses >= 0xB)
      {
        if (addresses >= 0x10)
        {
          if (addresses >= 0x15)
          {
            if (addresses >= 0x1A)
            {
              if (addresses >= 0x33)
              {
                if (addresses >= 0x65)
                {
                  if (addresses >= 0x97)
                  {
                    v5 = @"(201+)";
                    if (addresses < 0xC9)
                    {
                      v5 = @"(151-200)";
                    }
                  }

                  else
                  {
                    v5 = @"(101-150)";
                  }
                }

                else
                {
                  v5 = @"(51-100)";
                }
              }

              else
              {
                v5 = @"(26-50)";
              }
            }

            else
            {
              v5 = @"(21-25)";
            }
          }

          else
          {
            v5 = @"(16-20)";
          }
        }

        else
        {
          v5 = @"(11-15)";
        }
      }

      else
      {
        v5 = @"(6-10)";
      }
    }

    else
    {
      v5 = @"(3-5)";
    }
  }

  else
  {
    v5 = off_1E77FD2E0[addresses];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AvailabilityCacheRoundtripTimeInMilliseconds-%@", v5];
  v10 = @"elapsedTime";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  CalAnalyticsSendEvent();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithSource:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "The given source's 'accountID' is nil.  The availability cache will not be able to give availability data.  Cache: [%@]", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithSource:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_cachedSpanResultsBetweenStartDate:(os_log_t)log endDate:ignoredEventID:addresses:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1A805E000, log, OS_LOG_TYPE_DEBUG, "Cache hit.   freshly cached spans found.", buf, 2u);
}

- (void)_validateRequestStartDate:(uint64_t)a1 endDate:addresses:error:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestStartDate:endDate:addresses:error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "This availability cache's source is invalid.  Will not execute the availability request.  Cache: [%@]", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_41_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = *(a1 + 32);
  v5 = a3;
  OUTLINED_FUNCTION_0_0([v4 elapsedTimeAsNumber:3], 1000000.0);
  OUTLINED_FUNCTION_3(&dword_1A805E000, v6, v7, "Availability request with ID [%@] received a response with results: [%@]. Elapsed milliseconds: [%f]", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __121__EKAvailabilityCache_requestAvailabilityBetweenStartDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2_44_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = *(a1 + 32);
  v5 = a3;
  OUTLINED_FUNCTION_0_0([v4 elapsedTimeAsNumber:3], 1000000.0);
  OUTLINED_FUNCTION_3(&dword_1A805E000, v6, v7, "Availability request with ID [%@] completed with error: [%@].  Total elapsed milliseconds: [%f]", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelAvailabilityRequestWithID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__EKAvailabilityCache__handleResults_resultsBlock_ignoredEventID___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "No spans were returned for address [%@] and ignored event ID [%@]", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end