@interface CRLWPAdornmentRect
- (CGRect)rect;
- (CRLBezierPath)path;
- (CRLWPAdornmentRect)initWithCharacterFillAdornmentState:(id)a3;
- (CRLWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)a3;
- (CRLWPAdornmentRect)initWithRect:(CGRect)a3 stroke:(id)a4 fill:(id)a5 type:(int)a6 range:(_NSRange)a7 paths:(id)a8 rubyPaths:(id)a9 shadow:(id)a10;
- (_NSRange)range;
- (id)pathFromExcludeRange:(_NSRange)a3 limitSelection:(id)a4 rubyGlyphRange:(_NSRange)a5;
@end

@implementation CRLWPAdornmentRect

- (CRLWPAdornmentRect)initWithRect:(CGRect)a3 stroke:(id)a4 fill:(id)a5 type:(int)a6 range:(_NSRange)a7 paths:(id)a8 rubyPaths:(id)a9 shadow:(id)a10
{
  length = a7.length;
  location = a7.location;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v43 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a9;
  v24 = a10;
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
    objc_storeStrong(&v25->_stroke, a4);
    objc_storeStrong(&v26->_fill, a5);
    v26->_type = a6;
    v26->_range.location = location;
    v26->_range.length = length;
    v27 = [v22 copy];
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

    v34 = [v23 copy];
    rubyPaths = v26->_rubyPaths;
    v26->_rubyPaths = v34;

    v36 = [v24 copy];
    shadow = v26->_shadow;
    v26->_shadow = v36;
  }

  return v26;
}

- (CRLWPAdornmentRect)initWithCharacterFillAdornmentState:(id)a3
{
  v4 = a3;
  [v4 currentFillRect];
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

  [v4 currentFillRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v4 currentAdornmentFill];
  v21 = [v4 currentFillRange];
  v23 = v22;
  v24 = [v4 currentFillPaths];
  v25 = [v4 currentRubyFillPaths];
  v26 = [v4 currentFillShadow];

  v27 = [(CRLWPAdornmentRect *)self initWithRect:0 stroke:v20 fill:4 type:v21 range:v23 paths:v24 rubyPaths:v13 shadow:v15, v17, v19, v25, v26];
  return v27;
}

- (CRLWPAdornmentRect)initWithCharacterStrokeAdornmentState:(id)a3
{
  v4 = a3;
  [v4 currentStrokeRect];
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

  [v4 currentStrokeRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v4 currentAdornmentStroke];
  v21 = [v4 currentStrokeRange];
  v23 = v22;
  v24 = [v4 currentStrokePaths];
  v25 = [v4 currentRubyStrokePaths];
  v26 = [v4 currentStrokeShadow];

  v27 = [(CRLWPAdornmentRect *)self initWithRect:v20 stroke:0 fill:5 type:v21 range:v23 paths:v24 rubyPaths:v13 shadow:v15, v17, v19, v25, v26];
  return v27;
}

- (CRLBezierPath)path
{
  v3 = +[CRLBezierPath bezierPath];
  v4 = [(CRLWPAdornmentRect *)self paths];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002920D4;
  v17[3] = &unk_10184FF28;
  v5 = v3;
  v18 = v5;
  [v4 foreach:v17];

  v6 = [(CRLWPAdornmentRect *)self rubyPaths];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1002920E0;
  v15 = &unk_10184FF28;
  v7 = v5;
  v16 = v7;
  [v6 foreach:&v12];

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

- (id)pathFromExcludeRange:(_NSRange)a3 limitSelection:(id)a4 rubyGlyphRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v10 = a4;
  v11 = +[CRLBezierPath bezierPath];
  v12 = [(CRLWPAdornmentRect *)self paths];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1002922B0;
  v32[3] = &unk_10184FF50;
  v35 = v8;
  v36 = v7;
  v13 = v10;
  v33 = v13;
  v14 = v11;
  v34 = v14;
  [v12 foreach:v32];

  v15 = [(CRLWPAdornmentRect *)self rubyPaths];
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
  [v15 foreach:&v22];

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