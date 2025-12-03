@interface CRLWPAdornmentRect
- (CGRect)rect;
- (CRLBezierPath)path;
- (CRLWPAdornmentRect)initWithCharacterFillAdornmentState:(id)state;
- (CRLWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)state;
- (CRLWPAdornmentRect)initWithRect:(CGRect)rect stroke:(id)stroke fill:(id)fill type:(int)type range:(_NSRange)range paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)self0;
- (_NSRange)range;
- (id)pathFromExcludeRange:(_NSRange)range limitSelection:(id)selection rubyGlyphRange:(_NSRange)glyphRange;
@end

@implementation CRLWPAdornmentRect

- (CRLWPAdornmentRect)initWithRect:(CGRect)rect stroke:(id)stroke fill:(id)fill type:(int)type range:(_NSRange)range paths:(id)paths rubyPaths:(id)rubyPaths shadow:(id)self0
{
  length = range.length;
  location = range.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokeCopy = stroke;
  fillCopy = fill;
  pathsCopy = paths;
  rubyPathsCopy = rubyPaths;
  shadowCopy = shadow;
  v44.receiver = self;
  v44.super_class = CRLWPAdornmentRect;
  v25 = [(CRLWPAdornmentRect *)&v44 init];
  v26 = v25;
  if (v25)
  {
    v25->_rect.origin.x = x;
    v25->_rect.origin.y = y;
    v25->_rect.size.width = width;
    v25->_rect.size.height = height;
    objc_storeStrong(&v25->_stroke, stroke);
    objc_storeStrong(&v26->_fill, fill);
    v26->_type = type;
    v26->_range.location = location;
    v26->_range.length = length;
    v27 = [pathsCopy copy];
    paths = v26->_paths;
    v26->_paths = v27;

    if ([(TSUSparseArray *)v26->_paths count]&& [(TSUSparseArray *)v26->_paths count]> v26->_range.length)
    {
      v29 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013441EC();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v42 = v26->_paths;
        v39 = v30;
        v40 = [(TSUSparseArray *)v42 count];
        v41 = v26->_range.length;
        *buf = 67110402;
        v46 = v29;
        v47 = 2082;
        v48 = "[CRLWPAdornmentRect initWithRect:stroke:fill:type:range:paths:rubyPaths:shadow:]";
        v49 = 2082;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentRect.m";
        v51 = 1024;
        v52 = 31;
        v53 = 2048;
        v54 = v40;
        v55 = 2048;
        v56 = v41;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should have no more than one path per glyph. %lu paths for range %lu", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101344214();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v31);
      }

      v32 = [NSString stringWithUTF8String:"[CRLWPAdornmentRect initWithRect:stroke:fill:type:range:paths:rubyPaths:shadow:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentRect.m"];
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:31 isFatal:0 description:"Should have no more than one path per glyph. %lu paths for range %lu", [(TSUSparseArray *)v26->_paths count], v26->_range.length];
    }

    v34 = [rubyPathsCopy copy];
    rubyPaths = v26->_rubyPaths;
    v26->_rubyPaths = v34;

    v36 = [shadowCopy copy];
    shadow = v26->_shadow;
    v26->_shadow = v36;
  }

  return v26;
}

- (CRLWPAdornmentRect)initWithCharacterFillAdornmentState:(id)state
{
  stateCopy = state;
  [stateCopy currentFillRect];
  if (!sub_1001207D0(v5, v6, v7, v8))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134423C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344250();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013442E4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPAdornmentRect initWithCharacterFillAdornmentState:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentRect.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:65 isFatal:0 description:"Attempted to create an adornment with a non-finite rect"];
  }

  [stateCopy currentFillRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  currentAdornmentFill = [stateCopy currentAdornmentFill];
  currentFillRange = [stateCopy currentFillRange];
  v23 = v22;
  currentFillPaths = [stateCopy currentFillPaths];
  currentRubyFillPaths = [stateCopy currentRubyFillPaths];
  currentFillShadow = [stateCopy currentFillShadow];

  v27 = [(CRLWPAdornmentRect *)self initWithRect:0 stroke:currentAdornmentFill fill:4 type:currentFillRange range:v23 paths:currentFillPaths rubyPaths:v13 shadow:v15, v17, v19, currentRubyFillPaths, currentFillShadow];
  return v27;
}

- (CRLWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)state
{
  stateCopy = state;
  [stateCopy currentStrokeRect];
  if (!sub_1001207D0(v5, v6, v7, v8))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134430C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344320();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013443B4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPAdornmentRect initWithCharacterStrokeAdornmentState:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentRect.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:77 isFatal:0 description:"Attempted to create an adornment with a non-finite rect"];
  }

  [stateCopy currentStrokeRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  currentAdornmentStroke = [stateCopy currentAdornmentStroke];
  currentStrokeRange = [stateCopy currentStrokeRange];
  v23 = v22;
  currentStrokePaths = [stateCopy currentStrokePaths];
  currentRubyStrokePaths = [stateCopy currentRubyStrokePaths];
  currentStrokeShadow = [stateCopy currentStrokeShadow];

  v27 = [(CRLWPAdornmentRect *)self initWithRect:currentAdornmentStroke stroke:0 fill:5 type:currentStrokeRange range:v23 paths:currentStrokePaths rubyPaths:v13 shadow:v15, v17, v19, currentRubyStrokePaths, currentStrokeShadow];
  return v27;
}

- (CRLBezierPath)path
{
  v3 = +[CRLBezierPath bezierPath];
  paths = [(CRLWPAdornmentRect *)self paths];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002920D4;
  v17[3] = &unk_10184FF28;
  v5 = v3;
  v18 = v5;
  [paths foreach:v17];

  rubyPaths = [(CRLWPAdornmentRect *)self rubyPaths];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1002920E0;
  v15 = &unk_10184FF28;
  v7 = v5;
  v16 = v7;
  [rubyPaths foreach:&v12];

  if ([v7 isEmpty])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v16;
  v10 = v8;

  return v8;
}

- (id)pathFromExcludeRange:(_NSRange)range limitSelection:(id)selection rubyGlyphRange:(_NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v7 = range.length;
  v8 = range.location;
  selectionCopy = selection;
  v11 = +[CRLBezierPath bezierPath];
  paths = [(CRLWPAdornmentRect *)self paths];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1002922B0;
  v32[3] = &unk_10184FF50;
  v35 = v8;
  v36 = v7;
  v13 = selectionCopy;
  v33 = v13;
  v14 = v11;
  v34 = v14;
  [paths foreach:v32];

  rubyPaths = [(CRLWPAdornmentRect *)self rubyPaths];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100292368;
  v25 = &unk_10184FF78;
  v28 = v8;
  v29 = v7;
  v26 = v13;
  v30 = location;
  v31 = length;
  v16 = v14;
  v27 = v16;
  v17 = v13;
  [rubyPaths foreach:&v22];

  if ([v16 isEmpty])
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = v27;
  v20 = v18;

  return v18;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end