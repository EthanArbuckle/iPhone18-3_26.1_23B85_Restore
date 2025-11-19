@interface VOTUIServer
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3;
- (BOOL)shouldPreventAutorotatingAllContentViewControllers;
- (CGRect)_handleConvertFrameMessage:(id)a3;
- (VOTUIServer)init;
- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4;
- (id)_handleConvertFramesMessage:(id)a3;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_addBrailleViewControllerWithOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5;
- (void)_addMapsExplorationViewController;
- (void)_handleBeginSonificationPlayback:(id)a3;
- (void)_handleDisplayBrailleDotNumbers:(id)a3;
- (void)_handleDisplayUIServerBasedItemChooser:(id)a3;
- (void)_handleFlashBrailleInsertedTextMessage:(id)a3;
- (void)_handleHideVoiceOverWarning:(id)a3;
- (void)_handleHighlightBrailleDotsMessage:(id)a3;
- (void)_handleHighlightMapsExplorationSegmentMessage:(id)a3;
- (void)_handleMoveSystemPointerToPointWithMessage:(id)a3;
- (void)_handlePauseSonificationPlayback:(id)a3;
- (void)_handleRegisterForSystemPointerEventsWithMessage:(id)a3 clientIdentifier:(id)a4;
- (void)_handleScreenCurtainEnabled:(BOOL)a3;
- (void)_handleSendFocusChangeToZoom:(id)a3;
- (void)_handleSetCursorFrameMessage:(id)a3;
- (void)_handleSetElementVisualizationFramesMessage:(id)a3;
- (void)_handleSetSonificationPlayheadPosition:(id)a3;
- (void)_handleShowBrailleUIMessage:(id)a3;
- (void)_handleShowMapsExplorationUIMessage:(id)a3;
- (void)_handleShowVoiceOverWarning:(id)a3;
- (void)_handleUpdateBrailleUIMessage:(id)a3;
- (void)_handleUpdateMapsExplorationCurrentCenter:(id)a3;
- (void)_handleUpdateMapsExplorationUIWithCurrentLocationMessage:(id)a3;
- (void)_handleUpdateVisualRotor:(id)a3;
- (void)_handleVoiceOverCaptionPanelEnabled:(id)a3;
- (void)_handleZoomFocusChangeNotification:(id)a3;
- (void)_removeBrailleViewController;
- (void)_removeCaptionPanelViewControllers;
- (void)_removeCursorViewControllers;
- (void)_removeElementVisualizationViewController;
- (void)_removeItemChooserController;
- (void)_removeMapsExplorationViewController;
- (void)_removeRotorViewControllers;
- (void)_removeScreenCurtainControllers;
- (void)_removeSonificationViewController;
- (void)_toggleVoiceOverCaptionPanelViewController;
- (void)_updateCursorWithFrame:(CGRect)a3 pathData:(id)a4 animate:(BOOL)a5 displayID:(id)a6;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
- (void)dealloc;
- (void)externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)systemPointerController:(id)a3 pointerDidMoveToGlobalPoint:(CGPoint)a4;
@end

@implementation VOTUIServer

- (VOTUIServer)init
{
  v17.receiver = self;
  v17.super_class = VOTUIServer;
  v2 = [(VOTUIServer *)&v17 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_57C0;
    v14[3] = &unk_3D1F0;
    objc_copyWeak(&v15, &location);
    v4 = objc_loadWeakRetained(&location);
    [v3 registerUpdateBlock:v14 forRetrieveSelector:"enableVoiceOverCaptions" withListener:v4];

    objc_destroyWeak(&v15);
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_voiceOverStatusChanged" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];
    [v5 addObserver:v2 selector:"_handleZoomFocusChangeNotification:" name:UIAXZoomFocusChangedNotification object:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5800;
    block[3] = &unk_3D218;
    v6 = v2;
    v13 = v6;
    dispatch_async(&_dispatch_main_q, block);
    v7 = +[NSMutableArray array];
    [(VOTUIServer *)v6 setExternalWindowScenes:v7];

    v8 = +[NSMutableDictionary dictionary];
    [(VOTUIServer *)v6 setCursorViewControllers:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(VOTUIServer *)v6 setCaptionPanelViewControllers:v9];

    v10 = +[NSMutableDictionary dictionary];
    [(VOTUIServer *)v6 setRotorViewControllers:v10];

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(VOTUIServer *)self _removeCursorViewControllers];
  [(VOTUIServer *)self _removeBrailleViewController];
  [(VOTUIServer *)self _removeMapsExplorationViewController];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];
  [(VOTUIServer *)self _removeCaptionPanelViewControllers];
  [(VOTUIServer *)self _removeElementVisualizationViewController];
  [(VOTUIServer *)self _removeScreenCurtainControllers];
  [(VOTUIServer *)self _removeSonificationViewController];

  v4.receiver = self;
  v4.super_class = VOTUIServer;
  [(VOTUIServer *)&v4 dealloc];
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  switch(a4)
  {
    case 1uLL:
      [(VOTUIServer *)self _handleSetCursorFrameMessage:v9];
      goto LABEL_39;
    case 2uLL:
      [(VOTUIServer *)self _handleShowBrailleUIMessage:v9];
      goto LABEL_39;
    case 3uLL:
      [(VOTUIServer *)self _handleHideBrailleUIMessage:v9];
      goto LABEL_39;
    case 4uLL:
      [(VOTUIServer *)self _handleHighlightBrailleDotsMessage:v9];
      goto LABEL_39;
    case 5uLL:
      [(VOTUIServer *)self _handleUpdateBrailleUIMessage:v9];
      goto LABEL_39;
    case 6uLL:
      [(VOTUIServer *)self _handleFlashBrailleInsertedTextMessage:v9];
      goto LABEL_39;
    case 7uLL:
      v11 = [v9 objectForKeyedSubscript:@"enabled"];
      -[VOTUIServer _handleScreenCurtainEnabled:](self, "_handleScreenCurtainEnabled:", [v11 BOOLValue]);
      goto LABEL_29;
    case 8uLL:
      [(VOTUIServer *)self _handleVoiceOverCaptionPanelEnabled:v9];
      goto LABEL_39;
    case 9uLL:
      v20 = [(VOTUIServer *)self cursorViewControllers];
      v21 = [v20 objectForKeyedSubscript:&off_400C0];
      v22 = [v21 view];
      v23 = [v22 window];
      v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v23 _contextId]);

      v30 = @"contextId";
      v31 = v11;
      v18 = &v31;
      v19 = &v30;
      goto LABEL_28;
    case 0xAuLL:
      [(VOTUIServer *)self _handleSetElementVisualizationFramesMessage:v9];
      goto LABEL_39;
    case 0xBuLL:
      [(VOTUIServer *)self _handleUpdateVisualRotor:v9];
      goto LABEL_39;
    case 0xCuLL:
      [(VOTUIServer *)self _handleDisplayUIServerBasedItemChooser:v9];
      goto LABEL_39;
    case 0xDuLL:
      [(VOTUIServer *)self _handleConvertFrameMessage:v9];
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      if (CGRectIsNull(v33))
      {
        goto LABEL_39;
      }

      v28 = @"convertedFrame";
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v11 = NSStringFromRect(v34);
      v29 = v11;
      v18 = &v29;
      v19 = &v28;
      goto LABEL_28;
    case 0xEuLL:
      v11 = [(VOTUIServer *)self _handleConvertFramesMessage:v9];
      if (![v11 count])
      {
        goto LABEL_29;
      }

      v26 = @"convertedFramesStrings";
      v27 = v11;
      v18 = &v27;
      v19 = &v26;
LABEL_28:
      v24 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];

      goto LABEL_40;
    case 0xFuLL:
      [(VOTUIServer *)self _handleShowMapsExplorationUIMessage:v9];
      goto LABEL_39;
    case 0x10uLL:
      [(VOTUIServer *)self _handleHighlightMapsExplorationSegmentMessage:v9];
      goto LABEL_39;
    case 0x11uLL:
      [(VOTUIServer *)self _handleUpdateMapsExplorationCurrentCenter:v9];
      goto LABEL_39;
    case 0x12uLL:
      [(VOTUIServer *)self _handleUpdateMapsExplorationUIWithCurrentLocationMessage:v9];
      goto LABEL_39;
    case 0x13uLL:
      [(VOTUIServer *)self _handleHideMapsExplorationUIMessage:v9];
      goto LABEL_39;
    case 0x14uLL:
      [(VOTUIServer *)self _handleSendFocusChangeToZoom:v9];
      goto LABEL_39;
    case 0x15uLL:
      [(VOTUIServer *)self _handleSetSonificationPlayheadPosition:v9];
      goto LABEL_39;
    case 0x16uLL:
      [(VOTUIServer *)self _handleBeginSonificationPlayback:v9];
      goto LABEL_39;
    case 0x17uLL:
      [(VOTUIServer *)self _handlePauseSonificationPlayback:v9];
      goto LABEL_39;
    case 0x18uLL:
      v11 = +[AXUIDisplayManager sharedDisplayManager];
      v12 = [v9 objectForKeyedSubscript:@"alertText"];
      v13 = [v11 showAlertWithText:v12 subtitleText:0 iconImage:0 type:5 priority:20 duration:self forService:AXUIAlertDisplayTimeDefaultForBanners];

LABEL_29:
      goto LABEL_39;
    case 0x19uLL:
      [(VOTUIServer *)self _handleRegisterForSystemPointerEventsWithMessage:v9 clientIdentifier:v10];
      goto LABEL_39;
    case 0x1AuLL:
      [(VOTUIServer *)self _handleMoveSystemPointerToPointWithMessage:v9];
      goto LABEL_39;
    case 0x1BuLL:
    case 0x1EuLL:
    case 0x1FuLL:
      goto LABEL_43;
    case 0x1CuLL:
      [(VOTUIServer *)self _handleToggleElementLabeler:v9];
      goto LABEL_39;
    case 0x1DuLL:
      [(VOTUIServer *)self _handleToggleQuickSettings];
      goto LABEL_39;
    case 0x20uLL:
      [(VOTUIServer *)self _handleDisplayBrailleDotNumbers:v9];
      goto LABEL_39;
    default:
      if (a4 == 10000)
      {
        [(VOTUIServer *)self _handleShowVoiceOverWarning:v9];
      }

      else
      {
        if (a4 != 10001)
        {
LABEL_43:
          abort();
        }

        [(VOTUIServer *)self _handleHideVoiceOverWarning:v9];
      }

LABEL_39:
      v24 = 0;
LABEL_40:

      return v24;
  }
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3
{
  if (a3 == 1)
  {
    [NSSet setWithArray:&off_40248];
  }

  else
  {
    [NSSet setWithObject:@"com.apple.accessibility.voiceover"];
  }
  v3 = ;

  return v3;
}

- (void)systemPointerController:(id)a3 pointerDidMoveToGlobalPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(VOTUIServer *)self systemPointerRegistrants:a3];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v19 = @"point";
        v22.x = x;
        v22.y = y;
        v13 = NSStringFromCGPoint(v22);
        v20 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v12 sendAsynchronousMessage:v14 withIdentifier:1001 targetAccessQueue:0 completion:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_handleMoveSystemPointerToPointWithMessage:(id)a3
{
  v11 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 laserEnabled];

  if (v5)
  {
    v6 = [v11 objectForKeyedSubscript:@"point"];
    v7 = CGPointFromString(v6);

    v8 = [v11 objectForKeyedSubscript:@"contextId"];
    v9 = [v8 unsignedIntValue];

    v10 = [(VOTUIServer *)self systemPointerController];
    [v10 movePointerToPoint:v9 contextId:{v7.x, v7.y}];
  }
}

- (void)_handleRegisterForSystemPointerEventsWithMessage:(id)a3 clientIdentifier:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 laserEnabled];

  if (v8)
  {
    v9 = [v17 objectForKeyedSubscript:@"register"];
    v10 = [v9 BOOLValue];

    v11 = [(VOTUIServer *)self systemPointerRegistrants];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 objectForKeyedSubscript:v6];

      if (v13)
      {
        goto LABEL_9;
      }

      v14 = [(VOTUIServer *)self systemPointerRegistrants];

      if (!v14)
      {
        v15 = +[NSMutableDictionary dictionary];
        [(VOTUIServer *)self setSystemPointerRegistrants:v15];
      }

      v12 = [AXUIClientMessenger clientMessengerWithIdentifier:v6];
      v16 = [(VOTUIServer *)self systemPointerRegistrants];
      [v16 setObject:v12 forKeyedSubscript:v6];
    }

    else
    {
      [v11 removeObjectForKey:v6];
    }
  }

LABEL_9:
}

- (void)_handleVoiceOverCaptionPanelEnabled:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(VOTUIServer *)self captionPanelViewControllers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 parseMessage:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_toggleVoiceOverCaptionPanelViewController
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = +[AXSettings sharedInstance];
    if ([v3 enableVoiceOverCaptions])
    {
      v4 = [(VOTUIServer *)self screenCurtainViewControllers];

      if (!v4)
      {
        v5 = [(VOTUIServer *)self captionPanelViewControllers];
        v6 = [v5 allKeys];
        v7 = [v6 containsObject:&off_400C0];

        if ((v7 & 1) == 0)
        {
          v8 = objc_alloc_init(VOTUICaptionPanelViewController);
          v9 = [(VOTUIServer *)self captionPanelViewControllers];
          [v9 setObject:v8 forKeyedSubscript:&off_400C0];

          v10 = +[AXUIDisplayManager sharedDisplayManager];
          v11 = [(VOTUIServer *)self captionPanelViewControllers];
          v12 = [v11 objectForKeyedSubscript:&off_400C0];
          [v10 addContentViewController:v12 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 spatialConfiguration:0 completion:0];
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        obj = self->_externalWindowScenes;
        v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v26 + 1) + 8 * i);
              v18 = objc_alloc_init(VOTUICaptionPanelViewController);
              captionPanelViewControllers = self->_captionPanelViewControllers;
              v20 = [v17 screen];
              v21 = [v20 displayIdentity];
              v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 displayID]);
              [(NSMutableDictionary *)captionPanelViewControllers setObject:v18 forKeyedSubscript:v22];

              v23 = +[AXUIDisplayManager sharedDisplayManager];
              [v23 addContentViewController:v18 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:v17 completion:0];
            }

            v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v14);
        }

        return;
      }
    }

    else
    {
    }
  }

  v24 = [(VOTUIServer *)self captionPanelViewControllers];

  if (v24)
  {

    [(VOTUIServer *)self _removeCaptionPanelViewControllers];
  }
}

- (void)_removeCaptionPanelViewControllers
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(VOTUIServer *)self captionPanelViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [(VOTUIServer *)self captionPanelViewControllers];
  [v11 removeAllObjects];
}

- (void)_handleSetCursorFrameMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"animate"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:@"frame"];
  v39 = CGRectFromString(v7);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;

  v12 = [v4 objectForKey:@"path"];
  v13 = [v4 objectForKey:@"display"];

  if (v13)
  {
    v14 = [(VOTUIServer *)self cursorViewControllers];
    v15 = [v14 allKeys];
    v16 = [v15 containsObject:v13];

    if ((v16 & 1) == 0)
    {
      v17 = [[VOTUICursorViewController alloc] initWithAXUIService:self];
      v18 = [(VOTUIServer *)self cursorViewControllers];
      [v18 setObject:v17 forKeyedSubscript:v13];

      v19 = +[AXUIDisplayManager sharedDisplayManager];
      v20 = [(VOTUIServer *)self cursorViewControllers];
      v21 = [v20 objectForKeyedSubscript:v13];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_6AB0;
      v31[3] = &unk_3D240;
      v31[4] = self;
      v34 = x;
      v35 = y;
      v36 = width;
      v37 = height;
      v32 = v12;
      v38 = v6;
      v22 = v13;
      v33 = v22;
      [v19 addContentViewController:v21 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 completion:v31];

      v23 = +[AXSettings sharedInstance];
      LODWORD(v20) = [v23 laserEnabled];

      if (v20)
      {
        v24 = [VOTUISystemPointerController alloc];
        v25 = [(VOTUIServer *)self cursorViewControllers];
        v26 = [v25 objectForKeyedSubscript:v22];
        v27 = [v26 view];
        v28 = [v27 window];
        v29 = -[VOTUISystemPointerController initWithContextId:](v24, "initWithContextId:", [v28 _contextId]);
        [(VOTUIServer *)self setSystemPointerController:v29];

        v30 = [(VOTUIServer *)self systemPointerController];
        [v30 setDelegate:self];
      }
    }

    [(VOTUIServer *)self _updateCursorWithFrame:v12 pathData:v6 animate:v13 displayID:x, y, width, height];
  }
}

- (void)_updateCursorWithFrame:(CGRect)a3 pathData:(id)a4 animate:(BOOL)a5 displayID:(id)a6
{
  v37 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a6;
  v38 = v12;
  if (v12)
  {
    v14 = AX_CGPathCreateWithDataRepresentation();
  }

  else
  {
    v14 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [(VOTUIServer *)self cursorViewControllers];
  v16 = [v15 allKeys];

  v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        v22 = [(VOTUIServer *)self cursorViewControllers];
        v23 = [v22 objectForKeyedSubscript:v21];
        [v23 setCursorHidden:v21 != v13];
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  v44.origin.x = CGRectZero.origin.x;
  v44.origin.y = CGRectZero.origin.y;
  v44.size.width = CGRectZero.size.width;
  v44.size.height = CGRectZero.size.height;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v24 = CGRectEqualToRect(v44, v45);
  v25 = [(VOTUIServer *)self cursorViewControllers];
  v26 = [v25 objectForKeyedSubscript:v13];
  v27 = v26;
  if (v24 && v14 == 0)
  {
    [v26 setCursorHidden:1];

    v30 = v38;
  }

  else
  {
    v29 = [v26 cursorHidden];

    v30 = v38;
    if (v29)
    {
      v31 = [(VOTUIServer *)self cursorViewControllers];
      v32 = [v31 objectForKeyedSubscript:v13];
      [v32 setCursorHidden:0];
    }

    v33 = [(VOTUIServer *)self cursorViewControllers];
    v34 = [v33 objectForKeyedSubscript:v13];
    [v34 setCursorFrame:v37 animated:{x, y, width, height}];

    v35 = [(VOTUIServer *)self cursorViewControllers];
    v36 = [v35 objectForKeyedSubscript:v13];
    [v36 setCursorPath:v14];

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

- (void)_handleSetElementVisualizationFramesMessage:(id)a3
{
  v4 = a3;
  v13 = [v4 objectForKey:@"elementVisualizationFrames"];
  v5 = [v4 objectForKey:@"elementVisualizationFrameLabels"];
  v6 = [v4 objectForKey:@"elementVisualizationUIClasses"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v13 count] && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [(VOTUIServer *)self elementVisualizationViewController];

    if (!v7)
    {
      v8 = objc_alloc_init(VOTUIElementVisualizationViewController);
      [(VOTUIServer *)self setElementVisualizationViewController:v8];

      v9 = +[AXUIDisplayManager sharedDisplayManager];
      v10 = [(VOTUIServer *)self elementVisualizationViewController];
      [v9 addContentViewController:v10 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 completion:0];
    }

    v11 = [(VOTUIServer *)self elementVisualizationViewController];
    [v11 setElementFrames:v13 labels:v5 uiClasses:v6];
  }

  else
  {
    v12 = [(VOTUIServer *)self elementVisualizationViewController];

    if (v12)
    {
      [(VOTUIServer *)self _removeElementVisualizationViewController];
    }
  }
}

- (void)_handleShowVoiceOverWarning:(id)a3
{
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = AXLocStringKeyForHomeButtonAndExclusiveModel();
  v5 = [v9 localizedStringForKey:v4 value:&stru_3F518 table:@"VoiceOverUIService"];
  v6 = [(VOTUIServer *)self voiceOverWarningIdentifier];

  if (!v6)
  {
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [v7 showAlertWithText:v5 subtitleText:0 iconImage:0 type:4 priority:20 duration:self forService:AXUIAlertDisplayTimeForever];
    [(VOTUIServer *)self setVoiceOverWarningIdentifier:v8];
  }
}

- (void)_handleHideVoiceOverWarning:(id)a3
{
  v4 = [(VOTUIServer *)self voiceOverWarningIdentifier];

  if (v4)
  {
    v5 = +[AXUIDisplayManager sharedDisplayManager];
    v6 = [(VOTUIServer *)self voiceOverWarningIdentifier];
    [v5 hideAlertWithIdentifier:v6 forService:self];

    [(VOTUIServer *)self setVoiceOverWarningIdentifier:0];
  }
}

- (void)_handleUpdateVisualRotor:(id)a3
{
  v4 = a3;
  v5 = [(VOTUIServer *)self rotorViewControllers];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:&off_400C0];

  if ((v7 & 1) == 0)
  {
    v8 = objc_alloc_init(VOTUIRotorViewController);
    v9 = [(VOTUIServer *)self rotorViewControllers];
    [v9 setObject:v8 forKeyedSubscript:&off_400C0];

    v10 = +[AXUIDisplayManager sharedDisplayManager];
    v11 = [(VOTUIServer *)self rotorViewControllers];
    v12 = [v11 objectForKeyedSubscript:&off_400C0];
    [v10 addContentViewController:v12 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 spatialConfiguration:0 completion:0];
  }

  if ([(NSMutableArray *)self->_externalWindowScenes count])
  {
    v30 = v4;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [(VOTUIServer *)self cursorViewControllers];
    v14 = [v13 allKeys];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      v18 = &off_400C0;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [(VOTUIServer *)self cursorViewControllers];
          v22 = [v21 objectForKeyedSubscript:v20];
          v23 = [v22 view];
          v24 = [v23 isHidden];

          if ((v24 & 1) == 0)
          {
            v25 = v20;

            v18 = v25;
          }

          v26 = [(VOTUIServer *)self rotorViewControllers];
          v27 = [v26 objectForKeyedSubscript:v20];
          [v27 setRotorHidden:v24];
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = &off_400C0;
    }

    v4 = v30;
  }

  else
  {
    v18 = &off_400C0;
  }

  v28 = [(VOTUIServer *)self rotorViewControllers];
  v29 = [v28 objectForKeyedSubscript:v18];
  [v29 updateVisualRotor:v4];
}

- (CGRect)_handleConvertFrameMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"frame"];
  v25 = CGRectFromString(v5);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v10 = [v4 objectForKey:@"display"];

  v11 = [(VOTUIServer *)self cursorViewControllers];
  v12 = [v11 objectForKeyedSubscript:v10];
  [v12 convertFrameToCursorSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)_handleConvertFramesMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"frames"];
  v6 = [v4 objectForKey:@"display"];
  v7 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v35 = CGRectFromString(*(*(&v29 + 1) + 8 * i));
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        v17 = [(VOTUIServer *)self cursorViewControllers];
        v18 = [v17 objectForKeyedSubscript:v6];
        [v18 convertFrameToCursorSpace:{x, y, width, height}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v36.origin.x = v20;
        v36.origin.y = v22;
        v36.size.width = v24;
        v36.size.height = v26;
        if (!CGRectIsNull(v36))
        {
          v37.origin.x = v20;
          v37.origin.y = v22;
          v37.size.width = v24;
          v37.size.height = v26;
          v27 = NSStringFromCGRect(v37);
          [v7 addObject:v27];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_handleShowMapsExplorationUIMessage:(id)a3
{
  v4 = a3;
  [(VOTUIServer *)self _addMapsExplorationViewController];
  v13 = [v4 objectForKeyedSubscript:@"mapsExplorationCenter"];
  v5 = [(VOTUIServer *)self mapsExplorationViewController];
  v6 = [v13 firstObject];
  [v6 floatValue];
  v8 = v7;
  v9 = [v13 objectAtIndex:1];
  [v9 floatValue];
  v11 = v10;
  v12 = [v4 objectForKeyedSubscript:@"mapsExplorationData"];

  [v5 updateUIWithCenter:v12 andExplorationSegments:{v8, v11}];
}

- (void)_handleUpdateMapsExplorationCurrentCenter:(id)a3
{
  v10 = [a3 objectForKeyedSubscript:@"mapsExplorationCenter"];
  v4 = [(VOTUIServer *)self mapsExplorationViewController];
  v5 = [v10 firstObject];
  [v5 floatValue];
  v7 = v6;
  v8 = [v10 objectAtIndex:1];
  [v8 floatValue];
  [v4 updateUIWithCenter:{v7, v9}];
}

- (void)_handleUpdateMapsExplorationUIWithCurrentLocationMessage:(id)a3
{
  v10 = [a3 objectForKeyedSubscript:@"mapsExplorationCurrentLocation"];
  v4 = [(VOTUIServer *)self mapsExplorationViewController];
  v5 = [v10 firstObject];
  [v5 floatValue];
  v7 = v6;
  v8 = [v10 objectAtIndex:1];
  [v8 floatValue];
  [v4 updateUIWithCurrentLocation:{v7, v9}];
}

- (void)_handleHighlightMapsExplorationSegmentMessage:(id)a3
{
  v4 = a3;
  v6 = [(VOTUIServer *)self mapsExplorationViewController];
  v5 = [v4 objectForKeyedSubscript:@"mapsExplorationIndex"];

  [v6 highlightExplorationSegmentWithIndex:{objc_msgSend(v5, "intValue")}];
}

- (void)_handleShowBrailleUIMessage:(id)a3
{
  v4 = a3;
  v9 = [v4 objectForKeyedSubscript:@"brailleOrientation"];
  v5 = [v9 intValue];
  v6 = [v4 objectForKeyedSubscript:@"brailleDotPositions"];
  v7 = sub_7B00(v6);
  v8 = [v4 objectForKeyedSubscript:@"brailleTypingMode"];

  -[VOTUIServer _addBrailleViewControllerWithOrientation:dotNumberPositions:typingMode:](self, "_addBrailleViewControllerWithOrientation:dotNumberPositions:typingMode:", v5, v7, [v8 intValue]);
}

- (void)_handleHighlightBrailleDotsMessage:(id)a3
{
  v4 = a3;
  v6 = [(VOTUIServer *)self brailleViewController];
  v5 = [v4 objectForKeyedSubscript:@"brailleDotNumbers"];

  [v6 highlightBrailleDots:v5];
}

- (void)_handleDisplayBrailleDotNumbers:(id)a3
{
  v4 = a3;
  v6 = [(VOTUIServer *)self brailleViewController];
  v5 = [v4 objectForKeyedSubscript:@"brailleDotNumbersReversed"];

  [v6 displayDotNumbersWithReversed:v5];
}

- (void)_handleUpdateBrailleUIMessage:(id)a3
{
  v4 = a3;
  v10 = [(VOTUIServer *)self brailleViewController];
  v5 = [v4 objectForKeyedSubscript:@"brailleOrientation"];
  v6 = [v5 intValue];
  v7 = [v4 objectForKeyedSubscript:@"brailleDotPositions"];
  v8 = sub_7B00(v7);
  v9 = [v4 objectForKeyedSubscript:@"brailleTypingMode"];

  [v10 setOrientation:v6 dotNumberPositions:v8 typingMode:{objc_msgSend(v9, "intValue")}];
}

- (void)_handleSendFocusChangeToZoom:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FocusChangeFrameKey"];
  v41 = CGRectFromString(v5);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;

  v10 = [v4 objectForKeyedSubscript:@"FocusChangeTypeKey"];
  v11 = [v10 integerValue];

  v39 = [v4 objectForKeyedSubscript:@"display"];

  v12 = [(VOTUIServer *)self cursorViewControllers];
  v13 = [v12 objectForKeyedSubscript:v39];
  [v13 convertFrameToCursorSpace:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(VOTUIServer *)self cursorViewControllers];
  v23 = [v22 objectForKeyedSubscript:v39];
  v24 = [v23 view];
  v25 = [(VOTUIServer *)self cursorViewControllers];
  v26 = [v25 objectForKeyedSubscript:v39];
  v27 = [v26 cursorView];
  [v24 convertRect:v27 toView:{v15, v17, v19, v21}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [(VOTUIServer *)self cursorViewControllers];
  v37 = [v36 objectForKeyedSubscript:v39];
  v38 = [v37 cursorView];
  v42.origin.x = v29;
  v42.origin.y = v31;
  v42.size.width = v33;
  v42.size.height = v35;
  UIAccessibilityZoomFocusChanged(v11, v42, v38);
}

- (void)_handleZoomFocusChangeNotification:(id)a3
{
  v20 = a3;
  v3 = [v20 userInfo];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v4 integerValue];

  if ((v5 - 1) <= 1)
  {
    v6 = [v20 userInfo];
    v7 = [v6 objectForKey:@"window"];

    AXUIRectForZoomFocusChangeNotification();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = +[ZoomServices sharedInstance];
    v17 = [v7 _contextId];
    v18 = [v7 screen];
    v19 = [v18 displayIdentity];
    [v16 notifyZoomFocusDidChangeWithType:v5 rect:v17 contextId:objc_msgSend(v19 keyboardFrame:"displayID") displayId:{v9, v11, v13, v15, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  }
}

- (void)_handleSetSonificationPlayheadPosition:(id)a3
{
  v4 = a3;
  v5 = [(VOTUIServer *)self sonificationViewController];

  if (!v5)
  {
    v6 = objc_alloc_init(VOTUISonificationViewController);
    [(VOTUIServer *)self setSonificationViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [(VOTUIServer *)self sonificationViewController];
    [v7 addContentViewController:v8 withUserInteractionEnabled:0 forService:self];
  }

  v9 = [v4 objectForKeyedSubscript:@"sonificationPlaybackBounds"];
  v30 = CGRectFromString(v9);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v14 = [v4 objectForKeyedSubscript:@"sonificationPlayheadProgress"];

  [v14 doubleValue];
  v16 = v15;

  v17 = [(VOTUIServer *)self sonificationViewController];
  [v17 convertFrameToViewSpace:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(VOTUIServer *)self sonificationViewController];
  [v26 setPlayheadHidden:v16 < 0.0];

  v27 = [(VOTUIServer *)self sonificationViewController];
  [v27 setPlaybackBounds:{v19, v21, v23, v25}];

  v28 = [(VOTUIServer *)self sonificationViewController];
  [v28 setPlayheadProgress:v16];
}

- (void)_handleBeginSonificationPlayback:(id)a3
{
  v4 = a3;
  v5 = [(VOTUIServer *)self sonificationViewController];

  if (!v5)
  {
    v6 = objc_alloc_init(VOTUISonificationViewController);
    [(VOTUIServer *)self setSonificationViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [(VOTUIServer *)self sonificationViewController];
    [v7 addContentViewController:v8 withUserInteractionEnabled:0 forService:self];
  }

  v9 = [v4 objectForKeyedSubscript:@"sonificationPlaybackBounds"];
  v39 = CGRectFromString(v9);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;

  v14 = [v4 objectForKeyedSubscript:@"sonificationPlayheadProgress"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [(VOTUIServer *)self sonificationViewController];
  [v17 convertFrameToViewSpace:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v4 objectForKeyedSubscript:@"sonificationDuration"];
  [v26 doubleValue];
  v28 = v27;

  v29 = [v4 objectForKeyedSubscript:@"sonificationPlaybackStartTime"];
  [v29 doubleValue];
  v31 = v30;

  v32 = [v4 objectForKeyedSubscript:@"sonificationNormalizedPlayheadPosition"];

  [v32 doubleValue];
  v34 = v33;

  v35 = [(VOTUIServer *)self sonificationViewController];
  [v35 setPlayheadProgress:v16];

  v36 = [(VOTUIServer *)self sonificationViewController];
  [v36 setPlaybackBounds:{v19, v21, v23, v25}];

  v37 = [(VOTUIServer *)self sonificationViewController];
  [v37 resumePlaybackFromPosition:v34 startTime:v31 totalDuration:v28];
}

- (void)_handlePauseSonificationPlayback:(id)a3
{
  v3 = [(VOTUIServer *)self sonificationViewController];
  [v3 pausePlayback];
}

- (void)_handleDisplayUIServerBasedItemChooser:(id)a3
{
  v9 = [a3 objectForKeyedSubscript:@"items"];
  v4 = [(VOTUIServer *)self itemChooserController];
  if (v9)
  {

    if (!v4)
    {
      v5 = objc_alloc_init(Legacy_VOTUIItemChooserController);
      [(VOTUIServer *)self setItemChooserController:v5];

      v6 = [(VOTUIServer *)self itemChooserController];
      [v6 setDelegate:self];

      v7 = +[AXUIDisplayManager sharedDisplayManager];
      v8 = [(VOTUIServer *)self itemChooserController];
      [v7 addContentViewController:v8 withUserInteractionEnabled:1 forService:self];
    }

    v4 = [(VOTUIServer *)self itemChooserController];
    [v4 showItemChooser:v9];
  }

  else
  {
    [v4 hideItemChooser:0];
  }
}

- (void)_handleScreenCurtainEnabled:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(VOTUIServer *)self _removeScreenCurtainControllers];
    goto LABEL_12;
  }

  v5 = [(VOTUIServer *)self screenCurtainViewControllers];

  if (v5)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [(VOTUIServer *)self setScreenCurtainViewControllers:v6];

  _UIAccessibilityBlockPostingOfNotification();
  v7 = objc_alloc_init(VOTUIScreenCurtainViewController);
  v8 = [(VOTUIServer *)self screenCurtainViewControllers];
  [v8 setObject:v7 forKeyedSubscript:&off_400C0];

  v9 = +[AXUIDisplayManager sharedDisplayManager];
  v10 = [(VOTUIServer *)self screenCurtainViewControllers];
  v11 = [v10 objectForKeyedSubscript:&off_400C0];
  [v9 addContentViewController:v11 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTScreenCurtainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 completion:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_externalWindowScenes;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v30 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        v16 = objc_alloc_init(VOTUIScreenCurtainViewController);
        screenCurtainViewControllers = self->_screenCurtainViewControllers;
        v18 = [v15 screen];
        v19 = [v18 displayIdentity];
        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v19 displayID]);
        [(NSMutableDictionary *)screenCurtainViewControllers setObject:v16 forKeyedSubscript:v20];

        v21 = +[AXUIDisplayManager sharedDisplayManager];
        [v21 addContentViewController:v16 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTScreenCurtainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:v15 completion:0];

        v14 = v14 + 1;
      }

      while (v13 != v14);
      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v22 = 1;
LABEL_13:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [(VOTUIServer *)self screenCurtainViewControllers];
  v24 = [v23 allValues];

  v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v31 + 1) + 8 * v28) setEnabled:v3 animate:1];
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v26);
  }

  if (v22)
  {
    _UIAccessibilityUnblockPostingOfNotification();
  }
}

- (void)_handleFlashBrailleInsertedTextMessage:(id)a3
{
  v4 = a3;
  v6 = [(VOTUIServer *)self brailleViewController];
  v5 = [v4 objectForKeyedSubscript:@"brailleInsertedText"];

  [v6 flashInsertedText:v5];
}

- (void)_removeScreenCurtainControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(VOTUIServer *)self screenCurtainViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setEnabled:0 animate:1];
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(VOTUIServer *)self setScreenCurtainViewControllers:0];
}

- (void)_removeCursorViewControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(VOTUIServer *)self cursorViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        [v9 setCursorHidden:1];
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(VOTUIServer *)self setCursorViewControllers:0];
}

- (void)_removeElementVisualizationViewController
{
  v3 = [(VOTUIServer *)self elementVisualizationViewController];
  [v3 setFramesHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = [(VOTUIServer *)self elementVisualizationViewController];
  [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setElementVisualizationViewController:0];
}

- (void)_removeItemChooserController
{
  v3 = [(VOTUIServer *)self itemChooserController];

  if (v3)
  {
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    v5 = [(VOTUIServer *)self itemChooserController];
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    v6 = [(VOTUIServer *)self itemChooserController];
    [v6 setDelegate:0];

    [(VOTUIServer *)self setItemChooserController:0];
  }
}

- (void)_removeRotorViewControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(VOTUIServer *)self rotorViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_removeSonificationViewController
{
  v3 = [(VOTUIServer *)self sonificationViewController];

  if (v3)
  {
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    v5 = [(VOTUIServer *)self sonificationViewController];
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    [(VOTUIServer *)self setSonificationViewController:0];
  }
}

- (void)_addMapsExplorationViewController
{
  v3 = [(VOTUIServer *)self mapsExplorationViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(VOTUIMapsExplorationViewController);
    [(VOTUIServer *)self setMapsExplorationViewController:v4];

    v6 = +[AXUIDisplayManager sharedDisplayManager];
    v5 = [(VOTUIServer *)self mapsExplorationViewController];
    [v6 addContentViewController:v5 withUserInteractionEnabled:0 forService:self];
  }
}

- (void)_addBrailleViewControllerWithOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5
{
  v8 = a4;
  v9 = [(VOTUIServer *)self brailleViewController];

  if (v9)
  {
    v11 = [(VOTUIServer *)self brailleViewController];
    [v11 setOrientation:a3 dotNumberPositions:v8 typingMode:a5];
  }

  else
  {
    v10 = [[VOTUIBrailleViewController alloc] initWithOrientation:a3 dotNumberPositions:v8 typingMode:a5];

    [(VOTUIServer *)self setBrailleViewController:v10];
    v11 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [(VOTUIServer *)self brailleViewController];
    [v11 addContentViewController:v8 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXZoomSceneClientIdentifier"];
  }
}

- (void)_removeBrailleViewController
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  v4 = [(VOTUIServer *)self brailleViewController];
  [v3 removeContentViewController:v4 withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setBrailleViewController:0];
}

- (void)_removeMapsExplorationViewController
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  v4 = [(VOTUIServer *)self mapsExplorationViewController];
  [v3 removeContentViewController:v4 withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setMapsExplorationViewController:0];
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9448;
  block[3] = &unk_3D218;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4
{
  v5 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [(VOTUIServer *)self cursorViewControllers];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v36 + 1) + 8 * v11) == v5)
        {

          goto LABEL_29;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [(VOTUIServer *)self screenCurtainViewControllers];
  v13 = [v12 allValues];

  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (*(*(&v32 + 1) + 8 * v17) == v5)
        {

          v26 = 10000021.0;
          goto LABEL_31;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(VOTUIServer *)self itemChooserController];

  if (v18 == v5)
  {
    v26 = UIHUDWindowLevel;
  }

  else
  {
    v19 = [(VOTUIServer *)self brailleViewController];

    if (v19 == v5)
    {
      v26 = 10000017.0;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = [(VOTUIServer *)self captionPanelViewControllers];
      v21 = [v20 allValues];

      v22 = [v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v21);
            }

            if (*(*(&v28 + 1) + 8 * v25) == v5)
            {

              v26 = 10000014.0;
              goto LABEL_31;
            }

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:
      v26 = 10000013.0;
    }
  }

LABEL_31:

  return v26;
}

- (void)externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v29 = a3;
  v5 = [(VOTUIServer *)self cursorViewControllers];
  v6 = [v29 screen];
  v7 = [v6 displayIdentity];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 displayID]);
  v9 = [v5 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [(VOTUIServer *)self externalWindowScenes];
    [v10 addObject:v29];

    v11 = [[VOTUICursorViewController alloc] initWithAXUIService:self];
    v12 = [(VOTUIServer *)self cursorViewControllers];
    v13 = [v29 screen];
    v14 = [v13 displayIdentity];
    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 displayID]);
    [v12 setObject:v11 forKeyedSubscript:v15];

    v16 = +[AXUIDisplayManager sharedDisplayManager];
    [v16 addContentViewController:v11 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:v29 completion:0];

    v17 = objc_alloc_init(VOTUICaptionPanelViewController);
    v18 = [(VOTUIServer *)self captionPanelViewControllers];
    v19 = [v29 screen];
    v20 = [v19 displayIdentity];
    v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v20 displayID]);
    [v18 setObject:v17 forKeyedSubscript:v21];

    v22 = +[AXUIDisplayManager sharedDisplayManager];
    [v22 addContentViewController:v17 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:v29 completion:0];

    v23 = objc_alloc_init(VOTUIRotorViewController);
    v24 = [(VOTUIServer *)self rotorViewControllers];
    v25 = [v29 screen];
    v26 = [v25 displayIdentity];
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v26 displayID]);
    [v24 setObject:v23 forKeyedSubscript:v27];

    v28 = +[AXUIDisplayManager sharedDisplayManager];
    [v28 addContentViewController:v23 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:v29 completion:0];
  }
}

- (void)externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(VOTUIServer *)self externalWindowScenes];
  [v6 removeObject:v5];

  v7 = [(VOTUIServer *)self cursorViewControllers];
  v8 = [v5 screen];
  v9 = [v8 displayIdentity];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 displayID]);
  [v7 removeObjectForKey:v10];

  v14 = [(VOTUIServer *)self captionPanelViewControllers];
  v11 = [v5 screen];

  v12 = [v11 displayIdentity];
  v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 displayID]);
  [v14 removeObjectForKey:v13];
}

- (BOOL)shouldPreventAutorotatingAllContentViewControllers
{
  v2 = [(VOTUIServer *)self brailleViewController];
  v3 = v2 != 0;

  return v3;
}

@end