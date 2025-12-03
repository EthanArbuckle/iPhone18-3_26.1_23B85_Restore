@interface NTKUtilityFaceDialFactory
+ (id)_getImageCache;
+ (id)_renderDialForDevice:(id)device;
+ (id)_renderNumbersForStyle:(unint64_t)style typeface:(unint64_t)typeface device:(id)device;
+ (id)dialImageForDevice:(id)device;
+ (id)numbersImageForStyle:(unint64_t)style typeface:(unint64_t)typeface device:(id)device;
@end

@implementation NTKUtilityFaceDialFactory

+ (id)dialImageForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NTKUtilityFaceDialFactory _getImageCache];
  v5 = [NTKUtilityFaceDialFactory _dialIdentifierForDevice:deviceCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1140;
  v10[3] = &unk_104A0;
  v11 = deviceCopy;
  v6 = deviceCopy;
  v7 = [v4 imageForKey:v5 generatingIfNecessaryWithBlock:v10];
  v8 = [v7 imageWithRenderingMode:2];

  return v8;
}

+ (id)numbersImageForStyle:(unint64_t)style typeface:(unint64_t)typeface device:(id)device
{
  deviceCopy = device;
  v8 = +[NTKUtilityFaceDialFactory _getImageCache];
  v9 = [NTKUtilityFaceDialFactory _numbersIdentifierForStyle:style typeface:typeface device:deviceCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_125C;
  v13[3] = &unk_104C8;
  styleCopy = style;
  typefaceCopy = typeface;
  v14 = deviceCopy;
  v10 = deviceCopy;
  v11 = [v8 imageForKey:v9 generatingIfNecessaryWithBlock:v13];

  return v11;
}

+ (id)_getImageCache
{
  if (qword_163B0 != -1)
  {
    sub_7358();
  }

  v3 = qword_163B8;

  return v3;
}

+ (id)_renderDialForDevice:(id)device
{
  deviceCopy = device;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  sub_244C(deviceCopy, &v21);
  [deviceCopy screenScale];
  v5 = v4 + v4;
  v6 = *&v21;
  v7 = *&v21 + *&v22;
  v8 = +[CALayer layer];
  [v8 setBounds:{0.0, 0.0, v7, v7}];
  [v8 setContentsScale:v5];
  v9 = (v6 - *(&v21 + 1)) * 0.5;
  [v8 bounds];
  v10 = CGRectGetWidth(v43) * 0.5;
  [v8 bounds];
  v11 = 0;
  v12 = CGRectGetHeight(v44) * 0.5;
  v13 = *(&v22 + 1);
  v14 = *(&v23 + 1);
  do
  {
    if (-858993459 * v11 >= 0x33333334)
    {
      v15 = [UIColor colorWithWhite:1.0 alpha:0.494117647];
      v16 = _NTKUtilityTick(v11, v15, v14, v13, v9, v10, v12);
      [v8 addSublayer:v16];
      [v16 setContentsScale:v5];
    }

    ++v11;
  }

  while (v11 != 60);
  [v8 setMinificationFilter:kCAFilterTrilinear];
  [v8 frame];
  v42.width = v17;
  v42.height = v18;
  UIGraphicsBeginImageContextWithOptions(v42, 0, 0.0);
  [v8 renderInContext:UIGraphicsGetCurrentContext()];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

+ (id)_renderNumbersForStyle:(unint64_t)style typeface:(unint64_t)typeface device:(id)device
{
  deviceCopy = device;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  [deviceCopy screenScale];
  v9 = v8 + v8;
  v10 = *&v33;
  v11 = *&v33 + *&v34;
  v12 = +[CALayer layer];
  [v12 setBounds:{0.0, 0.0, v11, v11}];
  [v12 setContentsScale:v9];
  v13 = (v10 - *(&v33 + 1)) * 0.5;
  [v12 bounds];
  v14 = CGRectGetWidth(v55) * 0.5;
  [v12 bounds];
  v16 = CGRectGetHeight(v56) * 0.5;
  v17 = *(&v34 + 1);
  v18 = *&v35;
  v19 = *(&v36 + 1);
  v20 = v13 - *(&v34 + 1) * 0.5;
  v21 = -5;
  do
  {
    if (style == 3)
    {
      v22 = _NTKUtilityMinuteLayer(v21 + 5, v19, v20, v14, v16, v15, typeface, deviceCopy);
    }

    else
    {
      v23 = +[UIColor whiteColor];
      v22 = _NTKUtilityTick(v21 + 5, v23, v18, v17, v13, v14, v16);
    }

    [v12 addSublayer:v22];
    [v22 setContentsScale:v9];

    v21 += 5;
  }

  while (v21 < 0x37);
  if (style)
  {
    v24 = 0;
    v25 = v13 - v17;
    v26 = *(&v44 + 1);
    v27 = v25 - *&v36;
    do
    {
      if (style != 1 || v24 == 3 * ((1431655766 * v24) >> 32))
      {
        v28 = _NTKUtilityHourLayer(v24, v26, v27, v14, v16, v15, typeface);
        [v12 addSublayer:v28];
        [v28 setContentsScale:v9];
      }

      ++v24;
    }

    while (v24 != 12);
  }

  [v12 setMinificationFilter:kCAFilterTrilinear];
  [v12 frame];
  v54.width = v29;
  v54.height = v30;
  UIGraphicsBeginImageContextWithOptions(v54, 0, 0.0);
  [v12 renderInContext:UIGraphicsGetCurrentContext()];
  v31 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v31;
}

@end