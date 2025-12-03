@interface SRCompactAutoDismissController
- (BOOL)_deviceSupportsFaceID;
- (BOOL)_ignoreUnintentionalTouches;
- (SRCompactAutoDismissController)initWithDelegate:(id)delegate andLockState:(unint64_t)state;
- (void)_cancelScheduledAutoDismissalForLongIdlingIfNeeded;
- (void)_cancelUserTouchInteractionTimeout;
- (void)_dismissForLongIdling;
- (void)_dismissForTimeoutPostAppLaunch;
- (void)_dismissForTimeoutPostSystemUIResponse;
- (void)_dismissForTouchOutsideOfSiri;
- (void)_handleUserTouchInteractionTimeout;
- (void)_handleVideoPlaybackDidFinishNotification;
- (void)_handleVideoPlaybackDidStartNotification;
- (void)_requestDismissalWithReason:(int64_t)reason;
- (void)_scheduleUserTouchInteractionTimeout;
- (void)_startUserAttentionControllerIfNeededForTypes:(unint64_t)types;
- (void)_stopUserAttentionControllerIfNeeded;
- (void)autoDismissalStrategyDidChangeAutoDismissalDecision:(id)decision dismissalReason:(int64_t)reason permanent:(BOOL)permanent;
- (void)cancelAutoDismissalForTouchOutsideOfSiri;
- (void)cancelAutoDismissalPostAppLaunch;
- (void)cancelAutoDismissalPostSystemUIResponse;
- (void)scheduleAutoDismissalForLongIdling:(double)idling;
- (void)scheduleAutoDismissalForTouchOutsideOfSiri:(double)siri;
- (void)scheduleAutoDismissalPostAppLaunch:(double)launch;
- (void)scheduleAutoDismissalPostSystemUIResponse:(double)response;
- (void)setEnabled:(BOOL)enabled;
- (void)setUseExtendedTimeout:(BOOL)timeout;
- (void)siriResponseModeDidChange:(unint64_t)change isWiredMicOrBTHeadsetOrWx:(BOOL)wx isAttending:(BOOL)attending;
- (void)updateMinimumIdleTimeInterval:(double)interval;
- (void)userAttentionController:(id)controller didGainAttentionWithEvent:(int64_t)event;
- (void)userAttentionController:(id)controller didLoseAttentionWithEvent:(int64_t)event;
@end

@implementation SRCompactAutoDismissController

- (SRCompactAutoDismissController)initWithDelegate:(id)delegate andLockState:(unint64_t)state
{
  stateCopy = state;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SRCompactAutoDismissController;
  v7 = [(SRCompactAutoDismissController *)&v15 init];
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SRCompactAutoDismissController initWithDelegate:andLockState:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Initializing auto-dismiss controller", buf, 0xCu);
    }

    v7->_autoDismissalReason = 0;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    qword_100190390 = 3;
    v7->_passcodeLocked = (stateCopy & 2) != 0;
    *&v7->_timerScheduledForTouchOutsideOfSiri = 256;
    objc_initWeak(buf, v7);
    v9 = &_dispatch_main_q;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002D540;
    v13[3] = &unk_1001675A0;
    objc_copyWeak(&v14, buf);
    sub_10002CE2C(&_dispatch_main_q, v13);

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"_handleVideoPlaybackDidStartNotification" name:SiriUIVideoPlaybackDidStartNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"_handleVideoPlaybackDidFinishNotification" name:SiriUIVideoPlaybackDidFinishNotification object:0];

    [(SRCompactAutoDismissController *)v7 scheduleAutoDismissalForLongIdling:900.0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Disabling";
      if (enabledCopy)
      {
        v6 = @"Re-enabling";
      }

      v7 = 136315394;
      v8 = "[SRCompactAutoDismissController setEnabled:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss %@ auto dismiss controller", &v7, 0x16u);
    }

    self->_enabled = enabledCopy;
    if (!enabledCopy)
    {
      [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
      [(SRCompactAutoDismissController *)self _cancelScheduledAutoDismissalForLongIdlingIfNeeded];
      [(SRCompactAutoDismissController *)self _cancelUserTouchInteractionTimeout];
      [(SRCompactAutoDismissController *)self cancelAutoDismissalForTouchOutsideOfSiri];
      [(SRCompactAutoDismissController *)self cancelAutoDismissalPostAppLaunch];
      [(SRCompactAutoDismissController *)self cancelAutoDismissalPostSystemUIResponse];
    }
  }
}

- (void)siriResponseModeDidChange:(unint64_t)change isWiredMicOrBTHeadsetOrWx:(BOOL)wx isAttending:(BOOL)attending
{
  attendingCopy = attending;
  wxCopy = wx;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = MDModeGetName();
    v12 = [NSNumber numberWithBool:wxCopy];
    v13 = [NSNumber numberWithBool:self->_passcodeLocked];
    *buf = 136316162;
    v24 = "[SRCompactAutoDismissController siriResponseModeDidChange:isWiredMicOrBTHeadsetOrWx:isAttending:]";
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 1024;
    v32 = attendingCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Updating auto dismissal strategy with mode=%@, isWiredMicOrBTHeadsetOrWx=%@, passcodeLocked=%@, isAttending: %d", buf, 0x30u);
  }

  objc_initWeak(buf, self);
  v14 = &_dispatch_main_q;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10002D934;
  v18 = &unk_1001675C8;
  v20[1] = change;
  selfCopy = self;
  v21 = wxCopy;
  objc_copyWeak(v20, buf);
  v22 = attendingCopy;
  sub_10002CE2C(&_dispatch_main_q, &v15);

  if (self->_enabled)
  {
    [(SRCompactAutoDismissController *)self _startUserAttentionControllerIfNeededForTypes:2, v15, v16, v17, v18, selfCopy];
    [(SRCompactAutoDismissController *)self scheduleAutoDismissalForLongIdling:900.0];
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
}

- (void)updateMinimumIdleTimeInterval:(double)interval
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRCompactAutoDismissController updateMinimumIdleTimeInterval:]";
    v9 = 2048;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Updating minimum idle interval to %.0f s", &v7, 0x16u);
  }

  [(SRCompactAutoDismissController *)self setMinimumIdleTimeInterval:interval];
  _autoDismissalStrategy = [(SRCompactAutoDismissController *)self _autoDismissalStrategy];
  [_autoDismissalStrategy setMinimumIdleTimeInterval:interval];
}

- (void)setUseExtendedTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRCompactAutoDismissController setUseExtendedTimeout:]";
    v9 = 1024;
    v10 = timeoutCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting useExtendedTimeout=%d", &v7, 0x12u);
  }

  self->_useExtendedTimeout = timeoutCopy;
  autoDismissalStrategy = self->_autoDismissalStrategy;
  if (timeoutCopy)
  {
    [(SUICAutoDismissalStrategy *)autoDismissalStrategy setViewRequiringExtendedTimeoutVisible:1];
    [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
    [(SRCompactAutoDismissController *)self _startUserAttentionControllerIfNeeded];
  }

  else
  {
    [(SUICAutoDismissalStrategy *)autoDismissalStrategy setViewRequiringExtendedTimeoutVisible:0];
    [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
  }
}

- (void)_requestDismissalWithReason:(int64_t)reason
{
  enabled = self->_enabled;
  v6 = AFSiriLogContextConnection;
  v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
  if (enabled)
  {
    if (v7)
    {
      sub_1000CAF88(v6);
    }

    self->_autoDismissalReason = reason;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained autoDismissControllerRequestsDismissal:self];
  }

  else if (v7)
  {
    sub_1000CAF10(v6, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)scheduleAutoDismissalForLongIdling:(double)idling
{
  if (self->_enabled)
  {
    [(SRCompactAutoDismissController *)self _cancelScheduledAutoDismissalForLongIdlingIfNeeded];
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SRCompactAutoDismissController scheduleAutoDismissalForLongIdling:]";
      v16 = 2048;
      idlingCopy = idling;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Scheduling auto dismissal after a max idle time of %.0f s", &v14, 0x16u);
    }

    [(SRCompactAutoDismissController *)self performSelector:"_dismissForLongIdling" withObject:0 afterDelay:idling];
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB044(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)_cancelScheduledAutoDismissalForLongIdlingIfNeeded
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _cancelScheduledAutoDismissalForLongIdlingIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Canceling previously scheduled auto dismissal for long idling if needed", &v4, 0xCu);
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_dismissForLongIdling" object:0];
}

- (void)_dismissForLongIdling
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _dismissForLongIdling]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Siri has been long idling. Auto dismissing now...", &v4, 0xCu);
  }

  [(SRCompactAutoDismissController *)self _requestDismissalWithReason:0];
}

- (void)scheduleAutoDismissalForTouchOutsideOfSiri:(double)siri
{
  if (self->_enabled)
  {
    if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) != 0)
    {
      if (self->_timerScheduledForTouchOutsideOfSiri)
      {
        v5 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CB1AC(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      else
      {
        [(SRCompactAutoDismissController *)self performSelector:"_dismissForTouchOutsideOfSiri" withObject:0 afterDelay:siri];
        v29 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136315394;
          v31 = "[SRCompactAutoDismissController scheduleAutoDismissalForTouchOutsideOfSiri:]";
          v32 = 2048;
          siriCopy = siri;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Scheduled auto-dismissal for touch outside of Siri in %.1f seconds", &v30, 0x16u);
        }

        self->_timerScheduledForTouchOutsideOfSiri = 1;
      }
    }

    else
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CB134(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }
  }

  else
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB0BC(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)cancelAutoDismissalForTouchOutsideOfSiri
{
  if ((+[AFSystemAssistantExperienceStatusManager saeAvailable]& 1) != 0)
  {
    v3 = AFSiriLogContextConnection;
    if (self->_timerScheduledForTouchOutsideOfSiri)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[SRCompactAutoDismissController cancelAutoDismissalForTouchOutsideOfSiri]";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Cancelling auto-dismissal for touch outside of Siri", &v19, 0xCu);
      }

      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_dismissForTouchOutsideOfSiri" object:0];
      self->_timerScheduledForTouchOutsideOfSiri = 0;
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB29C(v3, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB224(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

- (void)_dismissForTouchOutsideOfSiri
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _dismissForTouchOutsideOfSiri]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Auto-dismissing now due to touch outside of Siri", &v4, 0xCu);
  }

  [(SRCompactAutoDismissController *)self _requestDismissalWithReason:0];
}

- (void)scheduleAutoDismissalPostAppLaunch:(double)launch
{
  if (self->_enabled)
  {
    [(SRCompactAutoDismissController *)self cancelAutoDismissalPostAppLaunch];
    [(SRCompactAutoDismissController *)self performSelector:"_dismissForTimeoutPostAppLaunch" withObject:0 afterDelay:launch];
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SRCompactAutoDismissController scheduleAutoDismissalPostAppLaunch:]";
      v16 = 2048;
      launchCopy = launch;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Scheduled auto-dismissal post app launch in %.1f seconds", &v14, 0x16u);
    }
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB314(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)cancelAutoDismissalPostAppLaunch
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController cancelAutoDismissalPostAppLaunch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Cancelling auto-dismissal post app launch", &v4, 0xCu);
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_dismissForTimeoutPostAppLaunch" object:0];
}

- (void)_dismissForTimeoutPostAppLaunch
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _dismissForTimeoutPostAppLaunch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Auto-dismissing now due to timeout post app launch", &v4, 0xCu);
  }

  [(SRCompactAutoDismissController *)self _requestDismissalWithReason:0];
}

- (void)scheduleAutoDismissalPostSystemUIResponse:(double)response
{
  if (self->_enabled)
  {
    [(SRCompactAutoDismissController *)self cancelAutoDismissalPostSystemUIResponse];
    [(SRCompactAutoDismissController *)self performSelector:"_dismissForTimeoutPostSystemUIResponse" withObject:0 afterDelay:response];
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SRCompactAutoDismissController scheduleAutoDismissalPostSystemUIResponse:]";
      v16 = 2048;
      responseCopy = response;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Scheduled auto-dismissal post system UI response in %.1f seconds", &v14, 0x16u);
    }
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB38C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)cancelAutoDismissalPostSystemUIResponse
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController cancelAutoDismissalPostSystemUIResponse]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Cancelling auto-dismissal post system UI response", &v4, 0xCu);
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_dismissForTimeoutPostSystemUIResponse" object:0];
}

- (void)_dismissForTimeoutPostSystemUIResponse
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _dismissForTimeoutPostSystemUIResponse]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Auto-dismissing now due to timeout post system UI response", &v4, 0xCu);
  }

  [(SRCompactAutoDismissController *)self _requestDismissalWithReason:0];
}

- (void)_startUserAttentionControllerIfNeededForTypes:(unint64_t)types
{
  if (self->_enabled)
  {
    autoDismissalStrategy = self->_autoDismissalStrategy;
    if (autoDismissalStrategy && [(SUICAutoDismissalStrategy *)autoDismissalStrategy isVideoPlaying])
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[SRCompactAutoDismissController _startUserAttentionControllerIfNeededForTypes:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #autodismiss User attention controller will not start because video is playing", buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v15 = &_dispatch_main_q;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10002E96C;
      v16[3] = &unk_100167618;
      objc_copyWeak(v17, buf);
      v17[1] = types;
      sub_10002CE2C(&_dispatch_main_q, v16);

      objc_destroyWeak(v17);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CB404(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)_stopUserAttentionControllerIfNeeded
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SRCompactAutoDismissController _stopUserAttentionControllerIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Stopping user attention controller if needed...", buf, 0xCu);
  }

  userAttentionController = self->_userAttentionController;
  p_userAttentionController = &self->_userAttentionController;
  v4 = userAttentionController;
  if (userAttentionController)
  {
    v11 = 0;
    v7 = [(SRUserAttentionController *)v4 stopIfNeeded:&v11];
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CB558(p_userAttentionController, v8, v9);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [*p_userAttentionController setDelegate:0];
  v10 = *p_userAttentionController;
  *p_userAttentionController = 0;
}

- (BOOL)_deviceSupportsFaceID
{
  if (qword_10018F178 != -1)
  {
    sub_1000CB5F4();
  }

  return byte_10018F170;
}

- (BOOL)_ignoreUnintentionalTouches
{
  _deviceSupportsFaceID = [(SRCompactAutoDismissController *)self _deviceSupportsFaceID];
  v4 = _deviceSupportsFaceID;
  v5 = !self->_isWiredMicOrBTHeadsetOrWx || !_deviceSupportsFaceID;
  v6 = !v5 && !self->_faceDetected && !self->_useExtendedTimeout && self->_passcodeLocked;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    v10 = [NSNumber numberWithBool:v6];
    v11 = [NSNumber numberWithBool:self->_isWiredMicOrBTHeadsetOrWx];
    v12 = [NSNumber numberWithBool:v4];
    v13 = [NSNumber numberWithBool:self->_faceDetected];
    v14 = [NSNumber numberWithBool:self->_useExtendedTimeout];
    v15 = [NSNumber numberWithBool:self->_passcodeLocked];
    v16 = 136316674;
    v17 = "[SRCompactAutoDismissController _ignoreUnintentionalTouches]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #autodismiss ignoreTouches: %@, isWiredMicOrBTHeadsetOrWx: %@, deviceSupportsFaceID: %@, faceDetected: %@, useExtendedTimeout: %@, passcodeLocked: %@", &v16, 0x48u);
  }

  return v6;
}

- (void)userAttentionController:(id)controller didLoseAttentionWithEvent:(int64_t)event
{
  controllerCopy = controller;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFStringForUserAttentionLossEvent();
    autoDismissalStrategy = self->_autoDismissalStrategy;
    v11 = 136315650;
    v12 = "[SRCompactAutoDismissController userAttentionController:didLoseAttentionWithEvent:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = autoDismissalStrategy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Attention was lost with event=%@, _autoDismissalStrategy=%@", &v11, 0x20u);
  }

  if (event == 2)
  {
    [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setLatestDeviceMotionEvent:2];
  }

  else if (event == 1)
  {
    self->_faceDetected = 0;
    [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setLatestFaceAwarenessEvent:2];
  }
}

- (void)userAttentionController:(id)controller didGainAttentionWithEvent:(int64_t)event
{
  controllerCopy = controller;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFStringForUserAttentionGainEvent();
    autoDismissalStrategy = self->_autoDismissalStrategy;
    v12 = 136315650;
    v13 = "[SRCompactAutoDismissController userAttentionController:didGainAttentionWithEvent:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = autoDismissalStrategy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Attention was gained with event=%@, _autoDismissalStrategy=%@", &v12, 0x20u);
  }

  if (event > 2)
  {
    if (event == 3)
    {
      if ([(SRCompactAutoDismissController *)self _ignoreUnintentionalTouches])
      {
        v11 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[SRCompactAutoDismissController userAttentionController:didGainAttentionWithEvent:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Ignoring touch interaction, reason: possibly an accidental touch during hearst request", &v12, 0xCu);
        }
      }

      else
      {
        [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setUserInteractedWithTouchScreen:1];
        [(SRCompactAutoDismissController *)self _scheduleUserTouchInteractionTimeout];
      }
    }

    else if (event == 4)
    {
      [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setUserInteractedWithTouchIDSensor:1];
    }
  }

  else if (event == 1)
  {
    self->_faceDetected = 1;
    [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setLatestFaceAwarenessEvent:1];
  }

  else if (event == 2)
  {
    [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setLatestDeviceMotionEvent:1];
  }
}

- (void)_scheduleUserTouchInteractionTimeout
{
  [(SRCompactAutoDismissController *)self _cancelUserTouchInteractionTimeout];

  [(SRCompactAutoDismissController *)self performSelector:"_handleUserTouchInteractionTimeout" withObject:0 afterDelay:15.0];
}

- (void)_cancelUserTouchInteractionTimeout
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:"_handleUserTouchInteractionTimeout" object:0];
}

- (void)_handleUserTouchInteractionTimeout
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CB608(v3);
  }

  [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setUserInteractedWithTouchScreen:0];
}

- (void)autoDismissalStrategyDidChangeAutoDismissalDecision:(id)decision dismissalReason:(int64_t)reason permanent:(BOOL)permanent
{
  permanentCopy = permanent;
  decisionCopy = decision;
  if ([decisionCopy shouldDismiss])
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = SUICStringForAutoDismissalReason();
      v13 = 136315650;
      v14 = "[SRCompactAutoDismissController autoDismissalStrategyDidChangeAutoDismissalDecision:dismissalReason:permanent:]";
      v15 = 2112;
      v16 = decisionCopy;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Auto dismissal strategy (%@) specified that Siri should dismiss, reason: %@", &v13, 0x20u);
    }

    [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
    [(SRCompactAutoDismissController *)self _requestDismissalWithReason:reason];
  }

  else if (permanentCopy)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[SRCompactAutoDismissController autoDismissalStrategyDidChangeAutoDismissalDecision:dismissalReason:permanent:]";
      v15 = 2112;
      v16 = decisionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Auto dismissal strategy (%@) specified that Siri permanently stop auto dismissal", &v13, 0x16u);
    }

    [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
  }
}

- (void)_handleVideoPlaybackDidStartNotification
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _handleVideoPlaybackDidStartNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Stopping user attention controller if needed because video playback started", &v4, 0xCu);
  }

  [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setVideoPlaying:1];
  [(SRCompactAutoDismissController *)self _stopUserAttentionControllerIfNeeded];
}

- (void)_handleVideoPlaybackDidFinishNotification
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactAutoDismissController _handleVideoPlaybackDidFinishNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Starting user attention controller if needed because video playback ended", &v4, 0xCu);
  }

  [(SUICAutoDismissalStrategy *)self->_autoDismissalStrategy setVideoPlaying:0];
  [(SRCompactAutoDismissController *)self _startUserAttentionControllerIfNeeded];
}

@end