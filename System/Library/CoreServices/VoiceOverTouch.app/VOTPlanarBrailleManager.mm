@interface VOTPlanarBrailleManager
+ (id)manager;
- (BOOL)_isElementForReading:(id)reading;
- (BOOL)_isModeReadingType;
- (CGPoint)imageOrigin;
- (VOTPlanarBrailleManager)init;
- (VOTPlanarBrailleManagerDelegate)delegate;
- (id)_elementAtRelativeIndex:(id)index;
- (id)elementAtRelativeIndex:(int64_t)index;
- (int64_t)_fetchCount;
- (void)_handlePlanarPanFailedInPreviewModeIsLeft:(BOOL)left;
- (void)_handlePlanarPanFailedInReadingTypeModeIsLeft:(BOOL)left;
- (void)_handlePlanarPanFailedIsLeft:(id)left;
- (void)_refreshPlanarBraille;
- (void)_setImageData:(id)data;
- (void)_setPlanarBrailleElement:(id)element;
- (void)_setPlanarBrailleElementHandler:(id)handler previousElements:(id)elements;
- (void)_setPlanarBrailleElementHandler:(id)handler previousElements:(id)elements nextElements:(id)nextElements;
- (void)_setTextData:(id)data focusedIndex:(int64_t)index;
- (void)_setZoomOutActive:(id)active;
- (void)_thread_setImageData:(id)data;
- (void)avoidImageModeWithDirection:(int64_t)direction;
- (void)handlePlanarPanFailedIsLeft:(BOOL)left;
- (void)refreshPlanarBraille;
- (void)setImageData:(id)data;
- (void)setPlanarBrailleElement:(id)element;
- (void)setZoomOutActive:(BOOL)active;
@end

@implementation VOTPlanarBrailleManager

+ (id)manager
{
  if (qword_1001FEFC8 != -1)
  {
    sub_100130EF0();
  }

  v3 = qword_1001FEFC0;

  return v3;
}

- (VOTPlanarBrailleManager)init
{
  v6.receiver = self;
  v6.super_class = VOTPlanarBrailleManager;
  v2 = [(VOTPlanarBrailleManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(SCRCThreadKey) initWithObject:v2];
    threadKey = v2->_threadKey;
    v2->_threadKey = v3;

    *&v2->_imageIntensity = xmmword_10017E6E0;
    v2->_imageInvert = 0;
    v2->_imageOrigin.x = 0.0;
    v2->_imageOrigin.y = 0.0;
    v2->_mode = 1;
    v2->_previousPanningDirection = -1;
  }

  return v2;
}

- (void)setPlanarBrailleElement:(id)element
{
  if (element)
  {
    elementCopy = element;
    threadKey = [(VOTPlanarBrailleManager *)self threadKey];
    [(VOTPlanarBrailleManager *)self performSelector:"_setPlanarBrailleElement:" withThreadKey:threadKey count:1 objects:elementCopy];
  }
}

- (void)_setPlanarBrailleElement:(id)element
{
  elementCopy = element;
  v19 = elementCopy;
  v5 = [NSArray arrayWithObjects:&v19 count:1];
  [(VOTPlanarBrailleManager *)self setPlanarBrailleElements:v5];

  if (-[VOTPlanarBrailleManager _shouldShowImages](self, "_shouldShowImages") && (+[VOTWorkspace sharedWorkspace](VOTWorkspace, "sharedWorkspace"), v6 = objc_claimAutoreleasedReturnValue(), [v6 visionEngine], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "processElementFor2DBrailleDisplay:", elementCopy), v7, v6, v8))
  {
    [(VOTPlanarBrailleManager *)self setFocusedElement:elementCopy];
  }

  else if ([(VOTPlanarBrailleManager *)self mode])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100108B1C;
    v17 = sub_100108B2C;
    v18 = elementCopy;
    elementManager = [VOTSharedWorkspace elementManager];
    v10 = v14[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100108B34;
    v12[3] = &unk_1001CB3F8;
    v12[4] = self;
    v12[5] = &v13;
    [elementManager fetchElementsFrom:v10 inDirection:2 count:-[VOTPlanarBrailleManager _fetchCount](self scroll:"_fetchCount") block:{0, v12}];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v11 = objc_opt_new();
    [(VOTPlanarBrailleManager *)self _setImageData:v11];

    [(VOTPlanarBrailleManager *)self setFocusedElement:elementCopy];
  }
}

- (void)_setPlanarBrailleElementHandler:(id)handler previousElements:(id)elements
{
  handlerCopy = handler;
  elementsCopy = elements;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100108B1C;
  v14[4] = sub_100108B2C;
  v8 = handlerCopy;
  v15 = v8;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100108B1C;
  v12[4] = sub_100108B2C;
  v9 = elementsCopy;
  v13 = v9;
  elementManager = [VOTSharedWorkspace elementManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100108D7C;
  v11[3] = &unk_1001CB420;
  v11[4] = self;
  v11[5] = v14;
  v11[6] = v12;
  [elementManager fetchElementsFrom:v8 inDirection:1 count:-[VOTPlanarBrailleManager _fetchCount](self scroll:"_fetchCount") block:{0, v11}];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
}

- (int64_t)_fetchCount
{
  if (![(VOTPlanarBrailleManager *)self zoomOutActive])
  {
    return 32;
  }

  delegate = [(VOTPlanarBrailleManager *)self delegate];
  numberOfTextLinesInPlanarBraille = [delegate numberOfTextLinesInPlanarBraille];

  return numberOfTextLinesInPlanarBraille;
}

- (void)_setPlanarBrailleElementHandler:(id)handler previousElements:(id)elements nextElements:(id)nextElements
{
  handlerCopy = handler;
  nextElementsCopy = nextElements;
  v10 = [NSMutableArray arrayWithArray:elements];
  [v10 addObject:handlerCopy];
  [v10 addObjectsFromArray:nextElementsCopy];
  if ([(VOTPlanarBrailleManager *)self _isModeReadingType]&& [(VOTPlanarBrailleManager *)self _isElementForReading:handlerCopy])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100109094;
    v21[3] = &unk_1001C9E50;
    v21[4] = self;
    v11 = [v10 ax_filteredArrayUsingBlock:v21];
    v12 = [NSMutableArray arrayWithArray:v11];

    v10 = v12;
  }

  [(VOTPlanarBrailleManager *)self setPlanarBrailleElements:v10];
  v13 = objc_opt_new();
  if ([v10 count])
  {
    v14 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v16 = [v10 objectAtIndex:v14];
      v17 = objc_opt_new();
      LOWORD(v20) = 0;
      LOWORD(v19) = 0;
      [v16 addTextualInformationToBrailleLine:v17 forPosition:0 rotorSelection:0 shouldPreferRotorSelection:0 lineRange:0 descriptionRange:0 lineRangeKnown:v19 isNewTouchContainer:0 previousElement:v20 updateValue:? singleLine:?];
      string = [v17 string];
      [v13 addObject:string];
      if ([handlerCopy isEqual:v16])
      {
        v15 = v14;
      }

      ++v14;
    }

    while (v14 < [v10 count]);
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(VOTPlanarBrailleManager *)self setFocusedElement:handlerCopy];
  [(VOTPlanarBrailleManager *)self _setTextData:v13 focusedIndex:v15];
}

- (void)setImageData:(id)data
{
  dataCopy = data;
  threadKey = [(VOTPlanarBrailleManager *)self threadKey];
  [(VOTPlanarBrailleManager *)self performSelector:"_thread_setImageData:" withThreadKey:threadKey count:1 objects:dataCopy];
}

- (void)_thread_setImageData:(id)data
{
  dataCopy = data;
  if ([(VOTPlanarBrailleManager *)self _shouldShowImages])
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing image data: %@", &v9, 0xCu);
    }

    delegate = [(VOTPlanarBrailleManager *)self delegate];
    v8 = [[SCRO2DBrailleData alloc] initWithImageData:dataCopy];
    [delegate setPlanarData:v8];
  }
}

- (void)handlePlanarPanFailedIsLeft:(BOOL)left
{
  leftCopy = left;
  threadKey = [(VOTPlanarBrailleManager *)self threadKey];
  v5 = [NSNumber numberWithBool:leftCopy];
  [(VOTPlanarBrailleManager *)self performSelector:"_handlePlanarPanFailedIsLeft:" withThreadKey:threadKey count:1 objects:v5];
}

- (void)_handlePlanarPanFailedIsLeft:(id)left
{
  bOOLValue = [left BOOLValue];
  focusedElement = [(VOTPlanarBrailleManager *)self focusedElement];

  if (focusedElement)
  {
    planarBrailleElements = [(VOTPlanarBrailleManager *)self planarBrailleElements];
    v7 = [planarBrailleElements count];

    if (!v7)
    {
      focusedElement2 = [(VOTPlanarBrailleManager *)self focusedElement];
      v10 = focusedElement2;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(VOTPlanarBrailleManager *)self setPlanarBrailleElements:v9];
    }

    if ([(VOTPlanarBrailleManager *)self mode]== 3)
    {
      [(VOTPlanarBrailleManager *)self _handlePlanarPanFailedInPreviewModeIsLeft:bOOLValue];
    }

    else
    {
      [(VOTPlanarBrailleManager *)self _handlePlanarPanFailedInReadingTypeModeIsLeft:bOOLValue];
    }
  }
}

- (void)_handlePlanarPanFailedInReadingTypeModeIsLeft:(BOOL)left
{
  leftCopy = left;
  focusedElement = [(VOTPlanarBrailleManager *)self focusedElement];
  focusedElement2 = [(VOTPlanarBrailleManager *)self focusedElement];
  v7 = [(VOTPlanarBrailleManager *)self _isElementForReading:focusedElement2];

  planarBrailleElements = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v9 = planarBrailleElements;
  if (leftCopy)
  {
    firstObject = [planarBrailleElements firstObject];

    elementManager = [VOTSharedWorkspace elementManager];
    [elementManager setCurrentElement:firstObject shouldSetBrailleElement:0];

    elementManager2 = [VOTSharedWorkspace elementManager];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100109614;
    v31[3] = &unk_1001CB448;
    v34 = v7;
    v13 = &v32;
    v31[4] = self;
    v32 = focusedElement;
    v14 = &v33;
    v33 = firstObject;
    v15 = focusedElement;
    v16 = firstObject;
    v17 = v31;
    v18 = elementManager2;
    v19 = v16;
    v20 = 2;
  }

  else
  {
    lastObject = [planarBrailleElements lastObject];

    elementManager3 = [VOTSharedWorkspace elementManager];
    [elementManager3 setCurrentElement:lastObject shouldSetBrailleElement:0];

    elementManager2 = [VOTSharedWorkspace elementManager];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1001097B0;
    v26 = &unk_1001CB448;
    v30 = v7;
    v13 = &v28;
    selfCopy = self;
    v28 = focusedElement;
    v14 = &v29;
    v29 = lastObject;
    v15 = lastObject;
    v16 = focusedElement;
    v17 = &v23;
    v18 = elementManager2;
    v19 = v15;
    v20 = 1;
  }

  [v18 fetchElementsFrom:v19 inDirection:v20 count:1 scroll:1 block:{v17, v23, v24, v25, v26, selfCopy}];
}

- (void)_handlePlanarPanFailedInPreviewModeIsLeft:(BOOL)left
{
  leftCopy = left;
  planarBrailleElements = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  focusedElement = [(VOTPlanarBrailleManager *)self focusedElement];
  v7 = [planarBrailleElements indexOfObject:focusedElement];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    delegate = [(VOTPlanarBrailleManager *)self delegate];
    numberOfTextLinesInPlanarBraille = [delegate numberOfTextLinesInPlanarBraille];

    if (leftCopy)
    {
      v8 = v7 - numberOfTextLinesInPlanarBraille;
      if (v7 - numberOfTextLinesInPlanarBraille < 0)
      {
        elementManager = [VOTSharedWorkspace elementManager];
        focusedElement2 = [(VOTPlanarBrailleManager *)self focusedElement];
        [elementManager fetchElementsFrom:focusedElement2 inDirection:2 count:-v8 scroll:1 block:&stru_1001CB488];
        goto LABEL_12;
      }
    }

    else
    {
      v8 = &v7[numberOfTextLinesInPlanarBraille];
      planarBrailleElements2 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
      v13 = [planarBrailleElements2 count];

      if (v8 >= v13)
      {
        elementManager = [VOTSharedWorkspace elementManager];
        focusedElement2 = [(VOTPlanarBrailleManager *)self focusedElement];
        planarBrailleElements3 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
        [elementManager fetchElementsFrom:focusedElement2 inDirection:1 count:v8 - objc_msgSend(planarBrailleElements3 scroll:"count") block:{1, &stru_1001CB4A8}];

        goto LABEL_12;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        return;
      }
    }
  }

  planarBrailleElements4 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v15 = [planarBrailleElements4 count];

  if (v8 >= v15)
  {
    return;
  }

  planarBrailleElements5 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  elementManager = [planarBrailleElements5 objectAtIndex:v8];

  focusedElement2 = [VOTSharedWorkspace elementManager];
  [focusedElement2 moveToElement:elementManager];
LABEL_12:
}

- (void)refreshPlanarBraille
{
  threadKey = [(VOTPlanarBrailleManager *)self threadKey];
  [(VOTPlanarBrailleManager *)self performSelector:"_refreshPlanarBraille" withThreadKey:threadKey count:0 objects:0];
}

- (void)_refreshPlanarBraille
{
  focusedElement = [(VOTPlanarBrailleManager *)self focusedElement];

  if (focusedElement)
  {
    focusedElement2 = [(VOTPlanarBrailleManager *)self focusedElement];
    [(VOTPlanarBrailleManager *)self setPlanarBrailleElement:focusedElement2];
  }
}

- (void)setZoomOutActive:(BOOL)active
{
  activeCopy = active;
  threadKey = [(VOTPlanarBrailleManager *)self threadKey];
  v5 = [NSNumber numberWithBool:activeCopy];
  [(VOTPlanarBrailleManager *)self performSelector:"_setZoomOutActive:" withThreadKey:threadKey count:1 objects:v5];
}

- (void)_setZoomOutActive:(id)active
{
  bOOLValue = [active BOOLValue];
  zoomOutActive = self->_zoomOutActive;
  self->_zoomOutActive = bOOLValue;
  if (zoomOutActive || !bOOLValue)
  {
    if (!(bOOLValue & 1 | !zoomOutActive))
    {
      modeBeforeZoomOut = [(VOTPlanarBrailleManager *)self modeBeforeZoomOut];

      [(VOTPlanarBrailleManager *)self setMode:modeBeforeZoomOut];
    }
  }

  else
  {
    [(VOTPlanarBrailleManager *)self setModeBeforeZoomOut:[(VOTPlanarBrailleManager *)self mode]];
    [(VOTPlanarBrailleManager *)self setMode:3];
    currentElement = [VOTSharedWorkspace currentElement];
    [(VOTPlanarBrailleManager *)self setPlanarBrailleElement:currentElement];
  }
}

- (id)elementAtRelativeIndex:(int64_t)index
{
  v4 = [(VOTPlanarBrailleManager *)self threadKey:_NSConcreteStackBlock];
  [(VOTPlanarBrailleManager *)self threadWaitTime];
  v5 = [(VOTPlanarBrailleManager *)self valueForBlock:&v7 forThreadKey:v4 waitTime:?];

  return v5;
}

- (id)_elementAtRelativeIndex:(id)index
{
  integerValue = [index integerValue];
  focusedElement = [(VOTPlanarBrailleManager *)self focusedElement];

  if (!focusedElement || (-[VOTPlanarBrailleManager planarBrailleElements](self, "planarBrailleElements"), v6 = objc_claimAutoreleasedReturnValue(), -[VOTPlanarBrailleManager focusedElement](self, "focusedElement"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 indexOfObject:v7], v7, v6, v8 == 0x7FFFFFFFFFFFFFFFLL) || (v9 = integerValue + v8, v9 < 0) || (-[VOTPlanarBrailleManager planarBrailleElements](self, "planarBrailleElements"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    v13 = 0;
  }

  else
  {
    planarBrailleElements = [(VOTPlanarBrailleManager *)self planarBrailleElements];
    v13 = [planarBrailleElements objectAtIndex:v9];
  }

  return v13;
}

- (void)avoidImageModeWithDirection:(int64_t)direction
{
  if (![(VOTPlanarBrailleManager *)self _shouldShowImages])
  {
    return;
  }

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"backward";
    if (direction == 1)
    {
      v6 = @"forward";
    }

    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Avoiding image mode, direction: %@", &v14, 0xCu);
  }

  if (direction == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  mode = [(VOTPlanarBrailleManager *)self mode];
  v9 = 21;
  while ([(VOTPlanarBrailleManager *)self _shouldShowImages])
  {
    [(VOTPlanarBrailleManager *)self setMode:[(VOTPlanarBrailleManager *)self mode]+ v7];
    if ([(VOTPlanarBrailleManager *)self mode]< 0)
    {
      v10 = 3;
      goto LABEL_15;
    }

    if ([(VOTPlanarBrailleManager *)self mode]>= 4)
    {
      v10 = 0;
LABEL_15:
      [(VOTPlanarBrailleManager *)self setMode:v10];
    }

    if (!--v9)
    {
      v11 = AXLogBrailleHW();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100130F04(v11);
      }

      [(VOTPlanarBrailleManager *)self setMode:2];
      break;
    }
  }

  if ([(VOTPlanarBrailleManager *)self mode]!= mode)
  {
    v12 = AXLogBrailleHW();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      mode2 = [(VOTPlanarBrailleManager *)self mode];
      v14 = 134218240;
      v15 = mode;
      v16 = 2048;
      v17 = mode2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Changed planar braille mode from %ld to %ld", &v14, 0x16u);
    }

    [(VOTPlanarBrailleManager *)self refreshPlanarBraille];
  }
}

- (BOOL)_isModeReadingType
{
  mode = [(VOTPlanarBrailleManager *)self mode];
  if (mode != 1)
  {
    LOBYTE(mode) = [(VOTPlanarBrailleManager *)self mode]== 2;
  }

  return mode;
}

- (void)_setImageData:(id)data
{
  dataCopy = data;
  v6 = [[SCRO2DBrailleData alloc] initWithImageData:dataCopy];

  delegate = [(VOTPlanarBrailleManager *)self delegate];
  [delegate setPlanarData:v6];
}

- (void)_setTextData:(id)data focusedIndex:(int64_t)index
{
  dataCopy = data;
  mode = [(VOTPlanarBrailleManager *)self mode];
  [(VOTPlanarBrailleManager *)self setPreviousPanningDirection:0xFFFFFFFFLL];
  v7 = [SCRO2DBrailleData alloc];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [[SCRO2DBrailleData alloc] initWithStrings:dataCopy focusedIndex:index truncateStrings:mode == 3 alignAtTop:1];
    delegate = [(VOTPlanarBrailleManager *)self delegate];
    [delegate setPlanarData:v9];
  }
}

- (BOOL)_isElementForReading:(id)reading
{
  readingCopy = reading;
  if ([readingCopy isReadingContent] & 1) != 0 || (objc_msgSend(readingCopy, "includeDuringContentReading"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [readingCopy doesHaveTraits:kAXWebContentTrait];
  }

  return v4;
}

- (VOTPlanarBrailleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)imageOrigin
{
  x = self->_imageOrigin.x;
  y = self->_imageOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end