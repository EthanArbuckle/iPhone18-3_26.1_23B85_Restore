@interface PKBaseCarCommandHandler
- (BOOL)_carKeyPass:(id)pass correspondsToAllSpokenPhrase:(id)phrase;
- (BOOL)_findExactMatchOnSpokenPhraseForCarPass:(id)pass spokenPhrase:(id)phrase completion:(id)completion;
- (BOOL)isCarReadyForCommunication;
- (BOOL)isCurrentFunctionAlreadyInDesiredState:(int64_t)state;
- (PKBaseCarCommandHandler)init;
- (PKBaseCarCommandHandler)initWithDelegate:(id)delegate;
- (PKIntentHandlerDelegate)delegate;
- (id)_carKeyPassForUniqueIdentifier:(id)identifier;
- (id)_getVehicleReport:(id)report;
- (id)handleGetCurrentFunctionState;
- (int64_t)prepareCarWithResolvedCarName:(id)name toHandleDesiredFunctions:(id)functions;
- (void)_secureElementPassCorrespondingToPhrase:(id)phrase completion:(id)completion;
- (void)dealloc;
- (void)handlePerformAction:(int64_t)action withDesiredStatus:(int64_t)status completion:(id)completion;
- (void)handleSetCurrentFunctionToDesiredStatus:(int64_t)status withCompletion:(id)completion;
- (void)invalidate;
- (void)resolveCarNameForSpokenString:(id)string withCompletion:(id)completion;
@end

@implementation PKBaseCarCommandHandler

- (PKBaseCarCommandHandler)init
{
  v9.receiver = self;
  v9.super_class = PKBaseCarCommandHandler;
  v2 = [(PKBaseCarCommandHandler *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKPaymentService);
    paymentService = v2->_paymentService;
    v2->_paymentService = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.siri.CarCommands.intents.session", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (PKBaseCarCommandHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKBaseCarCommandHandler;
  v5 = [(PKBaseCarCommandHandler *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(PKPaymentService);
    paymentService = v5->_paymentService;
    v5->_paymentService = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.passkit.intents.session", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  [(PKBaseCarCommandHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKBaseCarCommandHandler;
  [(PKBaseCarCommandHandler *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_invalidated, &v2, 1u);
  if (!v2)
  {
    trackedHandle = self->_trackedHandle;
    if (trackedHandle)
    {
      [(PKPaymentSessionHandle *)trackedHandle invalidateSession];
    }
  }
}

- (id)_carKeyPassForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[PKPassLibrary sharedInstance];
  v5 = [v4 passWithUniqueID:identifierCopy];

  secureElementPass = [v5 secureElementPass];

  return secureElementPass;
}

- (id)_getVehicleReport:(id)report
{
  reportCopy = report;
  v20 = 0;
  v4 = [PKGetClassNFDigitalCarKeySession() vehicleReports:&v20];
  v5 = v20;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: failed to fetch vehicle report.", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_2958;
    v18 = sub_2968;
    v19 = 0;
    devicePrimaryPaymentApplication = [reportCopy devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2970;
    v11[3] = &unk_1CFCF8;
    v13 = buf;
    v12 = v4;
    [subcredentials enumerateObjectsUsingBlock:v11];

    v7 = *(v15 + 5);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

- (void)_secureElementPassCorrespondingToPhrase:(id)phrase completion:(id)completion
{
  completionCopy = completion;
  phraseCopy = phrase;
  v8 = +[PKPassLibrary sharedInstance];
  v9 = [v8 passesOfType:1];

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = [v9 count];
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Number of secureElementPasses %lu", &v15, 0xCu);
  }

  v11 = [v9 pk_objectsPassingTest:&stru_1CFD38];
  spokenPhrase = [phraseCopy spokenPhrase];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = spokenPhrase;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Spoken Phrase: %@", &v15, 0xCu);
  }

  if (![(PKBaseCarCommandHandler *)self _findExactMatchOnSpokenPhraseForCarPass:v9 spokenPhrase:spokenPhrase completion:completionCopy])
  {
    if (spokenPhrase)
    {
      v13 = +[NSSet set];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Getting a generic request for carName. Returning all carKeyPasses", &v15, 2u);
      }

      v13 = [NSSet setWithArray:v11];
    }

    v14 = v13;
    completionCopy[2](completionCopy, v13);
  }
}

- (BOOL)_findExactMatchOnSpokenPhraseForCarPass:(id)pass spokenPhrase:(id)phrase completion:(id)completion
{
  passCopy = pass;
  phraseCopy = phrase;
  completionCopy = completion;
  if (phraseCopy)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_2DD8;
    v21 = &unk_1CFD60;
    selfCopy = self;
    v23 = phraseCopy;
    v11 = [passCopy pk_objectsPassingTest:&v18];
    v12 = [v11 count];
    v13 = v12 != 0;
    if (v12)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 count];
        *buf = 134217984;
        v25 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Found %lu exact match(es).", buf, 0xCu);
      }

      v16 = [NSSet setWithArray:v11];
      completionCopy[2](completionCopy, v16);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_carKeyPass:(id)pass correspondsToAllSpokenPhrase:(id)phrase
{
  passCopy = pass;
  lowercaseString = [phrase lowercaseString];
  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [lowercaseString componentsSeparatedByCharactersInSet:v7];

  v9 = [NSPredicate predicateWithFormat:@"SELF != ''"];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  localizedDescription = [passCopy localizedDescription];
  lowercaseString2 = [localizedDescription lowercaseString];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (![lowercaseString2 containsString:{*(*(&v20 + 1) + 8 * i), v20}])
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (void)resolveCarNameForSpokenString:(id)string withCompletion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3060;
  v8[3] = &unk_1CFDC8;
  stringCopy = string;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = stringCopy;
  [(PKBaseCarCommandHandler *)self _secureElementPassCorrespondingToPhrase:v7 completion:v8];
}

- (int64_t)prepareCarWithResolvedCarName:(id)name toHandleDesiredFunctions:(id)functions
{
  nameCopy = name;
  functionsCopy = functions;
  currentFunction = self->_currentFunction;
  self->_currentFunction = 0;

  currentFunctionStatus = self->_currentFunctionStatus;
  self->_currentFunctionStatus = 0;

  currentCarKeyPass = self->_currentCarKeyPass;
  self->_currentCarKeyPass = 0;

  vocabularyIdentifier = [nameCopy vocabularyIdentifier];
  v12 = [(PKBaseCarCommandHandler *)self _carKeyPassForUniqueIdentifier:vocabularyIdentifier];
  if (v12)
  {
    objc_storeStrong(&self->_currentCarKeyPass, v12);
    v40 = v12;
    v13 = [(PKBaseCarCommandHandler *)self _getVehicleReport:v12];
    v14 = PKLogFacilityTypeGetObject();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v15)
      {
        *buf = 0;
        v25 = 2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: No vehicle report. This means that the car is not a BT-enabled car and it doesn't support RKE", buf, 2u);
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v25 = 2;
      }

      supportedCarKeyIntents = v14;
      goto LABEL_40;
    }

    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Retrieved vehicle report. Retrieving function.", buf, 2u);
    }

    v37 = vocabularyIdentifier;
    v39 = nameCopy;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = functionsCopy;
    v16 = functionsCopy;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
    oslog = v14;
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = *v42;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          if ([v13 isRKEFunctionSupported:v23])
          {
            v24 = v23;

            v19 = 1;
            v20 = v24;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    supportedSiriIntents = [v40 supportedSiriIntents];
    supportedCarKeyIntents = [supportedSiriIntents supportedCarKeyIntents];

    if ((v19 & 1) != 0 && supportedCarKeyIntents && ([supportedCarKeyIntents containsObject:v20] & 1) == 0)
    {
      p_super = oslog;
      vocabularyIdentifier = v37;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v20;
        v34 = "PKBaseCarCommandHandler: Function (%@) not an approved and supported intent";
        goto LABEL_37;
      }
    }

    else
    {
      p_super = oslog;
      v29 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      vocabularyIdentifier = v37;
      if (v19)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Retrieved function. Retrieving function status.", buf, 2u);
        }

        v30 = [v13 getStatusForRKEFunction:v20];
        v31 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        functionsCopy = v38;
        nameCopy = v39;
        if (v30)
        {
          if (v31)
          {
            *buf = 138412546;
            v46 = v20;
            v47 = 2112;
            v48 = v30;
            _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Successfully retrieved function (%@). Status is (%@)", buf, 0x16u);
          }

          objc_storeStrong(&self->_currentFunction, v20);
          v32 = self->_currentFunctionStatus;
          self->_currentFunctionStatus = v30;
          v33 = v30;

          p_super = &v33->super.super;
          v25 = 3;
        }

        else
        {
          if (v31)
          {
            *buf = 0;
            _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Unable to retrieve function status. Car likely not connected.", buf, 2u);
          }

          v25 = 1;
        }

        goto LABEL_39;
      }

      if (v29)
      {
        *buf = 138412290;
        v46 = v16;
        v34 = "PKBaseCarCommandHandler: No supported functions matching %@.";
LABEL_37:
        _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
      }
    }

    v25 = 2;
    functionsCopy = v38;
    nameCopy = v39;
LABEL_39:

LABEL_40:
    v12 = v40;
    goto LABEL_41;
  }

  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: No car was specified. Either we have no cars stored, or this is an error and we failed to set the identifier.", buf, 2u);
  }

  v25 = 0;
LABEL_41:

  return v25;
}

- (id)handleGetCurrentFunctionState
{
  if (self->_currentCarKeyPass && self->_currentFunction && (currentFunctionStatus = self->_currentFunctionStatus) != 0)
  {
    v3 = currentFunctionStatus;
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: No car was specified, or we unable to retrieve the function and function status. Either we have no cars stored, or this is an error and we failed to set the identifier.", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)isCarReadyForCommunication
{
  if (self->_currentCarKeyPass && self->_currentFunction && self->_currentFunctionStatus)
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: No car was specified, or we were unable to retrieve the function and function status. Either we have no cars stored, or this is an error and we failed to set the identifier.", v6, 2u);
  }

  return 0;
}

- (BOOL)isCurrentFunctionAlreadyInDesiredState:(int64_t)state
{
  integerValue = [(NSNumber *)self->_currentFunctionStatus integerValue];
  if (integerValue == state)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Function all ready in desired state.", v7, 2u);
    }
  }

  return integerValue == state;
}

- (void)handlePerformAction:(int64_t)action withDesiredStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  if ([(PKBaseCarCommandHandler *)self isCarReadyForCommunication])
  {
    if ([(PKBaseCarCommandHandler *)self isCurrentFunctionAlreadyInDesiredState:status])
    {
      completionCopy[2](completionCopy, 1);
    }

    else
    {
      v9 = [NSNumber numberWithInteger:action];
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        currentFunction = self->_currentFunction;
        uniqueID = [(PKSecureElementPass *)self->_currentCarKeyPass uniqueID];
        *buf = 138412802;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = currentFunction;
        *&buf[22] = 2112;
        v49 = uniqueID;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Sending action (%@) to function (%@) on car (%@).", buf, 0x20u);
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_3F60;
      v46[3] = &unk_1CFE18;
      v47 = completionCopy;
      v13 = objc_retainBlock(v46);
      objc_initWeak(&location, self);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_2958;
      v50 = sub_2968;
      v51 = self->_currentCarKeyPass;
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3032000000;
      v43[3] = sub_2958;
      v43[4] = sub_2968;
      v44 = self->_currentFunction;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 1;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_2958;
      v37 = sub_2968;
      v38 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_4084;
      v25[3] = &unk_1CFE90;
      objc_copyWeak(&v32, &location);
      v14 = v13;
      v27 = v14;
      v28 = &v39;
      v29 = &v33;
      v30 = buf;
      v31 = v43;
      v15 = v9;
      v26 = v15;
      v16 = [PKPaymentSession startDigitalCarKeySessionWithCompletion:v25];
      if (v16)
      {
        v17 = 1;
        atomic_compare_exchange_strong(v40 + 24, &v17, 0);
        if (v17 == 1)
        {
          objc_storeStrong(&self->_trackedHandle, v16);
          v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
          v19 = v34[5];
          v34[5] = v18;

          v20 = v34[5];
          v21 = dispatch_time(0, 10000000000);
          dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          v22 = v34[5];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_43D4;
          v23[3] = &unk_1CFEB8;
          objc_copyWeak(&v24, &location);
          dispatch_source_set_event_handler(v22, v23);
          dispatch_resume(v34[5]);
          objc_destroyWeak(&v24);
        }
      }

      objc_destroyWeak(&v32);
      _Block_object_dispose(&v33, 8);

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(v43, 8);

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)handleSetCurrentFunctionToDesiredStatus:(int64_t)status withCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_currentCarKeyPass && (v7 = self->_currentFunction) != 0 && self->_currentFunctionStatus)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = status;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Requesting to set function (%@) to state (%li)", buf, 0x16u);
    }

    integerValue = [(NSNumber *)self->_currentFunctionStatus integerValue];
    if (integerValue == status)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Function all ready in desired state.", buf, 2u);
      }

      completionCopy[2](completionCopy, 1);
    }

    else if (self->_currentFunction && self->_currentCarKeyPass)
    {
      if (integerValue > 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_1CFED8[integerValue];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        currentFunction = self->_currentFunction;
        uniqueID = [(PKSecureElementPass *)self->_currentCarKeyPass uniqueID];
        *buf = 138412802;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = currentFunction;
        *&buf[22] = 2112;
        v49 = uniqueID;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Sending action (%@) to function (%@) on car (%@).", buf, 0x20u);
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_4A98;
      v46[3] = &unk_1CFE18;
      v47 = completionCopy;
      v14 = objc_retainBlock(v46);
      objc_initWeak(&location, self);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_2958;
      v50 = sub_2968;
      v51 = self->_currentCarKeyPass;
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3032000000;
      v43[3] = sub_2958;
      v43[4] = sub_2968;
      v44 = self->_currentFunction;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 1;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_2958;
      v37 = sub_2968;
      v38 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_4BBC;
      v25[3] = &unk_1CFE90;
      objc_copyWeak(&v32, &location);
      v15 = v14;
      v28 = &v39;
      v29 = &v33;
      v30 = buf;
      v31 = v43;
      v26 = v11;
      v27 = v15;
      v16 = [PKPaymentSession startDigitalCarKeySessionWithCompletion:v25];
      if (v16)
      {
        v17 = 1;
        atomic_compare_exchange_strong(v40 + 24, &v17, 0);
        if (v17 == 1)
        {
          objc_storeStrong(&self->_trackedHandle, v16);
          v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
          v19 = v34[5];
          v34[5] = v18;

          v20 = v34[5];
          v21 = dispatch_time(0, 10000000000);
          dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          v22 = v34[5];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_4F0C;
          v23[3] = &unk_1CFEB8;
          objc_copyWeak(&v24, &location);
          dispatch_source_set_event_handler(v22, v23);
          dispatch_resume(v34[5]);
          objc_destroyWeak(&v24);
        }
      }

      objc_destroyWeak(&v32);
      _Block_object_dispose(&v33, 8);

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(v43, 8);

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&location);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Not NearField linkable or we're missing vital information, cannot send action.", buf, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: No car was specified, or we were unable to retrieve the function and function status. Either we have no cars stored, or this is an error and we failed to set the identifier.", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (PKIntentHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end