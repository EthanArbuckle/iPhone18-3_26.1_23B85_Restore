@interface VOTPlanarBrailleManager
+ (id)manager;
- (BOOL)_isElementForReading:(id)a3;
- (BOOL)_isModeReadingType;
- (CGPoint)imageOrigin;
- (VOTPlanarBrailleManager)init;
- (VOTPlanarBrailleManagerDelegate)delegate;
- (id)_elementAtRelativeIndex:(id)a3;
- (id)elementAtRelativeIndex:(int64_t)a3;
- (int64_t)_fetchCount;
- (void)_handlePlanarPanFailedInPreviewModeIsLeft:(BOOL)a3;
- (void)_handlePlanarPanFailedInReadingTypeModeIsLeft:(BOOL)a3;
- (void)_handlePlanarPanFailedIsLeft:(id)a3;
- (void)_refreshPlanarBraille;
- (void)_setImageData:(id)a3;
- (void)_setPlanarBrailleElement:(id)a3;
- (void)_setPlanarBrailleElementHandler:(id)a3 previousElements:(id)a4;
- (void)_setPlanarBrailleElementHandler:(id)a3 previousElements:(id)a4 nextElements:(id)a5;
- (void)_setTextData:(id)a3 focusedIndex:(int64_t)a4;
- (void)_setZoomOutActive:(id)a3;
- (void)_thread_setImageData:(id)a3;
- (void)avoidImageModeWithDirection:(int64_t)a3;
- (void)handlePlanarPanFailedIsLeft:(BOOL)a3;
- (void)refreshPlanarBraille;
- (void)setImageData:(id)a3;
- (void)setPlanarBrailleElement:(id)a3;
- (void)setZoomOutActive:(BOOL)a3;
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

- (void)setPlanarBrailleElement:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VOTPlanarBrailleManager *)self threadKey];
    [(VOTPlanarBrailleManager *)self performSelector:"_setPlanarBrailleElement:" withThreadKey:v5 count:1 objects:v4];
  }
}

- (void)_setPlanarBrailleElement:(id)a3
{
  v4 = a3;
  v19 = v4;
  v5 = [NSArray arrayWithObjects:&v19 count:1];
  [(VOTPlanarBrailleManager *)self setPlanarBrailleElements:v5];

  if (-[VOTPlanarBrailleManager _shouldShowImages](self, "_shouldShowImages") && (+[VOTWorkspace sharedWorkspace](VOTWorkspace, "sharedWorkspace"), v6 = objc_claimAutoreleasedReturnValue(), [v6 visionEngine], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "processElementFor2DBrailleDisplay:", v4), v7, v6, v8))
  {
    [(VOTPlanarBrailleManager *)self setFocusedElement:v4];
  }

  else if ([(VOTPlanarBrailleManager *)self mode])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100108B1C;
    v17 = sub_100108B2C;
    v18 = v4;
    v9 = [VOTSharedWorkspace elementManager];
    v10 = v14[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100108B34;
    v12[3] = &unk_1001CB3F8;
    v12[4] = self;
    v12[5] = &v13;
    [v9 fetchElementsFrom:v10 inDirection:2 count:-[VOTPlanarBrailleManager _fetchCount](self scroll:"_fetchCount") block:{0, v12}];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v11 = objc_opt_new();
    [(VOTPlanarBrailleManager *)self _setImageData:v11];

    [(VOTPlanarBrailleManager *)self setFocusedElement:v4];
  }
}

- (void)_setPlanarBrailleElementHandler:(id)a3 previousElements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100108B1C;
  v14[4] = sub_100108B2C;
  v8 = v6;
  v15 = v8;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100108B1C;
  v12[4] = sub_100108B2C;
  v9 = v7;
  v13 = v9;
  v10 = [VOTSharedWorkspace elementManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100108D7C;
  v11[3] = &unk_1001CB420;
  v11[4] = self;
  v11[5] = v14;
  v11[6] = v12;
  [v10 fetchElementsFrom:v8 inDirection:1 count:-[VOTPlanarBrailleManager _fetchCount](self scroll:"_fetchCount") block:{0, v11}];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
}

- (int64_t)_fetchCount
{
  if (![(VOTPlanarBrailleManager *)self zoomOutActive])
  {
    return 32;
  }

  v3 = [(VOTPlanarBrailleManager *)self delegate];
  v4 = [v3 numberOfTextLinesInPlanarBraille];

  return v4;
}

- (void)_setPlanarBrailleElementHandler:(id)a3 previousElements:(id)a4 nextElements:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSMutableArray arrayWithArray:a4];
  [v10 addObject:v8];
  [v10 addObjectsFromArray:v9];
  if ([(VOTPlanarBrailleManager *)self _isModeReadingType]&& [(VOTPlanarBrailleManager *)self _isElementForReading:v8])
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
      v18 = [v17 string];
      [v13 addObject:v18];
      if ([v8 isEqual:v16])
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

  [(VOTPlanarBrailleManager *)self setFocusedElement:v8];
  [(VOTPlanarBrailleManager *)self _setTextData:v13 focusedIndex:v15];
}

- (void)setImageData:(id)a3
{
  v4 = a3;
  v5 = [(VOTPlanarBrailleManager *)self threadKey];
  [(VOTPlanarBrailleManager *)self performSelector:"_thread_setImageData:" withThreadKey:v5 count:1 objects:v4];
}

- (void)_thread_setImageData:(id)a3
{
  v4 = a3;
  if ([(VOTPlanarBrailleManager *)self _shouldShowImages])
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing image data: %@", &v9, 0xCu);
    }

    v7 = [(VOTPlanarBrailleManager *)self delegate];
    v8 = [[SCRO2DBrailleData alloc] initWithImageData:v4];
    [v7 setPlanarData:v8];
  }
}

- (void)handlePlanarPanFailedIsLeft:(BOOL)a3
{
  v3 = a3;
  v6 = [(VOTPlanarBrailleManager *)self threadKey];
  v5 = [NSNumber numberWithBool:v3];
  [(VOTPlanarBrailleManager *)self performSelector:"_handlePlanarPanFailedIsLeft:" withThreadKey:v6 count:1 objects:v5];
}

- (void)_handlePlanarPanFailedIsLeft:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(VOTPlanarBrailleManager *)self focusedElement];

  if (v5)
  {
    v6 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = [(VOTPlanarBrailleManager *)self focusedElement];
      v10 = v8;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(VOTPlanarBrailleManager *)self setPlanarBrailleElements:v9];
    }

    if ([(VOTPlanarBrailleManager *)self mode]== 3)
    {
      [(VOTPlanarBrailleManager *)self _handlePlanarPanFailedInPreviewModeIsLeft:v4];
    }

    else
    {
      [(VOTPlanarBrailleManager *)self _handlePlanarPanFailedInReadingTypeModeIsLeft:v4];
    }
  }
}

- (void)_handlePlanarPanFailedInReadingTypeModeIsLeft:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTPlanarBrailleManager *)self focusedElement];
  v6 = [(VOTPlanarBrailleManager *)self focusedElement];
  v7 = [(VOTPlanarBrailleManager *)self _isElementForReading:v6];

  v8 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v9 = v8;
  if (v3)
  {
    v10 = [v8 firstObject];

    v11 = [VOTSharedWorkspace elementManager];
    [v11 setCurrentElement:v10 shouldSetBrailleElement:0];

    v12 = [VOTSharedWorkspace elementManager];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100109614;
    v31[3] = &unk_1001CB448;
    v34 = v7;
    v13 = &v32;
    v31[4] = self;
    v32 = v5;
    v14 = &v33;
    v33 = v10;
    v15 = v5;
    v16 = v10;
    v17 = v31;
    v18 = v12;
    v19 = v16;
    v20 = 2;
  }

  else
  {
    v21 = [v8 lastObject];

    v22 = [VOTSharedWorkspace elementManager];
    [v22 setCurrentElement:v21 shouldSetBrailleElement:0];

    v12 = [VOTSharedWorkspace elementManager];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1001097B0;
    v26 = &unk_1001CB448;
    v30 = v7;
    v13 = &v28;
    v27 = self;
    v28 = v5;
    v14 = &v29;
    v29 = v21;
    v15 = v21;
    v16 = v5;
    v17 = &v23;
    v18 = v12;
    v19 = v15;
    v20 = 1;
  }

  [v18 fetchElementsFrom:v19 inDirection:v20 count:1 scroll:1 block:{v17, v23, v24, v25, v26, v27}];
}

- (void)_handlePlanarPanFailedInPreviewModeIsLeft:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v6 = [(VOTPlanarBrailleManager *)self focusedElement];
  v7 = [v5 indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(VOTPlanarBrailleManager *)self delegate];
    v10 = [v9 numberOfTextLinesInPlanarBraille];

    if (v3)
    {
      v8 = v7 - v10;
      if (v7 - v10 < 0)
      {
        v18 = [VOTSharedWorkspace elementManager];
        v11 = [(VOTPlanarBrailleManager *)self focusedElement];
        [v18 fetchElementsFrom:v11 inDirection:2 count:-v8 scroll:1 block:&stru_1001CB488];
        goto LABEL_12;
      }
    }

    else
    {
      v8 = &v7[v10];
      v12 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
      v13 = [v12 count];

      if (v8 >= v13)
      {
        v18 = [VOTSharedWorkspace elementManager];
        v11 = [(VOTPlanarBrailleManager *)self focusedElement];
        v17 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
        [v18 fetchElementsFrom:v11 inDirection:1 count:v8 - objc_msgSend(v17 scroll:"count") block:{1, &stru_1001CB4A8}];

        goto LABEL_12;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        return;
      }
    }
  }

  v14 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v15 = [v14 count];

  if (v8 >= v15)
  {
    return;
  }

  v16 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
  v18 = [v16 objectAtIndex:v8];

  v11 = [VOTSharedWorkspace elementManager];
  [v11 moveToElement:v18];
LABEL_12:
}

- (void)refreshPlanarBraille
{
  v3 = [(VOTPlanarBrailleManager *)self threadKey];
  [(VOTPlanarBrailleManager *)self performSelector:"_refreshPlanarBraille" withThreadKey:v3 count:0 objects:0];
}

- (void)_refreshPlanarBraille
{
  v3 = [(VOTPlanarBrailleManager *)self focusedElement];

  if (v3)
  {
    v4 = [(VOTPlanarBrailleManager *)self focusedElement];
    [(VOTPlanarBrailleManager *)self setPlanarBrailleElement:v4];
  }
}

- (void)setZoomOutActive:(BOOL)a3
{
  v3 = a3;
  v6 = [(VOTPlanarBrailleManager *)self threadKey];
  v5 = [NSNumber numberWithBool:v3];
  [(VOTPlanarBrailleManager *)self performSelector:"_setZoomOutActive:" withThreadKey:v6 count:1 objects:v5];
}

- (void)_setZoomOutActive:(id)a3
{
  v4 = [a3 BOOLValue];
  zoomOutActive = self->_zoomOutActive;
  self->_zoomOutActive = v4;
  if (zoomOutActive || !v4)
  {
    if (!(v4 & 1 | !zoomOutActive))
    {
      v6 = [(VOTPlanarBrailleManager *)self modeBeforeZoomOut];

      [(VOTPlanarBrailleManager *)self setMode:v6];
    }
  }

  else
  {
    [(VOTPlanarBrailleManager *)self setModeBeforeZoomOut:[(VOTPlanarBrailleManager *)self mode]];
    [(VOTPlanarBrailleManager *)self setMode:3];
    v7 = [VOTSharedWorkspace currentElement];
    [(VOTPlanarBrailleManager *)self setPlanarBrailleElement:v7];
  }
}

- (id)elementAtRelativeIndex:(int64_t)a3
{
  v4 = [(VOTPlanarBrailleManager *)self threadKey:_NSConcreteStackBlock];
  [(VOTPlanarBrailleManager *)self threadWaitTime];
  v5 = [(VOTPlanarBrailleManager *)self valueForBlock:&v7 forThreadKey:v4 waitTime:?];

  return v5;
}

- (id)_elementAtRelativeIndex:(id)a3
{
  v4 = [a3 integerValue];
  v5 = [(VOTPlanarBrailleManager *)self focusedElement];

  if (!v5 || (-[VOTPlanarBrailleManager planarBrailleElements](self, "planarBrailleElements"), v6 = objc_claimAutoreleasedReturnValue(), -[VOTPlanarBrailleManager focusedElement](self, "focusedElement"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 indexOfObject:v7], v7, v6, v8 == 0x7FFFFFFFFFFFFFFFLL) || (v9 = v4 + v8, v9 < 0) || (-[VOTPlanarBrailleManager planarBrailleElements](self, "planarBrailleElements"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    v13 = 0;
  }

  else
  {
    v12 = [(VOTPlanarBrailleManager *)self planarBrailleElements];
    v13 = [v12 objectAtIndex:v9];
  }

  return v13;
}

- (void)avoidImageModeWithDirection:(int64_t)a3
{
  if (![(VOTPlanarBrailleManager *)self _shouldShowImages])
  {
    return;
  }

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"backward";
    if (a3 == 1)
    {
      v6 = @"forward";
    }

    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Avoiding image mode, direction: %@", &v14, 0xCu);
  }

  if (a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = [(VOTPlanarBrailleManager *)self mode];
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

  if ([(VOTPlanarBrailleManager *)self mode]!= v8)
  {
    v12 = AXLogBrailleHW();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VOTPlanarBrailleManager *)self mode];
      v14 = 134218240;
      v15 = v8;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Changed planar braille mode from %ld to %ld", &v14, 0x16u);
    }

    [(VOTPlanarBrailleManager *)self refreshPlanarBraille];
  }
}

- (BOOL)_isModeReadingType
{
  v3 = [(VOTPlanarBrailleManager *)self mode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(VOTPlanarBrailleManager *)self mode]== 2;
  }

  return v3;
}

- (void)_setImageData:(id)a3
{
  v4 = a3;
  v6 = [[SCRO2DBrailleData alloc] initWithImageData:v4];

  v5 = [(VOTPlanarBrailleManager *)self delegate];
  [v5 setPlanarData:v6];
}

- (void)_setTextData:(id)a3 focusedIndex:(int64_t)a4
{
  v11 = a3;
  v6 = [(VOTPlanarBrailleManager *)self mode];
  [(VOTPlanarBrailleManager *)self setPreviousPanningDirection:0xFFFFFFFFLL];
  v7 = [SCRO2DBrailleData alloc];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [[SCRO2DBrailleData alloc] initWithStrings:v11 focusedIndex:a4 truncateStrings:v6 == 3 alignAtTop:1];
    v10 = [(VOTPlanarBrailleManager *)self delegate];
    [v10 setPlanarData:v9];
  }
}

- (BOOL)_isElementForReading:(id)a3
{
  v3 = a3;
  if ([v3 isReadingContent] & 1) != 0 || (objc_msgSend(v3, "includeDuringContentReading"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 doesHaveTraits:kAXWebContentTrait];
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