@interface OpenCVWrapper
+ (CGImage)createCgImageFromCVMat:(Mat *)mat;
+ (id)LSDInImage:(id)image;
+ (id)blurredImage:(id)image blurSize:(int)size;
+ (id)findCannyEdgesInImage:(id)image threshold1:(double)threshold1 threshold2:(double)threshold2;
+ (id)findContoursInImage:(id)image;
+ (id)findCornersAndFilterContours:(id)contours forMaxEdgeTurns:(int)turns forTurningPointMargin:(int)margin;
+ (id)findHoughLines:(id)lines rho:(double)rho theta:(double)theta threshold:(double)threshold minLineLength:(double)length maxLineGap:(double)gap;
+ (id)getMinAreaRectEnclosingPoints:(id)points;
+ (id)makeCVImageFromContours:(id)contours lineThickness:(int)thickness color:(id)color;
+ (id)makeCVImageFromUniqueContours:(id)contours lineThickness:(int)thickness;
+ (id)makeUIImageFromCVImage:(id)image;
+ (id)samplePointsInContour:()vector<cv:(std:(int)cv :allocator<cv::Point_<int>>> *)a3 :Point_<int> numberOfPoints:;
+ (int)calcHistogramMedianForImage:(id)image;
+ (void)filterContours:(id)contours forMinEdgeLength:(int)length;
@end

@implementation OpenCVWrapper

+ (id)blurredImage:(id)image blurSize:(int)size
{
  imageCopy = image;
  v6 = imageCopy;
  if (size > 1)
  {
    v17[0] = 1124007936;
    memset(&v17[1], 0, 60);
    v18 = &v17[2];
    v19 = v20;
    v20[0] = 0;
    v20[1] = 0;
    image = [imageCopy image];
    v16 = 0;
    v14 = 16842752;
    HIDWORD(v10) = size;
    v11 = 33619968;
    v12 = v17;
    v13 = 0;
    LODWORD(v10) = size;
    v9 = -1;
    sub_10035F98C(&v14, &v11, &v10, &v9, 4);
  }

  clone = [imageCopy clone];

  return clone;
}

+ (id)findCannyEdgesInImage:(id)image threshold1:(double)threshold1 threshold2:(double)threshold2
{
  v14[0] = 1124007936;
  memset(&v14[1], 0, 60);
  v15 = &v14[2];
  v16 = v17;
  v17[0] = 0;
  v17[1] = 0;
  image = [image image];
  v13 = 0;
  v11 = 16842752;
  v8 = 33619968;
  v9 = v14;
  v10 = 0;
  sub_1002C8EA4(&v11, &v8, 3, 0, threshold1, threshold2);
}

+ (id)LSDInImage:(id)image
{
  imageCopy = image;
  v5 = 1124007936;
  memset(v6, 0, sizeof(v6));
  v7 = &v6[4];
  v8 = v9;
  v9[0] = 0;
  v9[1] = 0;
  sub_10032EFB0();
}

+ (id)findHoughLines:(id)lines rho:(double)rho theta:(double)theta threshold:(double)threshold minLineLength:(double)length maxLineGap:(double)gap
{
  linesCopy = lines;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  *&__p[8] = [linesCopy image];
  *&__p[16] = 0;
  *__p = 16842752;
  LODWORD(v21) = -2113732579;
  v22 = &v24;
  v23 = 0;
  sub_10032DC34(__p, &v21, rho, theta);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (((v25 - v24) >> 4) >= 1)
  {
    v11 = 0;
    v12 = ((v25 - v24) >> 4) & 0x7FFFFFFF;
    do
    {
      __src = vcvtq_s32_f32(*(v24 + v11));
      memset(__p, 0, 24);
      sub_1000090DC(__p, &__src, &v29, 2uLL);
      sub_1000073EC(&v21, __p);
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      ++v11;
    }

    while (v12 != v11);
  }

  *__p = 1124007936;
  memset(&__p[4], 0, 60);
  v18 = &__p[8];
  v19 = v20;
  v20[0] = 0;
  v20[1] = 0;
  __src.i64[0] = 0xF000000140;
  sub_100268ED0(__p, 2, __src.i64, 0);
  __src = 0uLL;
  v29 = 0;
  v13 = [[OpenCVWrapperContours alloc] initWithContours:&v21 originalImageSize:&v18];
  p_src = &__src;
  sub_100009030(&p_src);
  if (*&__p[56] && atomic_fetch_add((*&__p[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(__p);
  }

  *&__p[56] = 0;
  memset(&__p[16], 0, 32);
  if (*&__p[4] >= 1)
  {
    v14 = 0;
    v15 = v18;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < *&__p[4]);
  }

  if (v19 != v20)
  {
    j__free(v19);
  }

  *__p = &v21;
  sub_100009030(__p);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v13;
}

+ (id)getMinAreaRectEnclosingPoints:(id)points
{
  __p = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  pointsCopy = points;
  v4 = [pointsCopy countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v4)
  {
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(pointsCopy);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v7 objectAtIndexedSubscript:{0, v28[0]}];
        [v8 floatValue];
        v10 = v9;

        v11 = [v7 objectAtIndexedSubscript:1];
        [v11 floatValue];
        v13 = v12;

        v28[0] = __PAIR64__(v13, v10);
        v14 = v35;
        if (v35 >= v36)
        {
          v15 = sub_100009598(&__p, v28);
        }

        else
        {
          *v35 = v10;
          v14[1] = v13;
          v15 = (v14 + 2);
        }

        v35 = v15;
      }

      v4 = [pointsCopy countByEnumeratingWithState:&v30 objects:v37 count:{16, v28[0]}];
    }

    while (v4);
  }

  LODWORD(v28[0]) = -2130509811;
  v28[1] = &__p;
  v28[2] = 0;
  sub_10035BADC(v28, v29);
  v16 = [[NSMutableArray alloc] initWithCapacity:0];
  LODWORD(v17) = v29[0];
  v18 = [NSNumber numberWithFloat:v17];
  [v16 addObject:v18];

  LODWORD(v19) = v29[1];
  v20 = [NSNumber numberWithFloat:v19];
  [v16 addObject:v20];

  LODWORD(v21) = v29[2];
  v22 = [NSNumber numberWithFloat:v21];
  [v16 addObject:v22];

  LODWORD(v23) = v29[3];
  v24 = [NSNumber numberWithFloat:v23];
  [v16 addObject:v24];

  LODWORD(v25) = v29[4];
  v26 = [NSNumber numberWithFloat:v25];
  [v16 addObject:v26];

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return v16;
}

+ (int)calcHistogramMedianForImage:(id)image
{
  imageCopy = image;
  v4 = *([imageCopy image] + 2);
  v5 = *([imageCopy image] + 3);
  image = [imageCopy image];
  v7 = *image;
  v8 = image[1];
  v43 = *image;
  v44 = v8;
  v45 = image[2];
  v9 = *(image + 7);
  v46 = *(image + 6);
  v47 = v9;
  v48 = &v43 + 8;
  v49 = v50;
  v50[0] = 0;
  v50[1] = 0;
  if (v9)
  {
    atomic_fetch_add((v9 + 20), 1u);
    v10 = *(image + 1);
  }

  else
  {
    v10 = DWORD1(v7);
  }

  if (v10 > 2)
  {
    DWORD1(v43) = 0;
    sub_100269B58(&v43, image);
  }

  else
  {
    v11 = *(image + 9);
    v12 = v49;
    *v49 = *v11;
    v12[1] = v11[1];
  }

  v40 = 0;
  memset(&v36[2], 0, 60);
  v37 = &v36[3];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v36 = 0x42FF000000000100;
  v41 = &v42;
  v42 = 0x4380000000000000;
  LODWORD(v32[0]) = 1124007936;
  memset(v32 + 4, 0, 48);
  v32[3] = 0u;
  v33 = v32 + 2;
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  v30 = &v36[1];
  v31 = 0;
  v29 = 16842752;
  v26 = 33619968;
  v27 = v32;
  v28 = 0;
  sub_1003290C4(&v43, 1, &v40, &v29, &v26, 1u, v36, &v41, 1u, 0);
  if (v36[0] < 1)
  {
    v16 = -1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v5 * v4 / 2;
    v16 = -1;
    v17 = *&v32[1];
    do
    {
      v18 = v17;
      if ((v32[0] & 0x4000) == 0)
      {
        v18 = v17;
        if (*v33 != 1)
        {
          if (v33[1] == 1)
          {
            v18 = (*&v32[1] + *v34 * v13);
          }

          else
          {
            v18 = (*&v32[1] + *v34 * (v13 / SHIDWORD(v32[0])) + 4 * (v13 + -HIDWORD(v32[0]) * (v13 / SHIDWORD(v32[0]))));
          }
        }
      }

      v14 += rintf(*v18);
      if (v14 > v15)
      {
        v16 = v13;
      }

      if (++v13 >= v36[0])
      {
        break;
      }

      ++v17;
    }

    while (v16 < 0);
  }

  if (*(&v32[3] + 1) && atomic_fetch_add((*(&v32[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v32);
  }

  *(&v32[3] + 1) = 0;
  memset(&v32[1], 0, 32);
  if (SDWORD1(v32[0]) >= 1)
  {
    v19 = 0;
    v20 = v33;
    do
    {
      v20[v19++] = 0;
    }

    while (v19 < SDWORD1(v32[0]));
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (*&v36[15] && atomic_fetch_add((*&v36[15] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v36[1]);
  }

  *&v36[15] = 0;
  memset(&v36[5], 0, 32);
  if (v36[2] >= 1)
  {
    v21 = 0;
    v22 = v37;
    do
    {
      v22[v21++] = 0;
    }

    while (v21 < v36[2]);
  }

  if (v38 != v39)
  {
    j__free(v38);
  }

  if (v47 && atomic_fetch_add((v47 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v43);
  }

  v47 = 0;
  v44 = 0u;
  v45 = 0u;
  if (SDWORD1(v43) >= 1)
  {
    v23 = 0;
    v24 = v48;
    do
    {
      *&v24[4 * v23++] = 0;
    }

    while (v23 < SDWORD1(v43));
  }

  if (v49 != v50)
  {
    j__free(v49);
  }

  return v16;
}

+ (id)makeUIImageFromCVImage:(id)image
{
  imageCopy = image;
  v4 = sub_1002C12A4([imageCopy image]);

  return v4;
}

+ (id)findContoursInImage:(id)image
{
  imageCopy = image;
  memset(v11, 0, sizeof(v11));
  LODWORD(v10[0]) = 50397184;
  v10[1] = [imageCopy image];
  v10[2] = 0;
  v7 = -2113667060;
  v8 = v11;
  v9 = 0;
  v6 = 0;
  sub_1002EF464(v10, &v7, 0, 1, &v6);
  v4 = -[OpenCVWrapperContours initWithContours:originalImageSize:]([OpenCVWrapperContours alloc], "initWithContours:originalImageSize:", v11, [imageCopy image] + 64);
  v10[0] = v11;
  sub_100009030(v10);

  return v4;
}

+ (void)filterContours:(id)contours forMinEdgeLength:(int)length
{
  contoursCopy = contours;
  sub_100007D24([contoursCopy contours], length);
}

+ (id)makeCVImageFromContours:(id)contours lineThickness:(int)thickness color:(id)color
{
  contoursCopy = contours;
  colorCopy = color;
  v16[0] = *[contoursCopy originalImageSize];
  sub_100266EA8(v16, 0x10u, &v17);
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 32);
  memset(&v20[4] + 4, 0, 28);
  v21 = &v20[1];
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  (*(**&v17.f64[0] + 24))(*&v17.f64[0], &v17, v20, 0xFFFFFFFFLL);
  sub_100008E50(&v17);
  LODWORD(v16[0]) = 50397184;
  v16[1] = v20;
  v16[2] = 0;
  contours = [contoursCopy contours];
  LODWORD(v15) = -2130444276;
  v26 = 0.0;
  v27 = 0.0;
  v24 = 0;
  v25 = 0.0;
  [colorCopy getRed:&v27 green:&v26 blue:&v25 alpha:{&v24, v15, contours, 0}];
  v10.f64[0] = v27;
  v10.f64[1] = v26;
  v17 = vmulq_f64(v10, vdupq_n_s64(0x406FE00000000000uLL));
  v18 = v25 * 255.0;
  v19 = 0;
  sub_1002FF83C(v16, &v15, 0, &v17, thickness, 8, 0);
  v11 = [[OpenCVWrapperImage alloc] initWithImage:v20];
  if (v20[7] && atomic_fetch_add((v20[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  v20[7] = 0;
  memset(&v20[2], 0, 32);
  if (SHIDWORD(v20[0]) >= 1)
  {
    v12 = 0;
    v13 = v21;
    do
    {
      *(v13 + v12++) = 0;
    }

    while (v12 < SHIDWORD(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  return v11;
}

+ (id)makeCVImageFromUniqueContours:(id)contours lineThickness:(int)thickness
{
  contoursCopy = contours;
  v18 = *[contoursCopy originalImageSize];
  sub_100266EA8(&v18, 0x10u, v19);
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 32);
  memset(&v20[4] + 4, 0, 28);
  v21 = &v20[1];
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  (*(*v19[0] + 24))(v19[0], v19, v20, 0xFFFFFFFFLL);
  sub_100008E50(v19);
  contours = [contoursCopy contours];
  v7 = *contours;
  v8 = contours[1];
  if (*contours != v8)
  {
    v9 = 0xFFFFFFFFLL;
    do
    {
      v10 = ((HIDWORD(v9) - 130063606 * v9) % 0xFFu);
      v11 = ((HIDWORD(v9) + 4164903690 * v9) >> 32) + 4164903690 * (HIDWORD(v9) - 130063606 * v9);
      v9 = HIDWORD(v11) + 4164903690 * v11;
      *v19 = v10;
      *&v19[1] = (v11 % 0xFF);
      *&v19[2] = ((HIDWORD(v11) - 130063606 * v11) % 0xFFu);
      v19[3] = 0;
      v12 = v7[1];
      v18 = *v7;
      if (((v12 - v18) >> 3) >= 0x7FFFFFFF)
      {
        __assert_rtn("safeSignedCast", "OpenCVWrapperInternal.h", 67, "value < INT_MAX && size_t outside of valid range to cast to int");
      }

      v17 = (v12 - v18) >> 3;
      sub_1002FF518(v20, &v18, &v17, 1, 0, v19, thickness, 8, 0);
      v7 += 3;
    }

    while (v7 != v8);
  }

  v13 = [[OpenCVWrapperImage alloc] initWithImage:v20];
  if (v20[7] && atomic_fetch_add((v20[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  v20[7] = 0;
  memset(&v20[2], 0, 32);
  if (SHIDWORD(v20[0]) >= 1)
  {
    v14 = 0;
    v15 = v21;
    do
    {
      *(v15 + v14++) = 0;
    }

    while (v14 < SHIDWORD(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  return v13;
}

+ (id)findCornersAndFilterContours:(id)contours forMaxEdgeTurns:(int)turns forTurningPointMargin:(int)margin
{
  contoursCopy = contours;
  contours = [contoursCopy contours];
  v9 = objc_alloc_init(OpenCVWrapperCorners);
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (turns < 0)
  {
    __assert_rtn("safeUnsignedCast", "OpenCVWrapperInternal.h", 73, "value >= 0 && int outside of valid range to cast to size_t");
  }

  v10 = *contours;
  v11 = contours[1];
  if (*contours != v11)
  {
    turnsCopy = turns;
    while (1)
    {
      v16 = __p;
      sub_10000897C(&__p, v10, [contoursCopy originalImageSize], margin);
      if (0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3) > turns)
      {
        break;
      }

      sub_100009720(&v18, __p, v16, [(OpenCVWrapperCorners *)v9 corners]);
      v10 = (v10 + 24);
      if (v10 == v11)
      {
        v10 = v11;
        goto LABEL_12;
      }
    }

    if (v10 != v11)
    {
      for (i = (v10 + 24); i != v11; i = (i + 24))
      {
        v16 = __p;
        sub_10000897C(&__p, i, [contoursCopy originalImageSize], margin);
        if (0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3) <= turnsCopy)
        {
          sub_100009720(&v18, __p, v16, [(OpenCVWrapperCorners *)v9 corners]);
          sub_100009864(v10, i);
          v10 = (v10 + 24);
        }
      }
    }
  }

LABEL_12:
  sub_1000085A8(contours, v10, contours[1]);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

+ (id)samplePointsInContour:()vector<cv:(std:(int)cv :allocator<cv::Point_<int>>> *)a3 :Point_<int> numberOfPoints:
{
  v6 = objc_opt_new();
  v20 = a3;
  v21 = 0;
  v19 = -2130509812;
  sub_10035C3AC(&v19, v22);
  v7 = sqrt((v24 * v23 / cv));
  v8 = v23 / v7;
  if (v8 > 0.0)
  {
    v9 = 0;
    v10 = v24 / v7;
    v11 = 0.0;
    do
    {
      if (v10 > 0.0)
      {
        v12 = 0.0;
        v13 = 1;
        do
        {
          v14 = (v22[0] + v11 * v7);
          v15 = (v22[1] + v12 * v7);
          v20 = a3;
          v21 = 0;
          v19 = -2130509812;
          v18[0] = v14;
          v18[1] = v15;
          if (sub_100328A30(&v19, v18, 0) >= 0.0)
          {
            v16 = [NSValue valueWithCGPoint:v14, v15];
            [v6 addObject:v16];
          }

          v12 = v13++;
        }

        while (v10 > v12);
      }

      v11 = ++v9;
    }

    while (v8 > v9);
  }

  return v6;
}

+ (CGImage)createCgImageFromCVMat:(Mat *)mat
{
  data = mat->data;
  dims = mat->dims;
  if (dims < 1)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = mat->step.p[dims - 1];
  if (dims < 3)
  {
LABEL_7:
    v8 = mat->cols * mat->rows;
    goto LABEL_8;
  }

  p = mat->size.p;
  v8 = 1;
  do
  {
    v9 = *p++;
    v8 *= v9;
    --dims;
  }

  while (dims);
LABEL_8:
  v10 = [NSData dataWithBytes:data length:v8 * v6];
  v11 = mat->dims;
  if (v11 >= 1 && mat->step.p[v11 - 1] == 1)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
  }

  v13 = DeviceGray;
  v14 = CGDataProviderCreateWithCFData(v10);
  cols = mat->cols;
  if ((cols & 0x80000000) != 0 || (rows = mat->rows, (rows & 0x80000000) != 0))
  {
    __assert_rtn("safeUnsignedCast", "OpenCVWrapperInternal.h", 73, "value >= 0 && int outside of valid range to cast to size_t");
  }

  v17 = mat->dims;
  v18 = mat->step.p;
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = 8 * v18[v17 - 1];
  }

  v20 = CGImageCreate(cols, rows, 8uLL, v19, *v18, v13, 0, v14, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v14);
  CGColorSpaceRelease(v13);

  return v20;
}

@end