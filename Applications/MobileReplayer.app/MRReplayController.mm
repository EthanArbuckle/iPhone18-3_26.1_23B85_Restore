@interface MRReplayController
+ (id)sharedController;
+ (void)initialize;
- (MRReplayControllerDelegate)delegate;
- (MRReplayControllerDelegate)strongDelegate;
- (id)_replayerControllerSupportForCaptureStore:(id)store;
- (void)_displayPlaybackEngine;
- (void)_processMessage:(id)message;
- (void)_updateBackgroundImage:(id)image;
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

  strongDelegate = [(MRReplayController *)self strongDelegate];
  if ([strongDelegate shouldCreateViewController])
  {
    backgroundImageViewController = self->_backgroundImageViewController;

    if (backgroundImageViewController)
    {
      return;
    }

    strongDelegate = [(MRReplayController *)self replayControllerSupport];
    strongDelegate2 = [(MRReplayController *)self strongDelegate];
    playbackEngine = [(MRReplayController *)self playbackEngine];
    v6 = [strongDelegate viewControllerForPlaybackEngine:playbackEngine];
    [strongDelegate2 setViewController:v6];
  }
}

- (id)_replayerControllerSupportForCaptureStore:(id)store
{
  storeCopy = store;
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
          bundle = [v11 bundle];
          v14 = [bundle classNamed:v12];

          if (v14)
          {
            v15 = [[v14 alloc] initWithCaptureStore:storeCopy];
            if (v15)
            {
              if (objc_opt_respondsToSelector())
              {
                strongDelegate = [(MRReplayController *)self strongDelegate];
                [v15 setShouldCreateViewController:{objc_msgSend(strongDelegate, "shouldCreateViewController")}];
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
  if (objc_opt_class() == self)
  {
    v2 = [DYStandardPluginDirectoryProvider alloc];
    v3 = +[NSBundle mainBundle];
    v5 = [v2 initWithBundle:v3 includeDeveloperDirectory:0 includeBundleDirectory:0];

    v4 = [DYPluginLoader loadPluginsWithProvider:v5 pathExtension:@"mrplugin"];
  }
}

- (void)_processMessage:(id)message
{
  messageCopy = message;
  kind = [messageCopy kind];
  if (kind - 4117 < 2)
  {
    replayControllerSupport = [(MRReplayController *)self replayControllerSupport];
    playbackEngine = [(MRReplayController *)self playbackEngine];
    v9 = [replayControllerSupport isDebugPlaybackEngine:playbackEngine];

    if (v9)
    {
      if ([messageCopy kind] != 4117)
      {
        v46 = replayControllerSupport;
        if (!self->_shaderProfiler)
        {
          playbackEngine2 = [(MRReplayController *)self playbackEngine];
          objectPayload = [messageCopy objectPayload];
          v21 = [replayControllerSupport newShaderProfilerWithPlaybackEngine:playbackEngine2 payload:objectPayload];
          shaderProfiler = self->_shaderProfiler;
          self->_shaderProfiler = v21;
        }

        objc_initWeak(&from, self);
        attributes = [messageCopy attributes];
        v24 = attributes == 0;

        if (v24)
        {
          shaderProfiler = [(MRReplayController *)self shaderProfiler];
          objectPayload2 = [messageCopy objectPayload];
          [shaderProfiler updatePayload:objectPayload2];

          profileBlockQueue = [(MRReplayController *)self profileBlockQueue];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100002450;
          v48[3] = &unk_100008318;
          objc_copyWeak(&v52, &from);
          v49 = replayControllerSupport;
          selfCopy = self;
          v51 = messageCopy;
          [profileBlockQueue pushBlock:v48];

          objc_destroyWeak(&v52);
        }

        else
        {
          attributes2 = [messageCopy attributes];
          v26 = [attributes2 objectForKeyedSubscript:@"collectInBackground"];
          v27 = v26 == 0;

          if (v27)
          {
            profileBlockQueue2 = [(MRReplayController *)self profileBlockQueue];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1000021E8;
            v53[3] = &unk_100008318;
            objc_copyWeak(&v57, &from);
            v54 = replayControllerSupport;
            v55 = messageCopy;
            selfCopy2 = self;
            [profileBlockQueue2 pushBlock:v53];

            objc_destroyWeak(&v57);
          }

          else
          {
            shaderProfiler2 = [(MRReplayController *)self shaderProfiler];
            objectPayload3 = [messageCopy objectPayload];
            [shaderProfiler2 updatePayload:objectPayload3];

            objectPayload4 = [messageCopy objectPayload];
            v45 = [objectPayload4 objectForKeyedSubscript:@"maxDrawsInAnyEncoder"];

            if (v45)
            {
              transport = [(MRReplayController *)self transport];
              kind2 = [messageCopy kind];
              v33 = objc_opt_new();
              v34 = [DYTransportMessage messageWithKind:kind2 plistPayload:v33];
              [transport send:v34 inReplyTo:messageCopy error:0];

              unsignedIntegerValue = [v45 unsignedIntegerValue];
              if (unsignedIntegerValue)
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
                  v38 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
                  v71[1] = v38;
                  v64 = [NSArray arrayWithObjects:v71 count:2];

                  profileBlockBackgroundQueue = [(MRReplayController *)self profileBlockBackgroundQueue];
                  v58[0] = _NSConcreteStackBlock;
                  v58[1] = 3221225472;
                  v58[2] = sub_100001FE8;
                  v58[3] = &unk_100008368;
                  objc_copyWeak(&v62, &from);
                  v40 = v46;
                  selfCopy3 = self;
                  v61 = location;
                  v59 = v40;
                  [profileBlockBackgroundQueue pushBlock:v58];

                  objc_destroyWeak(&v62);
                  _Block_object_dispose(location, 8);
                }

                while (unsignedIntegerValue != v36);
              }
            }
          }
        }

        objc_destroyWeak(&from);
        goto LABEL_26;
      }

      playbackEngine3 = [(MRReplayController *)self playbackEngine];
      objectPayload5 = [messageCopy objectPayload];
      v12 = [replayControllerSupport newShaderProfilerWithPlaybackEngine:playbackEngine3 payload:objectPayload5];
      v13 = self->_shaderProfiler;
      self->_shaderProfiler = v12;

      if (self->_shaderProfiler)
      {
        profileBlockQueue3 = [(MRReplayController *)self profileBlockQueue];
        v46 = replayControllerSupport;
        [profileBlockQueue3 clear];

        profileBlockBackgroundQueue2 = [(MRReplayController *)self profileBlockBackgroundQueue];
        [profileBlockBackgroundQueue2 clear];

        objc_initWeak(location, self);
        profileBlockQueue4 = [(MRReplayController *)self profileBlockQueue];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100001E88;
        v66[3] = &unk_100008318;
        objc_copyWeak(&v70, location);
        v67 = replayControllerSupport;
        selfCopy4 = self;
        v69 = messageCopy;
        [profileBlockQueue4 pushBlock:v66];

        objc_destroyWeak(&v70);
        objc_destroyWeak(location);
LABEL_26:
        replayControllerSupport = v46;
        goto LABEL_27;
      }
    }

    transport2 = [(MRReplayController *)self transport];
    v18 = +[DYTransportMessage messageWithKind:](DYTransportMessage, "messageWithKind:", [messageCopy kind]);
    [transport2 send:v18 inReplyTo:messageCopy error:0];

LABEL_27:
    goto LABEL_28;
  }

  if (kind == 4101)
  {
    objectPayload6 = [messageCopy objectPayload];
    [(MRReplayController *)self _updateBackgroundImage:objectPayload6];
  }

  else
  {
    if (kind != 4113)
    {
      v47.receiver = self;
      v47.super_class = MRReplayController;
      [(MRReplayController *)&v47 _processMessage:messageCopy];
      goto LABEL_28;
    }

    objectPayload6 = [messageCopy payload];
    [(MRReplayController *)self _updateBackgroundImage:objectPayload6];
  }

LABEL_28:
}

- (void)_updateBackgroundImage:(id)image
{
  imageCopy = image;
  strongDelegate = [(MRReplayController *)self strongDelegate];
  shouldCreateViewController = [strongDelegate shouldCreateViewController];

  if (shouldCreateViewController)
  {
    if (imageCopy)
    {
      v7 = [UIImage imageWithData:imageCopy];
      replayControllerSupport = v7;
      if (v7)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000027FC;
        v12[3] = &unk_1000083B8;
        v12[4] = self;
        replayControllerSupport = v7;
        v13 = replayControllerSupport;
        dispatch_async(&_dispatch_main_q, v12);
      }

      else
      {
        _DYOLog();
      }
    }

    else
    {
      replayControllerSupport = [(MRReplayController *)self replayControllerSupport];
      playbackEngine = [(MRReplayController *)self playbackEngine];
      v10 = [replayControllerSupport viewControllerForPlaybackEngine:playbackEngine];

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