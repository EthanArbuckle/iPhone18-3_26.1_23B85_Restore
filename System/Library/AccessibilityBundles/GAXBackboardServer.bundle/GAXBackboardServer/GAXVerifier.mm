@interface GAXVerifier
- (BOOL)_appWithIdentifierIsInstalledOnDevice:(id)device;
- (BOOL)_shouldForceAppRelaunchWithVerifyEvent:(unint64_t)event;
- (GAXVerifier)init;
- (GAXVerifierDelegate)delegate;
- (id)displayStringForOutcome:(unint64_t)outcome;
- (void)_beginProcessingEventsIfNeeded;
- (void)_didFinishVerifyingCurrentEventWithOutcome:(unint64_t)outcome error:(id)error;
- (void)_processNextEventInQueue;
- (void)_shouldAttemptLaunchOfSessionAppWithEvent:(unint64_t)event gaxState:(id *)state completion:(id)completion;
- (void)_verifyWithEventObject:(id)object completion:(id)completion;
- (void)didFinishAppLaunchAttemptWithConfiguration:(unsigned int)configuration errorMessage:(id)message;
- (void)outcome:(unint64_t)outcome isError:(BOOL *)error isIndeterminate:(BOOL *)indeterminate;
- (void)pause;
- (void)resume;
- (void)verifyIntegrityWithEvent:(unint64_t)event afterDelay:(double)delay completion:(id)completion;
@end

@implementation GAXVerifier

- (GAXVerifier)init
{
  v5.receiver = self;
  v5.super_class = GAXVerifier;
  v2 = [(GAXVerifier *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(GAXVerifier *)v2 setVerifyQueue:v3];
  }

  return v2;
}

- (void)verifyIntegrityWithEvent:(unint64_t)event afterDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v10 = objc_alloc_init(GAXVerificationEventObject);
  [(GAXVerificationEventObject *)v10 setEvent:event];
  [(GAXVerificationEventObject *)v10 setDelay:delay];
  [(GAXVerificationEventObject *)v10 setCompletion:completionCopy];

  verifyQueue = [(GAXVerifier *)self verifyQueue];
  [verifyQueue addObject:v10];

  [(GAXVerifier *)self _beginProcessingEventsIfNeeded];
}

- (void)pause
{
  v3 = GAXLogIntegrity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Pausing verification.", v4, 2u);
  }

  self->_paused = 1;
}

- (void)resume
{
  v3 = GAXLogIntegrity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Resuming verification.", v6, 2u);
  }

  self->_paused = 0;
  verifyQueue = [(GAXVerifier *)self verifyQueue];
  v5 = [verifyQueue count];

  if (v5)
  {
    [(GAXVerifier *)self _beginProcessingEventsIfNeeded];
  }
}

- (void)didFinishAppLaunchAttemptWithConfiguration:(unsigned int)configuration errorMessage:(id)message
{
  if (message)
  {
    message = [NSError ax_errorWithDomain:@"GAXAppLaunching" description:@"%@", message];
  }

  else
  {
    message = 0;
  }

  v6 = message;
  v5 = message;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)outcome:(unint64_t)outcome isError:(BOOL *)error isIndeterminate:(BOOL *)indeterminate
{
  if (outcome - 6 < 0x11)
  {
    goto LABEL_2;
  }

  if (outcome - 23 < 5)
  {
    v8 = 0;
    v7 = 1;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!outcome)
  {
    v9 = GAXLogIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_2A260(v9);
    }

LABEL_2:
    v7 = 0;
    v8 = 1;
    if (!error)
    {
      goto LABEL_7;
    }

LABEL_6:
    *error = v8;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  if (error)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (indeterminate)
  {
    *indeterminate = v7;
  }
}

- (id)displayStringForOutcome:(unint64_t)outcome
{
  if (outcome > 0x1B)
  {
    return @"Success - GAX is Dormant";
  }

  else
  {
    return *(&off_4D188 + outcome);
  }
}

- (void)_beginProcessingEventsIfNeeded
{
  if (!self->_isProcessingEventQueue)
  {
    [(GAXVerifier *)self _processNextEventInQueue];
  }
}

- (void)_processNextEventInQueue
{
  if (self->_paused)
  {
    v3 = GAXLogIntegrity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "GAX verification is paused. Waiting for resumption.", buf, 2u);
    }

    self->_isProcessingEventQueue = 0;
  }

  else
  {
    verifyQueue = [(GAXVerifier *)self verifyQueue];
    v5 = [verifyQueue count];

    if (v5)
    {
      if (self->_isProcessingEventQueue)
      {
        delegate = GAXLogIntegrity();
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, delegate, OS_LOG_TYPE_DEFAULT, "Wanting to process next event in queue, but we're already busy processing another event", buf, 2u);
        }
      }

      else
      {
        self->_isProcessingEventQueue = 1;
        v10 = GAXLogIntegrity();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Will begin verifying integrity", buf, 2u);
        }

        delegate = [(GAXVerifier *)self delegate];
        [delegate willBeginVerificationWithIntegrityVerifier:self];
      }

      verifyQueue2 = [(GAXVerifier *)self verifyQueue];
      firstObject = [verifyQueue2 firstObject];

      verifyQueue3 = [(GAXVerifier *)self verifyQueue];
      [verifyQueue3 removeObjectAtIndex:0];

      v13 = GAXLogIntegrity();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        eventName = [firstObject eventName];
        verifyQueue4 = [(GAXVerifier *)self verifyQueue];
        v16 = [verifyQueue4 count];
        *buf = 138543618;
        v40 = eventName;
        v41 = 2050;
        v42 = v16;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Verifying next integrity event <%{public}@>. %{public}ld reamin in queue", buf, 0x16u);
      }

      verifyQueue5 = [(GAXVerifier *)self verifyQueue];
      v18 = [verifyQueue5 count];

      if (v18)
      {
        v19 = [NSMutableString stringWithString:@"Remaining Events:\n"];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        verifyQueue6 = [(GAXVerifier *)self verifyQueue];
        v21 = [verifyQueue6 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v35;
          do
          {
            v24 = 0;
            do
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(verifyQueue6);
              }

              eventName2 = [*(*(&v34 + 1) + 8 * v24) eventName];
              [v19 appendFormat:@"  %@\n", eventName2];

              v24 = v24 + 1;
            }

            while (v22 != v24);
            v22 = [verifyQueue6 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v22);
        }

        v26 = GAXLogIntegrity();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v19;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      [(GAXVerifier *)self setCurrentVerificationEvent:firstObject];
      [firstObject delay];
      if (v27 <= 0.0)
      {
        v28 = GAXLogIntegrity();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          eventName3 = [firstObject eventName];
          *buf = 138543362;
          v40 = eventName3;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Verifying event: <%{public}@>", buf, 0xCu);
        }

        currentVerificationEvent = [(GAXVerifier *)self currentVerificationEvent];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_82F4;
        v31[3] = &unk_4D028;
        v31[4] = self;
        [(GAXVerifier *)self _verifyWithEventObject:currentVerificationEvent completion:v31];
      }

      else
      {
        [(GAXVerifier *)self _didFinishVerifyingCurrentEventWithOutcome:24 error:0];
        [firstObject delay];
        v31[5] = _NSConcreteStackBlock;
        v31[6] = 3221225472;
        v31[7] = sub_81C4;
        v31[8] = &unk_4D050;
        v32 = firstObject;
        selfCopy = self;
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }

    else
    {
      self->_isProcessingEventQueue = 0;
      currentVerificationEvent = self->_currentVerificationEvent;
      self->_currentVerificationEvent = 0;

      v8 = GAXLogIntegrity();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Did finish verifying integrity for items in queue", buf, 2u);
      }

      firstObject = [(GAXVerifier *)self delegate];
      [firstObject didFinishVerificationWithIntegrityVerifier:self];
    }
  }
}

- (void)_verifyWithEventObject:(id)object completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  delegate = [(GAXVerifier *)self delegate];
  v9 = [delegate shouldProceedWithVerificationForIntegrityVerifier:self];

  if (!v9)
  {
    goto LABEL_5;
  }

  delegate2 = [(GAXVerifier *)self delegate];
  v11 = [delegate2 frontmostAppIsAcceptableForSessionAppWithIntegrityVerifier:self];

  delegate3 = [(GAXVerifier *)self delegate];
  v13 = [delegate3 willStartSessionWhenFrontmostAppChangesForIntegrityVerifier:self];

  delegate4 = [(GAXVerifier *)self delegate];
  v15 = [delegate4 appLayoutIsMultiAppForIntegrityVerifier:self];

  v16 = GAXLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v11;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    *&buf[14] = 1024;
    *&buf[16] = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "frontmost app acceptable: %d start session on frontmost change: %d app layout multi-app: %d", buf, 0x14u);
  }

  event = [objectCopy event];
  if (event == &dword_0 + 3)
  {
    goto LABEL_5;
  }

  v20 = event;
  delegate5 = [(GAXVerifier *)self delegate];
  v22 = [delegate5 deviceIsInLostModeForIntegrityVerifier:self];

  if (v22)
  {
    goto LABEL_5;
  }

  if (!(v15 & 1 | (((v11 | v13) & 1) == 0)))
  {
    delegate6 = [(GAXVerifier *)self delegate];
    v26 = [delegate6 hasMultipleSessionAppsForIntegrityVerifier:self];

    if (v26)
    {
      p_sessionAppCheckinAttempts = &self->_sessionAppCheckinAttempts;
    }

    else
    {
      delegate7 = [(GAXVerifier *)self delegate];
      v29 = [delegate7 sessionAppGAXClientDidCheckInForIntegrityVerifier:self];

      p_sessionAppCheckinAttempts = &self->_sessionAppCheckinAttempts;
      if ((v29 & 1) == 0)
      {
        ++*p_sessionAppCheckinAttempts;
        v32 = GAXLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          delegate8 = [(GAXVerifier *)self delegate];
          v34 = [delegate8 expectedSessionAppIdentifierForIntegrityVerifier:self];
          v35 = [NSNumber numberWithInteger:20 - self->_sessionAppCheckinAttempts];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v35;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Session app gax client (%{public}@) did not check in yet. Attempts remaining: %{public}@", buf, 0x16u);
        }

        if (*p_sessionAppCheckinAttempts < 21)
        {
          goto LABEL_5;
        }

        v36 = GAXLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_2A304();
        }
      }
    }

    *p_sessionAppCheckinAttempts = 0;
LABEL_5:
    v37 = completionCopy;
    v18 = completionCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    v19 = v37;
    goto LABEL_6;
  }

  memset(buf, 0, 28);
  delegate9 = [(GAXVerifier *)self delegate];
  v24 = delegate9;
  if (delegate9)
  {
    [delegate9 gaxStateForIntegrityVerifier:self];
  }

  else
  {
    memset(buf, 0, 28);
  }

  v30 = GAXLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    eventName = [objectCopy eventName];
    *v40 = 138412290;
    *&v40[4] = eventName;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Checking whether to launch session app with event: %@", v40, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_87B8;
  v38[3] = &unk_4D078;
  v38[4] = self;
  v39 = completionCopy;
  *v40 = *buf;
  *&v40[12] = *&buf[12];
  v18 = completionCopy;
  [(GAXVerifier *)self _shouldAttemptLaunchOfSessionAppWithEvent:v20 gaxState:v40 completion:v38];
  v19 = v39;
LABEL_6:
}

- (void)_shouldAttemptLaunchOfSessionAppWithEvent:(unint64_t)event gaxState:(id *)state completion:(id)completion
{
  completionCopy = completion;
  v9 = [(GAXVerifier *)self _shouldForceAppRelaunchWithVerifyEvent:event];
  delegate = [(GAXVerifier *)self delegate];
  v11 = [delegate expectedSessionAppIdentifierForIntegrityVerifier:self];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_8BDC;
  v34[3] = &unk_4D078;
  v34[4] = self;
  v12 = completionCopy;
  v35 = v12;
  v13 = objc_retainBlock(v34);
  v14 = v13;
  if (event == 8)
  {
    goto LABEL_10;
  }

  if (event == 3)
  {
    v15 = GAXLogIntegrity();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_2A338();
    }

    v14[2](v14, 26);
    goto LABEL_12;
  }

  if (!v11)
  {
    (v13[2])(v13, 9);
    goto LABEL_12;
  }

  delegate2 = [(GAXVerifier *)self delegate];
  v17 = [delegate2 sessionAppWithIdentifier:v11 isRelaunchableForIntegrityVerifier:self];

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v14[2](v14, 18);
    goto LABEL_12;
  }

  delegate3 = [(GAXVerifier *)self delegate];
  v19 = [delegate3 sessionAppIsPreferencesForIntegrityVerifier:self];

  if (v19)
  {
    v14[2](v14, 8);
  }

  else
  {
    delegate4 = [(GAXVerifier *)self delegate];
    v21 = [delegate4 isSystemAppAccessDisabledForIntegrityVerifier:self];

    if (v21)
    {
      v14[2](v14, 14);
    }

    else
    {
      delegate5 = [(GAXVerifier *)self delegate];
      v23 = [delegate5 isPreBoardRunningForIntegrityVerifier:self];

      if (v23)
      {
        v14[2](v14, 15);
      }

      else
      {
        delegate6 = [(GAXVerifier *)self delegate];
        v25 = [delegate6 isCheckerBoardRunningForIntegrityVerifier:self];

        if (v25)
        {
          v14[2](v14, 16);
        }

        else
        {
          v26 = +[AXSpringBoardServer server];

          if (v26)
          {
            v27 = +[AXSpringBoardServer server];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_8DBC;
            v29[3] = &unk_4D118;
            v29[4] = self;
            v30 = v11;
            *v32 = *&state->var0;
            *&v32[12] = *&state->var3;
            v33 = v9;
            v31 = v12;
            [v27 systemAppInfoWithQuery:704 completion:v29];
          }

          else
          {
            v28 = GAXLogIntegrity();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_2A378();
            }

            v14[2](v14, 22);
          }
        }
      }
    }
  }

LABEL_12:
}

- (BOOL)_shouldForceAppRelaunchWithVerifyEvent:(unint64_t)event
{
  result = 1;
  if (event <= 0x12)
  {
    if (((1 << event) & 0x69FC8) != 0)
    {
      return 0;
    }

    else if (!event)
    {
      _AXAssert();
      return 0;
    }
  }

  return result;
}

- (void)_didFinishVerifyingCurrentEventWithOutcome:(unint64_t)outcome error:(id)error
{
  errorCopy = error;
  self->_mostRecentOutcome = outcome;
  currentVerificationEvent = [(GAXVerifier *)self currentVerificationEvent];
  eventName = [currentVerificationEvent eventName];
  v9 = [(GAXVerifier *)self displayStringForOutcome:outcome];
  v10 = [NSMutableString stringWithFormat:@"Did verify event: [%@]. Outcome: [%@].", eventName, v9];

  if (errorCopy)
  {
    [v10 appendFormat:@" Error: [%@]. ", errorCopy];
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2A3AC(v10, v11);
    }
  }

  else
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x2020000000;
  v22[0] = 0;
  v19 = 0;
  [(GAXVerifier *)self outcome:outcome isError:&v19 isIndeterminate:v22];
  if (v19 == 1)
  {
    delegate = [(GAXVerifier *)self delegate];
    delegate2 = [(GAXVerifier *)self delegate];
    expectedSessionAppIdentifier = [delegate2 expectedSessionAppIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_927C;
    v15[3] = &unk_4D168;
    v15[4] = self;
    p_buf = &buf;
    outcomeCopy = outcome;
    v16 = errorCopy;
    [delegate sessionAppIsBeingInstalledForIntegrityVerifier:self sessionIdentifier:expectedSessionAppIdentifier completion:v15];
  }

  else
  {
    [(GAXVerifier *)self _didFinishVerifyingCurrentEventWithOutcomePhase2:outcome outcomeIsIndeterminate:*(*(&buf + 1) + 24) error:errorCopy];
  }

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_appWithIdentifierIsInstalledOnDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    [LSApplicationRecord enumeratorWithOptions:0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          bundleIdentifier = [v9 bundleIdentifier];
          if ([deviceCopy isEqualToString:bundleIdentifier])
          {

LABEL_15:
            v14 = 1;
            goto LABEL_16;
          }

          iTunesMetadata = [v9 iTunesMetadata];
          itemName = [iTunesMetadata itemName];
          v13 = [deviceCopy isEqualToString:itemName];

          if (v13)
          {
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (GAXVerifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end