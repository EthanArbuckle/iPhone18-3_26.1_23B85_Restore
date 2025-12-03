@interface VOTDisplayManager
+ (id)displayManager;
- (BOOL)_isSystemReadyForUI;
- (CGRect)_adjustFrameToFitScreen:(CGRect)screen;
- (CGRect)currentCursorFrame;
- (CGRect)currentSonificationPlaybackBounds;
- (VOTDisplayManager)init;
- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error;
- (void)_handleDidReceivePointerGlobalPoint:(CGPoint)point;
- (void)_handleRotorDidChange:(id)change;
- (void)_setCursorFrameForElement:(id)element animated:(BOOL)animated;
- (void)_updateZoom:(CGRect)zoom element:(id)element;
- (void)beginSonificationPlaybackFromPosition:(double)position withDuration:(double)duration;
- (void)convertFrameToCursorSpace:(CGRect)space displayID:(id)d completion:(id)completion;
- (void)convertFramesToCursorSpace:(id)space displayID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)displayBrailleDotNumbersWithReversed:(BOOL)reversed;
- (void)flashBrailleInsertedText:(id)text;
- (void)hideBrailleUI;
- (void)hideMapsExplorationUI;
- (void)hideSonificationPlayhead;
- (void)highlightBrailleDots:(id)dots;
- (void)highlightMapsExplorationSegmentWithIndex:(int64_t)index;
- (void)movePointerToPoint:(CGPoint)point contextId:(unsigned int)id;
- (void)pauseSonificationPlaybackAtPosition:(double)position;
- (void)registerForPointerEvents:(id)events;
- (void)setCursorFrame:(CGRect)frame withPath:(CGPath *)path withContextId:(unsigned int)id withDisplayId:(unsigned int)displayId element:(id)element forceRefresh:(BOOL)refresh animated:(BOOL)animated;
- (void)setCursorFrameForElement:(id)element animated:(BOOL)animated;
- (void)setElementFrames:(id)frames;
- (void)setElementFrames:(id)frames labels:(id)labels uiClasses:(id)classes;
- (void)setScreenCurtainEnabled:(BOOL)enabled;
- (void)setShouldHideCursor:(BOOL)cursor;
- (void)setSonificationPlayheadPosition:(double)position;
- (void)setVoiceOverCaptionText:(id)text withRange:(_NSRange)range language:(id)language voice:(id)voice;
- (void)showBrailleUIWithOrientation:(int64_t)orientation dotPositions:(id)positions typingMode:(int64_t)mode;
- (void)showMapsExplorationUIWithCenter:(CGPoint)center andData:(id)data;
- (void)showSonificationPlayheadInPlaybackBounds:(CGRect)bounds atPosition:(double)position;
- (void)updateBrailleUIWithOrientation:(int64_t)orientation dotPositions:(id)positions typingMode:(int64_t)mode;
- (void)updateMapsExplorationUIWithCurrentCenter:(CGPoint)center;
- (void)updateMapsExplorationUIWithCurrentLocation:(CGPoint)location;
- (void)updateVisualRotor:(id)rotor;
@end

@implementation VOTDisplayManager

- (void)setShouldHideCursor:(BOOL)cursor
{
  if (self->_shouldHideCursor != cursor)
  {
    self->_shouldHideCursor = cursor;
    [(VOTDisplayManager *)self currentCursorFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    currentCursorPath = [(VOTDisplayManager *)self currentCursorPath];
    currentCursorContextID = [(VOTDisplayManager *)self currentCursorContextID];
    currentCursorDisplayID = [(VOTDisplayManager *)self currentCursorDisplayID];

    [(VOTDisplayManager *)self setCursorFrame:currentCursorPath withPath:currentCursorContextID withContextId:currentCursorDisplayID withDisplayId:0 element:1 forceRefresh:v6, v8, v10, v12];
  }
}

+ (id)displayManager
{
  if (objc_opt_class() == self && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0 && (AXDeviceIsAudioAccessory() & 1) == 0 && qword_1001FEC00 != -1)
  {
    sub_100129EA8();
  }

  v2 = qword_1001FEC08;

  return v2;
}

- (VOTDisplayManager)init
{
  v13.receiver = self;
  v13.super_class = VOTDisplayManager;
  v2 = [(VOTDisplayManager *)&v13 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(NSLock) init];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [AXUIClient alloc];
    clientIdentifier = [(VOTDisplayManager *)v2 clientIdentifier];
    serviceBundleName = [(VOTDisplayManager *)v2 serviceBundleName];
    v8 = [v5 initWithIdentifier:clientIdentifier serviceBundleName:serviceBundleName];

    [(VOTDisplayManager *)v2 setUiClient:v8];
    [v8 setDelegate:v2];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_handleRotorDidChange:" name:@"VOTRotorChangedNotification" object:0];

    v10 = dispatch_queue_create("display-queue", 0);
    displayQueue = v2->_displayQueue;
    v2->_displayQueue = v10;

    [(VOTDisplayManager *)v2 setUiServerIsReady:0];
    [(VOTDisplayManager *)v2 setNeedToShowVOWarningBanner:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"VOTRotorChangedNotification" object:0];

  currentCursorPath = self->_currentCursorPath;
  if (currentCursorPath)
  {
    CFRelease(currentCursorPath);
    self->_currentCursorPath = 0;
  }

  displayQueue = self->_displayQueue;
  self->_displayQueue = 0;

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient setDelegate:0];

  v7.receiver = self;
  v7.super_class = VOTDisplayManager;
  [(VOTDisplayManager *)&v7 dealloc];
}

- (void)setCursorFrameForElement:(id)element animated:(BOOL)animated
{
  elementCopy = element;
  displayQueue = self->_displayQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E7C0;
  block[3] = &unk_1001C83D0;
  block[4] = self;
  v10 = elementCopy;
  animatedCopy = animated;
  v8 = elementCopy;
  dispatch_async(displayQueue, block);
}

- (void)_setCursorFrameForElement:(id)element animated:(BOOL)animated
{
  animatedCopy = animated;
  elementCopy = element;
  if (!self->_displayShutdown)
  {
    v30 = elementCopy;
    if (elementCopy)
    {
      [elementCopy updateFrame];
      if ([v30 path])
      {
        [v30 updatePaths];
        path = [v30 path];
      }

      else
      {
        path = 0;
      }

      [v30 frame];
      x = v12;
      y = v13;
      width = v14;
      height = v15;
      if (AXDeviceHasJindo())
      {
        uiElement = [v30 uiElement];
        v17 = [uiElement BOOLWithAXAttribute:2229];

        if (v17)
        {
          if (y < 36.6666667)
          {
            v18 = 36.6666667 - y + 2.5;
            x = x + 0.0;
            y = y + v18;
            height = height - v18;
          }
        }
      }

      elementCopy = v30;
    }

    else
    {
      path = 0;
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    windowContextId = [elementCopy windowContextId];
    uiElement2 = [v30 uiElement];
    v21 = [uiElement2 numberWithAXAttribute:2123];
    unsignedIntValue = [v21 unsignedIntValue];

    if (windowContextId)
    {
      v23 = +[VOTElement systemWideElement];
      v24 = v23;
      if (unsignedIntValue > 1)
      {
        [v23 convertFrame:windowContextId fromContextId:unsignedIntValue fromDisplayId:{x, y, width, height}];
      }

      else
      {
        [v23 convertRect:windowContextId fromContextId:{x, y, width, height}];
      }

      x = v25;
      y = v26;
      width = v27;
      height = v28;

      if (path)
      {
        v29 = +[VOTElement systemWideElement];
        path = [v29 convertPath:path fromContextId:windowContextId fromDisplayId:unsignedIntValue];
      }
    }

    [(VOTDisplayManager *)self setCursorFrame:path withPath:windowContextId withContextId:unsignedIntValue withDisplayId:v30 element:0 forceRefresh:animatedCopy animated:x, y, width, height];
    elementCopy = v30;
  }
}

- (void)_updateZoom:(CGRect)zoom element:(id)element
{
  height = zoom.size.height;
  width = zoom.size.width;
  y = zoom.origin.y;
  x = zoom.origin.x;
  elementCopy = element;
  if (_AXSZoomTouchEnabled())
  {
    if ([elementCopy doesHaveTraits:kAXKeyboardKeyTrait])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if ([elementCopy doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait])
    {
      [elementCopy textCursorFrame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      uiClient = +[ZoomServices sharedInstance];
      [uiClient notifyZoomFocusDidChangeWithType:v10 rect:objc_msgSend(elementCopy contextId:"windowContextId") displayId:{objc_msgSend(elementCopy, "displayId"), v12, v14, v16, v18}];
LABEL_15:

      goto LABEL_16;
    }

    if (AXDeviceIsPhoneIdiom())
    {
      if (width <= 250.0 || [elementCopy doesHaveTraits:kAXButtonTrait])
      {
        if (width <= 100.0 && height <= 100.0)
        {
          goto LABEL_14;
        }

        AX_CGRectGetCenter();
        x = v20 + -2.5;
        y = v21 + -2.5;
      }

      width = 5.0;
      height = 5.0;
    }

LABEL_14:
    uiElement = [elementCopy uiElement];
    v23 = [uiElement numberWithAXAttribute:2123];
    unsignedIntValue = [v23 unsignedIntValue];

    uiClient = [(VOTDisplayManager *)self uiClient];
    v30[0] = @"FocusChangeFrameKey";
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v25 = NSStringFromRect(v32);
    v31[0] = v25;
    v30[1] = @"FocusChangeTypeKey";
    v26 = [NSNumber numberWithInteger:v10];
    v31[1] = v26;
    v30[2] = @"display";
    v27 = [NSNumber numberWithUnsignedInt:unsignedIntValue];
    v31[2] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    v29 = +[AXAccessQueue mainAccessQueue];
    [uiClient sendAsynchronousMessage:v28 withIdentifier:20 targetAccessQueue:v29 completion:0];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)setCursorFrame:(CGRect)frame withPath:(CGPath *)path withContextId:(unsigned int)id withDisplayId:(unsigned int)displayId element:(id)element forceRefresh:(BOOL)refresh animated:(BOOL)animated
{
  animatedCopy = animated;
  refreshCopy = refresh;
  v11 = *&displayId;
  v12 = *&id;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  elementCopy = element;
  v39.origin.x = CGRectZero.origin.x;
  v39.origin.y = CGRectZero.origin.y;
  v39.size.width = CGRectZero.size.width;
  v39.size.height = CGRectZero.size.height;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v20 = CGRectEqualToRect(v39, v42);
  if (v11 == 1 && !v20)
  {
    [(VOTDisplayManager *)self _adjustFrameToFitScreen:x, y, width, height];
    x = v21;
    y = v22;
    width = v23;
    height = v24;
  }

  [(NSLock *)self->_lock lock];
  if (refreshCopy || ([(VOTDisplayManager *)self currentCursorFrame], v43.origin.x = v25, v43.origin.y = v26, v43.size.width = v27, v43.size.height = v28, v40.origin.x = x, v40.origin.y = y, v40.size.width = width, v40.size.height = height, v29 = CGRectEqualToRect(v40, v43), path) || !v29 || [(VOTDisplayManager *)self currentCursorPath])
  {
    [(VOTDisplayManager *)self setCurrentCursorFrame:x, y, width, height];
    [(VOTDisplayManager *)self setCurrentCursorContextID:v12];
    [(VOTDisplayManager *)self setCurrentCursorDisplayID:v11];
    [(VOTDisplayManager *)self setCurrentCursorPath:path];
    [(NSLock *)self->_lock unlock];
    if ([(VOTDisplayManager *)self shouldHideCursor])
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10003EFF4;
      v38[3] = &unk_1001C76E8;
      v38[4] = self;
      v30 = objc_retainBlock(v38);
      (v30[2])();
    }

    else
    {
      v31 = +[NSMutableDictionary dictionary];
      v32 = [NSNumber numberWithBool:animatedCopy];
      [v31 setObject:v32 forKeyedSubscript:@"animate"];

      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v33 = NSStringFromRect(v41);
      [v31 setObject:v33 forKeyedSubscript:@"frame"];

      if (path)
      {
        v34 = AX_CGPathCopyDataRepresentation();
        if (v34)
        {
          v35 = v34;
          [v31 setObject:v34 forKeyedSubscript:@"path"];
          CFRelease(v35);
        }
      }

      v36 = [NSNumber numberWithUnsignedInt:v11];
      [v31 setObject:v36 forKeyedSubscript:@"display"];

      uiClient = [(VOTDisplayManager *)self uiClient];
      [uiClient sendAsynchronousMessage:v31 withIdentifier:1 targetAccessQueue:0 completion:0];
    }

    [(VOTDisplayManager *)self _updateZoom:elementCopy element:x, y, width, height];
  }

  else
  {
    [(NSLock *)self->_lock unlock];
  }
}

- (CGRect)_adjustFrameToFitScreen:(CGRect)screen
{
  y = screen.origin.y;
  x = screen.origin.x;
  v5 = screen.origin.x + screen.size.width;
  v6 = screen.origin.y + screen.size.height;
  v7 = screen.size.width - (fabs(screen.origin.x) + 1.0);
  if (x <= 0.0)
  {
    width = v7;
  }

  else
  {
    width = screen.size.width;
  }

  v9 = screen.size.height - (fabs(screen.origin.y) + 1.0);
  if (screen.origin.y <= 0.0)
  {
    height = v9;
  }

  else
  {
    height = screen.size.height;
  }

  if (sub_100052310())
  {
    if (v5 >= *(&xmmword_1001FF150 + 1))
    {
      v11 = width + -1.0;
    }

    else
    {
      v11 = width;
    }

    if (v6 >= *&xmmword_1001FF150)
    {
      v12 = height + -1.0;
    }

    else
    {
      v12 = height;
    }
  }

  else
  {
    if (v5 <= *&xmmword_1001FF150)
    {
      v11 = width + -1.0;
    }

    else
    {
      v11 = width;
    }

    if (v6 <= *(&xmmword_1001FF150 + 1))
    {
      v12 = height + -1.0;
    }

    else
    {
      v12 = height;
    }
  }

  v13 = 1.0;
  if (y <= 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = y;
  }

  if (x > 0.0)
  {
    v13 = x;
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setElementFrames:(id)frames
{
  framesCopy = frames;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if ([framesCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [NSString stringWithFormat:@"%ld", v6];
      [v4 addObject:v7];

      [v5 addObject:&stru_1001CBF90];
      ++v6;
    }

    while ([framesCopy count] > v6);
  }

  [(VOTDisplayManager *)self setElementFrames:framesCopy labels:v4 uiClasses:v5];
}

- (void)setElementFrames:(id)frames labels:(id)labels uiClasses:(id)classes
{
  classesCopy = classes;
  labelsCopy = labels;
  framesCopy = frames;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v13[0] = @"elementVisualizationFrames";
  v13[1] = @"elementVisualizationFrameLabels";
  v14[0] = framesCopy;
  v14[1] = labelsCopy;
  v13[2] = @"elementVisualizationUIClasses";
  v14[2] = classesCopy;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  [uiClient sendAsynchronousMessage:v12 withIdentifier:10 targetAccessQueue:0 completion:0];
}

- (void)convertFrameToCursorSpace:(CGRect)space displayID:(id)d completion:(id)completion
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  completionCopy = completion;
  dCopy = d;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v19[0] = @"frame";
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v14 = NSStringFromRect(v21);
  v19[1] = @"display";
  v20[0] = v14;
  v20[1] = dCopy;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003F528;
  v17[3] = &unk_1001C83F8;
  v18 = completionCopy;
  v16 = completionCopy;
  [uiClient sendAsynchronousMessage:v15 withIdentifier:13 targetAccessQueue:0 completion:v17];
}

- (void)convertFramesToCursorSpace:(id)space displayID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  spaceCopy = space;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v16[0] = @"frames";
  v16[1] = @"display";
  v17[0] = spaceCopy;
  v17[1] = dCopy;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003F724;
  v14[3] = &unk_1001C83F8;
  v15 = completionCopy;
  v13 = completionCopy;
  [uiClient sendAsynchronousMessage:v12 withIdentifier:14 targetAccessQueue:0 completion:v14];
}

- (void)_handleRotorDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"kVOTRotorChangedNotificationNewRotor"];
  intValue = [v5 intValue];

  [(VOTDisplayManager *)self setShouldHideCursor:intValue == 60];
}

- (void)updateVisualRotor:(id)rotor
{
  rotorCopy = rotor;
  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:rotorCopy withIdentifier:11 targetAccessQueue:0 completion:0];
}

- (void)showBrailleUIWithOrientation:(int64_t)orientation dotPositions:(id)positions typingMode:(int64_t)mode
{
  positionsCopy = positions;
  v9 = +[ZoomServices sharedInstance];
  [v9 notifyZoomWillShowBrailleInputUI];

  uiClient = [(VOTDisplayManager *)self uiClient];
  v15[0] = @"brailleOrientation";
  v11 = [NSNumber numberWithLong:orientation];
  v16[0] = v11;
  v15[1] = @"brailleDotPositions";
  v12 = sub_10003FA08(positionsCopy);

  v16[1] = v12;
  v15[2] = @"brailleTypingMode";
  v13 = [NSNumber numberWithInteger:mode];
  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [uiClient sendAsynchronousMessage:v14 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (void)hideBrailleUI
{
  v3 = +[ZoomServices sharedInstance];
  [v3 notifyZoomWillHideBrailleInputUI];

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:0 withIdentifier:3 targetAccessQueue:0 completion:0];
}

- (void)updateBrailleUIWithOrientation:(int64_t)orientation dotPositions:(id)positions typingMode:(int64_t)mode
{
  positionsCopy = positions;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v14[0] = @"brailleOrientation";
  v10 = [NSNumber numberWithLong:orientation];
  v15[0] = v10;
  v14[1] = @"brailleDotPositions";
  v11 = sub_10003FA08(positionsCopy);

  v15[1] = v11;
  v14[2] = @"brailleTypingMode";
  v12 = [NSNumber numberWithInteger:mode];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  [uiClient sendAsynchronousMessage:v13 withIdentifier:5 targetAccessQueue:0 completion:0];
}

- (void)setScreenCurtainEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(VOTDisplayManager *)self _isSystemReadyForUI])
  {
    uiClient = [(VOTDisplayManager *)self uiClient];
    v8 = @"enabled";
    v6 = [NSNumber numberWithBool:enabledCopy];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [uiClient sendAsynchronousMessage:v7 withIdentifier:7 targetAccessQueue:0 completion:0];
  }
}

- (void)flashBrailleInsertedText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    uiClient = [(VOTDisplayManager *)self uiClient];
    v7 = @"brailleInsertedText";
    v8 = textCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [uiClient sendAsynchronousMessage:v6 withIdentifier:6 targetAccessQueue:0 completion:0];
  }
}

- (void)highlightBrailleDots:(id)dots
{
  dotsCopy = dots;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v7 = @"brailleDotNumbers";
  v8 = dotsCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [uiClient sendAsynchronousMessage:v6 withIdentifier:4 targetAccessQueue:0 completion:0];
}

- (void)displayBrailleDotNumbersWithReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v7 = @"brailleDotNumbersReversed";
  v5 = [NSNumber numberWithBool:reversedCopy];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [uiClient sendAsynchronousMessage:v6 withIdentifier:32 targetAccessQueue:0 completion:0];
}

- (void)showMapsExplorationUIWithCenter:(CGPoint)center andData:(id)data
{
  y = center.y;
  x = center.x;
  dataCopy = data;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v14[0] = @"mapsExplorationCenter";
  v9 = [NSNumber numberWithDouble:x];
  v13[0] = v9;
  v10 = [NSNumber numberWithDouble:y];
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  v14[1] = @"mapsExplorationData";
  v15[0] = v11;
  v15[1] = dataCopy;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  [uiClient sendAsynchronousMessage:v12 withIdentifier:15 targetAccessQueue:0 completion:0];
}

- (void)hideMapsExplorationUI
{
  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:0 withIdentifier:19 targetAccessQueue:0 completion:0];
}

- (void)updateMapsExplorationUIWithCurrentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v11 = @"mapsExplorationCenter";
  v6 = [NSNumber numberWithDouble:x];
  v10[0] = v6;
  v7 = [NSNumber numberWithDouble:y];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [uiClient sendAsynchronousMessage:v9 withIdentifier:17 targetAccessQueue:0 completion:0];
}

- (void)updateMapsExplorationUIWithCurrentLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  uiClient = [(VOTDisplayManager *)self uiClient];
  v11 = @"mapsExplorationCurrentLocation";
  v6 = [NSNumber numberWithDouble:x];
  v10[0] = v6;
  v7 = [NSNumber numberWithDouble:y];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [uiClient sendAsynchronousMessage:v9 withIdentifier:18 targetAccessQueue:0 completion:0];
}

- (void)highlightMapsExplorationSegmentWithIndex:(int64_t)index
{
  uiClient = [(VOTDisplayManager *)self uiClient];
  v7 = @"mapsExplorationIndex";
  v5 = [NSNumber numberWithInteger:index];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [uiClient sendAsynchronousMessage:v6 withIdentifier:16 targetAccessQueue:0 completion:0];
}

- (BOOL)_isSystemReadyForUI
{
  if (!self->_systemReadyForUI)
  {
    if (AXAssistiveAccessEnabled())
    {
      self->_systemReadyForUI = 1;
    }

    else
    {
      v3 = +[VOTSpringBoardConnection defaultConnection];
      if ([v3 isConnected]&& (AXInPreboardScenario() & 1) == 0)
      {
        v5 = AXInCheckerBoardScenario();

        if (v5)
        {
          return self->_systemReadyForUI;
        }

        self->_systemReadyForUI = 1;
        v3 = VOTLogCommon();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "System ready for VoiceOver visuals", v6, 2u);
        }
      }
    }
  }

  return self->_systemReadyForUI;
}

- (void)setVoiceOverCaptionText:(id)text withRange:(_NSRange)range language:(id)language voice:(id)voice
{
  length = range.length;
  location = range.location;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100040724;
  v18[3] = &unk_1001C8420;
  textCopy = text;
  selfCopy = self;
  v23 = location;
  v24 = length;
  languageCopy = language;
  voiceCopy = voice;
  v11 = voiceCopy;
  v12 = languageCopy;
  v13 = textCopy;
  v14 = objc_retainBlock(v18);
  (v14[2])(v14, v15, v16, v17);
}

- (void)showSonificationPlayheadInPlaybackBounds:(CGRect)bounds atPosition:(double)position
{
  [(VOTDisplayManager *)self setCurrentSonificationPlaybackBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  [(VOTDisplayManager *)self setSonificationPlayheadPosition:position];
}

- (void)setSonificationPlayheadPosition:(double)position
{
  v9[0] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v5 = NSStringFromRect(v11);
  v9[1] = @"sonificationPlayheadProgress";
  v10[0] = v5;
  v6 = [NSNumber numberWithDouble:position];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:v7 withIdentifier:21 targetAccessQueue:0 completion:0];
}

- (void)beginSonificationPlaybackFromPosition:(double)position withDuration:(double)duration
{
  if (position > 1.0)
  {
    position = 1.0;
  }

  if (position >= 0.0)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = 0.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v15[0] = @"sonificationPlayheadProgress";
  v8 = [NSNumber numberWithDouble:positionCopy];
  v16[0] = v8;
  v15[1] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v9 = NSStringFromRect(v17);
  v16[1] = v9;
  v15[2] = @"sonificationNormalizedPlayheadPosition";
  v10 = [NSNumber numberWithDouble:positionCopy];
  v16[2] = v10;
  v15[3] = @"sonificationDuration";
  v11 = [NSNumber numberWithDouble:duration];
  v16[3] = v11;
  v15[4] = @"sonificationPlaybackStartTime";
  v12 = [NSNumber numberWithDouble:Current];
  v16[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:v13 withIdentifier:22 targetAccessQueue:0 completion:0];
}

- (void)pauseSonificationPlaybackAtPosition:(double)position
{
  v9[0] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v5 = NSStringFromRect(v11);
  v9[1] = @"sonificationPlayheadProgress";
  v10[0] = v5;
  v6 = [NSNumber numberWithDouble:position];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:v7 withIdentifier:23 targetAccessQueue:0 completion:0];
}

- (void)hideSonificationPlayhead
{
  v6[0] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v3 = NSStringFromRect(v8);
  v6[1] = @"sonificationPlayheadProgress";
  v7[0] = v3;
  v7[1] = &off_1001D9B48;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  uiClient = [(VOTDisplayManager *)self uiClient];
  [uiClient sendAsynchronousMessage:v4 withIdentifier:21 targetAccessQueue:0 completion:0];
}

- (void)movePointerToPoint:(CGPoint)point contextId:(unsigned int)id
{
  v4 = *&id;
  y = point.y;
  x = point.x;
  v8 = +[AXSettings sharedInstance];
  laserEnabled = [v8 laserEnabled];

  if (laserEnabled)
  {
    uiClient = [(VOTDisplayManager *)self uiClient];
    v14[0] = @"point";
    v16.x = x;
    v16.y = y;
    v11 = NSStringFromCGPoint(v16);
    v14[1] = @"contextId";
    v15[0] = v11;
    v12 = [NSNumber numberWithUnsignedInt:v4];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [uiClient sendAsynchronousMessage:v13 withIdentifier:26 targetAccessQueue:0 completion:0];
  }
}

- (void)registerForPointerEvents:(id)events
{
  eventsCopy = events;
  v4 = +[AXSettings sharedInstance];
  laserEnabled = [v4 laserEnabled];

  if (laserEnabled)
  {
    if (![(VOTDisplayManager *)self didRegisterForPointerEvents])
    {
      [(VOTDisplayManager *)self setDidRegisterForPointerEvents:1];
      uiClient = [(VOTDisplayManager *)self uiClient];
      [uiClient sendAsynchronousMessage:&off_1001DBB88 withIdentifier:25 targetAccessQueue:0 completion:0];
    }

    pointerEventObservers = [(VOTDisplayManager *)self pointerEventObservers];

    if (!pointerEventObservers)
    {
      v8 = +[NSPointerArray weakObjectsPointerArray];
      [(VOTDisplayManager *)self setPointerEventObservers:v8];
    }

    pointerEventObservers2 = [(VOTDisplayManager *)self pointerEventObservers];
    [pointerEventObservers2 addPointer:eventsCopy];
  }
}

- (void)_handleDidReceivePointerGlobalPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  pointerEventObservers = [(VOTDisplayManager *)self pointerEventObservers];
  v6 = [pointerEventObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(pointerEventObservers);
        }

        [*(*(&v10 + 1) + 8 * v9) pointerDidMoveToGlobalPoint:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [pointerEventObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error
{
  if (identifier == 1001)
  {
    v7 = [server objectForKeyedSubscript:@"point"];
    v8 = CGPointFromString(v7);

    [(VOTDisplayManager *)self _handleDidReceivePointerGlobalPoint:v8.x, v8.y];
  }

  return 0;
}

- (CGRect)currentCursorFrame
{
  x = self->_currentCursorFrame.origin.x;
  y = self->_currentCursorFrame.origin.y;
  width = self->_currentCursorFrame.size.width;
  height = self->_currentCursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentSonificationPlaybackBounds
{
  x = self->_currentSonificationPlaybackBounds.origin.x;
  y = self->_currentSonificationPlaybackBounds.origin.y;
  width = self->_currentSonificationPlaybackBounds.size.width;
  height = self->_currentSonificationPlaybackBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end