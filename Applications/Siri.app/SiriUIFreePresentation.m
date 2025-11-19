@interface SiriUIFreePresentation
- (SiriUIFreePresentation)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5 dataSource:(id)a6;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (void)_didPresentItemsAtIndexPaths:(id)a3;
- (void)conversation:(id)a3 didInsertItemsAtIndexPaths:(id)a4;
- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriDidDeactivate;
- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4;
- (void)siriRequestWillStartWithRequestOptions:(id)a3;
@end

@implementation SiriUIFreePresentation

- (SiriUIFreePresentation)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5 dataSource:(id)a6
{
  v8 = a5;
  v9 = a6;
  v13.receiver = self;
  v13.super_class = SiriUIFreePresentation;
  v10 = [(SiriUIFreePresentation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SiriUIFreePresentation *)v10 setDelegate:v8];
    [(SiriUIFreePresentation *)v11 setDataSource:v9];
    v11->_idleTimeoutInSec = 9.0;
  }

  return v11;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (!self->_hasReportedPresentation)
    {
      v6 = [(SiriUIFreePresentation *)self delegate];
      [v6 siriPresentationDidPresentUserInterface:self];

      v5 = obj;
      self->_hasReportedPresentation = 1;
    }
  }
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  v5 = +[AFUISiriSession availabilityState];
  if (v5 && !self->_shouldSuppressErrorTTS)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v5 == 2)
    {
      v10 = +[NSBundle afui_assistantUIFrameworkBundle];
      v11 = [v10 siriUILocalizedStringForKey:@"ASSISTANT_FIRST_UNLOCK_TITLE" value:@"Enter Passcode to Use Siri" table:0];
    }

    else
    {
      v10 = [v8 siriUILocalizedStringForKey:@"ASSISTANT_NOT_AVAILABLE_TITLE"];
      v12 = [(SiriUIFreePresentation *)self delegate];
      [v12 siriPresentation:self synthesizeSpeechWithText:v10 completion:0];

      if (v5 == 3)
      {
        v14 = +[UIDevice currentDevice];
        v15 = [v14 sf_isChinaRegionCellularDevice];

        if (v15)
        {
          v13 = @"ASSISTANT_NO_LOCAL_ASSETS_SUBTITLE_NOTIFICATION_CHINA";
        }

        else
        {
          v13 = @"ASSISTANT_NO_LOCAL_ASSETS_SUBTITLE_NOTIFICATION";
        }
      }

      else
      {
        if (v5 != 1)
        {
LABEL_15:
          v17 = [(SiriUIFreePresentation *)self delegate];
          [v17 siriPresentation:self synthesizeSpeechWithText:v10 completion:0];

          goto LABEL_16;
        }

        v13 = @"ASSISTANT_NO_NETWORK_SUBTITLE";
      }

      v11 = [v9 siriUILocalizedStringForKey:v13];
    }

    v16 = v11;

    v10 = v16;
    goto LABEL_15;
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    shouldSuppressErrorTTS = self->_shouldSuppressErrorTTS;
    v19 = 136315906;
    v20 = "[SiriUIFreePresentation siriDidActivateFromSource:]";
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = shouldSuppressErrorTTS;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Suppressing error TTS. source : %ld, availability : %lu, _shouldSuppressErrorTTS : %d", &v19, 0x26u);
  }

LABEL_16:
  v18 = [(SiriUIFreePresentation *)self delegate];
  [v18 enableIdleTimerForSiriPresentation:self];
}

- (void)siriRequestWillStartWithRequestOptions:(id)a3
{
  self->_shouldResumeMediaOnIdle = 0;
  v4 = [a3 requestSource];
  if (v4 == 43 || v4 == 27)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[SiriUIFreePresentation siriRequestWillStartWithRequestOptions:]";
      v8 = 2048;
      v9 = 0x4000000000000000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #uifree Adjusting ui free idle timer to %f seconds for user interaction request source", &v6, 0x16u);
    }

    self->_idleTimeoutInSec = 2.0;
  }

  self->_shouldPauseAutoDismissal = 0;
}

- (void)siriDidDeactivate
{
  v3 = [(SiriUIFreePresentation *)self delegate];
  [v3 disableIdleTimerForSiriPresentation:self];
}

- (void)conversation:(id)a3 didInsertItemsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriUIFreePresentation conversation:didInsertItemsAtIndexPaths:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [(SiriUIFreePresentation *)self _didPresentItemsAtIndexPaths:v5];
}

- (void)_didPresentItemsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIFreePresentation *)self dataSource];
  v6 = [v5 conversationIdentifiersForSiriPresentation:self];
  v7 = [v6 lastObject];

  v8 = [(SiriUIFreePresentation *)self dataSource];
  v9 = [v8 siriPresentation:self conversationWithIdentifier:v7];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v9 itemAtIndexPath:{*(*(&v19 + 1) + 8 * v15), v19}];
        v17 = [v16 identifier];
        [v10 addObject:v17];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = [(SiriUIFreePresentation *)self delegate];
  [v18 siriPresentation:self didPresentConversationItemsWithIdentifiers:v10];
}

- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4
{
  v5 = a3;
  if ([v5 premptivelyResumeMedia])
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SiriUIFreePresentation handleRequestEndBehavior:isAttending:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Presentation will resume media on idle", &v13, 0xCu);
    }

    self->_shouldResumeMediaOnIdle = 1;
  }

  v7 = [v5 minimumAutoDismissalTimeInMs];

  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 minimumAutoDismissalTimeInMs];
      v11 = [v10 longValue];
      v13 = 136315394;
      v14 = "[SiriUIFreePresentation handleRequestEndBehavior:isAttending:]";
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for ui free presentation by %ld milliseconds.", &v13, 0x16u);
    }

    v12 = [v5 minimumAutoDismissalTimeInMs];
    self->_idleTimeoutInSec = [v12 longValue] / 1000.0;
  }
}

- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4
{
  switch(a4)
  {
    case 13:
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SiriUIFreePresentation siriDidTransitionFromState:event:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #uifree Speech was mitigated as side speech, dismissing", &v9, 0xCu);
      }

      self->_shouldPauseAutoDismissal = 0;
      v8 = [(SiriUIFreePresentation *)self delegate];
      [v8 dismissSiriPresentation:self withReason:46];

      break;
    case 12:
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SiriUIFreePresentation siriDidTransitionFromState:event:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #uifree Speech directed siri speech detected, unpausing auto dismissal", &v9, 0xCu);
      }

      self->_shouldPauseAutoDismissal = 0;
      break;
    case 11:
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SiriUIFreePresentation siriDidTransitionFromState:event:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #uifree Speech start detected, pausing auto dismissal", &v9, 0xCu);
      }

      self->_shouldPauseAutoDismissal = 1;
      break;
  }
}

- (SiriUIPresentationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SiriUIPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end