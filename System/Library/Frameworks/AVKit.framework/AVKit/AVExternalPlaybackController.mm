@interface AVExternalPlaybackController
+ (id)externalPlaybackStateDescriptionForState:(int64_t)state;
- (void)_invokeClientCompletionHandlerWithPlaybackState:(int64_t)state;
- (void)willBeginPlaybackFromAppWithBundleID:(id)d completionHandler:(id)handler;
@end

@implementation AVExternalPlaybackController

- (void)_invokeClientCompletionHandlerWithPlaybackState:(int64_t)state
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_clientCompletionHandler)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [AVExternalPlaybackController externalPlaybackStateDescriptionForState:state];
      v8 = 136315394;
      v9 = "[AVExternalPlaybackController _invokeClientCompletionHandlerWithPlaybackState:]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Calling client completion handler with playbackState: %@", &v8, 0x16u);
    }

    (*(self->_clientCompletionHandler + 2))();
    clientCompletionHandler = self->_clientCompletionHandler;
    self->_clientCompletionHandler = 0;
  }
}

- (void)willBeginPlaybackFromAppWithBundleID:(id)d completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    dCopy = [mainBundle bundleIdentifier];
  }

  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v10 = [mEMORY[0x1E69AED10] hasRouteSharingPolicyLongFormVideo:dCopy];

  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s isLongFormVideoApp = %i", buf, 0x12u);
  }

  if (v10)
  {
    longFormVideoRoutingSessionManager = [MEMORY[0x1E6958828] longFormVideoRoutingSessionManager];
    currentRoutingSession = [longFormVideoRoutingSessionManager currentRoutingSession];
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      prefersLikelyDestinationsOverCurrentRoutingSession = [longFormVideoRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession];
      *buf = 136315650;
      *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = currentRoutingSession;
      *&buf[22] = 1024;
      LODWORD(v49) = prefersLikelyDestinationsOverCurrentRoutingSession;
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s Current routing session: %@, routingSessionManager.prefersLikelyDestinationsOverCurrentRoutingSession: %i", buf, 0x1Cu);
    }

    if (currentRoutingSession && ([longFormVideoRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession] & 1) == 0)
    {
      destination = [currentRoutingSession destination];
      providesExternalVideoPlayback = [destination providesExternalVideoPlayback];

      v37 = providesExternalVideoPlayback;
      v38 = _AVLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [AVExternalPlaybackController externalPlaybackStateDescriptionForState:v37];
        *buf = 136315394;
        *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v39;
        _os_log_impl(&dword_18B49C000, v38, OS_LOG_TYPE_DEFAULT, "%s Using current routing session. Calling client completion handler with playbackState: %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, v37);
    }

    else
    {
      v16 = _AVLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        likelyExternalDestinations = [longFormVideoRoutingSessionManager likelyExternalDestinations];
        v18 = [likelyExternalDestinations count];
        likelyExternalDestinations2 = [longFormVideoRoutingSessionManager likelyExternalDestinations];
        *buf = 136315650;
        *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2112;
        v49 = likelyExternalDestinations2;
        _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s Not using current routing session. AVRoutingSessionManager has %lu likely external destinations: %@", buf, 0x20u);
      }

      likelyExternalDestinations3 = [longFormVideoRoutingSessionManager likelyExternalDestinations];
      v21 = [likelyExternalDestinations3 count] == 0;

      if (v21)
      {
        v40 = _AVLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [AVExternalPlaybackController externalPlaybackStateDescriptionForState:0];
          *buf = 136315394;
          *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = v41;
          _os_log_impl(&dword_18B49C000, v40, OS_LOG_TYPE_DEFAULT, "%s No likely external destinations. Calling client completion handler with playback state: %@", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        if (!self->_mediaControls)
        {
          v44 = 0;
          v45 = &v44;
          v46 = 0x2050000000;
          v22 = getMPMediaControlsConfigurationClass_softClass;
          v47 = getMPMediaControlsConfigurationClass_softClass;
          if (!getMPMediaControlsConfigurationClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaControlsConfigurationClass_block_invoke;
            v49 = &unk_1E7209BC8;
            v50 = &v44;
            __getMPMediaControlsConfigurationClass_block_invoke(buf);
            v22 = v45[3];
          }

          v23 = v22;
          _Block_object_dispose(&v44, 8);
          v24 = objc_alloc_init(v22);
          [v24 setStyle:7];
          v44 = 0;
          v45 = &v44;
          v46 = 0x2050000000;
          v25 = getMPMediaControlsClass_softClass;
          v47 = getMPMediaControlsClass_softClass;
          if (!getMPMediaControlsClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaControlsClass_block_invoke;
            v49 = &unk_1E7209BC8;
            v50 = &v44;
            __getMPMediaControlsClass_block_invoke(buf);
            v25 = v45[3];
          }

          v26 = v25;
          _Block_object_dispose(&v44, 8);
          v27 = [[v25 alloc] initWithConfiguration:v24];
          mediaControls = self->_mediaControls;
          self->_mediaControls = v27;

          [(MPMediaControls *)self->_mediaControls startPrewarming];
          objc_initWeak(buf, self);
          v29 = self->_mediaControls;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __87__AVExternalPlaybackController_willBeginPlaybackFromAppWithBundleID_completionHandler___block_invoke;
          v42[3] = &unk_1E7208950;
          objc_copyWeak(&v43, buf);
          [(MPMediaControls *)v29 setDismissHandlerWithReason:v42];
          objc_destroyWeak(&v43);
          objc_destroyWeak(buf);
        }

        v30 = _AVLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
          _os_log_impl(&dword_18B49C000, v30, OS_LOG_TYPE_DEFAULT, "%s Showing medium confidence picker.", buf, 0xCu);
        }

        [(MPMediaControls *)self->_mediaControls present];
        v31 = [handlerCopy copy];
        clientCompletionHandler = self->_clientCompletionHandler;
        self->_clientCompletionHandler = v31;
      }
    }
  }

  else
  {
    v33 = _AVLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [AVExternalPlaybackController externalPlaybackStateDescriptionForState:0];
      *buf = 136315394;
      *&buf[4] = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = v34;
      _os_log_impl(&dword_18B49C000, v33, OS_LOG_TYPE_DEFAULT, "%s Not a long-form video app. Calling client completion handler with playback state: %@", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

void __87__AVExternalPlaybackController_willBeginPlaybackFromAppWithBundleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v5 = 0;
        goto LABEL_21;
      }

      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]_block_invoke";
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Medium confidence picker dismissed because MPMediaControlsDismissalReasonUserCancelled.", buf, 0xCu);
      }

      v5 = 2;
    }

    else
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[AVExternalPlaybackController willBeginPlaybackFromAppWithBundleID:completionHandler:]_block_invoke";
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s Medium confidence picker dismissed because MPMediaControlsDismissalReasonUnknown.", buf, 0xCu);
      }

      v7 = MEMORY[0x1E69587F0];
      v8 = [MEMORY[0x1E6958460] sharedInstance];
      v9 = [v8 routingContextUID];
      v4 = [v7 outputContextForID:v9];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [v4 outputDevices];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        v5 = 1;
LABEL_11:
        v14 = 0;
        while (1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (![*(*(&v17 + 1) + 8 * v14) deviceType])
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        v5 = 0;
      }
    }

LABEL_21:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__AVExternalPlaybackController_willBeginPlaybackFromAppWithBundleID_completionHandler___block_invoke_12;
    v16[3] = &unk_1E7209A60;
    v16[4] = WeakRetained;
    v16[5] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v16);
    v15 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

+ (id)externalPlaybackStateDescriptionForState:(int64_t)state
{
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7208988[state];
  }
}

@end