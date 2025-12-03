@interface LPYouTubePlayerView
- (LPYouTubePlayerDelegate)delegate;
- (LPYouTubePlayerView)initWithFrame:(CGRect)frame;
- (id)_parameterScript;
- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features;
- (void)_evaluatePlayerCommand:(id)command;
- (void)createVideoPlayerView;
- (void)dealloc;
- (void)didReceiveScriptMessage:(id)message;
- (void)dispatchErrorWithCode:(int64_t)code;
- (void)enterFullScreen;
- (void)exitFullScreen;
- (void)layoutSubviews;
- (void)loadVideoWithEmbedURL:(id)l;
- (void)loadVideoWithID:(id)d;
- (void)loadVideoWithURL:(id)l;
- (void)seekTo:(double)to;
- (void)setMuted:(BOOL)muted;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation LPYouTubePlayerView

- (LPYouTubePlayerView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = LPYouTubePlayerView;
  v3 = [(LPYouTubePlayerView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_startsPlayingAutomatically = 1;
    v3->_showsControls = 1;
    v3->_startTime = 0.0;
    v3->_endTime = -1.0;
    if (+[LPSettings showDebugIndicators])
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      cGColor = [redColor CGColor];
      layer = [(LPYouTubePlayerView *)v4 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(LPYouTubePlayerView *)v4 layer];
      [layer2 setBorderWidth:6.0];
    }

    v9 = v4;
  }

  return v4;
}

- (void)dispatchErrorWithCode:(int64_t)code
{
  delegate = [(LPYouTubePlayerView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(LPYouTubePlayerView *)self delegate];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LPYouTubePlayerErrorDomain" code:code userInfo:0];
    [delegate2 youTubePlayer:self didReceiveError:v6];
  }
}

- (void)loadVideoWithURL:(id)l
{
  v4 = [LPPresentationSpecializations youTubeVideoComponentsForVideoURL:l];
  videoID = [v4 videoID];

  if (videoID)
  {
    [(LPYouTubePlayerView *)self loadVideoWithID:videoID];
  }

  else
  {
    [(LPYouTubePlayerView *)self dispatchErrorWithCode:4];
  }
}

- (void)loadVideoWithEmbedURL:(id)l
{
  v4 = [LPPresentationSpecializations youTubeVideoComponentsForEmbedURL:l];
  videoID = [v4 videoID];

  if (videoID)
  {
    [(LPYouTubePlayerView *)self loadVideoWithID:videoID];
  }

  else
  {
    [(LPYouTubePlayerView *)self dispatchErrorWithCode:4];
  }
}

- (void)loadVideoWithID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_videoID, d);
  self->_state = 0;
  if (self->_videoID || ([(LPYouTubePlayerView *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    [(LPYouTubePlayerView *)self createVideoPlayerView];
  }

  else
  {
    delegate = [(LPYouTubePlayerView *)self delegate];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LPYouTubePlayerErrorDomain" code:5 userInfo:0];
    [delegate youTubePlayer:self didReceiveError:v8];
  }
}

- (void)dealloc
{
  configuration = [(LPYouTubePlayerWebView *)self->_webView configuration];
  userContentController = [configuration userContentController];
  [userContentController removeScriptMessageHandlerForName:@"playerContainer"];

  [(LPYouTubePlayerWebView *)self->_webView _close];
  webView = self->_webView;
  self->_webView = 0;

  v6.receiver = self;
  v6.super_class = LPYouTubePlayerView;
  [(LPYouTubePlayerView *)&v6 dealloc];
}

- (void)_evaluatePlayerCommand:(id)command
{
  commandCopy = command;
  v8 = commandCopy;
  if (self->_ready)
  {
    [(LPYouTubePlayerWebView *)self->_webView evaluateJavaScript:commandCopy completionHandler:0];
  }

  else
  {
    commandsPendingPlayerReadiness = self->_commandsPendingPlayerReadiness;
    if (!commandsPendingPlayerReadiness)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_commandsPendingPlayerReadiness;
      self->_commandsPendingPlayerReadiness = v6;

      commandsPendingPlayerReadiness = self->_commandsPendingPlayerReadiness;
      commandCopy = v8;
    }

    [(NSMutableArray *)commandsPendingPlayerReadiness addObject:commandCopy];
  }
}

- (void)seekTo:(double)to
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"seekTo(%f)", *&to];
  [(LPYouTubePlayerView *)self _evaluatePlayerCommand:?];
}

- (void)enterFullScreen
{
  if ((self->_state - 2) <= 3)
  {
    if ([(LPYouTubePlayerView *)self _shouldUseElementFullScreen])
    {
      [(LPYouTubePlayerWebView *)self->_webView setAllowFirstResponder:1];
      [(LPYouTubePlayerWebView *)self->_webView becomeFirstResponder];
      v4 = @"enterElementFullScreen()";
    }

    else
    {
      v4 = @"enterVideoFullScreen()";
    }

    [(LPYouTubePlayerView *)self _evaluatePlayerCommand:v4];
  }
}

- (void)exitFullScreen
{
  [(LPYouTubePlayerView *)self _evaluatePlayerCommand:@"exitFullScreen()"];
  webView = self->_webView;

  [(LPYouTubePlayerWebView *)webView setAllowFirstResponder:0];
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    self->_muted = muted;
    if (muted)
    {
      v3 = @"mute()";
    }

    else
    {
      v3 = @"unMute()";
    }

    [(LPYouTubePlayerView *)self _evaluatePlayerCommand:v3];
  }
}

- (id)_parameterScript
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v19[0] = @"rel";
  v19[1] = @"showinfo";
  v19[2] = @"iv_load_policy";
  v19[3] = @"controls";
  v4 = !self->_showsControls;
  v5 = &unk_1F2483650;
  v20[0] = &unk_1F2483620;
  v20[1] = &unk_1F2483620;
  if (v4)
  {
    v5 = &unk_1F2483620;
  }

  v20[2] = &unk_1F2483638;
  v20[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v7 = [v3 initWithDictionary:v6];

  if (self->_startTime != 0.0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v7 setObject:v8 forKeyedSubscript:@"start"];
  }

  if (self->_endTime != -1.0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"end"];
  }

  v18[0] = self->_videoID;
  v17[0] = @"videoId";
  v17[1] = @"startsPlayingAutomatically";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_startsPlayingAutomatically];
  v18[1] = v10;
  v17[2] = @"startsPlayingMuted";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_muted];
  v17[3] = @"playerVars";
  v18[2] = v11;
  v18[3] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v12 options:0 error:0];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"window.parameters = %@", v14];;

  return v15;
}

- (void)createVideoPlayerView
{
  v3 = [[LPYouTubePlayerScriptMessageHandler alloc] initWithPlayerView:self];
  scriptMessageHandler = self->_scriptMessageHandler;
  self->_scriptMessageHandler = v3;

  v38 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v5 = objc_alloc_init(MEMORY[0x1E69853F0]);
  v6 = linkPresentationBundle();
  builtInPlugInsURL = [v6 builtInPlugInsURL];
  v8 = [builtInPlugInsURL URLByAppendingPathComponent:@"YouTubePlayer.wkbundle"];
  [v5 setInjectedBundleURL:v8];

  v9 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v5];
  [v38 setProcessPool:v9];

  processPool = [v38 processPool];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{+[LPApplicationIdentification isMessagesOrMessagesViewService](LPApplicationIdentification, "isMessagesOrMessagesViewService")}];
  [processPool _setObject:v11 forBundleParameter:@"isMessagesOrMessagesViewService"];

  initNonPersistentConfiguration = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration];
  [initNonPersistentConfiguration setDeviceManagementRestrictionsEnabled:1];
  v13 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:initNonPersistentConfiguration];
  [v38 setWebsiteDataStore:v13];

  [v38 _setIgnoresAppBoundDomains:1];
  [v38 setMediaTypesRequiringUserActionForPlayback:0];
  [v38 setAllowsInlineMediaPlayback:1];
  [v38 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:0];
  [v38 setAllowsPictureInPictureMediaPlayback:0];
  if (+[LPSettings showDebugIndicators])
  {
    preferences = [v38 preferences];
    [preferences _setCompositingBordersVisible:1];
  }

  if ([(LPYouTubePlayerView *)self _shouldUseElementFullScreen])
  {
    preferences2 = [v38 preferences];
    [preferences2 setElementFullscreenEnabled:1];
  }

  userContentController = [v38 userContentController];
  [userContentController addScriptMessageHandler:self->_scriptMessageHandler name:@"playerContainer"];
  v17 = objc_alloc(MEMORY[0x1E6985358]);
  _parameterScript = [(LPYouTubePlayerView *)self _parameterScript];
  v19 = [v17 initWithSource:_parameterScript injectionTime:0 forMainFrameOnly:1];
  [userContentController addUserScript:v19];

  v20 = [LPYouTubePlayerWebView alloc];
  [(LPYouTubePlayerView *)self bounds];
  v21 = [(LPYouTubePlayerWebView *)v20 initWithFrame:v38 configuration:?];
  webView = self->_webView;
  self->_webView = v21;

  [(LPYouTubePlayerWebView *)self->_webView setNavigationDelegate:self];
  [(LPYouTubePlayerWebView *)self->_webView setUIDelegate:self];
  [(LPYouTubePlayerWebView *)self->_webView setCustomUserAgent:@"Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/15E148 Safari/604.1"];
  scrollView = [(LPYouTubePlayerWebView *)self->_webView scrollView];
  [scrollView setDelegate:self];

  scrollView2 = [(LPYouTubePlayerWebView *)self->_webView scrollView];
  [scrollView2 setScrollEnabled:0];

  scrollView3 = [(LPYouTubePlayerWebView *)self->_webView scrollView];
  [scrollView3 setContentInsetAdjustmentBehavior:2];

  v26 = objc_alloc_init(LPYouTubePlayerViewFullScreenDelegate);
  fullScreenDelegate = self->_fullScreenDelegate;
  self->_fullScreenDelegate = v26;

  [(LPYouTubePlayerWebView *)self->_webView _setFullscreenDelegate:self->_fullScreenDelegate];
  if (+[LPSettings showDebugIndicators])
  {
    greenColor = [MEMORY[0x1E69DC888] greenColor];
    cGColor = [greenColor CGColor];
    layer = [(LPYouTubePlayerWebView *)self->_webView layer];
    [layer setBorderColor:cGColor];

    layer2 = [(LPYouTubePlayerWebView *)self->_webView layer];
    [layer2 setBorderWidth:9.0];
  }

  v32 = linkPresentationBundle();
  v33 = [v32 URLForResource:@"YouTubeContainer" withExtension:@"html"];

  v34 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v33 encoding:4 error:0];
  v35 = self->_webView;
  v36 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.youtube.com/"];
  v37 = [(LPYouTubePlayerWebView *)v35 loadHTMLString:v34 baseURL:v36];

  [(LPYouTubePlayerView *)self addSubview:self->_webView];
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  v4 = LPLogChannelVideo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [LPYouTubePlayerView webViewWebContentProcessDidTerminate:v4];
  }

  [(LPYouTubePlayerView *)self dispatchErrorWithCode:7];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler
{
  actionCopy = action;
  preferencesCopy = preferences;
  handlerCopy = handler;
  request = [actionCopy request];
  v11 = [request URL];

  if ([actionCopy navigationType] || !objc_msgSend(v11, "_lp_isHTTPFamilyURL"))
  {
    v13 = 1;
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] openURL:v11 options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_21];

    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13, preferencesCopy);
}

- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features
{
  request = [action request];
  v7 = [request URL];

  if ([v7 _lp_isHTTPFamilyURL])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] openURL:v7 options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_206];
  }

  return 0;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = LPYouTubePlayerView;
  [(LPYouTubePlayerView *)&v18 layoutSubviews];
  [(LPYouTubePlayerWebView *)self->_webView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(LPYouTubePlayerView *)self bounds];
  v20.origin.x = v11;
  v20.origin.y = v12;
  v20.size.width = v13;
  v20.size.height = v14;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (!CGRectEqualToRect(v19, v20))
  {
    [(LPYouTubePlayerView *)self bounds];
    [(LPYouTubePlayerWebView *)self->_webView setFrame:?];
    v15 = *MEMORY[0x1E695EFF8];
    v16 = *(MEMORY[0x1E695EFF8] + 8);
    scrollView = [(LPYouTubePlayerWebView *)self->_webView scrollView];
    [scrollView setContentOffset:{v15, v16}];
  }
}

- (void)didReceiveScriptMessage:(id)message
{
  v33 = *MEMORY[0x1E69E9840];
  body = [message body];
  v5 = [body objectForKeyedSubscript:@"message"];
  if (![v5 isEqualToString:@"onReady"])
  {
    if ([v5 isEqualToString:@"onStateChange"])
    {
      v14 = [body objectForKeyedSubscript:@"data"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v15 = [v14 integerValue], (v15 + 1) <= 6))
      {
        v16 = qword_1AE9C6B38[v15 + 1];
      }

      else
      {
        v16 = 6;
      }

      self->_state = v16;
      delegate = [(LPYouTubePlayerView *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

      delegate2 = [(LPYouTubePlayerView *)self delegate];
      [delegate2 youTubePlayer:self didChangeToState:self->_state];
LABEL_39:

      goto LABEL_40;
    }

    if (![v5 isEqualToString:@"onError"])
    {
      if (![v5 isEqualToString:@"onPresentationModeChange"])
      {
        goto LABEL_40;
      }

      delegate2 = [body objectForKeyedSubscript:@"isFullScreen"];
      if (([delegate2 BOOLValue] & 1) == 0)
      {
        [(LPYouTubePlayerWebView *)self->_webView resignFirstResponder];
      }

      delegate3 = [(LPYouTubePlayerView *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if ((v25 & 1) == 0)
      {
        goto LABEL_39;
      }

      delegate4 = [(LPYouTubePlayerView *)self delegate];
      [delegate4 youTubePlayer:self didChangeToFullScreen:{objc_msgSend(delegate2, "BOOLValue")}];
LABEL_38:

      goto LABEL_39;
    }

    delegate5 = [(LPYouTubePlayerView *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_40;
    }

    v19 = [body objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v19 integerValue];
      if (integerValue <= 100)
      {
        if (integerValue == 2)
        {
          v27 = 0;
          goto LABEL_37;
        }

        if (integerValue == 5)
        {
          v27 = 1;
          goto LABEL_37;
        }

        if (integerValue != 100)
        {
          goto LABEL_36;
        }

LABEL_41:
        v27 = 2;
        goto LABEL_37;
      }

      switch(integerValue)
      {
        case 101:
          goto LABEL_35;
        case 105:
          goto LABEL_41;
        case 150:
LABEL_35:
          v27 = 3;
LABEL_37:

          delegate2 = [(LPYouTubePlayerView *)self delegate];
          delegate4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LPYouTubePlayerErrorDomain" code:v27 userInfo:0];
          [delegate2 youTubePlayer:self didReceiveError:delegate4];
          goto LABEL_38;
      }
    }

LABEL_36:
    v27 = 6;
    goto LABEL_37;
  }

  delegate6 = [(LPYouTubePlayerView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate7 = [(LPYouTubePlayerView *)self delegate];
    [delegate7 youTubePlayerDidBecomeReady:self];
  }

  self->_ready = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_commandsPendingPlayerReadiness;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(LPYouTubePlayerView *)self _evaluatePlayerCommand:*(*(&v28 + 1) + 8 * v12++), v28];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  commandsPendingPlayerReadiness = self->_commandsPendingPlayerReadiness;
  self->_commandsPendingPlayerReadiness = 0;

LABEL_40:
}

- (LPYouTubePlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end