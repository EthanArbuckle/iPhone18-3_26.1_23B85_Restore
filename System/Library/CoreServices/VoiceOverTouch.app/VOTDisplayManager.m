@interface VOTDisplayManager
+ (id)displayManager;
- (BOOL)_isSystemReadyForUI;
- (CGRect)_adjustFrameToFitScreen:(CGRect)a3;
- (CGRect)currentCursorFrame;
- (CGRect)currentSonificationPlaybackBounds;
- (VOTDisplayManager)init;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6;
- (void)_handleDidReceivePointerGlobalPoint:(CGPoint)a3;
- (void)_handleRotorDidChange:(id)a3;
- (void)_setCursorFrameForElement:(id)a3 animated:(BOOL)a4;
- (void)_updateZoom:(CGRect)a3 element:(id)a4;
- (void)beginSonificationPlaybackFromPosition:(double)a3 withDuration:(double)a4;
- (void)convertFrameToCursorSpace:(CGRect)a3 displayID:(id)a4 completion:(id)a5;
- (void)convertFramesToCursorSpace:(id)a3 displayID:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)displayBrailleDotNumbersWithReversed:(BOOL)a3;
- (void)flashBrailleInsertedText:(id)a3;
- (void)hideBrailleUI;
- (void)hideMapsExplorationUI;
- (void)hideSonificationPlayhead;
- (void)highlightBrailleDots:(id)a3;
- (void)highlightMapsExplorationSegmentWithIndex:(int64_t)a3;
- (void)movePointerToPoint:(CGPoint)a3 contextId:(unsigned int)a4;
- (void)pauseSonificationPlaybackAtPosition:(double)a3;
- (void)registerForPointerEvents:(id)a3;
- (void)setCursorFrame:(CGRect)a3 withPath:(CGPath *)a4 withContextId:(unsigned int)a5 withDisplayId:(unsigned int)a6 element:(id)a7 forceRefresh:(BOOL)a8 animated:(BOOL)a9;
- (void)setCursorFrameForElement:(id)a3 animated:(BOOL)a4;
- (void)setElementFrames:(id)a3;
- (void)setElementFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5;
- (void)setScreenCurtainEnabled:(BOOL)a3;
- (void)setShouldHideCursor:(BOOL)a3;
- (void)setSonificationPlayheadPosition:(double)a3;
- (void)setVoiceOverCaptionText:(id)a3 withRange:(_NSRange)a4 language:(id)a5 voice:(id)a6;
- (void)showBrailleUIWithOrientation:(int64_t)a3 dotPositions:(id)a4 typingMode:(int64_t)a5;
- (void)showMapsExplorationUIWithCenter:(CGPoint)a3 andData:(id)a4;
- (void)showSonificationPlayheadInPlaybackBounds:(CGRect)a3 atPosition:(double)a4;
- (void)updateBrailleUIWithOrientation:(int64_t)a3 dotPositions:(id)a4 typingMode:(int64_t)a5;
- (void)updateMapsExplorationUIWithCurrentCenter:(CGPoint)a3;
- (void)updateMapsExplorationUIWithCurrentLocation:(CGPoint)a3;
- (void)updateVisualRotor:(id)a3;
@end

@implementation VOTDisplayManager

- (void)setShouldHideCursor:(BOOL)a3
{
  if (self->_shouldHideCursor != a3)
  {
    self->_shouldHideCursor = a3;
    [(VOTDisplayManager *)self currentCursorFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(VOTDisplayManager *)self currentCursorPath];
    v14 = [(VOTDisplayManager *)self currentCursorContextID];
    v15 = [(VOTDisplayManager *)self currentCursorDisplayID];

    [(VOTDisplayManager *)self setCursorFrame:v13 withPath:v14 withContextId:v15 withDisplayId:0 element:1 forceRefresh:v6, v8, v10, v12];
  }
}

+ (id)displayManager
{
  if (objc_opt_class() == a1 && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0 && (AXDeviceIsAudioAccessory() & 1) == 0 && qword_1001FEC00 != -1)
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
    v6 = [(VOTDisplayManager *)v2 clientIdentifier];
    v7 = [(VOTDisplayManager *)v2 serviceBundleName];
    v8 = [v5 initWithIdentifier:v6 serviceBundleName:v7];

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

  v6 = [(VOTDisplayManager *)self uiClient];
  [v6 setDelegate:0];

  v7.receiver = self;
  v7.super_class = VOTDisplayManager;
  [(VOTDisplayManager *)&v7 dealloc];
}

- (void)setCursorFrameForElement:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  displayQueue = self->_displayQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E7C0;
  block[3] = &unk_1001C83D0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(displayQueue, block);
}

- (void)_setCursorFrameForElement:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_displayShutdown)
  {
    v30 = v6;
    if (v6)
    {
      [v6 updateFrame];
      if ([v30 path])
      {
        [v30 updatePaths];
        v7 = [v30 path];
      }

      else
      {
        v7 = 0;
      }

      [v30 frame];
      x = v12;
      y = v13;
      width = v14;
      height = v15;
      if (AXDeviceHasJindo())
      {
        v16 = [v30 uiElement];
        v17 = [v16 BOOLWithAXAttribute:2229];

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

      v6 = v30;
    }

    else
    {
      v7 = 0;
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    v19 = [v6 windowContextId];
    v20 = [v30 uiElement];
    v21 = [v20 numberWithAXAttribute:2123];
    v22 = [v21 unsignedIntValue];

    if (v19)
    {
      v23 = +[VOTElement systemWideElement];
      v24 = v23;
      if (v22 > 1)
      {
        [v23 convertFrame:v19 fromContextId:v22 fromDisplayId:{x, y, width, height}];
      }

      else
      {
        [v23 convertRect:v19 fromContextId:{x, y, width, height}];
      }

      x = v25;
      y = v26;
      width = v27;
      height = v28;

      if (v7)
      {
        v29 = +[VOTElement systemWideElement];
        v7 = [v29 convertPath:v7 fromContextId:v19 fromDisplayId:v22];
      }
    }

    [(VOTDisplayManager *)self setCursorFrame:v7 withPath:v19 withContextId:v22 withDisplayId:v30 element:0 forceRefresh:v4 animated:x, y, width, height];
    v6 = v30;
  }
}

- (void)_updateZoom:(CGRect)a3 element:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (_AXSZoomTouchEnabled())
  {
    if ([v9 doesHaveTraits:kAXKeyboardKeyTrait])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if ([v9 doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait])
    {
      [v9 textCursorFrame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = +[ZoomServices sharedInstance];
      [v19 notifyZoomFocusDidChangeWithType:v10 rect:objc_msgSend(v9 contextId:"windowContextId") displayId:{objc_msgSend(v9, "displayId"), v12, v14, v16, v18}];
LABEL_15:

      goto LABEL_16;
    }

    if (AXDeviceIsPhoneIdiom())
    {
      if (width <= 250.0 || [v9 doesHaveTraits:kAXButtonTrait])
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
    v22 = [v9 uiElement];
    v23 = [v22 numberWithAXAttribute:2123];
    v24 = [v23 unsignedIntValue];

    v19 = [(VOTDisplayManager *)self uiClient];
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
    v27 = [NSNumber numberWithUnsignedInt:v24];
    v31[2] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    v29 = +[AXAccessQueue mainAccessQueue];
    [v19 sendAsynchronousMessage:v28 withIdentifier:20 targetAccessQueue:v29 completion:0];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)setCursorFrame:(CGRect)a3 withPath:(CGPath *)a4 withContextId:(unsigned int)a5 withDisplayId:(unsigned int)a6 element:(id)a7 forceRefresh:(BOOL)a8 animated:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v11 = *&a6;
  v12 = *&a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a7;
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
  if (v10 || ([(VOTDisplayManager *)self currentCursorFrame], v43.origin.x = v25, v43.origin.y = v26, v43.size.width = v27, v43.size.height = v28, v40.origin.x = x, v40.origin.y = y, v40.size.width = width, v40.size.height = height, v29 = CGRectEqualToRect(v40, v43), a4) || !v29 || [(VOTDisplayManager *)self currentCursorPath])
  {
    [(VOTDisplayManager *)self setCurrentCursorFrame:x, y, width, height];
    [(VOTDisplayManager *)self setCurrentCursorContextID:v12];
    [(VOTDisplayManager *)self setCurrentCursorDisplayID:v11];
    [(VOTDisplayManager *)self setCurrentCursorPath:a4];
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
      v32 = [NSNumber numberWithBool:v9];
      [v31 setObject:v32 forKeyedSubscript:@"animate"];

      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v33 = NSStringFromRect(v41);
      [v31 setObject:v33 forKeyedSubscript:@"frame"];

      if (a4)
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

      v37 = [(VOTDisplayManager *)self uiClient];
      [v37 sendAsynchronousMessage:v31 withIdentifier:1 targetAccessQueue:0 completion:0];
    }

    [(VOTDisplayManager *)self _updateZoom:v19 element:x, y, width, height];
  }

  else
  {
    [(NSLock *)self->_lock unlock];
  }
}

- (CGRect)_adjustFrameToFitScreen:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v5 = a3.origin.x + a3.size.width;
  v6 = a3.origin.y + a3.size.height;
  v7 = a3.size.width - (fabs(a3.origin.x) + 1.0);
  if (x <= 0.0)
  {
    width = v7;
  }

  else
  {
    width = a3.size.width;
  }

  v9 = a3.size.height - (fabs(a3.origin.y) + 1.0);
  if (a3.origin.y <= 0.0)
  {
    height = v9;
  }

  else
  {
    height = a3.size.height;
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

- (void)setElementFrames:(id)a3
{
  v8 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if ([v8 count])
  {
    v6 = 0;
    do
    {
      v7 = [NSString stringWithFormat:@"%ld", v6];
      [v4 addObject:v7];

      [v5 addObject:&stru_1001CBF90];
      ++v6;
    }

    while ([v8 count] > v6);
  }

  [(VOTDisplayManager *)self setElementFrames:v8 labels:v4 uiClasses:v5];
}

- (void)setElementFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VOTDisplayManager *)self uiClient];
  v13[0] = @"elementVisualizationFrames";
  v13[1] = @"elementVisualizationFrameLabels";
  v14[0] = v10;
  v14[1] = v9;
  v13[2] = @"elementVisualizationUIClasses";
  v14[2] = v8;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  [v11 sendAsynchronousMessage:v12 withIdentifier:10 targetAccessQueue:0 completion:0];
}

- (void)convertFrameToCursorSpace:(CGRect)a3 displayID:(id)a4 completion:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = a4;
  v13 = [(VOTDisplayManager *)self uiClient];
  v19[0] = @"frame";
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v14 = NSStringFromRect(v21);
  v19[1] = @"display";
  v20[0] = v14;
  v20[1] = v12;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003F528;
  v17[3] = &unk_1001C83F8;
  v18 = v11;
  v16 = v11;
  [v13 sendAsynchronousMessage:v15 withIdentifier:13 targetAccessQueue:0 completion:v17];
}

- (void)convertFramesToCursorSpace:(id)a3 displayID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VOTDisplayManager *)self uiClient];
  v16[0] = @"frames";
  v16[1] = @"display";
  v17[0] = v10;
  v17[1] = v9;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003F724;
  v14[3] = &unk_1001C83F8;
  v15 = v8;
  v13 = v8;
  [v11 sendAsynchronousMessage:v12 withIdentifier:14 targetAccessQueue:0 completion:v14];
}

- (void)_handleRotorDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"kVOTRotorChangedNotificationNewRotor"];
  v6 = [v5 intValue];

  [(VOTDisplayManager *)self setShouldHideCursor:v6 == 60];
}

- (void)updateVisualRotor:(id)a3
{
  v4 = a3;
  v5 = [(VOTDisplayManager *)self uiClient];
  [v5 sendAsynchronousMessage:v4 withIdentifier:11 targetAccessQueue:0 completion:0];
}

- (void)showBrailleUIWithOrientation:(int64_t)a3 dotPositions:(id)a4 typingMode:(int64_t)a5
{
  v8 = a4;
  v9 = +[ZoomServices sharedInstance];
  [v9 notifyZoomWillShowBrailleInputUI];

  v10 = [(VOTDisplayManager *)self uiClient];
  v15[0] = @"brailleOrientation";
  v11 = [NSNumber numberWithLong:a3];
  v16[0] = v11;
  v15[1] = @"brailleDotPositions";
  v12 = sub_10003FA08(v8);

  v16[1] = v12;
  v15[2] = @"brailleTypingMode";
  v13 = [NSNumber numberWithInteger:a5];
  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v10 sendAsynchronousMessage:v14 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (void)hideBrailleUI
{
  v3 = +[ZoomServices sharedInstance];
  [v3 notifyZoomWillHideBrailleInputUI];

  v4 = [(VOTDisplayManager *)self uiClient];
  [v4 sendAsynchronousMessage:0 withIdentifier:3 targetAccessQueue:0 completion:0];
}

- (void)updateBrailleUIWithOrientation:(int64_t)a3 dotPositions:(id)a4 typingMode:(int64_t)a5
{
  v8 = a4;
  v9 = [(VOTDisplayManager *)self uiClient];
  v14[0] = @"brailleOrientation";
  v10 = [NSNumber numberWithLong:a3];
  v15[0] = v10;
  v14[1] = @"brailleDotPositions";
  v11 = sub_10003FA08(v8);

  v15[1] = v11;
  v14[2] = @"brailleTypingMode";
  v12 = [NSNumber numberWithInteger:a5];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v9 sendAsynchronousMessage:v13 withIdentifier:5 targetAccessQueue:0 completion:0];
}

- (void)setScreenCurtainEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(VOTDisplayManager *)self _isSystemReadyForUI])
  {
    v5 = [(VOTDisplayManager *)self uiClient];
    v8 = @"enabled";
    v6 = [NSNumber numberWithBool:v3];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v5 sendAsynchronousMessage:v7 withIdentifier:7 targetAccessQueue:0 completion:0];
  }
}

- (void)flashBrailleInsertedText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(VOTDisplayManager *)self uiClient];
    v7 = @"brailleInsertedText";
    v8 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v5 sendAsynchronousMessage:v6 withIdentifier:6 targetAccessQueue:0 completion:0];
  }
}

- (void)highlightBrailleDots:(id)a3
{
  v4 = a3;
  v5 = [(VOTDisplayManager *)self uiClient];
  v7 = @"brailleDotNumbers";
  v8 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [v5 sendAsynchronousMessage:v6 withIdentifier:4 targetAccessQueue:0 completion:0];
}

- (void)displayBrailleDotNumbersWithReversed:(BOOL)a3
{
  v3 = a3;
  v4 = [(VOTDisplayManager *)self uiClient];
  v7 = @"brailleDotNumbersReversed";
  v5 = [NSNumber numberWithBool:v3];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 sendAsynchronousMessage:v6 withIdentifier:32 targetAccessQueue:0 completion:0];
}

- (void)showMapsExplorationUIWithCenter:(CGPoint)a3 andData:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VOTDisplayManager *)self uiClient];
  v14[0] = @"mapsExplorationCenter";
  v9 = [NSNumber numberWithDouble:x];
  v13[0] = v9;
  v10 = [NSNumber numberWithDouble:y];
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  v14[1] = @"mapsExplorationData";
  v15[0] = v11;
  v15[1] = v7;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  [v8 sendAsynchronousMessage:v12 withIdentifier:15 targetAccessQueue:0 completion:0];
}

- (void)hideMapsExplorationUI
{
  v2 = [(VOTDisplayManager *)self uiClient];
  [v2 sendAsynchronousMessage:0 withIdentifier:19 targetAccessQueue:0 completion:0];
}

- (void)updateMapsExplorationUIWithCurrentCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VOTDisplayManager *)self uiClient];
  v11 = @"mapsExplorationCenter";
  v6 = [NSNumber numberWithDouble:x];
  v10[0] = v6;
  v7 = [NSNumber numberWithDouble:y];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 sendAsynchronousMessage:v9 withIdentifier:17 targetAccessQueue:0 completion:0];
}

- (void)updateMapsExplorationUIWithCurrentLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VOTDisplayManager *)self uiClient];
  v11 = @"mapsExplorationCurrentLocation";
  v6 = [NSNumber numberWithDouble:x];
  v10[0] = v6;
  v7 = [NSNumber numberWithDouble:y];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 sendAsynchronousMessage:v9 withIdentifier:18 targetAccessQueue:0 completion:0];
}

- (void)highlightMapsExplorationSegmentWithIndex:(int64_t)a3
{
  v4 = [(VOTDisplayManager *)self uiClient];
  v7 = @"mapsExplorationIndex";
  v5 = [NSNumber numberWithInteger:a3];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 sendAsynchronousMessage:v6 withIdentifier:16 targetAccessQueue:0 completion:0];
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

- (void)setVoiceOverCaptionText:(id)a3 withRange:(_NSRange)a4 language:(id)a5 voice:(id)a6
{
  length = a4.length;
  location = a4.location;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100040724;
  v18[3] = &unk_1001C8420;
  v19 = a3;
  v20 = self;
  v23 = location;
  v24 = length;
  v21 = a5;
  v22 = a6;
  v11 = v22;
  v12 = v21;
  v13 = v19;
  v14 = objc_retainBlock(v18);
  (v14[2])(v14, v15, v16, v17);
}

- (void)showSonificationPlayheadInPlaybackBounds:(CGRect)a3 atPosition:(double)a4
{
  [(VOTDisplayManager *)self setCurrentSonificationPlaybackBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(VOTDisplayManager *)self setSonificationPlayheadPosition:a4];
}

- (void)setSonificationPlayheadPosition:(double)a3
{
  v9[0] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v5 = NSStringFromRect(v11);
  v9[1] = @"sonificationPlayheadProgress";
  v10[0] = v5;
  v6 = [NSNumber numberWithDouble:a3];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = [(VOTDisplayManager *)self uiClient];
  [v8 sendAsynchronousMessage:v7 withIdentifier:21 targetAccessQueue:0 completion:0];
}

- (void)beginSonificationPlaybackFromPosition:(double)a3 withDuration:(double)a4
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v15[0] = @"sonificationPlayheadProgress";
  v8 = [NSNumber numberWithDouble:v6];
  v16[0] = v8;
  v15[1] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v9 = NSStringFromRect(v17);
  v16[1] = v9;
  v15[2] = @"sonificationNormalizedPlayheadPosition";
  v10 = [NSNumber numberWithDouble:v6];
  v16[2] = v10;
  v15[3] = @"sonificationDuration";
  v11 = [NSNumber numberWithDouble:a4];
  v16[3] = v11;
  v15[4] = @"sonificationPlaybackStartTime";
  v12 = [NSNumber numberWithDouble:Current];
  v16[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  v14 = [(VOTDisplayManager *)self uiClient];
  [v14 sendAsynchronousMessage:v13 withIdentifier:22 targetAccessQueue:0 completion:0];
}

- (void)pauseSonificationPlaybackAtPosition:(double)a3
{
  v9[0] = @"sonificationPlaybackBounds";
  [(VOTDisplayManager *)self currentSonificationPlaybackBounds];
  v5 = NSStringFromRect(v11);
  v9[1] = @"sonificationPlayheadProgress";
  v10[0] = v5;
  v6 = [NSNumber numberWithDouble:a3];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = [(VOTDisplayManager *)self uiClient];
  [v8 sendAsynchronousMessage:v7 withIdentifier:23 targetAccessQueue:0 completion:0];
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

  v5 = [(VOTDisplayManager *)self uiClient];
  [v5 sendAsynchronousMessage:v4 withIdentifier:21 targetAccessQueue:0 completion:0];
}

- (void)movePointerToPoint:(CGPoint)a3 contextId:(unsigned int)a4
{
  v4 = *&a4;
  y = a3.y;
  x = a3.x;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 laserEnabled];

  if (v9)
  {
    v10 = [(VOTDisplayManager *)self uiClient];
    v14[0] = @"point";
    v16.x = x;
    v16.y = y;
    v11 = NSStringFromCGPoint(v16);
    v14[1] = @"contextId";
    v15[0] = v11;
    v12 = [NSNumber numberWithUnsignedInt:v4];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v10 sendAsynchronousMessage:v13 withIdentifier:26 targetAccessQueue:0 completion:0];
  }
}

- (void)registerForPointerEvents:(id)a3
{
  v10 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 laserEnabled];

  if (v5)
  {
    if (![(VOTDisplayManager *)self didRegisterForPointerEvents])
    {
      [(VOTDisplayManager *)self setDidRegisterForPointerEvents:1];
      v6 = [(VOTDisplayManager *)self uiClient];
      [v6 sendAsynchronousMessage:&off_1001DBB88 withIdentifier:25 targetAccessQueue:0 completion:0];
    }

    v7 = [(VOTDisplayManager *)self pointerEventObservers];

    if (!v7)
    {
      v8 = +[NSPointerArray weakObjectsPointerArray];
      [(VOTDisplayManager *)self setPointerEventObservers:v8];
    }

    v9 = [(VOTDisplayManager *)self pointerEventObservers];
    [v9 addPointer:v10];
  }
}

- (void)_handleDidReceivePointerGlobalPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(VOTDisplayManager *)self pointerEventObservers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) pointerDidMoveToGlobalPoint:{x, y}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6
{
  if (a5 == 1001)
  {
    v7 = [a4 objectForKeyedSubscript:@"point"];
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