@interface EKInviteeAlternativeTimeSearcher
+ (BOOL)_span:(id)a3 hasSameConflictedParticipantsAsSpan:(id)a4;
+ (id)_addressesForParticipants:(id)a3;
+ (id)_allButFirstItemInArray:(id)a3;
+ (id)_allButLastItemInArray:(id)a3;
+ (id)_findHighestRankedNonOptimalTimeSpans:(id)a3;
+ (id)_findLeftoverSpans:(id)a3 usingFreeTimes:(id)a4 andNonOptimalTimes:(id)a5;
+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)a3;
+ (id)stateAsString:(int64_t)a3;
+ (int64_t)_binarySearchForIndexOfTimeSpanInArray:(id)a3 containingDate:(id)a4;
+ (void)_insertUniqueParticipants:(id)a3 intoExistingParticipantsArray:(id)a4;
+ (void)_validateSpans:(id)a3;
- (BOOL)searchingForMoreTimesWhenAllAttendeesCanAttend;
- (BOOL)searchingForMoreTimesWhenSomeAttendeesCanAttend;
- (EKInviteeAlternativeTimeSearcher)initWithStateChangedCallback:(id)a3;
- (NSArray)originalConflictedParticipants;
- (NSArray)proposedTimes;
- (NSArray)timesWhenAllAttendeesCanAttend;
- (NSArray)timesWhenSomeAttendeesCanAttend;
- (NSDate)originalEndDate;
- (NSDate)originalStartDate;
- (id)_filterOutUnreasonableTimeSlots:(id)a3;
- (id)_generateNonOptimalTimesFromTimeSpans:(id)a3;
- (id)_generateOpenFreeTimesFromTimeSpans:(id)a3;
- (id)_generateTimeSpansForResults:(id)a3 betweenStartDate:(id)a4 endDate:(id)a5;
- (id)_mergeAdjacentSpansWithSameConflictedParticipants:(id)a3;
- (id)_participantforParticipantAddress:(id)a3;
- (id)_spliceLeftTimeSpans:(id)a3 andNewTimeSpans:(id)a4;
- (void)_attemptSearch;
- (void)_haltSearchWithError:(BOOL)a3;
- (void)_processResults:(id)a3 betweenStartDate:(id)a4 endDate:(id)a5;
- (void)_resetSearchFallbackNumbers;
- (void)_sendStateChange:(int64_t)a3;
- (void)_transitionToConflictFoundStateAndSearch;
- (void)dealloc;
- (void)resetWithEvent:(id)a3 organizerAddressForNewlyScheduledEvent:(id)a4;
- (void)searchForMoreTimesWhenAllAttendeesCanAttend;
- (void)searchForMoreTimesWhenSomeAttendeesCanAttend;
@end

@implementation EKInviteeAlternativeTimeSearcher

- (EKInviteeAlternativeTimeSearcher)initWithStateChangedCallback:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = EKInviteeAlternativeTimeSearcher;
  v5 = [(EKInviteeAlternativeTimeSearcher *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(EKInviteeAlternativeTimeSearcher *)v5 setStateChanged:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setParticipantAddressesToParticipants:v7];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalTimesWhenAllAttendeesCanAttend:v8];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalTimesWhenSomeAttendeesCanAttend:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalOriginalConflictedParticipants:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalProposedTimes:v11];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setLeftoverSpans:v12];

    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    objc_opt_class();
    v14 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    [v13 setName:v14];

    [(EKInviteeAlternativeTimeSearcher *)v6 setAvailabilityRequestsQueue:v13];
    objc_opt_class();
    v15 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v16 = [v15 UTF8String];

    v17 = dispatch_queue_create(v16, 0);
    [(EKInviteeAlternativeTimeSearcher *)v6 setProcessingQueue:v17];

    objc_opt_class();
    v18 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v19 = [v18 UTF8String];

    v20 = dispatch_queue_create(v19, 0);
    [(EKInviteeAlternativeTimeSearcher *)v6 setCallbackQueue:v20];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(EKInviteeAlternativeTimeSearcher *)self availabilityRequestsQueue];
  [v3 cancelAllOperations];

  v4.receiver = self;
  v4.super_class = EKInviteeAlternativeTimeSearcher;
  [(EKInviteeAlternativeTimeSearcher *)&v4 dealloc];
}

- (NSDate)originalStartDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EKInviteeAlternativeTimeSearcher_originalStartDate__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __53__EKInviteeAlternativeTimeSearcher_originalStartDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOriginalStartDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSDate)originalEndDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__EKInviteeAlternativeTimeSearcher_originalEndDate__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__EKInviteeAlternativeTimeSearcher_originalEndDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOriginalEndDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)originalConflictedParticipants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKInviteeAlternativeTimeSearcher_originalConflictedParticipants__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__EKInviteeAlternativeTimeSearcher_originalConflictedParticipants__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalOriginalConflictedParticipants];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)timesWhenAllAttendeesCanAttend
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKInviteeAlternativeTimeSearcher_timesWhenAllAttendeesCanAttend__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__EKInviteeAlternativeTimeSearcher_timesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalTimesWhenAllAttendeesCanAttend];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)timesWhenSomeAttendeesCanAttend
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__EKInviteeAlternativeTimeSearcher_timesWhenSomeAttendeesCanAttend__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__EKInviteeAlternativeTimeSearcher_timesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalTimesWhenSomeAttendeesCanAttend];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)proposedTimes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EKInviteeAlternativeTimeSearcher_proposedTimes__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__EKInviteeAlternativeTimeSearcher_proposedTimes__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalProposedTimes];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)searchingForMoreTimesWhenAllAttendeesCanAttend
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenAllAttendeesCanAttend__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __82__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalSearchingForMoreTimesWhenAllAttendeesCanAttend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)searchingForMoreTimesWhenSomeAttendeesCanAttend
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenSomeAttendeesCanAttend__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __83__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalSearchingForMoreTimesWhenSomeAttendeesCanAttend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)searchForMoreTimesWhenAllAttendeesCanAttend
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __79__EKInviteeAlternativeTimeSearcher_searchForMoreTimesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:1];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  v2 = *(a1 + 32);

  return [v2 _attemptSearch];
}

- (void)searchForMoreTimesWhenSomeAttendeesCanAttend
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __80__EKInviteeAlternativeTimeSearcher_searchForMoreTimesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:1];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  v2 = *(a1 + 32);

  return [v2 _attemptSearch];
}

- (void)resetWithEvent:(id)a3 organizerAddressForNewlyScheduledEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) availabilityRequestsQueue];
  [v1 cancelAllOperations];

  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) setAvailabilityRequestInProgress:0];
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  v2 = [*(a1 + 32) internalTimesWhenAllAttendeesCanAttend];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) internalTimesWhenSomeAttendeesCanAttend];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) internalProposedTimes];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) internalOriginalConflictedParticipants];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) participantAddressesToParticipants];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) leftoverSpans];
  [v7 removeAllObjects];

  [*(a1 + 32) setNextAvailabilityRangeStartDate:0];
  [*(a1 + 32) setInternalOriginalStartDate:0];
  [*(a1 + 32) setInternalOriginalEndDate:0];
  [*(a1 + 32) setOriginalRangeStartDate:0];
  [*(a1 + 32) setSource:0];
  [*(a1 + 32) setIgnoredEventID:0];
  [*(a1 + 32) setOrganizerAddress:0];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  [*(a1 + 32) _sendStateChange:0];
  v8 = (a1 + 40);
  v9 = [*(a1 + 40) constraints];
  v10 = [v9 supportsAvailabilityRequests];

  if (*(a1 + 40))
  {
    if (v10)
    {
      v11 = [*(a1 + 40) startDate];
      v12 = [*v8 endDateUnadjustedForLegacyClients];
      v13 = [v11 isEqualToDate:v12];

      if (v13)
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_15();
        }

        goto LABEL_89;
      }

      if ([*v8 isAllDay])
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_14();
        }

        goto LABEL_89;
      }

      v14 = [*v8 isDetached];
      v15 = *v8;
      if (v14)
      {
        v16 = [v15 originalItem];
        v90 = [v16 uniqueId];
      }

      else
      {
        v90 = [v15 uniqueId];
      }

      v17 = EKUIAvailabilitySearchHandle;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_3(v8, v17);
      }

      v86 = objc_opt_new();
      v18 = [*(a1 + 40) startDate];
      [*(a1 + 32) setInternalOriginalStartDate:v18];

      v19 = [*(a1 + 40) endDateUnadjustedForLegacyClients];
      [*(a1 + 32) setInternalOriginalEndDate:v19];

      v89 = objc_opt_new();
      v20 = [MEMORY[0x1E695DEE8] currentCalendar];
      v21 = [*(a1 + 40) timeZone];
      if (!v21)
      {
        goto LABEL_22;
      }

      v22 = [v20 timeZone];
      v23 = [*v8 timeZone];
      v24 = [v22 isEqualToTimeZone:v23];

      if ((v24 & 1) == 0)
      {
        v26 = [v20 copy];

        v27 = [*v8 timeZone];
        [v26 setTimeZone:v27];

        v25 = v26;
      }

      else
      {
LABEL_22:
        v25 = v20;
      }

      v88 = v25;
      v28 = [v89 dateByAddingHours:1 inCalendar:?];
      v87 = [v28 dateRoundedToNearestFifteenMinutesInCalendar:v88];

      [*(a1 + 32) setOriginalRangeStartDate:v87];
      v29 = [*(a1 + 32) originalRangeStartDate];
      [*(a1 + 32) setNextAvailabilityRangeStartDate:v29];

      [*(a1 + 32) setIgnoredEventID:v90];
      v30 = [*(a1 + 40) calendar];
      v31 = [v30 source];
      [*(a1 + 32) setSource:v31];

      if ([*(a1 + 40) isStartDateDirty])
      {
        v99 = 1;
      }

      else
      {
        v99 = [*v8 isEndDateDirty];
      }

      v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_4();
      }

      v94 = [*v8 organizer];
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v32 = [*v8 attendees];
      v33 = [v32 countByEnumeratingWithState:&v125 objects:v134 count:16];
      if (v33)
      {
        v34 = *v126;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v126 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v125 + 1) + 8 * i);
            if ([v36 participantType] != 2)
            {
              v38 = [v36 URL];
              v39 = [v38 absoluteString];

              if (v39)
              {
                if (([v36 isEqualToParticipant:v94] & 1) == 0)
                {
                  if (v99)
                  {
                    v40 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v131 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v40, OS_LOG_TYPE_DEBUG, "The event has a dirty date property, so we'll forcibly request availability for this participant: [%@]", buf, 0xCu);
                    }

                    goto LABEL_52;
                  }

                  if ([v36 participantStatus] == 3)
                  {
                    v42 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v131 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v42, OS_LOG_TYPE_DEBUG, "Attendee has declined: [%@]", buf, 0xCu);
                    }

                    [v93 addObject:v36];
                  }

                  else if (!EKUIAttendeeUtils_AttendeeHasResponded(v36))
                  {
                    v43 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v131 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v43, OS_LOG_TYPE_DEBUG, "Attendee needs to respond: [%@]", buf, 0xCu);
                    }

LABEL_52:
                    [v98 addObject:v39];
                  }

                  v44 = EKUIAvailabilitySearchHandle;
                  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v131 = v39;
                    v132 = 2112;
                    v133 = v36;
                    _os_log_debug_impl(&dword_1A805E000, v44, OS_LOG_TYPE_DEBUG, "Adding participant with address [%@] to the list of attendees to be included in conflict resolution.  Participant: [%@]", buf, 0x16u);
                  }

                  v45 = [*(a1 + 32) participantAddressesToParticipants];
                  [v45 setObject:v36 forKey:v39];
                }
              }

              else
              {
                v41 = EKUIAvailabilitySearchHandle;
                if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v131 = v36;
                  _os_log_error_impl(&dword_1A805E000, v41, OS_LOG_TYPE_ERROR, "No participant address found for participant: [%@].  Will not search use this participant to search for alternative times.", buf, 0xCu);
                }
              }

              goto LABEL_57;
            }

            v37 = EKUIAvailabilitySearchHandle;
            if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v131 = v36;
              _os_log_debug_impl(&dword_1A805E000, v37, OS_LOG_TYPE_DEBUG, "Will not consider attendee for conflict detection because it is a room: [%@]", buf, 0xCu);
            }

LABEL_57:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v36;
              v47 = [v46 proposedStartDateForEvent:*v8];
              if (v47)
              {
                v48 = [*(a1 + 32) internalProposedStarts];
                [v48 addObject:v47];
              }
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v125 objects:v134 count:16];
        }

        while (v33);
      }

      v49 = [v94 URL];
      v92 = [v49 absoluteString];

      v50 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
      if (v92)
      {
        if (v50)
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_5();
        }

        [*(a1 + 32) setOrganizerAddress:v92];
        v51 = [*(a1 + 32) participantAddressesToParticipants];
        [v51 setObject:v94 forKey:v92];
      }

      else
      {
        if (v50)
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_6();
        }

        v52 = a1;
        if (*(a1 + 48))
        {
          [*(a1 + 32) setOrganizerAddress:?];
          v53 = *(a1 + 32);
          v54 = [objc_opt_class() _selfOrganizerForNewlyScheduledEventWithAddress:*(a1 + 48)];
          v55 = [*(a1 + 32) participantAddressesToParticipants];
          [v55 setObject:v54 forKey:*(a1 + 48)];
        }

        else
        {
          if (!os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_7();
        }
      }

      v52 = a1;
LABEL_74:
      if ((v99 & 1) != 0 || (v52 = a1, [v98 count]))
      {
        objc_initWeak(buf, *(v52 + 32));
        v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_19;
        aBlock[3] = &unk_1E77FDED0;
        objc_copyWeak(&v124, buf);
        v57 = v56;
        v123 = v57;
        v97 = _Block_copy(aBlock);
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_12();
        }

        v58 = [EKRequestAvailabilityOperation alloc];
        v59 = [*(a1 + 32) source];
        v60 = [*(a1 + 32) internalOriginalStartDate];
        v61 = [*(a1 + 32) internalOriginalEndDate];
        v62 = [*(a1 + 32) ignoredEventID];
        val = [(EKRequestAvailabilityOperation *)v58 initWithSource:v59 startDate:v60 endDate:v61 ignoredEventID:v62 addresses:v98 resultsBlock:v97];

        objc_initWeak(&location, val);
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22;
        v114[3] = &unk_1E77FDF20;
        objc_copyWeak(&v118, buf);
        objc_copyWeak(&v119, &location);
        v96 = v57;
        v115 = v96;
        v120 = v99;
        v63 = v93;
        v64 = a1;
        v65 = *(a1 + 32);
        v116 = v63;
        v117 = v65;
        [(EKRequestAvailabilityOperation *)val setCompletionBlock:v114];
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_13();
          v64 = a1;
        }

        [*(v64 + 32) setAvailabilityRequestInProgress:1];
        v66 = [*(v64 + 32) availabilityRequestsQueue];
        [v66 addOperation:val];

        v67 = [*(a1 + 32) internalOriginalEndDate];
        v68 = [*(a1 + 32) internalOriginalStartDate];
        [v67 timeIntervalSinceDate:v68];
        v70 = v69;

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        obj = v86;
        v71 = [obj countByEnumeratingWithState:&v110 objects:v129 count:16];
        if (v71)
        {
          v72 = *v111;
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v111 != v72)
              {
                objc_enumerationMutation(obj);
              }

              v74 = *(*(&v110 + 1) + 8 * j);
              v75 = [EKRequestAvailabilityOperation alloc];
              v76 = [*(a1 + 32) source];
              v77 = [v74 dateByAddingTimeInterval:*&v70];
              v78 = [*(a1 + 32) ignoredEventID];
              v79 = [(EKRequestAvailabilityOperation *)v75 initWithSource:v76 startDate:v74 endDate:v77 ignoredEventID:v78 addresses:v98 resultsBlock:v97];

              objc_initWeak(&from, v79);
              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 3221225472;
              v101[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_27;
              v101[3] = &unk_1E77FDF70;
              objc_copyWeak(&v106, buf);
              objc_copyWeak(v107, &from);
              v102 = v96;
              v108 = v99;
              v103 = v63;
              v104 = v74;
              v107[1] = v70;
              v105 = *(a1 + 32);
              [(EKRequestAvailabilityOperation *)v79 setCompletionBlock:v101];
              v80 = [*(a1 + 32) availabilityRequestsQueue];
              [v80 addOperation:v79];

              objc_destroyWeak(v107);
              objc_destroyWeak(&v106);
              objc_destroyWeak(&from);
            }

            v71 = [obj countByEnumeratingWithState:&v110 objects:v129 count:16];
          }

          while (v71);
        }

        objc_destroyWeak(&v119);
        objc_destroyWeak(&v118);
        objc_destroyWeak(&location);

        objc_destroyWeak(&v124);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_8();
        }

        if ([v93 count])
        {
          v82 = EKUIAvailabilitySearchHandle;
          if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
          {
            __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_9(v82, v93);
          }

          v83 = [*(a1 + 32) internalOriginalConflictedParticipants];
          [v83 addObjectsFromArray:v93];

          [*(a1 + 32) _transitionToConflictFoundStateAndSearch];
        }

        else
        {
          v84 = [*(a1 + 32) noConflictRequired];
          v85 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
          if (v84)
          {
            if (v85)
            {
              __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_11();
            }

            [*(a1 + 32) _transitionToConflictFoundStateAndSearch];
          }

          else if (v85)
          {
            __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_10();
          }
        }
      }

      goto LABEL_89;
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_2();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_16();
  }

LABEL_89:
  v81 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained processingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_2;
    v7[3] = &unk_1E77FD580;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      if (([v3 isCancelled] & 1) == 0)
      {
        v5 = [v4 error];
        v6 = [WeakRetained processingQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23;
        v10[3] = &unk_1E77FDEF8;
        v11 = v5;
        v12 = WeakRetained;
        v13 = *(a1 + 32);
        v16 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v14 = v7;
        v15 = v8;
        v9 = v5;
        dispatch_async(v6, v10);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1(v2);
    }

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    [*(a1 + 40) _haltSearchWithError:1];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24;
    v15 = &unk_1E77FD298;
    v4 = *(a1 + 48);
    v16 = *(a1 + 40);
    v5 = v3;
    v17 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:&v12];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v6 addObjectsFromArray:{v5, v12, v13, v14, v15, v16}];
    if ((*(a1 + 72) & 1) == 0)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2();
      }

      [v6 addObjectsFromArray:*(a1 + 56)];
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3();
    }

    v7 = [*(a1 + 40) internalOriginalConflictedParticipants];
    [v7 addObjectsFromArray:v6];

    v8 = [*(a1 + 40) originalRangeStartDate];
    [*(a1 + 40) setNextAvailabilityRangeStartDate:v8];

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    v9 = [v6 count];
    v10 = [*(a1 + 64) noConflictRequired];
    v11 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
    if ((v10 & 1) != 0 || v9)
    {
      if (v11)
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_5();
      }

      [*(a1 + 40) _transitionToConflictFoundStateAndSearch];
    }

    else if (v11)
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_4();
    }
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([EKAvailabilityUtilities spansIncludeBusyPeriod:a3])
  {
    v6 = [*(a1 + 32) _participantforParticipantAddress:v5];
    if (v6)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2();
      }

      [*(a1 + 40) addObject:v6];
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_3();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      if (([v3 isCancelled] & 1) == 0)
      {
        v5 = [v4 error];
        v6 = [WeakRetained processingQueue];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_28;
        v8[3] = &unk_1E77FDF48;
        v9 = v5;
        v10 = WeakRetained;
        v11 = *(a1 + 32);
        v15 = *(a1 + 88);
        v12 = *(a1 + 40);
        v14 = *(a1 + 80);
        v13 = *(a1 + 48);
        v7 = v5;
        dispatch_async(v6, v8);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_28(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1(v2);
    }

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    [*(a1 + 40) _haltSearchWithError:1];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_29;
    v15 = &unk_1E77FD298;
    v4 = *(a1 + 48);
    v16 = *(a1 + 40);
    v5 = v3;
    v17 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:&v12];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v6 addObjectsFromArray:{v5, v12, v13, v14, v15, v16}];
    if ((*(a1 + 88) & 1) == 0)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2();
      }

      [v6 addObjectsFromArray:*(a1 + 56)];
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3();
    }

    v7 = [EKInviteeAlternativeTime alloc];
    v8 = *(a1 + 64);
    v9 = [v8 dateByAddingTimeInterval:*(a1 + 80)];
    v10 = [(EKInviteeAlternativeTime *)v7 initWithStartDate:v8 endDate:v9 conflictedParticipants:v6];

    v11 = [*(a1 + 72) internalProposedTimes];
    [v11 addObject:v10];

    [*(a1 + 72) _sendStateChange:2];
    [*(a1 + 40) setAvailabilityRequestInProgress:0];
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([EKAvailabilityUtilities spansIncludeBusyPeriod:a3])
  {
    v6 = [*(a1 + 32) _participantforParticipantAddress:v5];
    if (v6)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2();
      }

      [*(a1 + 40) addObject:v6];
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_3();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1();
  }
}

+ (id)stateAsString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77FE098[a3];
  }
}

- (void)_attemptSearch
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained processingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_2;
    v7[3] = &unk_1E77FD580;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = objc_loadWeakRetained(a1 + 8);
  if (v3)
  {
    if (WeakRetained)
    {
      if ([WeakRetained isCancelled])
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_1();
        }
      }

      else
      {
        v4 = [WeakRetained error];
        v5 = [v3 processingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46;
        block[3] = &unk_1E77FDF98;
        block[4] = v3;
        v8 = v4;
        v9 = a1[4];
        v10 = a1[5];
        v11 = a1[6];
        v6 = v4;
        dispatch_async(v5, block);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_2();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

uint64_t __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46(uint64_t a1)
{
  [*(a1 + 32) setAvailabilityRequestInProgress:0];
  if (*(a1 + 40))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46_cold_1((a1 + 40));
    }

    return [*(a1 + 32) _attemptSearch];
  }

  else
  {
    [*(a1 + 32) setNextAvailabilityRangeStartDate:*(a1 + 48)];
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);

    return [v3 _processResults:v4 betweenStartDate:v5 endDate:v6];
  }
}

- (void)_resetSearchFallbackNumbers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "remainingSearchAttempts")}];
  v6 = MEMORY[0x1E696AD98];
  [a2 availabilitySearchDurationMultiplier];
  v7 = [v6 numberWithDouble:?];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_sendStateChange:(int64_t)a3
{
  v5 = [(EKInviteeAlternativeTimeSearcher *)self callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke;
  v6[3] = &unk_1E77FDDC0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) stateChanged];

  v4 = EKUIAvailabilitySearchHandle;
  if (v3)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_1(v2, v4, a1);
    }

    v5 = [*(a1 + 32) stateChanged];
    v5[2](v5, *(a1 + 40));
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_2(v2, v4, a1);
  }
}

- (void)_transitionToConflictFoundStateAndSearch
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_opt_class() stateAsString:1];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A805E000, v1, OS_LOG_TYPE_DEBUG, "Transitioning to the [%@] state and attempting a search.", v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

- (id)_participantforParticipantAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress(v4);
    v8 = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
    v6 = [v8 objectForKey:v7];
  }

  return v6;
}

- (void)_processResults:(id)a3 betweenStartDate:(id)a4 endDate:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v8;
    _os_log_debug_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEBUG, "Processing results - start date: [%@] end date: [%@] results: [%@]", buf, 0x20u);
  }

  v36 = v9;
  v37 = v8;
  v35 = v10;
  v12 = [(EKInviteeAlternativeTimeSearcher *)self _generateTimeSpansForResults:v8 betweenStartDate:v9 endDate:v10];
  v13 = [(EKInviteeAlternativeTimeSearcher *)self leftoverSpans];
  v14 = [(EKInviteeAlternativeTimeSearcher *)self _spliceLeftTimeSpans:v13 andNewTimeSpans:v12];

  v34 = v14;
  v15 = [(EKInviteeAlternativeTimeSearcher *)self _mergeAdjacentSpansWithSameConflictedParticipants:v14];
  v16 = [(EKInviteeAlternativeTimeSearcher *)self _generateOpenFreeTimesFromTimeSpans:v15];
  v17 = [(EKInviteeAlternativeTimeSearcher *)self _generateNonOptimalTimesFromTimeSpans:v15];
  v18 = [objc_opt_class() _findLeftoverSpans:v12 usingFreeTimes:v16 andNonOptimalTimes:v17];
  v19 = [(EKInviteeAlternativeTimeSearcher *)self leftoverSpans];
  v33 = v18;
  [v19 setArray:v18];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__EKInviteeAlternativeTimeSearcher__processResults_betweenStartDate_endDate___block_invoke;
  aBlock[3] = &unk_1E77FDFE8;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  v21 = [v16 indexesOfObjectsPassingTest:v20];
  v22 = [v17 indexesOfObjectsPassingTest:v20];
  v23 = [(EKInviteeAlternativeTimeSearcher *)self internalTimesWhenAllAttendeesCanAttend];
  v24 = [v16 objectsAtIndexes:v21];
  [v23 addObjectsFromArray:v24];

  v25 = [(EKInviteeAlternativeTimeSearcher *)self internalTimesWhenSomeAttendeesCanAttend];
  v26 = [v17 objectsAtIndexes:v22];
  [v25 addObjectsFromArray:v26];

  if (-[EKInviteeAlternativeTimeSearcher internalSearchingForMoreTimesWhenAllAttendeesCanAttend](self, "internalSearchingForMoreTimesWhenAllAttendeesCanAttend") && [v16 count])
  {
    [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (-[EKInviteeAlternativeTimeSearcher internalSearchingForMoreTimesWhenSomeAttendeesCanAttend](self, "internalSearchingForMoreTimesWhenSomeAttendeesCanAttend") && [v17 count])
  {
    [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  }

  else if (!v27)
  {
    goto LABEL_14;
  }

  v28 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKInviteeAlternativeTimeSearcher _processResults:v28 betweenStartDate:v16 endDate:v17];
  }

  [(EKInviteeAlternativeTimeSearcher *)self _sendStateChange:2];
  LOBYTE(v27) = 1;
LABEL_14:
  if (![(EKInviteeAlternativeTimeSearcher *)self internalSearchingForMoreTimesWhenAllAttendeesCanAttend]&& ![(EKInviteeAlternativeTimeSearcher *)self internalSearchingForMoreTimesWhenSomeAttendeesCanAttend])
  {
    if ((v27 & 1) == 0)
    {
      CalAnalyticsSendEvent();
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        [EKInviteeAlternativeTimeSearcher _processResults:betweenStartDate:endDate:];
      }
    }

    goto LABEL_25;
  }

  v29 = [(EKInviteeAlternativeTimeSearcher *)self remainingSearchAttempts];
  v30 = EKUIAvailabilitySearchHandle;
  v31 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
  if (!v29)
  {
    if (v31)
    {
      [EKInviteeAlternativeTimeSearcher _processResults:betweenStartDate:endDate:];
    }

LABEL_25:
    [(EKInviteeAlternativeTimeSearcher *)self _haltSearchWithError:0];
    goto LABEL_26;
  }

  if (v31)
  {
    [EKInviteeAlternativeTimeSearcher _processResults:v30 betweenStartDate:self endDate:?];
  }

  [(EKInviteeAlternativeTimeSearcher *)self _attemptSearch];
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __77__EKInviteeAlternativeTimeSearcher__processResults_betweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [*(a1 + 32) originalRangeStartDate];
  v5 = [v3 CalIsBeforeDate:v4];

  return v5 ^ 1u;
}

- (void)_haltSearchWithError:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKInviteeAlternativeTimeSearcher _haltSearchWithError:];
  }

  [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
  [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [(EKInviteeAlternativeTimeSearcher *)self _sendStateChange:v5];
}

+ (id)_findLeftoverSpans:(id)a3 usingFreeTimes:(id)a4 andNonOptimalTimes:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  v12 = [v10 lastObject];

  v13 = [v12 endDate];
  v14 = [v9 lastObject];

  v15 = [v14 endDate];
  v16 = v13;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    if (v15)
    {
      v18 = v16;
      if (([v16 CalIsAfterDate:v15] & 1) == 0)
      {
        v18 = v15;
      }
    }
  }

  else
  {
    v18 = v15;
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = [objc_opt_class() _binarySearchForIndexOfTimeSpanInArray:v7 containingDate:v18];
  if (v19 == [objc_opt_class() _invalidBinarySearchIndex])
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKInviteeAlternativeTimeSearcher _findLeftoverSpans:usingFreeTimes:andNonOptimalTimes:];
    }
  }

  else
  {
    v20 = [v7 objectAtIndex:v19];
    v21 = [v20 copy];
    [v21 setStartDate:v18];
    [v11 addObject:v21];
    v22 = [v7 count] + ~v19;
    if (v22)
    {
      v23 = [v7 subarrayWithRange:{v19 + 1, v22}];
      [v11 addObjectsFromArray:v23];
    }
  }

LABEL_12:
  v24 = +[EKDebugPreferences shared];
  v25 = [v24 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (v25)
  {
    [objc_opt_class() _validateSpans:v11];
  }

  return v11;
}

+ (id)_addressesForParticipants:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v3 && [v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) participant];
          v11 = [v10 URL];
          v12 = [v11 absoluteString];

          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)_span:(id)a3 hasSameConflictedParticipantsAsSpan:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 conflictedParticipants];

  v9 = [v7 _addressesForParticipants:v8];

  v10 = objc_opt_class();
  v11 = [v5 conflictedParticipants];

  v12 = [v10 _addressesForParticipants:v11];

  if (v9)
  {
    v13 = [v9 count] == 0;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 1;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v14 = [v12 count];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v13 = v15;
  }

  else
  {
    v13 = [v9 isEqualToSet:v12];
  }

LABEL_14:

  return v13;
}

+ (id)_allButLastItemInArray:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    if (v5 > 1)
    {
      [v4 subarrayWithRange:{0, v5 - 1}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allButFirstItemInArray:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    if (v5 > 1)
    {
      [v4 subarrayWithRange:{1, v5 - 1}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_spliceLeftTimeSpans:(id)a3 andNewTimeSpans:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5 && [v5 count])
  {
    v8 = [v5 lastObject];
    v9 = [v6 firstObject];
    v10 = [v8 conflictedParticipants];
    v11 = [v10 count];

    v12 = [v9 conflictedParticipants];
    v13 = [v12 count];

    if ((v11 != 0) != (v13 == 0) && (!v11 || [objc_opt_class() _span:v8 hasSameConflictedParticipantsAsSpan:v9]))
    {
      v14 = [objc_opt_class() _allButLastItemInArray:v5];
      [v7 addObjectsFromArray:v14];
      v15 = objc_alloc_init(EKInviteeTimeSpan);
      v16 = [v8 startDate];
      [(EKInviteeTimeSpan *)v15 setStartDate:v16];

      v17 = [v9 endDate];
      [(EKInviteeTimeSpan *)v15 setEndDate:v17];

      v18 = [v8 conflictedParticipants];
      [(EKInviteeTimeSpan *)v15 setConflictedParticipants:v18];

      [v7 addObject:v15];
      v19 = [objc_opt_class() _allButFirstItemInArray:v6];
      [v7 addObjectsFromArray:v19];
    }

    else
    {
      [v7 addObjectsFromArray:v5];
      [v7 addObjectsFromArray:v6];
    }
  }

  else
  {
    [v7 addObjectsFromArray:v6];
  }

  v20 = +[EKDebugPreferences shared];
  v21 = [v20 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (v21)
  {
    [objc_opt_class() _validateSpans:v7];
  }

  return v7;
}

- (id)_mergeAdjacentSpansWithSameConflictedParticipants:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3 && [v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (v8 && [objc_opt_class() _span:v11 hasSameConflictedParticipantsAsSpan:{v8, v18}])
          {
            v12 = [v11 endDate];
            [v8 setEndDate:v12];
          }

          else
          {
            v13 = v11;

            [v4 addObject:v13];
            v8 = v13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  v14 = +[EKDebugPreferences shared];
  v15 = [v14 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (v15)
  {
    [objc_opt_class() _validateSpans:v4];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_generateOpenFreeTimesFromTimeSpans:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalEndDate];
  v7 = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v30 = *v33;
    v31 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 conflictedParticipants];
        v17 = [v16 count];

        if (!v17)
        {
          v18 = [v15 endDate];
          v19 = [v15 startDate];
          [v18 timeIntervalSinceDate:v19];
          v21 = v20;

          if (v21 >= v9)
          {
            v22 = (v21 / v9);
            for (j = [v15 startDate];
            {
              v24 = [j dateByAddingTimeInterval:v9];
              v25 = [EKInviteeAlternativeTime alloc];
              v26 = [v15 conflictedParticipants];
              v27 = [(EKInviteeAlternativeTime *)v25 initWithStartDate:j endDate:v24 conflictedParticipants:v26];

              [v5 addObject:v27];
              j = v24;
            }

            v13 = v30;
            v10 = v31;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)_insertUniqueParticipants:(id)a3 intoExistingParticipantsArray:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 participant];
        v15 = [v14 URL];
        v16 = [v15 absoluteString];

        if (v16)
        {
          [v7 setObject:v13 forKey:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v23 = [v22 participant];
        v24 = [v23 URL];
        v25 = [v24 absoluteString];

        if (v25)
        {
          [v7 setObject:v22 forKey:v25];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v26 = [v7 allValues];
  [v17 setArray:v26];

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_generateNonOptimalTimesFromTimeSpans:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalEndDate];
  v65 = self;
  v6 = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalStartDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [v4 firstObject];
  v10 = [v4 lastObject];
  v59 = v9;
  v11 = [v9 startDate];
  v58 = v10;
  v12 = [v10 endDate];
  v13 = v11;
  v67 = v4;
  v68 = [v4 count];
  v60 = v13;
  v62 = v12;
  if ([v13 CalIsBeforeDate:v12] && v68)
  {
    v14 = 0;
    v15 = v13;
    while (1)
    {
      v16 = [v15 dateByAddingTimeInterval:v8];
      if ([v16 CalIsAfterDate:v12])
      {

        v13 = v15;
        break;
      }

      v17 = objc_alloc_init(EKInviteeTimeSpan);
      [(EKInviteeTimeSpan *)v17 setStartDate:v15];
      v18 = v16;
      [(EKInviteeTimeSpan *)v17 setEndDate:v16];
      v19 = [v67 objectAtIndex:v14];
      v20 = objc_alloc(MEMORY[0x1E695DF70]);
      v21 = [v19 conflictedParticipants];
      v22 = [v20 initWithArray:v21];

      v23 = [(EKInviteeTimeSpan *)v17 endDate];
      v24 = [v19 endDate];
      v25 = [v23 isEqualToDate:v24];

      v63 = v19;
      if (v25)
      {
        ++v14;
      }

      else
      {
        v28 = [(EKInviteeTimeSpan *)v17 endDate];
        v29 = [v19 endDate];
        v30 = [v28 CalIsAfterDate:v29];

        if (v30)
        {
          v31 = v14 + 1;
          if (v14 + 1 < v68)
          {
            v32 = v14;
            v33 = v14 + 1;
            v13 = v18;
            while (1)
            {
              v34 = [v67 objectAtIndex:v31];
              v35 = [v34 startDate];
              v36 = [v35 CalIsBeforeDate:v13];

              if (!v36)
              {
                break;
              }

              v37 = objc_opt_class();
              v38 = [v34 conflictedParticipants];
              [v37 _insertUniqueParticipants:v38 intoExistingParticipantsArray:v22];

              v39 = [v34 endDate];
              LODWORD(v38) = [v39 isEqualToDate:v13];

              if (v38)
              {
                v31 = v32 + 2;
                break;
              }

              v40 = [v34 endDate];
              v41 = [v40 CalIsAfterDate:v13];

              v14 = v32 + 1;
              if ((v41 & 1) == 0)
              {
                v31 = v33++;
                v42 = v32 + 2;
                ++v32;
                if (v42 < v68)
                {
                  continue;
                }
              }

              goto LABEL_8;
            }

            v14 = v31;
            goto LABEL_8;
          }
        }
      }

      v13 = v18;
LABEL_8:
      [(EKInviteeTimeSpan *)v17 setConflictedParticipants:v22];
      v26 = [(EKInviteeTimeSpan *)v17 conflictedParticipants];
      v27 = [v26 count];

      if (v27)
      {
        [v61 addObject:v17];
      }

      v12 = v62;
      if ([v13 CalIsBeforeDate:v62])
      {
        v15 = v13;
        if (v14 < v68)
        {
          continue;
        }
      }

      break;
    }
  }

  v69 = v13;
  v64 = [(EKInviteeAlternativeTimeSearcher *)v65 _filterOutUnreasonableTimeSlots:v61];
  v66 = [objc_opt_class() _rankNonOptimalTimeSpans:v64];
  v43 = [objc_opt_class() _findHighestRankedNonOptimalTimeSpans:v66];
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v71;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v71 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v70 + 1) + 8 * i);
        v51 = [EKInviteeAlternativeTime alloc];
        v52 = [v50 startDate];
        v53 = [v50 endDate];
        v54 = [v50 conflictedParticipants];
        v55 = [(EKInviteeAlternativeTime *)v51 initWithStartDate:v52 endDate:v53 conflictedParticipants:v54];

        [v44 addObject:v55];
      }

      v47 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v47);
  }

  v56 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)_filterOutUnreasonableTimeSlots:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
    v6 = [v5 allKeys];
    v7 = [v6 count];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__EKInviteeAlternativeTimeSearcher__filterOutUnreasonableTimeSlots___block_invoke;
    v11[3] = &__block_descriptor_40_e34_B32__0__EKInviteeTimeSpan_8Q16_B24l;
    v11[4] = v7;
    v8 = [v4 indexesOfObjectsPassingTest:v11];
    v9 = [v4 objectsAtIndexes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __68__EKInviteeAlternativeTimeSearcher__filterOutUnreasonableTimeSlots___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 conflictedParticipants];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * v9) participant];
        v11 = [v10 URL];
        v12 = [v11 absoluteString];

        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = *(a1 + 32);
    v14 = v13 != [v4 count];
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)_findHighestRankedNonOptimalTimeSpans:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] <= 0x14)
  {
    v4 = v3;
LABEL_20:
    v17 = v4;
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {

LABEL_19:
    v4 = [v5 subarrayWithRange:{0, 20, v26}];
    goto LABEL_20;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      v13 = [v12 conflictedParticipants];
      v14 = [v13 count];

      if (v8 == v14)
      {
        ++v9;
      }

      else if (v8)
      {
        goto LABEL_13;
      }

      v15 = [v12 conflictedParticipants];
      v8 = [v15 count];
    }

    v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v7);
LABEL_13:

  if (v9 <= 0x14)
  {
    goto LABEL_19;
  }

  v16 = [v5 mutableCopy];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = -20;
  do
  {
    v19 = arc4random();
    v20 = v19 % [v16 count];
    v21 = [v16 objectAtIndex:v20];
    [v17 addObject:v21];
    [v16 removeObjectAtIndex:v20];
  }

  while (!__CFADD__(v18++, 1));

LABEL_21:
  v23 = [v17 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_28];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __74__EKInviteeAlternativeTimeSearcher__findHighestRankedNonOptimalTimeSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __61__EKInviteeAlternativeTimeSearcher__rankNonOptimalTimeSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 conflictedParticipants];
  if (v6)
  {
    v7 = [v4 conflictedParticipants];
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 conflictedParticipants];
  if (v9)
  {
    v10 = [v5 conflictedParticipants];
    v11 = [v10 count];
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= v11)
  {
    if (v8 > v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [v4 startDate];
      v14 = [v5 startDate];
      v12 = [v13 compare:v14];
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)_generateTimeSpansForResults:(id)a3 betweenStartDate:(id)a4 endDate:(id)a5
{
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  v13 = objc_alloc_init(EKInviteeTimeSpan);
  [(EKInviteeTimeSpan *)v13 setStartDate:v10];

  [(EKInviteeTimeSpan *)v13 setEndDate:v9];
  [v12 addObject:v13];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke;
  v22 = &unk_1E77FD298;
  v23 = self;
  v14 = v12;
  v24 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:&v19];

  v15 = [EKDebugPreferences shared:v19];
  LODWORD(v9) = [v15 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (v9)
  {
    [objc_opt_class() _validateSpans:v14];
  }

  v16 = v24;
  v17 = v14;

  return v14;
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _participantforParticipantAddress:v5];
  if (v7)
  {
    v8 = [EKParticipantForSorting participantForSortingWithEKParticipant:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60;
    v10[3] = &unk_1E77FE050;
    v11 = *(a1 + 40);
    v12 = v8;
    v13 = *(a1 + 32);
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v10];
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_cold_1();
  }
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60(uint64_t a1, void *a2)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = [v4 isEqualToDate:v5];

  if (v6)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_3();
    }
  }

  else if (+[EKAvailabilityUtilities showTypeAsBusy:](EKAvailabilityUtilities, "showTypeAsBusy:", [v3 type]))
  {
    v7 = [*(a1 + 32) firstObject];
    v8 = [*(a1 + 32) lastObject];
    v9 = [v3 startDate];
    v10 = [v7 startDate];
    v11 = [v9 CalIsBeforeDate:v10];

    if (v11)
    {
      v12 = objc_alloc_init(EKInviteeTimeSpan);
      v13 = [v3 startDate];
      [(EKInviteeTimeSpan *)v12 setStartDate:v13];

      v14 = [v7 startDate];
      [(EKInviteeTimeSpan *)v12 setEndDate:v14];

      v15 = [(EKInviteeTimeSpan *)v12 conflictedParticipants];
      v72[0] = *(a1 + 40);
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
      [v15 addObjectsFromArray:v16];

      [*(a1 + 32) insertObject:v12 atIndex:0];
    }

    v17 = [v3 endDate];
    v18 = [v8 endDate];
    v19 = [v17 CalIsAfterDate:v18];

    if (v19)
    {
      v20 = objc_alloc_init(EKInviteeTimeSpan);
      v21 = [v8 endDate];
      [(EKInviteeTimeSpan *)v20 setStartDate:v21];

      v22 = [v3 endDate];
      [(EKInviteeTimeSpan *)v20 setEndDate:v22];

      v23 = [(EKInviteeTimeSpan *)v20 conflictedParticipants];
      v71 = *(a1 + 40);
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
      [v23 addObjectsFromArray:v24];

      [*(a1 + 32) addObject:v20];
    }

    v25 = *(a1 + 48);
    v26 = objc_opt_class();
    v27 = *(a1 + 32);
    v28 = [v3 startDate];
    v29 = [v26 _binarySearchForIndexOfTimeSpanInArray:v27 containingDate:v28];

    v30 = *(a1 + 48);
    if (v29 == [objc_opt_class() _invalidBinarySearchIndex])
    {
      v31 = EKUIAvailabilitySearchHandle;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_2(v31, v3);
      }
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = [*(a1 + 32) count];
      v69 = v29 - v33;
      if (v29 >= v33)
      {
        v62 = 0;
      }

      else
      {
        v66 = v8;
        v67 = v7;
        v34 = 0;
        v64 = v33 - v29;
        v65 = v29;
        v68 = a1;
        while (1)
        {
          v35 = [*(a1 + 32) objectAtIndex:{v29, v64}];
          v36 = [v3 endDate];
          v37 = [v35 startDate];
          v38 = [v36 CalIsBeforeOrSameAsDate:v37];

          if (v38)
          {
            break;
          }

          v39 = v32;
          v40 = [v35 startDate];
          v41 = [v35 endDate];
          v42 = [v3 startDate];
          v43 = [v35 startDate];
          v44 = [v42 CalIsAfterDate:v43];

          if (v44)
          {
            v45 = objc_alloc_init(EKInviteeTimeSpan);
            v46 = [v35 startDate];
            [(EKInviteeTimeSpan *)v45 setStartDate:v46];

            v47 = [v3 startDate];
            [(EKInviteeTimeSpan *)v45 setEndDate:v47];

            v48 = [(EKInviteeTimeSpan *)v45 conflictedParticipants];
            v49 = [v35 conflictedParticipants];
            [v48 addObjectsFromArray:v49];

            [v39 addObject:v45];
            v50 = [v3 startDate];

            v40 = v50;
          }

          [v39 addObject:v35];
          v51 = [v3 endDate];
          v52 = [v35 endDate];
          v53 = [v51 CalIsBeforeDate:v52];

          if (v53)
          {
            v54 = objc_alloc_init(EKInviteeTimeSpan);
            v55 = [v3 endDate];
            [(EKInviteeTimeSpan *)v54 setStartDate:v55];

            v56 = [v35 endDate];
            [(EKInviteeTimeSpan *)v54 setEndDate:v56];

            v57 = [(EKInviteeTimeSpan *)v54 conflictedParticipants];
            v58 = [v35 conflictedParticipants];
            [v57 addObjectsFromArray:v58];

            [v39 addObject:v54];
            v59 = [v3 endDate];

            v41 = v59;
          }

          v32 = v39;
          [v35 setStartDate:v40];
          [v35 setEndDate:v41];
          v60 = [v35 conflictedParticipants];
          a1 = v68;
          v70 = *(v68 + 40);
          v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v60 addObjectsFromArray:v61];

          ++v29;
          if (v69 == --v34)
          {
            v8 = v66;
            v7 = v67;
            v62 = v64;
            v29 = v65;
            goto LABEL_23;
          }
        }

        v62 = -v34;
        v8 = v66;
        v7 = v67;
        v29 = v65;
      }

LABEL_23:
      if ([v32 count])
      {
        [*(a1 + 32) replaceObjectsInRange:v29 withObjectsFromArray:{v62, v32}];
      }

      else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_1();
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
}

+ (int64_t)_binarySearchForIndexOfTimeSpanInArray:(id)a3 containingDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _invalidBinarySearchIndex];
  v8 = [v5 count];
  if (v5 && v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    do
    {
      v11 = v9 + ((v10 - v9) >> 1);
      v12 = [v5 objectAtIndex:v11];
      v13 = [v12 startDate];
      if ([v6 CalIsAfterOrSameAsDate:v13])
      {
        v14 = [v12 endDate];
        v15 = [v6 CalIsBeforeDate:v14];

        if (v15)
        {

          v7 = v9 + ((v10 - v9) >> 1);
          break;
        }
      }

      else
      {
      }

      v16 = [v12 startDate];
      v17 = [v6 CalIsBeforeDate:v16];

      if (v17)
      {
        v10 = v11 - 1;
      }

      else
      {
        v9 = v11 + 1;
      }
    }

    while (v9 <= v10);
  }

  return v7;
}

+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)a3
{
  v3 = MEMORY[0x1E6992F50];
  v4 = a3;
  v5 = [v3 defaultProvider];
  v6 = [v5 myFullName];
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v8 = EKBundle();
    v9 = [v8 localizedStringForKey:@"You" value:&stru_1F1B49D68 table:0];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];

  v11 = [EKOrganizer organizerWithName:v7 emailAddress:0 phoneNumber:0 address:v10 isCurrentUser:1];

  return v11;
}

+ (void)_validateSpans:(id)a3
{
  v3 = a3;
  v4 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKInviteeAlternativeTimeSearcher *)v4 _validateSpans:v3];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__6;
  v8[4] = __Block_byref_object_dispose__6;
  v9 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__6;
  v6[4] = __Block_byref_object_dispose__6;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke;
  v5[3] = &unk_1E77FE078;
  v5[4] = v8;
  v5[5] = &v22;
  v5[6] = &v18;
  v5[7] = &v14;
  v5[8] = v6;
  v5[9] = &v10;
  [v3 enumerateObjectsUsingBlock:v5];
  if (*(v23 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v19 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v15 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v11 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  if (*(*(a1[4] + 8) + 40) && ([v4 isEqualToDate:?] & 1) == 0)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_1(a1 + 4);
    }

    *(*(a1[5] + 8) + 24) = 1;
  }

  v6 = [v3 endDate];
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if ([v4 isEqualToDate:v5])
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_3();
    }

    v9 = 6;
  }

  else
  {
    if (![v4 CalIsAfterDate:v5])
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_2();
    }

    v9 = 7;
  }

  *(*(a1[v9] + 8) + 24) = 1;
LABEL_15:
  v10 = a1 + 8;
  v11 = *(*(a1[8] + 8) + 40);
  if (v11)
  {
    v12 = [v11 conflictedParticipants];
    if (v12)
    {
      v13 = [*(*(*v10 + 8) + 40) conflictedParticipants];
      v14 = [v13 count] != 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v3 conflictedParticipants];
    if (v15)
    {
      v16 = [v3 conflictedParticipants];
      v17 = [v16 count] != 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v14 && !v17)
    {
      *(*(a1[9] + 8) + 24) = 1;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_4(v10);
      }
    }
  }

  v18 = *(*v10 + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v3;
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_3(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [v3 startDate];
  v6 = [*a1 endDateUnadjustedForLegacyClients];
  v7 = [*a1 calendar];
  v14 = [v7 source];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);

  v13 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1A805E000, v1, OS_LOG_TYPE_DEBUG, "Adding organizer with address [%@] to the list of attendees to be included in conflict resolution.  Participant: [%@]", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_9(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_12()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_13()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_16()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Could not find participant.  Will not count as busy.  Address: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_1(uint64_t *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = [objc_opt_class() stateAsString:*(a3 + 40)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_1A805E000, v7, v8, "Sending state change.  State: [%@]", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_2(uint64_t *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = [objc_opt_class() stateAsString:*(a3 + 40)];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "No 'state changed' callback found.  Will not send state changed information.  State: [%@]", v8, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_processResults:(void *)a1 betweenStartDate:(void *)a2 endDate:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_processResults:betweenStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_processResults:(void *)a1 betweenStartDate:(void *)a2 endDate:.cold.3(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "remainingSearchAttempts")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_1A805E000, v6, v7, "There are [%@] remaining search attempts left.  Continuing search.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_processResults:betweenStartDate:endDate:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_haltSearchWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_findLeftoverSpans:usingFreeTimes:andNonOptimalTimes:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "No participant found for participant with address: [%@].  Will not generate time spans for this participant's availability information.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 startDate];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Could not find a time span that contains date: [%@]", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "This span's start date is equal to its end date: [%@].  Will not consider this span in alternative time calculations.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_validateSpans:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)_validateSpans:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Time gaps exist in the spans range: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_validateSpans:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "A zero-duration span exists in the spans range: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_validateSpans:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "At least one span's start date comes after its end date in the spans range: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_validateSpans:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "At least two contiguous spans are marked as being free in the spans range: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v3, v4, "Found span whose start date doesn't match previous span's end date.  Previous lastEndDate: [%@].  Cached span: [%@]");
  v5 = *MEMORY[0x1E69E9840];
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Span's start date is after its end date: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Span's start and end date is the same: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v3, v4, "Contiguous free spans exist.  Last inspected span: [%@].  This span: [%@]");
  v5 = *MEMORY[0x1E69E9840];
}

@end