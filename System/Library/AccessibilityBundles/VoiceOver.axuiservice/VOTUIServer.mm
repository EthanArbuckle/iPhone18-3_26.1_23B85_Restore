@interface VOTUIServer
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)identifier;
- (BOOL)shouldPreventAutorotatingAllContentViewControllers;
- (CGRect)_handleConvertFrameMessage:(id)message;
- (VOTUIServer)init;
- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled;
- (id)_handleConvertFramesMessage:(id)message;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_addBrailleViewControllerWithOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode;
- (void)_addMapsExplorationViewController;
- (void)_handleBeginSonificationPlayback:(id)playback;
- (void)_handleDisplayBrailleDotNumbers:(id)numbers;
- (void)_handleDisplayUIServerBasedItemChooser:(id)chooser;
- (void)_handleFlashBrailleInsertedTextMessage:(id)message;
- (void)_handleHideVoiceOverWarning:(id)warning;
- (void)_handleHighlightBrailleDotsMessage:(id)message;
- (void)_handleHighlightMapsExplorationSegmentMessage:(id)message;
- (void)_handleMoveSystemPointerToPointWithMessage:(id)message;
- (void)_handlePauseSonificationPlayback:(id)playback;
- (void)_handleRegisterForSystemPointerEventsWithMessage:(id)message clientIdentifier:(id)identifier;
- (void)_handleScreenCurtainEnabled:(BOOL)enabled;
- (void)_handleSendFocusChangeToZoom:(id)zoom;
- (void)_handleSetCursorFrameMessage:(id)message;
- (void)_handleSetElementVisualizationFramesMessage:(id)message;
- (void)_handleSetSonificationPlayheadPosition:(id)position;
- (void)_handleShowBrailleUIMessage:(id)message;
- (void)_handleShowMapsExplorationUIMessage:(id)message;
- (void)_handleShowVoiceOverWarning:(id)warning;
- (void)_handleUpdateBrailleUIMessage:(id)message;
- (void)_handleUpdateMapsExplorationCurrentCenter:(id)center;
- (void)_handleUpdateMapsExplorationUIWithCurrentLocationMessage:(id)message;
- (void)_handleUpdateVisualRotor:(id)rotor;
- (void)_handleVoiceOverCaptionPanelEnabled:(id)enabled;
- (void)_handleZoomFocusChangeNotification:(id)notification;
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
- (void)_updateCursorWithFrame:(CGRect)frame pathData:(id)data animate:(BOOL)animate displayID:(id)d;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)externalDisplaySceneConnected:(id)connected forSceneClientIdentifier:(id)identifier;
- (void)externalDisplaySceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier;
- (void)systemPointerController:(id)controller pointerDidMoveToGlobalPoint:(CGPoint)point;
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

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  switch(identifier)
  {
    case 1uLL:
      [(VOTUIServer *)self _handleSetCursorFrameMessage:messageCopy];
      goto LABEL_39;
    case 2uLL:
      [(VOTUIServer *)self _handleShowBrailleUIMessage:messageCopy];
      goto LABEL_39;
    case 3uLL:
      [(VOTUIServer *)self _handleHideBrailleUIMessage:messageCopy];
      goto LABEL_39;
    case 4uLL:
      [(VOTUIServer *)self _handleHighlightBrailleDotsMessage:messageCopy];
      goto LABEL_39;
    case 5uLL:
      [(VOTUIServer *)self _handleUpdateBrailleUIMessage:messageCopy];
      goto LABEL_39;
    case 6uLL:
      [(VOTUIServer *)self _handleFlashBrailleInsertedTextMessage:messageCopy];
      goto LABEL_39;
    case 7uLL:
      v11 = [messageCopy objectForKeyedSubscript:@"enabled"];
      -[VOTUIServer _handleScreenCurtainEnabled:](self, "_handleScreenCurtainEnabled:", [v11 BOOLValue]);
      goto LABEL_29;
    case 8uLL:
      [(VOTUIServer *)self _handleVoiceOverCaptionPanelEnabled:messageCopy];
      goto LABEL_39;
    case 9uLL:
      cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
      v21 = [cursorViewControllers objectForKeyedSubscript:&off_400C0];
      view = [v21 view];
      window = [view window];
      v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [window _contextId]);

      v30 = @"contextId";
      v31 = v11;
      v18 = &v31;
      v19 = &v30;
      goto LABEL_28;
    case 0xAuLL:
      [(VOTUIServer *)self _handleSetElementVisualizationFramesMessage:messageCopy];
      goto LABEL_39;
    case 0xBuLL:
      [(VOTUIServer *)self _handleUpdateVisualRotor:messageCopy];
      goto LABEL_39;
    case 0xCuLL:
      [(VOTUIServer *)self _handleDisplayUIServerBasedItemChooser:messageCopy];
      goto LABEL_39;
    case 0xDuLL:
      [(VOTUIServer *)self _handleConvertFrameMessage:messageCopy];
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
      v11 = [(VOTUIServer *)self _handleConvertFramesMessage:messageCopy];
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
      [(VOTUIServer *)self _handleShowMapsExplorationUIMessage:messageCopy];
      goto LABEL_39;
    case 0x10uLL:
      [(VOTUIServer *)self _handleHighlightMapsExplorationSegmentMessage:messageCopy];
      goto LABEL_39;
    case 0x11uLL:
      [(VOTUIServer *)self _handleUpdateMapsExplorationCurrentCenter:messageCopy];
      goto LABEL_39;
    case 0x12uLL:
      [(VOTUIServer *)self _handleUpdateMapsExplorationUIWithCurrentLocationMessage:messageCopy];
      goto LABEL_39;
    case 0x13uLL:
      [(VOTUIServer *)self _handleHideMapsExplorationUIMessage:messageCopy];
      goto LABEL_39;
    case 0x14uLL:
      [(VOTUIServer *)self _handleSendFocusChangeToZoom:messageCopy];
      goto LABEL_39;
    case 0x15uLL:
      [(VOTUIServer *)self _handleSetSonificationPlayheadPosition:messageCopy];
      goto LABEL_39;
    case 0x16uLL:
      [(VOTUIServer *)self _handleBeginSonificationPlayback:messageCopy];
      goto LABEL_39;
    case 0x17uLL:
      [(VOTUIServer *)self _handlePauseSonificationPlayback:messageCopy];
      goto LABEL_39;
    case 0x18uLL:
      v11 = +[AXUIDisplayManager sharedDisplayManager];
      v12 = [messageCopy objectForKeyedSubscript:@"alertText"];
      v13 = [v11 showAlertWithText:v12 subtitleText:0 iconImage:0 type:5 priority:20 duration:self forService:AXUIAlertDisplayTimeDefaultForBanners];

LABEL_29:
      goto LABEL_39;
    case 0x19uLL:
      [(VOTUIServer *)self _handleRegisterForSystemPointerEventsWithMessage:messageCopy clientIdentifier:withIdentifierCopy];
      goto LABEL_39;
    case 0x1AuLL:
      [(VOTUIServer *)self _handleMoveSystemPointerToPointWithMessage:messageCopy];
      goto LABEL_39;
    case 0x1BuLL:
    case 0x1EuLL:
    case 0x1FuLL:
      goto LABEL_43;
    case 0x1CuLL:
      [(VOTUIServer *)self _handleToggleElementLabeler:messageCopy];
      goto LABEL_39;
    case 0x1DuLL:
      [(VOTUIServer *)self _handleToggleQuickSettings];
      goto LABEL_39;
    case 0x20uLL:
      [(VOTUIServer *)self _handleDisplayBrailleDotNumbers:messageCopy];
      goto LABEL_39;
    default:
      if (identifier == 10000)
      {
        [(VOTUIServer *)self _handleShowVoiceOverWarning:messageCopy];
      }

      else
      {
        if (identifier != 10001)
        {
LABEL_43:
          abort();
        }

        [(VOTUIServer *)self _handleHideVoiceOverWarning:messageCopy];
      }

LABEL_39:
      v24 = 0;
LABEL_40:

      return v24;
  }
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)identifier
{
  if (identifier == 1)
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

- (void)systemPointerController:(id)controller pointerDidMoveToGlobalPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(VOTUIServer *)self systemPointerRegistrants:controller];
  objectEnumerator = [v6 objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(objectEnumerator);
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
      v9 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_handleMoveSystemPointerToPointWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[AXSettings sharedInstance];
  laserEnabled = [v4 laserEnabled];

  if (laserEnabled)
  {
    v6 = [messageCopy objectForKeyedSubscript:@"point"];
    v7 = CGPointFromString(v6);

    v8 = [messageCopy objectForKeyedSubscript:@"contextId"];
    unsignedIntValue = [v8 unsignedIntValue];

    systemPointerController = [(VOTUIServer *)self systemPointerController];
    [systemPointerController movePointerToPoint:unsignedIntValue contextId:{v7.x, v7.y}];
  }
}

- (void)_handleRegisterForSystemPointerEventsWithMessage:(id)message clientIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v7 = +[AXSettings sharedInstance];
  laserEnabled = [v7 laserEnabled];

  if (laserEnabled)
  {
    v9 = [messageCopy objectForKeyedSubscript:@"register"];
    bOOLValue = [v9 BOOLValue];

    systemPointerRegistrants = [(VOTUIServer *)self systemPointerRegistrants];
    v12 = systemPointerRegistrants;
    if (bOOLValue)
    {
      v13 = [systemPointerRegistrants objectForKeyedSubscript:identifierCopy];

      if (v13)
      {
        goto LABEL_9;
      }

      systemPointerRegistrants2 = [(VOTUIServer *)self systemPointerRegistrants];

      if (!systemPointerRegistrants2)
      {
        v15 = +[NSMutableDictionary dictionary];
        [(VOTUIServer *)self setSystemPointerRegistrants:v15];
      }

      v12 = [AXUIClientMessenger clientMessengerWithIdentifier:identifierCopy];
      systemPointerRegistrants3 = [(VOTUIServer *)self systemPointerRegistrants];
      [systemPointerRegistrants3 setObject:v12 forKeyedSubscript:identifierCopy];
    }

    else
    {
      [systemPointerRegistrants removeObjectForKey:identifierCopy];
    }
  }

LABEL_9:
}

- (void)_handleVoiceOverCaptionPanelEnabled:(id)enabled
{
  enabledCopy = enabled;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
  allValues = [captionPanelViewControllers allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 parseMessage:enabledCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      screenCurtainViewControllers = [(VOTUIServer *)self screenCurtainViewControllers];

      if (!screenCurtainViewControllers)
      {
        captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
        allKeys = [captionPanelViewControllers allKeys];
        v7 = [allKeys containsObject:&off_400C0];

        if ((v7 & 1) == 0)
        {
          v8 = objc_alloc_init(VOTUICaptionPanelViewController);
          captionPanelViewControllers2 = [(VOTUIServer *)self captionPanelViewControllers];
          [captionPanelViewControllers2 setObject:v8 forKeyedSubscript:&off_400C0];

          v10 = +[AXUIDisplayManager sharedDisplayManager];
          captionPanelViewControllers3 = [(VOTUIServer *)self captionPanelViewControllers];
          v12 = [captionPanelViewControllers3 objectForKeyedSubscript:&off_400C0];
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
              screen = [v17 screen];
              displayIdentity = [screen displayIdentity];
              v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity displayID]);
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

  captionPanelViewControllers4 = [(VOTUIServer *)self captionPanelViewControllers];

  if (captionPanelViewControllers4)
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
  captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
  allValues = [captionPanelViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  captionPanelViewControllers2 = [(VOTUIServer *)self captionPanelViewControllers];
  [captionPanelViewControllers2 removeAllObjects];
}

- (void)_handleSetCursorFrameMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKey:@"animate"];
  bOOLValue = [v5 BOOLValue];

  v7 = [messageCopy objectForKey:@"frame"];
  v39 = CGRectFromString(v7);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;

  v12 = [messageCopy objectForKey:@"path"];
  v13 = [messageCopy objectForKey:@"display"];

  if (v13)
  {
    cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
    allKeys = [cursorViewControllers allKeys];
    v16 = [allKeys containsObject:v13];

    if ((v16 & 1) == 0)
    {
      v17 = [[VOTUICursorViewController alloc] initWithAXUIService:self];
      cursorViewControllers2 = [(VOTUIServer *)self cursorViewControllers];
      [cursorViewControllers2 setObject:v17 forKeyedSubscript:v13];

      v19 = +[AXUIDisplayManager sharedDisplayManager];
      cursorViewControllers3 = [(VOTUIServer *)self cursorViewControllers];
      v21 = [cursorViewControllers3 objectForKeyedSubscript:v13];
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
      v38 = bOOLValue;
      v22 = v13;
      v33 = v22;
      [v19 addContentViewController:v21 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 completion:v31];

      v23 = +[AXSettings sharedInstance];
      LODWORD(cursorViewControllers3) = [v23 laserEnabled];

      if (cursorViewControllers3)
      {
        v24 = [VOTUISystemPointerController alloc];
        cursorViewControllers4 = [(VOTUIServer *)self cursorViewControllers];
        v26 = [cursorViewControllers4 objectForKeyedSubscript:v22];
        view = [v26 view];
        window = [view window];
        v29 = -[VOTUISystemPointerController initWithContextId:](v24, "initWithContextId:", [window _contextId]);
        [(VOTUIServer *)self setSystemPointerController:v29];

        systemPointerController = [(VOTUIServer *)self systemPointerController];
        [systemPointerController setDelegate:self];
      }
    }

    [(VOTUIServer *)self _updateCursorWithFrame:v12 pathData:bOOLValue animate:v13 displayID:x, y, width, height];
  }
}

- (void)_updateCursorWithFrame:(CGRect)frame pathData:(id)data animate:(BOOL)animate displayID:(id)d
{
  animateCopy = animate;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dataCopy = data;
  dCopy = d;
  v38 = dataCopy;
  if (dataCopy)
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
  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  allKeys = [cursorViewControllers allKeys];

  v17 = [allKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        cursorViewControllers2 = [(VOTUIServer *)self cursorViewControllers];
        v23 = [cursorViewControllers2 objectForKeyedSubscript:v21];
        [v23 setCursorHidden:v21 != dCopy];
      }

      v18 = [allKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
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
  cursorViewControllers3 = [(VOTUIServer *)self cursorViewControllers];
  v26 = [cursorViewControllers3 objectForKeyedSubscript:dCopy];
  v27 = v26;
  if (v24 && v14 == 0)
  {
    [v26 setCursorHidden:1];

    v30 = v38;
  }

  else
  {
    cursorHidden = [v26 cursorHidden];

    v30 = v38;
    if (cursorHidden)
    {
      cursorViewControllers4 = [(VOTUIServer *)self cursorViewControllers];
      v32 = [cursorViewControllers4 objectForKeyedSubscript:dCopy];
      [v32 setCursorHidden:0];
    }

    cursorViewControllers5 = [(VOTUIServer *)self cursorViewControllers];
    v34 = [cursorViewControllers5 objectForKeyedSubscript:dCopy];
    [v34 setCursorFrame:animateCopy animated:{x, y, width, height}];

    cursorViewControllers6 = [(VOTUIServer *)self cursorViewControllers];
    v36 = [cursorViewControllers6 objectForKeyedSubscript:dCopy];
    [v36 setCursorPath:v14];

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

- (void)_handleSetElementVisualizationFramesMessage:(id)message
{
  messageCopy = message;
  v13 = [messageCopy objectForKey:@"elementVisualizationFrames"];
  v5 = [messageCopy objectForKey:@"elementVisualizationFrameLabels"];
  v6 = [messageCopy objectForKey:@"elementVisualizationUIClasses"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v13 count] && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    elementVisualizationViewController = [(VOTUIServer *)self elementVisualizationViewController];

    if (!elementVisualizationViewController)
    {
      v8 = objc_alloc_init(VOTUIElementVisualizationViewController);
      [(VOTUIServer *)self setElementVisualizationViewController:v8];

      v9 = +[AXUIDisplayManager sharedDisplayManager];
      elementVisualizationViewController2 = [(VOTUIServer *)self elementVisualizationViewController];
      [v9 addContentViewController:elementVisualizationViewController2 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 completion:0];
    }

    elementVisualizationViewController3 = [(VOTUIServer *)self elementVisualizationViewController];
    [elementVisualizationViewController3 setElementFrames:v13 labels:v5 uiClasses:v6];
  }

  else
  {
    elementVisualizationViewController4 = [(VOTUIServer *)self elementVisualizationViewController];

    if (elementVisualizationViewController4)
    {
      [(VOTUIServer *)self _removeElementVisualizationViewController];
    }
  }
}

- (void)_handleShowVoiceOverWarning:(id)warning
{
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = AXLocStringKeyForHomeButtonAndExclusiveModel();
  v5 = [v9 localizedStringForKey:v4 value:&stru_3F518 table:@"VoiceOverUIService"];
  voiceOverWarningIdentifier = [(VOTUIServer *)self voiceOverWarningIdentifier];

  if (!voiceOverWarningIdentifier)
  {
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [v7 showAlertWithText:v5 subtitleText:0 iconImage:0 type:4 priority:20 duration:self forService:AXUIAlertDisplayTimeForever];
    [(VOTUIServer *)self setVoiceOverWarningIdentifier:v8];
  }
}

- (void)_handleHideVoiceOverWarning:(id)warning
{
  voiceOverWarningIdentifier = [(VOTUIServer *)self voiceOverWarningIdentifier];

  if (voiceOverWarningIdentifier)
  {
    v5 = +[AXUIDisplayManager sharedDisplayManager];
    voiceOverWarningIdentifier2 = [(VOTUIServer *)self voiceOverWarningIdentifier];
    [v5 hideAlertWithIdentifier:voiceOverWarningIdentifier2 forService:self];

    [(VOTUIServer *)self setVoiceOverWarningIdentifier:0];
  }
}

- (void)_handleUpdateVisualRotor:(id)rotor
{
  rotorCopy = rotor;
  rotorViewControllers = [(VOTUIServer *)self rotorViewControllers];
  allKeys = [rotorViewControllers allKeys];
  v7 = [allKeys containsObject:&off_400C0];

  if ((v7 & 1) == 0)
  {
    v8 = objc_alloc_init(VOTUIRotorViewController);
    rotorViewControllers2 = [(VOTUIServer *)self rotorViewControllers];
    [rotorViewControllers2 setObject:v8 forKeyedSubscript:&off_400C0];

    v10 = +[AXUIDisplayManager sharedDisplayManager];
    rotorViewControllers3 = [(VOTUIServer *)self rotorViewControllers];
    v12 = [rotorViewControllers3 objectForKeyedSubscript:&off_400C0];
    [v10 addContentViewController:v12 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:0 spatialConfiguration:0 completion:0];
  }

  if ([(NSMutableArray *)self->_externalWindowScenes count])
  {
    v30 = rotorCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
    allKeys2 = [cursorViewControllers allKeys];

    obj = allKeys2;
    v15 = [allKeys2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          cursorViewControllers2 = [(VOTUIServer *)self cursorViewControllers];
          v22 = [cursorViewControllers2 objectForKeyedSubscript:v20];
          view = [v22 view];
          isHidden = [view isHidden];

          if ((isHidden & 1) == 0)
          {
            v25 = v20;

            v18 = v25;
          }

          rotorViewControllers4 = [(VOTUIServer *)self rotorViewControllers];
          v27 = [rotorViewControllers4 objectForKeyedSubscript:v20];
          [v27 setRotorHidden:isHidden];
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = &off_400C0;
    }

    rotorCopy = v30;
  }

  else
  {
    v18 = &off_400C0;
  }

  rotorViewControllers5 = [(VOTUIServer *)self rotorViewControllers];
  v29 = [rotorViewControllers5 objectForKeyedSubscript:v18];
  [v29 updateVisualRotor:rotorCopy];
}

- (CGRect)_handleConvertFrameMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKey:@"frame"];
  v25 = CGRectFromString(v5);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v10 = [messageCopy objectForKey:@"display"];

  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  v12 = [cursorViewControllers objectForKeyedSubscript:v10];
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

- (id)_handleConvertFramesMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKey:@"frames"];
  v6 = [messageCopy objectForKey:@"display"];
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
        cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
        v18 = [cursorViewControllers objectForKeyedSubscript:v6];
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

- (void)_handleShowMapsExplorationUIMessage:(id)message
{
  messageCopy = message;
  [(VOTUIServer *)self _addMapsExplorationViewController];
  v13 = [messageCopy objectForKeyedSubscript:@"mapsExplorationCenter"];
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];
  firstObject = [v13 firstObject];
  [firstObject floatValue];
  v8 = v7;
  v9 = [v13 objectAtIndex:1];
  [v9 floatValue];
  v11 = v10;
  v12 = [messageCopy objectForKeyedSubscript:@"mapsExplorationData"];

  [mapsExplorationViewController updateUIWithCenter:v12 andExplorationSegments:{v8, v11}];
}

- (void)_handleUpdateMapsExplorationCurrentCenter:(id)center
{
  v10 = [center objectForKeyedSubscript:@"mapsExplorationCenter"];
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];
  firstObject = [v10 firstObject];
  [firstObject floatValue];
  v7 = v6;
  v8 = [v10 objectAtIndex:1];
  [v8 floatValue];
  [mapsExplorationViewController updateUIWithCenter:{v7, v9}];
}

- (void)_handleUpdateMapsExplorationUIWithCurrentLocationMessage:(id)message
{
  v10 = [message objectForKeyedSubscript:@"mapsExplorationCurrentLocation"];
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];
  firstObject = [v10 firstObject];
  [firstObject floatValue];
  v7 = v6;
  v8 = [v10 objectAtIndex:1];
  [v8 floatValue];
  [mapsExplorationViewController updateUIWithCurrentLocation:{v7, v9}];
}

- (void)_handleHighlightMapsExplorationSegmentMessage:(id)message
{
  messageCopy = message;
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];
  v5 = [messageCopy objectForKeyedSubscript:@"mapsExplorationIndex"];

  [mapsExplorationViewController highlightExplorationSegmentWithIndex:{objc_msgSend(v5, "intValue")}];
}

- (void)_handleShowBrailleUIMessage:(id)message
{
  messageCopy = message;
  v9 = [messageCopy objectForKeyedSubscript:@"brailleOrientation"];
  intValue = [v9 intValue];
  v6 = [messageCopy objectForKeyedSubscript:@"brailleDotPositions"];
  v7 = sub_7B00(v6);
  v8 = [messageCopy objectForKeyedSubscript:@"brailleTypingMode"];

  -[VOTUIServer _addBrailleViewControllerWithOrientation:dotNumberPositions:typingMode:](self, "_addBrailleViewControllerWithOrientation:dotNumberPositions:typingMode:", intValue, v7, [v8 intValue]);
}

- (void)_handleHighlightBrailleDotsMessage:(id)message
{
  messageCopy = message;
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  v5 = [messageCopy objectForKeyedSubscript:@"brailleDotNumbers"];

  [brailleViewController highlightBrailleDots:v5];
}

- (void)_handleDisplayBrailleDotNumbers:(id)numbers
{
  numbersCopy = numbers;
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  v5 = [numbersCopy objectForKeyedSubscript:@"brailleDotNumbersReversed"];

  [brailleViewController displayDotNumbersWithReversed:v5];
}

- (void)_handleUpdateBrailleUIMessage:(id)message
{
  messageCopy = message;
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  v5 = [messageCopy objectForKeyedSubscript:@"brailleOrientation"];
  intValue = [v5 intValue];
  v7 = [messageCopy objectForKeyedSubscript:@"brailleDotPositions"];
  v8 = sub_7B00(v7);
  v9 = [messageCopy objectForKeyedSubscript:@"brailleTypingMode"];

  [brailleViewController setOrientation:intValue dotNumberPositions:v8 typingMode:{objc_msgSend(v9, "intValue")}];
}

- (void)_handleSendFocusChangeToZoom:(id)zoom
{
  zoomCopy = zoom;
  v5 = [zoomCopy objectForKeyedSubscript:@"FocusChangeFrameKey"];
  v41 = CGRectFromString(v5);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;

  v10 = [zoomCopy objectForKeyedSubscript:@"FocusChangeTypeKey"];
  integerValue = [v10 integerValue];

  v39 = [zoomCopy objectForKeyedSubscript:@"display"];

  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  v13 = [cursorViewControllers objectForKeyedSubscript:v39];
  [v13 convertFrameToCursorSpace:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  cursorViewControllers2 = [(VOTUIServer *)self cursorViewControllers];
  v23 = [cursorViewControllers2 objectForKeyedSubscript:v39];
  view = [v23 view];
  cursorViewControllers3 = [(VOTUIServer *)self cursorViewControllers];
  v26 = [cursorViewControllers3 objectForKeyedSubscript:v39];
  cursorView = [v26 cursorView];
  [view convertRect:cursorView toView:{v15, v17, v19, v21}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  cursorViewControllers4 = [(VOTUIServer *)self cursorViewControllers];
  v37 = [cursorViewControllers4 objectForKeyedSubscript:v39];
  cursorView2 = [v37 cursorView];
  v42.origin.x = v29;
  v42.origin.y = v31;
  v42.size.width = v33;
  v42.size.height = v35;
  UIAccessibilityZoomFocusChanged(integerValue, v42, cursorView2);
}

- (void)_handleZoomFocusChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v4 = [userInfo objectForKey:@"type"];
  integerValue = [v4 integerValue];

  if ((integerValue - 1) <= 1)
  {
    userInfo2 = [notificationCopy userInfo];
    v7 = [userInfo2 objectForKey:@"window"];

    AXUIRectForZoomFocusChangeNotification();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = +[ZoomServices sharedInstance];
    _contextId = [v7 _contextId];
    screen = [v7 screen];
    displayIdentity = [screen displayIdentity];
    [v16 notifyZoomFocusDidChangeWithType:integerValue rect:_contextId contextId:objc_msgSend(displayIdentity keyboardFrame:"displayID") displayId:{v9, v11, v13, v15, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  }
}

- (void)_handleSetSonificationPlayheadPosition:(id)position
{
  positionCopy = position;
  sonificationViewController = [(VOTUIServer *)self sonificationViewController];

  if (!sonificationViewController)
  {
    v6 = objc_alloc_init(VOTUISonificationViewController);
    [(VOTUIServer *)self setSonificationViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    sonificationViewController2 = [(VOTUIServer *)self sonificationViewController];
    [v7 addContentViewController:sonificationViewController2 withUserInteractionEnabled:0 forService:self];
  }

  v9 = [positionCopy objectForKeyedSubscript:@"sonificationPlaybackBounds"];
  v30 = CGRectFromString(v9);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v14 = [positionCopy objectForKeyedSubscript:@"sonificationPlayheadProgress"];

  [v14 doubleValue];
  v16 = v15;

  sonificationViewController3 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController3 convertFrameToViewSpace:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sonificationViewController4 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController4 setPlayheadHidden:v16 < 0.0];

  sonificationViewController5 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController5 setPlaybackBounds:{v19, v21, v23, v25}];

  sonificationViewController6 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController6 setPlayheadProgress:v16];
}

- (void)_handleBeginSonificationPlayback:(id)playback
{
  playbackCopy = playback;
  sonificationViewController = [(VOTUIServer *)self sonificationViewController];

  if (!sonificationViewController)
  {
    v6 = objc_alloc_init(VOTUISonificationViewController);
    [(VOTUIServer *)self setSonificationViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    sonificationViewController2 = [(VOTUIServer *)self sonificationViewController];
    [v7 addContentViewController:sonificationViewController2 withUserInteractionEnabled:0 forService:self];
  }

  v9 = [playbackCopy objectForKeyedSubscript:@"sonificationPlaybackBounds"];
  v39 = CGRectFromString(v9);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;

  v14 = [playbackCopy objectForKeyedSubscript:@"sonificationPlayheadProgress"];
  [v14 doubleValue];
  v16 = v15;

  sonificationViewController3 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController3 convertFrameToViewSpace:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [playbackCopy objectForKeyedSubscript:@"sonificationDuration"];
  [v26 doubleValue];
  v28 = v27;

  v29 = [playbackCopy objectForKeyedSubscript:@"sonificationPlaybackStartTime"];
  [v29 doubleValue];
  v31 = v30;

  v32 = [playbackCopy objectForKeyedSubscript:@"sonificationNormalizedPlayheadPosition"];

  [v32 doubleValue];
  v34 = v33;

  sonificationViewController4 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController4 setPlayheadProgress:v16];

  sonificationViewController5 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController5 setPlaybackBounds:{v19, v21, v23, v25}];

  sonificationViewController6 = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController6 resumePlaybackFromPosition:v34 startTime:v31 totalDuration:v28];
}

- (void)_handlePauseSonificationPlayback:(id)playback
{
  sonificationViewController = [(VOTUIServer *)self sonificationViewController];
  [sonificationViewController pausePlayback];
}

- (void)_handleDisplayUIServerBasedItemChooser:(id)chooser
{
  v9 = [chooser objectForKeyedSubscript:@"items"];
  itemChooserController = [(VOTUIServer *)self itemChooserController];
  if (v9)
  {

    if (!itemChooserController)
    {
      v5 = objc_alloc_init(Legacy_VOTUIItemChooserController);
      [(VOTUIServer *)self setItemChooserController:v5];

      itemChooserController2 = [(VOTUIServer *)self itemChooserController];
      [itemChooserController2 setDelegate:self];

      v7 = +[AXUIDisplayManager sharedDisplayManager];
      itemChooserController3 = [(VOTUIServer *)self itemChooserController];
      [v7 addContentViewController:itemChooserController3 withUserInteractionEnabled:1 forService:self];
    }

    itemChooserController = [(VOTUIServer *)self itemChooserController];
    [itemChooserController showItemChooser:v9];
  }

  else
  {
    [itemChooserController hideItemChooser:0];
  }
}

- (void)_handleScreenCurtainEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!enabled)
  {
    [(VOTUIServer *)self _removeScreenCurtainControllers];
    goto LABEL_12;
  }

  screenCurtainViewControllers = [(VOTUIServer *)self screenCurtainViewControllers];

  if (screenCurtainViewControllers)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [(VOTUIServer *)self setScreenCurtainViewControllers:v6];

  _UIAccessibilityBlockPostingOfNotification();
  v7 = objc_alloc_init(VOTUIScreenCurtainViewController);
  screenCurtainViewControllers2 = [(VOTUIServer *)self screenCurtainViewControllers];
  [screenCurtainViewControllers2 setObject:v7 forKeyedSubscript:&off_400C0];

  v9 = +[AXUIDisplayManager sharedDisplayManager];
  screenCurtainViewControllers3 = [(VOTUIServer *)self screenCurtainViewControllers];
  v11 = [screenCurtainViewControllers3 objectForKeyedSubscript:&off_400C0];
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
        screen = [v15 screen];
        displayIdentity = [screen displayIdentity];
        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity displayID]);
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
  screenCurtainViewControllers4 = [(VOTUIServer *)self screenCurtainViewControllers];
  allValues = [screenCurtainViewControllers4 allValues];

  v25 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v31 + 1) + 8 * v28) setEnabled:enabledCopy animate:1];
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v26);
  }

  if (v22)
  {
    _UIAccessibilityUnblockPostingOfNotification();
  }
}

- (void)_handleFlashBrailleInsertedTextMessage:(id)message
{
  messageCopy = message;
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  v5 = [messageCopy objectForKeyedSubscript:@"brailleInsertedText"];

  [brailleViewController flashInsertedText:v5];
}

- (void)_removeScreenCurtainControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  screenCurtainViewControllers = [(VOTUIServer *)self screenCurtainViewControllers];
  allValues = [screenCurtainViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setEnabled:0 animate:1];
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  allValues = [cursorViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        [v9 setCursorHidden:1];
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(VOTUIServer *)self setCursorViewControllers:0];
}

- (void)_removeElementVisualizationViewController
{
  elementVisualizationViewController = [(VOTUIServer *)self elementVisualizationViewController];
  [elementVisualizationViewController setFramesHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  elementVisualizationViewController2 = [(VOTUIServer *)self elementVisualizationViewController];
  [v4 removeContentViewController:elementVisualizationViewController2 withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setElementVisualizationViewController:0];
}

- (void)_removeItemChooserController
{
  itemChooserController = [(VOTUIServer *)self itemChooserController];

  if (itemChooserController)
  {
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    itemChooserController2 = [(VOTUIServer *)self itemChooserController];
    [v4 removeContentViewController:itemChooserController2 withUserInteractionEnabled:0 forService:self];

    itemChooserController3 = [(VOTUIServer *)self itemChooserController];
    [itemChooserController3 setDelegate:0];

    [(VOTUIServer *)self setItemChooserController:0];
  }
}

- (void)_removeRotorViewControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rotorViewControllers = [(VOTUIServer *)self rotorViewControllers];
  allValues = [rotorViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = +[AXUIDisplayManager sharedDisplayManager];
        [v10 removeContentViewController:v9 withUserInteractionEnabled:0 forService:self context:0 completion:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_removeSonificationViewController
{
  sonificationViewController = [(VOTUIServer *)self sonificationViewController];

  if (sonificationViewController)
  {
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    sonificationViewController2 = [(VOTUIServer *)self sonificationViewController];
    [v4 removeContentViewController:sonificationViewController2 withUserInteractionEnabled:0 forService:self];

    [(VOTUIServer *)self setSonificationViewController:0];
  }
}

- (void)_addMapsExplorationViewController
{
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];

  if (!mapsExplorationViewController)
  {
    v4 = objc_alloc_init(VOTUIMapsExplorationViewController);
    [(VOTUIServer *)self setMapsExplorationViewController:v4];

    v6 = +[AXUIDisplayManager sharedDisplayManager];
    mapsExplorationViewController2 = [(VOTUIServer *)self mapsExplorationViewController];
    [v6 addContentViewController:mapsExplorationViewController2 withUserInteractionEnabled:0 forService:self];
  }
}

- (void)_addBrailleViewControllerWithOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode
{
  positionsCopy = positions;
  brailleViewController = [(VOTUIServer *)self brailleViewController];

  if (brailleViewController)
  {
    brailleViewController2 = [(VOTUIServer *)self brailleViewController];
    [brailleViewController2 setOrientation:orientation dotNumberPositions:positionsCopy typingMode:mode];
  }

  else
  {
    v10 = [[VOTUIBrailleViewController alloc] initWithOrientation:orientation dotNumberPositions:positionsCopy typingMode:mode];

    [(VOTUIServer *)self setBrailleViewController:v10];
    brailleViewController2 = +[AXUIDisplayManager sharedDisplayManager];
    positionsCopy = [(VOTUIServer *)self brailleViewController];
    [brailleViewController2 addContentViewController:positionsCopy withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXZoomSceneClientIdentifier"];
  }
}

- (void)_removeBrailleViewController
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  [v3 removeContentViewController:brailleViewController withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setBrailleViewController:0];
}

- (void)_removeMapsExplorationViewController
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  mapsExplorationViewController = [(VOTUIServer *)self mapsExplorationViewController];
  [v3 removeContentViewController:mapsExplorationViewController withUserInteractionEnabled:0 forService:self];

  [(VOTUIServer *)self setMapsExplorationViewController:0];
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9448;
  block[3] = &unk_3D218;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled
{
  controllerCopy = controller;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  allValues = [cursorViewControllers allValues];

  v8 = [allValues countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if (*(*(&v36 + 1) + 8 * v11) == controllerCopy)
        {

          goto LABEL_29;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v36 objects:v42 count:16];
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
  screenCurtainViewControllers = [(VOTUIServer *)self screenCurtainViewControllers];
  allValues2 = [screenCurtainViewControllers allValues];

  v14 = [allValues2 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        if (*(*(&v32 + 1) + 8 * v17) == controllerCopy)
        {

          v26 = 10000021.0;
          goto LABEL_31;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [allValues2 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  itemChooserController = [(VOTUIServer *)self itemChooserController];

  if (itemChooserController == controllerCopy)
  {
    v26 = UIHUDWindowLevel;
  }

  else
  {
    brailleViewController = [(VOTUIServer *)self brailleViewController];

    if (brailleViewController == controllerCopy)
    {
      v26 = 10000017.0;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
      allValues3 = [captionPanelViewControllers allValues];

      v22 = [allValues3 countByEnumeratingWithState:&v28 objects:v40 count:16];
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
              objc_enumerationMutation(allValues3);
            }

            if (*(*(&v28 + 1) + 8 * v25) == controllerCopy)
            {

              v26 = 10000014.0;
              goto LABEL_31;
            }

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [allValues3 countByEnumeratingWithState:&v28 objects:v40 count:16];
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

- (void)externalDisplaySceneConnected:(id)connected forSceneClientIdentifier:(id)identifier
{
  connectedCopy = connected;
  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  screen = [connectedCopy screen];
  displayIdentity = [screen displayIdentity];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity displayID]);
  v9 = [cursorViewControllers objectForKeyedSubscript:v8];

  if (!v9)
  {
    externalWindowScenes = [(VOTUIServer *)self externalWindowScenes];
    [externalWindowScenes addObject:connectedCopy];

    v11 = [[VOTUICursorViewController alloc] initWithAXUIService:self];
    cursorViewControllers2 = [(VOTUIServer *)self cursorViewControllers];
    screen2 = [connectedCopy screen];
    displayIdentity2 = [screen2 displayIdentity];
    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity2 displayID]);
    [cursorViewControllers2 setObject:v11 forKeyedSubscript:v15];

    v16 = +[AXUIDisplayManager sharedDisplayManager];
    [v16 addContentViewController:v11 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:connectedCopy completion:0];

    v17 = objc_alloc_init(VOTUICaptionPanelViewController);
    captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
    screen3 = [connectedCopy screen];
    displayIdentity3 = [screen3 displayIdentity];
    v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity3 displayID]);
    [captionPanelViewControllers setObject:v17 forKeyedSubscript:v21];

    v22 = +[AXUIDisplayManager sharedDisplayManager];
    [v22 addContentViewController:v17 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:connectedCopy completion:0];

    v23 = objc_alloc_init(VOTUIRotorViewController);
    rotorViewControllers = [(VOTUIServer *)self rotorViewControllers];
    screen4 = [connectedCopy screen];
    displayIdentity4 = [screen4 displayIdentity];
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity4 displayID]);
    [rotorViewControllers setObject:v23 forKeyedSubscript:v27];

    v28 = +[AXUIDisplayManager sharedDisplayManager];
    [v28 addContentViewController:v23 withUserInteractionEnabled:0 forService:self forSceneClientIdentifier:@"kAXVOTMainSceneClientIdentifier" context:0 userInterfaceStyle:0 forWindowScene:connectedCopy completion:0];
  }
}

- (void)externalDisplaySceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier
{
  disconnectedCopy = disconnected;
  externalWindowScenes = [(VOTUIServer *)self externalWindowScenes];
  [externalWindowScenes removeObject:disconnectedCopy];

  cursorViewControllers = [(VOTUIServer *)self cursorViewControllers];
  screen = [disconnectedCopy screen];
  displayIdentity = [screen displayIdentity];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity displayID]);
  [cursorViewControllers removeObjectForKey:v10];

  captionPanelViewControllers = [(VOTUIServer *)self captionPanelViewControllers];
  screen2 = [disconnectedCopy screen];

  displayIdentity2 = [screen2 displayIdentity];
  v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity2 displayID]);
  [captionPanelViewControllers removeObjectForKey:v13];
}

- (BOOL)shouldPreventAutorotatingAllContentViewControllers
{
  brailleViewController = [(VOTUIServer *)self brailleViewController];
  v3 = brailleViewController != 0;

  return v3;
}

@end