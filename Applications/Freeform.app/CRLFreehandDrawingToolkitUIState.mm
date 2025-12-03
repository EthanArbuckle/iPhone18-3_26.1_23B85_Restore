@interface CRLFreehandDrawingToolkitUIState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFreehandDrawingToolkitUIState:(id)state;
- (CRLFreehandDrawingToolkitUIState)init;
- (double)azimuthForToolType:(unint64_t)type;
- (double)opacityForToolType:(unint64_t)type;
- (double)p_defaultStrokeWidthForToolType:(unint64_t)type;
- (double)strokeWidthForToolType:(unint64_t)type;
- (id)colorForToolType:(unint64_t)type;
- (id)copy;
- (id)currentToolForInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController;
- (id)p_defaultColorForToolType:(unint64_t)type;
- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type;
- (int64_t)strokeWidthIndexForToolType:(unint64_t)type;
- (unint64_t)hash;
- (unint64_t)p_defaultLassoType;
- (unint64_t)p_defaultToolType;
- (unint64_t)p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:(unint64_t)type;
- (void)p_setDefaultLassoType:(unint64_t)type;
- (void)p_setDefaultToolType:(unint64_t)type;
- (void)p_setupDefaultValues;
- (void)setAzimuth:(double)azimuth forToolType:(unint64_t)type;
- (void)setColor:(id)color forToolType:(unint64_t)type;
- (void)setCurrentLassoType:(unint64_t)type;
- (void)setCurrentToolType:(unint64_t)type;
- (void)setEraserToolErasesWholeObjects:(BOOL)objects;
- (void)setOpacity:(double)opacity forToolType:(unint64_t)type;
- (void)setStrokeWidth:(double)width forToolType:(unint64_t)type;
@end

@implementation CRLFreehandDrawingToolkitUIState

- (CRLFreehandDrawingToolkitUIState)init
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingToolkitUIState;
  v2 = [(CRLFreehandDrawingToolkitUIState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLFreehandDrawingToolkitUIState *)v2 p_setupDefaultValues];
  }

  return v3;
}

- (void)p_setupDefaultValues
{
  p_defaultToolType = [(CRLFreehandDrawingToolkitUIState *)self p_defaultToolType];
  self->_currentToolType = p_defaultToolType;
  self->_mostRecentRestorableToolType = p_defaultToolType;
  self->_monolineToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:0];
  self->_monolineToolUnscaledWidth = v4;
  self->_penToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:1];
  self->_penToolUnscaledWidth = v5;
  self->_pencilToolOpacity = 0.5;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:2];
  self->_pencilToolUnscaledWidth = v6;
  self->_crayonToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:3];
  self->_crayonToolUnscaledWidth = v7;
  self->_watercolorToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:4];
  self->_watercolorToolUnscaledWidth = v8;
  self->_fountainPenToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:5];
  self->_fountainPenToolUnscaledWidth = v9;
  self->_reedToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:6];
  self->_reedToolUnscaledWidth = v10;
  self->_reedToolAzimuth = 0.0;
  self->_markerToolOpacity = 0.800000012;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:7];
  self->_markerToolUnscaledWidth = v11;
  self->_fillToolOpacity = 1.0;
  [(CRLFreehandDrawingToolkitUIState *)self p_defaultStrokeWidthForToolType:9];
  self->_eraserToolScaledWidth = v12;
  self->_eraserToolErasesWholeObjects = 0;
  self->_currentLassoType = [(CRLFreehandDrawingToolkitUIState *)self p_defaultLassoType];
  v13 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:0];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v13 forToolType:0];

  v14 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:1];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v14 forToolType:1];

  v15 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:2];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v15 forToolType:2];

  v16 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:3];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v16 forToolType:3];

  v17 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:4];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v17 forToolType:4];

  v18 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:5];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v18 forToolType:5];

  v19 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:6];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v19 forToolType:6];

  v20 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:7];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v20 forToolType:7];

  v21 = [(CRLFreehandDrawingToolkitUIState *)self p_defaultColorForToolType:8];
  [(CRLFreehandDrawingToolkitUIState *)self setColor:v21 forToolType:8];
}

- (id)p_defaultColorForToolType:(unint64_t)type
{
  if (type > 3)
  {
    if (type > 6)
    {
      if (type == 7 || type == 8)
      {
        v4 = +[CRLColor pencilTrayYellowColor];
        goto LABEL_13;
      }

      goto LABEL_17;
    }

LABEL_12:
    v4 = +[CRLColor blackColor];
    goto LABEL_13;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      +[CRLColor pencilTrayBlueColor];
    }

    else
    {
      +[CRLColor pencilTrayRedColor];
    }
    v4 = ;
    goto LABEL_13;
  }

  if (type < 2)
  {
    goto LABEL_12;
  }

LABEL_17:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101330F74();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101330F88();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101331010();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState p_defaultColorForToolType:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:151 isFatal:0 description:"Tool type %lu does not support color", type];

  v4 = 0;
LABEL_13:

  return v4;
}

- (double)p_defaultStrokeWidthForToolType:(unint64_t)type
{
  v5 = [(CRLFreehandDrawingToolkitUIState *)self p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:?];
  v6 = [(CRLFreehandDrawingToolkitUIState *)self strokeWidthsForFreehandDrawingToolType:type];
  if (v5 >= [v6 count])
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331038();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v17 = v7;
      v18 = 2082;
      v19 = "[CRLFreehandDrawingToolkitUIState p_defaultStrokeWidthForToolType:]";
      v20 = 2082;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m";
      v22 = 1024;
      v23 = 161;
      v24 = 2048;
      v25 = v5 + 1;
      v26 = 2048;
      typeCopy = type;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The app delegate must provide at least %lu widths for tool type: %lu", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133104C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState p_defaultStrokeWidthForToolType:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:161 isFatal:0 description:"The app delegate must provide at least %lu widths for tool type: %lu", v5 + 1, type];
  }

  v12 = [v6 objectAtIndexedSubscript:v5];
  [v12 floatValue];
  v14 = v13;

  return v14;
}

- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type
{
  result = &__NSArray0__struct;
  if (type <= 4)
  {
    v7 = &off_1018E1170;
    v8 = &off_1018E1188;
    v9 = &off_1018E11A0;
    if (type != 4)
    {
      v9 = &__NSArray0__struct;
    }

    if (type != 3)
    {
      v8 = v9;
    }

    if (type != 2)
    {
      v7 = v8;
    }

    v10 = &off_1018E1158;
    v11 = &off_1018E11E8;
    if (type != 1)
    {
      v11 = &__NSArray0__struct;
    }

    if (type)
    {
      v10 = v11;
    }

    if (type <= 1)
    {
      return v10;
    }

    else
    {
      return v7;
    }
  }

  else if (type > 7)
  {
    if (type != 8)
    {
      if (type == 9)
      {
        return &off_1018E1218;
      }

      if (type != 10)
      {
        return result;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331074();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331088();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331110();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState strokeWidthsForFreehandDrawingToolType:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:198 isFatal:0 description:"Unknown tool type %lu when generating stroke widths.", type];

    return &__NSArray0__struct;
  }

  else
  {
    v5 = &off_1018E11D0;
    v6 = &off_1018E1200;
    if (type != 7)
    {
      v6 = &__NSArray0__struct;
    }

    if (type != 6)
    {
      v5 = v6;
    }

    if (type == 5)
    {
      return &off_1018E11B8;
    }

    else
    {
      return v5;
    }
  }
}

- (BOOL)isEqualToFreehandDrawingToolkitUIState:(id)state
{
  stateCopy = state;
  v52 = *&self->_currentToolType == *(stateCopy + 15)
     && ((monolineToolColor = self->_monolineToolColor, !(monolineToolColor | *(stateCopy + 1))) || [(CRLColor *)monolineToolColor isEqual:?])
     && ((monolineToolOpacity = self->_monolineToolOpacity, v7 = *(stateCopy + 2), monolineToolOpacity == v7) || vabdd_f64(monolineToolOpacity, v7) < fabs(v7 * 0.000000999999997))
     && ((monolineToolUnscaledWidth = self->_monolineToolUnscaledWidth, v9 = *(stateCopy + 3), monolineToolUnscaledWidth == v9) || vabdd_f64(monolineToolUnscaledWidth, v9) < fabs(v9 * 0.000000999999997))
     && ((penToolColor = self->_penToolColor, !(penToolColor | *(stateCopy + 4))) || [(CRLColor *)penToolColor isEqual:?])
     && ((penToolOpacity = self->_penToolOpacity, v12 = *(stateCopy + 5), penToolOpacity == v12) || vabdd_f64(penToolOpacity, v12) < fabs(v12 * 0.000000999999997))
     && ((penToolUnscaledWidth = self->_penToolUnscaledWidth, v14 = *(stateCopy + 6), penToolUnscaledWidth == v14) || vabdd_f64(penToolUnscaledWidth, v14) < fabs(v14 * 0.000000999999997))
     && ((pencilToolColor = self->_pencilToolColor, !(pencilToolColor | *(stateCopy + 7))) || [(CRLColor *)pencilToolColor isEqual:?])
     && ((pencilToolOpacity = self->_pencilToolOpacity, v17 = *(stateCopy + 8), pencilToolOpacity == v17) || vabdd_f64(pencilToolOpacity, v17) < fabs(v17 * 0.000000999999997))
     && ((pencilToolUnscaledWidth = self->_pencilToolUnscaledWidth, v19 = *(stateCopy + 9), pencilToolUnscaledWidth == v19) || vabdd_f64(pencilToolUnscaledWidth, v19) < fabs(v19 * 0.000000999999997))
     && ((crayonToolColor = self->_crayonToolColor, !(crayonToolColor | *(stateCopy + 10))) || [(CRLColor *)crayonToolColor isEqual:?])
     && ((crayonToolOpacity = self->_crayonToolOpacity, v22 = *(stateCopy + 11), crayonToolOpacity == v22) || vabdd_f64(crayonToolOpacity, v22) < fabs(v22 * 0.000000999999997))
     && ((crayonToolUnscaledWidth = self->_crayonToolUnscaledWidth, v24 = *(stateCopy + 12), crayonToolUnscaledWidth == v24) || vabdd_f64(crayonToolUnscaledWidth, v24) < fabs(v24 * 0.000000999999997))
     && ((watercolorToolColor = self->_watercolorToolColor, !(watercolorToolColor | *(stateCopy + 13))) || [(CRLColor *)watercolorToolColor isEqual:?])
     && ((watercolorToolOpacity = self->_watercolorToolOpacity, v27 = *(stateCopy + 14), watercolorToolOpacity == v27) || vabdd_f64(watercolorToolOpacity, v27) < fabs(v27 * 0.000000999999997))
     && ((watercolorToolUnscaledWidth = self->_watercolorToolUnscaledWidth, v29 = *(stateCopy + 15), watercolorToolUnscaledWidth == v29) || vabdd_f64(watercolorToolUnscaledWidth, v29) < fabs(v29 * 0.000000999999997))
     && ((fountainPenToolColor = self->_fountainPenToolColor, !(fountainPenToolColor | *(stateCopy + 16))) || [(CRLColor *)fountainPenToolColor isEqual:?])
     && ((fountainPenToolOpacity = self->_fountainPenToolOpacity, v32 = *(stateCopy + 17), fountainPenToolOpacity == v32) || vabdd_f64(fountainPenToolOpacity, v32) < fabs(v32 * 0.000000999999997))
     && ((fountainPenToolUnscaledWidth = self->_fountainPenToolUnscaledWidth, v34 = *(stateCopy + 18), fountainPenToolUnscaledWidth == v34) || vabdd_f64(fountainPenToolUnscaledWidth, v34) < fabs(v34 * 0.000000999999997))
     && ((reedToolColor = self->_reedToolColor, !(reedToolColor | *(stateCopy + 19))) || [(CRLColor *)reedToolColor isEqual:?])
     && ((reedToolOpacity = self->_reedToolOpacity, v37 = *(stateCopy + 20), reedToolOpacity == v37) || vabdd_f64(reedToolOpacity, v37) < fabs(v37 * 0.000000999999997))
     && ((reedToolUnscaledWidth = self->_reedToolUnscaledWidth, v39 = *(stateCopy + 21), reedToolUnscaledWidth == v39) || vabdd_f64(reedToolUnscaledWidth, v39) < fabs(v39 * 0.000000999999997))
     && ((reedToolAzimuth = self->_reedToolAzimuth, v41 = *(stateCopy + 22), reedToolAzimuth == v41) || vabdd_f64(reedToolAzimuth, v41) < fabs(v41 * 0.000000999999997))
     && ((markerToolColor = self->_markerToolColor, !(markerToolColor | *(stateCopy + 23))) || [(CRLColor *)markerToolColor isEqual:?])
     && ((markerToolOpacity = self->_markerToolOpacity, v44 = *(stateCopy + 24), markerToolOpacity == v44) || vabdd_f64(markerToolOpacity, v44) < fabs(v44 * 0.000000999999997))
     && ((markerToolUnscaledWidth = self->_markerToolUnscaledWidth, v46 = *(stateCopy + 25), markerToolUnscaledWidth == v46) || vabdd_f64(markerToolUnscaledWidth, v46) < fabs(v46 * 0.000000999999997))
     && ((fillToolColor = self->_fillToolColor, !(fillToolColor | *(stateCopy + 26))) || [(CRLColor *)fillToolColor isEqual:?])
     && ((fillToolOpacity = self->_fillToolOpacity, v49 = *(stateCopy + 27), fillToolOpacity == v49) || vabdd_f64(fillToolOpacity, v49) < fabs(v49 * 0.000000999999997))
     && ((eraserToolScaledWidth = self->_eraserToolScaledWidth, v51 = *(stateCopy + 28), eraserToolScaledWidth == v51) || vabdd_f64(eraserToolScaledWidth, v51) < fabs(v51 * 0.000000999999997))
     && self->_eraserToolErasesWholeObjects == stateCopy[232]
     && self->_currentLassoType == *(stateCopy + 32);

  return v52;
}

- (unint64_t)p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:(unint64_t)type
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (type <= 4)
  {
    v7 = 2;
    v8 = 2;
    if (type != 4)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (type != 3)
    {
      v7 = v8;
    }

    if (type == 2)
    {
      v7 = 0;
    }

    if (type == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!type)
    {
      v9 = 0;
    }

    if (type <= 1)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else if (type > 7)
  {
    if (type != 8)
    {
      if (type == 9)
      {
        return 0;
      }

      if (type != 10)
      {
        return result;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331138();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133114C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013311D4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:277 isFatal:0 description:"Unknown tool type %lu when generating stroke widths.", type];

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 3;
    v6 = 1;
    if (type != 7)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (type != 6)
    {
      v5 = v6;
    }

    if (type == 5)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }
}

- (unint64_t)p_defaultToolType
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CRLFreehandDrawingToolkitUIStateDefaultToolKey"];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [v2 objectForKey:@"CRLFreehandDrawingToolkitUIStateDefaultToolKey"];
    v6 = sub_100013F00(v4, v5);

    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (unint64_t)p_defaultLassoType
{
  v2 = +[NSUserDefaults standardUserDefaults];
  unsignedIntegerValue = [v2 objectForKey:@"CRLFreehandDrawingToolkitUIStateDefaultLassoTypeKey"];

  if (unsignedIntegerValue)
  {
    v4 = objc_opt_class();
    v5 = [v2 objectForKey:@"CRLFreehandDrawingToolkitUIStateDefaultLassoTypeKey"];
    v6 = sub_100013F00(v4, v5);

    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (void)p_setDefaultToolType:(unint64_t)type
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [v5 setObject:v4 forKey:@"CRLFreehandDrawingToolkitUIStateDefaultToolKey"];
}

- (void)p_setDefaultLassoType:(unint64_t)type
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [v5 setObject:v4 forKey:@"CRLFreehandDrawingToolkitUIStateDefaultLassoTypeKey"];
}

- (void)setCurrentToolType:(unint64_t)type
{
  if (self->_currentToolType != type)
  {
    if ([(CRLFreehandDrawingToolkitUIState *)self shouldRestoreToolType:?])
    {
      self->_mostRecentRestorableToolType = type;
    }

    if ([(CRLFreehandDrawingToolkitUIState *)self shouldDefaultToToolType:type])
    {
      [(CRLFreehandDrawingToolkitUIState *)self p_setDefaultToolType:type];
    }

    self->_currentToolType = type;
  }
}

- (void)setCurrentLassoType:(unint64_t)type
{
  if (self->_currentLassoType != type)
  {
    self->_currentLassoType = type;
    [(CRLFreehandDrawingToolkitUIState *)self p_setDefaultLassoType:?];
  }
}

- (id)currentToolForInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = 0;
  currentToolType = self->_currentToolType;
  if (currentToolType <= 4)
  {
    if (currentToolType <= 1)
    {
      if (currentToolType)
      {
        if (currentToolType != 1)
        {
          goto LABEL_26;
        }

        v10 = [CRLFreehandDrawingToolStroke alloc];
        v11 = self->_currentToolType;
        penToolOpacity = self->_penToolOpacity;
        penToolUnscaledWidth = self->_penToolUnscaledWidth;
      }

      else
      {
        v10 = [CRLFreehandDrawingToolStroke alloc];
        v11 = self->_currentToolType;
        penToolOpacity = self->_monolineToolOpacity;
        penToolUnscaledWidth = self->_monolineToolUnscaledWidth;
      }
    }

    else if (currentToolType == 2)
    {
      v10 = [CRLFreehandDrawingToolStroke alloc];
      v11 = self->_currentToolType;
      penToolOpacity = self->_pencilToolOpacity;
      penToolUnscaledWidth = self->_pencilToolUnscaledWidth;
    }

    else if (currentToolType == 3)
    {
      v10 = [CRLFreehandDrawingToolStroke alloc];
      v11 = self->_currentToolType;
      penToolOpacity = self->_crayonToolOpacity;
      penToolUnscaledWidth = self->_crayonToolUnscaledWidth;
    }

    else
    {
      v10 = [CRLFreehandDrawingToolStroke alloc];
      v11 = self->_currentToolType;
      penToolOpacity = self->_watercolorToolOpacity;
      penToolUnscaledWidth = self->_watercolorToolUnscaledWidth;
    }

    goto LABEL_24;
  }

  if (currentToolType > 7)
  {
    switch(currentToolType)
    {
      case 8:
        v14 = [[CRLFreehandDrawingToolFillAndLegacyStroke alloc] initWithInteractiveCanvasController:controllerCopy pencilKitCanvasViewController:viewControllerCopy insertionToolType:self->_currentToolType opacity:self->_fillToolOpacity unscaledWidth:0.0];
        break;
      case 9:
        if (self->_eraserToolErasesWholeObjects)
        {
          v14 = [[CRLFreehandDrawingToolEraser alloc] initWithInteractiveCanvasController:controllerCopy scaledWidthForSlicingEraser:self->_eraserToolErasesWholeObjects wholeObject:self->_eraserToolScaledWidth];
        }

        else
        {
          v14 = [[CRLFreehandDrawingToolPixelEraser alloc] initWithInteractiveCanvasController:controllerCopy pencilKitCanvasViewController:viewControllerCopy scaledWidthForSlicingEraser:self->_eraserToolScaledWidth];
        }

        break;
      case 10:
        v14 = [[CRLFreehandDrawingToolMarquee alloc] initWithInteractiveCanvasController:controllerCopy];
        break;
      default:
        goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (currentToolType == 5)
  {
    v10 = [CRLFreehandDrawingToolStroke alloc];
    v11 = self->_currentToolType;
    penToolOpacity = self->_fountainPenToolOpacity;
    penToolUnscaledWidth = self->_fountainPenToolUnscaledWidth;
    goto LABEL_24;
  }

  if (currentToolType != 6)
  {
    v10 = [CRLFreehandDrawingToolStroke alloc];
    v11 = self->_currentToolType;
    penToolOpacity = self->_markerToolOpacity;
    penToolUnscaledWidth = self->_markerToolUnscaledWidth;
LABEL_24:
    v14 = [(CRLFreehandDrawingToolStroke *)v10 initWithInteractiveCanvasController:controllerCopy pencilKitCanvasViewController:viewControllerCopy strokeToolType:v11 opacity:penToolOpacity unscaledWidth:penToolUnscaledWidth];
    goto LABEL_25;
  }

  v14 = [[CRLFreehandDrawingToolStroke alloc] initWithInteractiveCanvasController:controllerCopy pencilKitCanvasViewController:viewControllerCopy strokeToolType:self->_currentToolType opacity:self->_reedToolOpacity unscaledWidth:self->_reedToolUnscaledWidth azimuth:self->_reedToolAzimuth];
LABEL_25:
  v8 = v14;
LABEL_26:

  return v8;
}

- (id)colorForToolType:(unint64_t)type
{
  v4 = 0;
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        crayonToolColor = self->_crayonToolColor;
      }

      else if (type == 4)
      {
        crayonToolColor = self->_watercolorToolColor;
      }

      else
      {
        crayonToolColor = self->_fountainPenToolColor;
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        crayonToolColor = self->_penToolColor;
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_31;
        }

        crayonToolColor = self->_pencilToolColor;
      }
    }

    else
    {
      crayonToolColor = self->_monolineToolColor;
    }

    goto LABEL_30;
  }

  if (type <= 8)
  {
    if (type == 6)
    {
      crayonToolColor = self->_reedToolColor;
    }

    else if (type == 7)
    {
      crayonToolColor = self->_markerToolColor;
    }

    else
    {
      crayonToolColor = self->_fillToolColor;
    }

LABEL_30:
    v4 = crayonToolColor;
    goto LABEL_31;
  }

  if (type - 9 < 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013311FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331210();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331298();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState colorForToolType:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:459 isFatal:0 description:"Cannot get color for current tool (%zd)", self->_currentToolType];

    v4 = +[CRLColor clearColor];
  }

LABEL_31:

  return v4;
}

- (double)opacityForToolType:(unint64_t)type
{
  result = 1.0;
  if (type > 5)
  {
    if (type > 8)
    {
      if (type - 9 < 2)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013312C0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013312D4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133135C();
        }

        v5 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v5);
        }

        v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState opacityForToolType:]"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
        [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:500 isFatal:0 description:"Cannot get opacity for current tool (%zd)", self->_currentToolType];

        return 0.0;
      }
    }

    else if (type == 6)
    {
      return self->_reedToolOpacity;
    }

    else if (type == 7)
    {
      return self->_markerToolOpacity;
    }

    else
    {
      return self->_fillToolOpacity;
    }
  }

  else if (type > 2)
  {
    if (type == 3)
    {
      return self->_crayonToolOpacity;
    }

    else if (type == 4)
    {
      return self->_watercolorToolOpacity;
    }

    else
    {
      return self->_fountainPenToolOpacity;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      return self->_penToolOpacity;
    }

    else if (type == 2)
    {
      return self->_pencilToolOpacity;
    }
  }

  else
  {
    return self->_monolineToolOpacity;
  }

  return result;
}

- (double)strokeWidthForToolType:(unint64_t)type
{
  v4 = 0.0;
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          return self->_penToolUnscaledWidth;
        }
      }

      else
      {
        return self->_monolineToolUnscaledWidth;
      }
    }

    else if (type == 2)
    {
      return self->_pencilToolUnscaledWidth;
    }

    else if (type == 3)
    {
      return self->_crayonToolUnscaledWidth;
    }

    else
    {
      return self->_watercolorToolUnscaledWidth;
    }
  }

  else if (type > 7)
  {
    switch(type)
    {
      case 8uLL:
        goto LABEL_13;
      case 9uLL:
        return self->_eraserToolScaledWidth;
      case 0xAuLL:
LABEL_13:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101331384();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101331398();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101331420();
        }

        v5 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v5);
        }

        v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState strokeWidthForToolType:]"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
        [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:541 isFatal:0 description:"Cannot get width for current tool (%zd)", self->_currentToolType];

        break;
    }
  }

  else if (type == 5)
  {
    return self->_fountainPenToolUnscaledWidth;
  }

  else if (type == 6)
  {
    return self->_reedToolUnscaledWidth;
  }

  else
  {
    return self->_markerToolUnscaledWidth;
  }

  return v4;
}

- (double)azimuthForToolType:(unint64_t)type
{
  if (type == 6)
  {
    return self->_reedToolAzimuth;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101331448();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133145C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013314E4();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState azimuthForToolType:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:551 isFatal:0 description:"Tool does not support azimuth."];

  return 0.0;
}

- (void)setColor:(id)color forToolType:(unint64_t)type
{
  v6 = [color colorWithAlphaComponent:1.0];
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        crayonToolColor = self->_crayonToolColor;
        p_crayonToolColor = &self->_crayonToolColor;
        v7 = crayonToolColor;
      }

      else if (type == 4)
      {
        watercolorToolColor = self->_watercolorToolColor;
        p_crayonToolColor = &self->_watercolorToolColor;
        v7 = watercolorToolColor;
      }

      else
      {
        fountainPenToolColor = self->_fountainPenToolColor;
        p_crayonToolColor = &self->_fountainPenToolColor;
        v7 = fountainPenToolColor;
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        penToolColor = self->_penToolColor;
        p_crayonToolColor = &self->_penToolColor;
        v7 = penToolColor;
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_32;
        }

        pencilToolColor = self->_pencilToolColor;
        p_crayonToolColor = &self->_pencilToolColor;
        v7 = pencilToolColor;
      }
    }

    else
    {
      monolineToolColor = self->_monolineToolColor;
      p_crayonToolColor = &self->_monolineToolColor;
      v7 = monolineToolColor;
    }

    goto LABEL_30;
  }

  if (type <= 8)
  {
    if (type == 6)
    {
      reedToolColor = self->_reedToolColor;
      p_crayonToolColor = &self->_reedToolColor;
      v7 = reedToolColor;
    }

    else if (type == 7)
    {
      markerToolColor = self->_markerToolColor;
      p_crayonToolColor = &self->_markerToolColor;
      v7 = markerToolColor;
    }

    else
    {
      fillToolColor = self->_fillToolColor;
      p_crayonToolColor = &self->_fillToolColor;
      v7 = fillToolColor;
    }

LABEL_30:
    if (![(CRLColor *)v7 isEqual:v6])
    {
      objc_storeStrong(p_crayonToolColor, v6);
    }

    goto LABEL_32;
  }

  if (type - 9 < 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133150C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331520();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013315A8();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState setColor:forToolType:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:611 isFatal:0 description:"Cannot set color for given tool (%zd)", type];
  }

LABEL_32:
}

- (void)setOpacity:(double)opacity forToolType:(unint64_t)type
{
  if (type > 5)
  {
    if (type > 8)
    {
      if (type - 9 < 2)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013315D0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013315E4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133166C();
        }

        v5 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v5);
        }

        v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState setOpacity:forToolType:]"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
        [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:647 isFatal:0 description:"Cannot set opacity for tool (%zd)", self->_currentToolType];
      }
    }

    else if (type == 6)
    {
      self->_reedToolOpacity = opacity;
    }

    else if (type == 7)
    {
      self->_markerToolOpacity = opacity;
    }

    else
    {
      self->_fillToolOpacity = opacity;
    }
  }

  else if (type > 2)
  {
    if (type == 3)
    {
      self->_crayonToolOpacity = opacity;
    }

    else if (type == 4)
    {
      self->_watercolorToolOpacity = opacity;
    }

    else
    {
      self->_fountainPenToolOpacity = opacity;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      self->_penToolOpacity = opacity;
    }

    else if (type == 2)
    {
      self->_pencilToolOpacity = opacity;
    }
  }

  else
  {
    self->_monolineToolOpacity = opacity;
  }
}

- (void)setStrokeWidth:(double)width forToolType:(unint64_t)type
{
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          self->_penToolUnscaledWidth = width;
        }
      }

      else
      {
        self->_monolineToolUnscaledWidth = width;
      }
    }

    else if (type == 2)
    {
      self->_pencilToolUnscaledWidth = width;
    }

    else if (type == 3)
    {
      self->_crayonToolUnscaledWidth = width;
    }

    else
    {
      self->_watercolorToolUnscaledWidth = width;
    }
  }

  else if (type > 7)
  {
    if (type != 8)
    {
      if (type == 9)
      {
        self->_eraserToolScaledWidth = width;
        return;
      }

      if (type != 10)
      {
        return;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331694();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013316A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331730();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState setStrokeWidth:forToolType:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:683 isFatal:0 description:"Cannot set width for tool (%zd)", self->_currentToolType];
  }

  else if (type == 5)
  {
    self->_fountainPenToolUnscaledWidth = width;
  }

  else if (type == 6)
  {
    self->_reedToolUnscaledWidth = width;
  }

  else
  {
    self->_markerToolUnscaledWidth = width;
  }
}

- (void)setAzimuth:(double)azimuth forToolType:(unint64_t)type
{
  if (type == 6)
  {
    self->_reedToolAzimuth = azimuth;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331758();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133176C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013317F4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState setAzimuth:forToolType:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:690 isFatal:0 description:"Tool does not support azimuth."];
  }
}

- (int64_t)strokeWidthIndexForToolType:(unint64_t)type
{
  v5 = [(CRLFreehandDrawingToolkitUIState *)self strokeWidthsForFreehandDrawingToolType:?];
  if (![v5 count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331830();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331844();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013318CC();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v21);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Should have at least one stroke width option.", v22, v23, v24, v25, v26, v27, v28, "[CRLFreehandDrawingToolkitUIState strokeWidthIndexForToolType:]");
    v29 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkitUIState strokeWidthIndexForToolType:]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkitUIState.m"];
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:701 isFatal:1 description:"Should have at least one stroke width option."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v31, v32);
    abort();
  }

  [(CRLFreehandDrawingToolkitUIState *)self strokeWidthForToolType:type];
  v7 = v6;
  v8 = 0;
  if ([v5 count])
  {
    v9 = 0;
    v10 = 1.79769313e308;
    do
    {
      v11 = [v5 objectAtIndexedSubscript:v9];
      [v11 crl_CGFloatValue];
      v13 = v12;

      v14 = vabdd_f64(v13, v7);
      if (v14 < v10)
      {
        v10 = v14;
        v8 = v9;
      }

      ++v9;
    }

    while (v9 < [v5 count]);
  }

  v15 = [v5 objectAtIndexedSubscript:v8];
  [v15 crl_CGFloatValue];
  if (v16 == v7)
  {
  }

  else
  {
    v17 = fabs(v7 * 0.000000999999997);
    v18 = vabdd_f64(v16, v7);

    if (v18 >= v17)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10133181C();
      }

      v19 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Should have been able to find exact match for stroke width. Returning closest match.", buf, 2u);
      }
    }
  }

  return v8;
}

- (void)setEraserToolErasesWholeObjects:(BOOL)objects
{
  if (self->_eraserToolErasesWholeObjects != objects)
  {
    self->_eraserToolErasesWholeObjects = objects;
  }
}

- (id)copy
{
  v3 = objc_alloc_init(CRLFreehandDrawingToolkitUIState);
  v3->_currentToolType = self->_currentToolType;
  v3->_mostRecentRestorableToolType = self->_mostRecentRestorableToolType;
  v4 = [(CRLColor *)self->_monolineToolColor copy];
  monolineToolColor = v3->_monolineToolColor;
  v3->_monolineToolColor = v4;

  v3->_monolineToolOpacity = self->_monolineToolOpacity;
  v3->_monolineToolUnscaledWidth = self->_monolineToolUnscaledWidth;
  v6 = [(CRLColor *)self->_penToolColor copy];
  penToolColor = v3->_penToolColor;
  v3->_penToolColor = v6;

  v3->_penToolOpacity = self->_penToolOpacity;
  v3->_penToolUnscaledWidth = self->_penToolUnscaledWidth;
  v8 = [(CRLColor *)self->_pencilToolColor copy];
  pencilToolColor = v3->_pencilToolColor;
  v3->_pencilToolColor = v8;

  v3->_pencilToolOpacity = self->_pencilToolOpacity;
  v3->_pencilToolUnscaledWidth = self->_pencilToolUnscaledWidth;
  v10 = [(CRLColor *)self->_crayonToolColor copy];
  crayonToolColor = v3->_crayonToolColor;
  v3->_crayonToolColor = v10;

  v3->_crayonToolOpacity = self->_crayonToolOpacity;
  v3->_crayonToolUnscaledWidth = self->_crayonToolUnscaledWidth;
  v12 = [(CRLColor *)self->_watercolorToolColor copy];
  watercolorToolColor = v3->_watercolorToolColor;
  v3->_watercolorToolColor = v12;

  v3->_watercolorToolOpacity = self->_watercolorToolOpacity;
  v3->_watercolorToolUnscaledWidth = self->_watercolorToolUnscaledWidth;
  v14 = [(CRLColor *)self->_fountainPenToolColor copy];
  fountainPenToolColor = v3->_fountainPenToolColor;
  v3->_fountainPenToolColor = v14;

  v3->_fountainPenToolOpacity = self->_fountainPenToolOpacity;
  v3->_fountainPenToolUnscaledWidth = self->_fountainPenToolUnscaledWidth;
  v16 = [(CRLColor *)self->_reedToolColor copy];
  reedToolColor = v3->_reedToolColor;
  v3->_reedToolColor = v16;

  v3->_reedToolOpacity = self->_reedToolOpacity;
  v3->_reedToolUnscaledWidth = self->_reedToolUnscaledWidth;
  v3->_reedToolAzimuth = self->_reedToolAzimuth;
  v18 = [(CRLColor *)self->_markerToolColor copy];
  markerToolColor = v3->_markerToolColor;
  v3->_markerToolColor = v18;

  v3->_markerToolOpacity = self->_markerToolOpacity;
  v3->_markerToolUnscaledWidth = self->_markerToolUnscaledWidth;
  v20 = [(CRLColor *)self->_fillToolColor copy];
  fillToolColor = v3->_fillToolColor;
  v3->_fillToolColor = v20;

  v3->_fillToolOpacity = self->_fillToolOpacity;
  v3->_eraserToolScaledWidth = self->_eraserToolScaledWidth;
  v3->_eraserToolErasesWholeObjects = self->_eraserToolErasesWholeObjects;
  v3->_currentLassoType = self->_currentLassoType;
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CRLFreehandDrawingToolkitUIState *)self isEqualToFreehandDrawingToolkitUIState:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = sub_1001821F8(&self->_currentToolType, 8);
  v4 = sub_100083B3C(&self->_mostRecentRestorableToolType, 8, v3);
  v5 = sub_100083B3C(&self->_eraserToolErasesWholeObjects, 1, v4);

  return sub_100083B3C(&self->_currentLassoType, 8, v5);
}

@end