@interface SiriUIFreePresentation
- (SiriUIFreePresentation)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate dataSource:(id)source;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (void)_didPresentItemsAtIndexPaths:(id)paths;
- (void)conversation:(id)conversation didInsertItemsAtIndexPaths:(id)paths;
- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending;
- (void)setDelegate:(id)delegate;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivate;
- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event;
- (void)siriRequestWillStartWithRequestOptions:(id)options;
@end

@implementation SiriUIFreePresentation

- (SiriUIFreePresentation)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = SiriUIFreePresentation;
  v10 = [(SiriUIFreePresentation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SiriUIFreePresentation *)v10 setDelegate:delegateCopy];
    [(SiriUIFreePresentation *)v11 setDataSource:sourceCopy];
    v11->_idleTimeoutInSec = 9.0;
  }

  return v11;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (!self->_hasReportedPresentation)
    {
      delegate = [(SiriUIFreePresentation *)self delegate];
      [delegate siriPresentationDidPresentUserInterface:self];

      v5 = obj;
      self->_hasReportedPresentation = 1;
    }
  }
}

- (void)siriDidActivateFromSource:(int64_t)source
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
      delegate = [(SiriUIFreePresentation *)self delegate];
      [delegate siriPresentation:self synthesizeSpeechWithText:v10 completion:0];

      if (v5 == 3)
      {
        v14 = +[UIDevice currentDevice];
        sf_isChinaRegionCellularDevice = [v14 sf_isChinaRegionCellularDevice];

        if (sf_isChinaRegionCellularDevice)
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
          delegate2 = [(SiriUIFreePresentation *)self delegate];
          [delegate2 siriPresentation:self synthesizeSpeechWithText:v10 completion:0];

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
    sourceCopy = source;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = shouldSuppressErrorTTS;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Suppressing error TTS. source : %ld, availability : %lu, _shouldSuppressErrorTTS : %d", &v19, 0x26u);
  }

LABEL_16:
  delegate3 = [(SiriUIFreePresentation *)self delegate];
  [delegate3 enableIdleTimerForSiriPresentation:self];
}

- (void)siriRequestWillStartWithRequestOptions:(id)options
{
  self->_shouldResumeMediaOnIdle = 0;
  requestSource = [options requestSource];
  if (requestSource == 43 || requestSource == 27)
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
  delegate = [(SiriUIFreePresentation *)self delegate];
  [delegate disableIdleTimerForSiriPresentation:self];
}

- (void)conversation:(id)conversation didInsertItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriUIFreePresentation conversation:didInsertItemsAtIndexPaths:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [(SiriUIFreePresentation *)self _didPresentItemsAtIndexPaths:pathsCopy];
}

- (void)_didPresentItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  dataSource = [(SiriUIFreePresentation *)self dataSource];
  v6 = [dataSource conversationIdentifiersForSiriPresentation:self];
  lastObject = [v6 lastObject];

  dataSource2 = [(SiriUIFreePresentation *)self dataSource];
  v9 = [dataSource2 siriPresentation:self conversationWithIdentifier:lastObject];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = pathsCopy;
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
        identifier = [v16 identifier];
        [v10 addObject:identifier];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  delegate = [(SiriUIFreePresentation *)self delegate];
  [delegate siriPresentation:self didPresentConversationItemsWithIdentifiers:v10];
}

- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending
{
  behaviorCopy = behavior;
  if ([behaviorCopy premptivelyResumeMedia])
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

  minimumAutoDismissalTimeInMs = [behaviorCopy minimumAutoDismissalTimeInMs];

  if (minimumAutoDismissalTimeInMs)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      minimumAutoDismissalTimeInMs2 = [behaviorCopy minimumAutoDismissalTimeInMs];
      longValue = [minimumAutoDismissalTimeInMs2 longValue];
      v13 = 136315394;
      v14 = "[SiriUIFreePresentation handleRequestEndBehavior:isAttending:]";
      v15 = 2048;
      v16 = longValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for ui free presentation by %ld milliseconds.", &v13, 0x16u);
    }

    minimumAutoDismissalTimeInMs3 = [behaviorCopy minimumAutoDismissalTimeInMs];
    self->_idleTimeoutInSec = [minimumAutoDismissalTimeInMs3 longValue] / 1000.0;
  }
}

- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event
{
  switch(event)
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
      delegate = [(SiriUIFreePresentation *)self delegate];
      [delegate dismissSiriPresentation:self withReason:46];

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