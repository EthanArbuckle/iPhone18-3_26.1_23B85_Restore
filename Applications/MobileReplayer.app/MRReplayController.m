@interface MRReplayController
+ (id)sharedController;
+ (void)initialize;
- (MRReplayControllerDelegate)delegate;
- (MRReplayControllerDelegate)strongDelegate;
- (id)_replayerControllerSupportForCaptureStore:(id)a3;
- (void)_displayPlaybackEngine;
- (void)_processMessage:(id)a3;
- (void)_updateBackgroundImage:(id)a3;
- (void)dealloc;
@end

@implementation MRReplayController

- (MRReplayControllerDelegate)strongDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)sharedController
{
  if (qword_10000CF18 != -1)
  {
    sub_1000036E4();
  }

  v3 = qword_10000CF10;

  return v3;
}

- (void)dealloc
{
  shaderProfiler = self->_shaderProfiler;
  self->_shaderProfiler = 0;

  v4.receiver = self;
  v4.super_class = MRReplayController;
  [(MRReplayController *)&v4 dealloc];
}

- (void)_displayPlaybackEngine
{
  if (!pthread_main_np())
  {
    sub_1000036F8();
  }

  v7 = [(MRReplayController *)self strongDelegate];
  if ([v7 shouldCreateViewController])
  {
    backgroundImageViewController = self->_backgroundImageViewController;

    if (backgroundImageViewController)
    {
      return;
    }

    v7 = [(MRReplayController *)self replayControllerSupport];
    v4 = [(MRReplayController *)self strongDelegate];
    v5 = [(MRReplayController *)self playbackEngine];
    v6 = [v7 viewControllerForPlaybackEngine:v5];
    [v4 setViewController:v6];
  }
}

- (id)_replayerControllerSupportForCaptureStore:(id)a3
{
  v4 = a3;
  v5 = +[DYExtensionRegistry sharedExtensionRegistry];
  v6 = [v5 extensionsForSlot:@"com.apple.mobileReplayer.replayControllerSupport"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKey:{@"class", v18}];
        if (v12)
        {
          v13 = [v11 bundle];
          v14 = [v13 classNamed:v12];

          if (v14)
          {
            v15 = [[v14 alloc] initWithCaptureStore:v4];
            if (v15)
            {
              if (objc_opt_respondsToSelector())
              {
                v16 = [(MRReplayController *)self strongDelegate];
                [v15 setShouldCreateViewController:{objc_msgSend(v16, "shouldCreateViewController")}];
              }

              goto LABEL_15;
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [DYStandardPluginDirectoryProvider alloc];
    v3 = +[NSBundle mainBundle];
    v5 = [v2 initWithBundle:v3 includeDeveloperDirectory:0 includeBundleDirectory:0];

    v4 = [DYPluginLoader loadPluginsWithProvider:v5 pathExtension:@"mrplugin"];
  }
}

- (void)_processMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 kind];
  if (v5 - 4117 < 2)
  {
    v7 = [(MRReplayController *)self replayControllerSupport];
    v8 = [(MRReplayController *)self playbackEngine];
    v9 = [v7 isDebugPlaybackEngine:v8];

    if (v9)
    {
      if ([v4 kind] != 4117)
      {
        v46 = v7;
        if (!self->_shaderProfiler)
        {
          v19 = [(MRReplayController *)self playbackEngine];
          v20 = [v4 objectPayload];
          v21 = [v7 newShaderProfilerWithPlaybackEngine:v19 payload:v20];
          shaderProfiler = self->_shaderProfiler;
          self->_shaderProfiler = v21;
        }

        objc_initWeak(&from, self);
        v23 = [v4 attributes];
        v24 = v23 == 0;

        if (v24)
        {
          v41 = [(MRReplayController *)self shaderProfiler];
          v42 = [v4 objectPayload];
          [v41 updatePayload:v42];

          v43 = [(MRReplayController *)self profileBlockQueue];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100002450;
          v48[3] = &unk_100008318;
          objc_copyWeak(&v52, &from);
          v49 = v7;
          v50 = self;
          v51 = v4;
          [v43 pushBlock:v48];

          objc_destroyWeak(&v52);
        }

        else
        {
          v25 = [v4 attributes];
          v26 = [v25 objectForKeyedSubscript:@"collectInBackground"];
          v27 = v26 == 0;

          if (v27)
          {
            v44 = [(MRReplayController *)self profileBlockQueue];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1000021E8;
            v53[3] = &unk_100008318;
            objc_copyWeak(&v57, &from);
            v54 = v7;
            v55 = v4;
            v56 = self;
            [v44 pushBlock:v53];

            objc_destroyWeak(&v57);
          }

          else
          {
            v28 = [(MRReplayController *)self shaderProfiler];
            v29 = [v4 objectPayload];
            [v28 updatePayload:v29];

            v30 = [v4 objectPayload];
            v45 = [v30 objectForKeyedSubscript:@"maxDrawsInAnyEncoder"];

            if (v45)
            {
              v31 = [(MRReplayController *)self transport];
              v32 = [v4 kind];
              v33 = objc_opt_new();
              v34 = [DYTransportMessage messageWithKind:v32 plistPayload:v33];
              [v31 send:v34 inReplyTo:v4 error:0];

              v35 = [v45 unsignedIntegerValue];
              if (v35)
              {
                v36 = 0;
                do
                {
                  location[0] = 0;
                  location[1] = location;
                  location[2] = 0x3032000000;
                  location[3] = sub_100001FD0;
                  location[4] = sub_100001FE0;
                  v37 = [NSNumber numberWithUnsignedInteger:++v36, v45];
                  v71[0] = v37;
                  v38 = [NSNumber numberWithUnsignedInteger:v35];
                  v71[1] = v38;
                  v64 = [NSArray arrayWithObjects:v71 count:2];

                  v39 = [(MRReplayController *)self profileBlockBackgroundQueue];
                  v58[0] = _NSConcreteStackBlock;
                  v58[1] = 3221225472;
                  v58[2] = sub_100001FE8;
                  v58[3] = &unk_100008368;
                  objc_copyWeak(&v62, &from);
                  v40 = v46;
                  v60 = self;
                  v61 = location;
                  v59 = v40;
                  [v39 pushBlock:v58];

                  objc_destroyWeak(&v62);
                  _Block_object_dispose(location, 8);
                }

                while (v35 != v36);
              }
            }
          }
        }

        objc_destroyWeak(&from);
        goto LABEL_26;
      }

      v10 = [(MRReplayController *)self playbackEngine];
      v11 = [v4 objectPayload];
      v12 = [v7 newShaderProfilerWithPlaybackEngine:v10 payload:v11];
      v13 = self->_shaderProfiler;
      self->_shaderProfiler = v12;

      if (self->_shaderProfiler)
      {
        v14 = [(MRReplayController *)self profileBlockQueue];
        v46 = v7;
        [v14 clear];

        v15 = [(MRReplayController *)self profileBlockBackgroundQueue];
        [v15 clear];

        objc_initWeak(location, self);
        v16 = [(MRReplayController *)self profileBlockQueue];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100001E88;
        v66[3] = &unk_100008318;
        objc_copyWeak(&v70, location);
        v67 = v7;
        v68 = self;
        v69 = v4;
        [v16 pushBlock:v66];

        objc_destroyWeak(&v70);
        objc_destroyWeak(location);
LABEL_26:
        v7 = v46;
        goto LABEL_27;
      }
    }

    v17 = [(MRReplayController *)self transport];
    v18 = +[DYTransportMessage messageWithKind:](DYTransportMessage, "messageWithKind:", [v4 kind]);
    [v17 send:v18 inReplyTo:v4 error:0];

LABEL_27:
    goto LABEL_28;
  }

  if (v5 == 4101)
  {
    v6 = [v4 objectPayload];
    [(MRReplayController *)self _updateBackgroundImage:v6];
  }

  else
  {
    if (v5 != 4113)
    {
      v47.receiver = self;
      v47.super_class = MRReplayController;
      [(MRReplayController *)&v47 _processMessage:v4];
      goto LABEL_28;
    }

    v6 = [v4 payload];
    [(MRReplayController *)self _updateBackgroundImage:v6];
  }

LABEL_28:
}

- (void)_updateBackgroundImage:(id)a3
{
  v4 = a3;
  v5 = [(MRReplayController *)self strongDelegate];
  v6 = [v5 shouldCreateViewController];

  if (v6)
  {
    if (v4)
    {
      v7 = [UIImage imageWithData:v4];
      v8 = v7;
      if (v7)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000027FC;
        v12[3] = &unk_1000083B8;
        v12[4] = self;
        v8 = v7;
        v13 = v8;
        dispatch_async(&_dispatch_main_q, v12);
      }

      else
      {
        _DYOLog();
      }
    }

    else
    {
      v8 = [(MRReplayController *)self replayControllerSupport];
      v9 = [(MRReplayController *)self playbackEngine];
      v10 = [v8 viewControllerForPlaybackEngine:v9];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000278C;
      block[3] = &unk_1000083B8;
      block[4] = self;
      v15 = v10;
      v11 = v10;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (MRReplayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end