@interface NTKMagmaTimeRenderer
+ ($F6FDA64D965730B2BB0321DC449E673D)renderTimeWithHour:(SEL)hour minute:(id)minute fontSize:(id)size lineSpacing:(double)spacing;
+ (CGRect)_opticalBoundsFromFrame:(__CTFrame *)frame context:(CGContext *)context;
@end

@implementation NTKMagmaTimeRenderer

+ (CGRect)_opticalBoundsFromFrame:(__CTFrame *)frame context:(CGContext *)context
{
  v6 = CTFrameGetLines(frame);
  v7 = v6;
  if (v6 && [v6 count])
  {
    v18 = CGPointZero;
    v19.location = 0;
    v19.length = 1;
    CTFrameGetLineOrigins(frame, v19, &v18);
    v8 = [v7 objectAtIndexedSubscript:0];
    ImageBounds = CTLineGetImageBounds(v8, context);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;

    v13 = x + v18.x;
  }

  else
  {
    v13 = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v14 = v13;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ ($F6FDA64D965730B2BB0321DC449E673D)renderTimeWithHour:(SEL)hour minute:(id)minute fontSize:(id)size lineSpacing:(double)spacing
{
  minuteCopy = minute;
  sizeCopy = size;
  v14 = +[CLKDevice currentDevice];
  [v14 screenScale];
  v16 = v15;

  v17 = +[CLKDevice currentDevice];
  CLKRoundForDevice();
  v19 = v18;

  v20 = CACurrentMediaTime();
  v21 = [NTKVictoryLabel victoryFontWithSize:0 style:spacing];
  if (!v21)
  {
    v22 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_A7EC(v22);
    }
  }

  v23 = [NTKVictoryLabel victoryFontWithSize:1 style:spacing];
  if (!v23)
  {
    v24 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_A870(v24);
    }
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_85FC;
  v36[3] = &unk_14700;
  v25 = minuteCopy;
  v37 = v25;
  v26 = sizeCopy;
  v38 = v26;
  v39 = v19;
  v40 = a7;
  v41 = v16;
  v42 = a2;
  v27 = objc_retainBlock(v36);
  Ascent = CTFontGetAscent(v21);
  retstr->var0 = 0;
  retstr->var1 = 0;
  v29 = (v27[2])(v27, v21, &retstr->var3);
  var0 = retstr->var0;
  retstr->var0 = v29;

  v31 = (v27[2])(v27, v23, 0);
  var1 = retstr->var1;
  retstr->var1 = v31;

  retstr->var2 = Ascent;
  v33 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = CACurrentMediaTime();
    *buf = 134217984;
    v44 = (v34 - v20) * 1000.0;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Magma time label rendered in %fms", buf, 0xCu);
  }

  return result;
}

@end