@interface CRLInstantAlphaImage
- (CRLInstantAlphaImage)initWithWidth:(int64_t)a3 height:(int64_t)a4;
- (unsigned)averageColorAtXPosition:(int64_t)a3 yPosition:(int64_t)a4;
- (void)dealloc;
@end

@implementation CRLInstantAlphaImage

- (CRLInstantAlphaImage)initWithWidth:(int64_t)a3 height:(int64_t)a4
{
  if (a3 < 1 || a4 <= 0)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136891C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368930(v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013689EC();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v9, v7);
    }

    v10 = [NSString stringWithUTF8String:"[CRLInstantAlphaImage initWithWidth:height:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:15 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "width > 0 && height > 0"];
  }

  v16.receiver = self;
  v16.super_class = CRLInstantAlphaImage;
  v12 = [(CRLInstantAlphaImage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->mWidth = a3;
    v12->mHeight = a4;
    v14 = malloc_type_calloc(1uLL, 4 * a3 * a4, 0x100004052888210uLL);
    v13->mImageData = v14;
    if (!v14)
    {

      return 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  mImageData = self->mImageData;
  if (mImageData)
  {
    free(mImageData);
  }

  v4.receiver = self;
  v4.super_class = CRLInstantAlphaImage;
  [(CRLInstantAlphaImage *)&v4 dealloc];
}

- (unsigned)averageColorAtXPosition:(int64_t)a3 yPosition:(int64_t)a4
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  for (i = -1; i != 2; ++i)
  {
    v9 = (i + a4);
    v10 = -1;
    v32 = i;
    do
    {
      v11 = sub_1004C3240((a3 + v10), 0.0, (self->mWidth - 1));
      v12 = sub_1004C3240(v9, 0.0, (self->mHeight - 1));
      v13 = self;
      if (v11 < 0 || v12 < 0 || (v14 = self->mWidth, v14 <= v11) || self->mHeight <= v12)
      {
        v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        v34 = v13;
        if (qword_101AD5A10 != -1)
        {
          sub_101368A14();
        }

        v17 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          mWidth = self->mWidth;
          mHeight = self->mHeight;
          *buf = 67110914;
          v36 = v16;
          v37 = 2082;
          v38 = "CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)";
          v39 = 2082;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h";
          v41 = 1024;
          v42 = 36;
          v43 = 2048;
          v44 = v11;
          v45 = 2048;
          v46 = v12;
          v47 = 2048;
          v48 = mWidth;
          v49 = 2048;
          v50 = mHeight;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
          if (qword_101AD5A10 != -1)
          {
            sub_101368A3C();
          }
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v25 = v18;
          v26 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v36 = v16;
          v37 = 2114;
          v38 = v26;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v19 = [NSString stringWithUTF8String:"CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h"];
        [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:36 isFatal:0 description:"bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", v11, v12, self->mWidth, self->mHeight];

        v15 = 0;
        i = v32;
        v13 = v34;
      }

      else
      {
        v15 = self->mImageData[v14 * v12 + v11];
      }

      if (v10 | i)
      {
        v21 = 3;
      }

      else
      {
        v21 = 5;
      }

      if (v10)
      {
        v22 = i == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v21 = 1;
      }

      v5 += HIBYTE(v15) * v21;
      v6 += BYTE2(v15) * v21;
      v7 += BYTE1(v15) * v21;
      ++v10;
    }

    while (v10 != 2);
  }

  v27 = (v5 / 21) & ~((v5 / 21) >> 31);
  if (v27 >= 255)
  {
    v27 = 255;
  }

  v28 = (v6 / 21) & ~((v6 / 21) >> 31);
  if (v28 >= 255)
  {
    v28 = 255;
  }

  v29 = (v7 / 21) & ~((v7 / 21) >> 31);
  if (v29 >= 255)
  {
    v29 = 255;
  }

  return (v27 << 24) | (v28 << 8) | (v29 << 16) | 0xFF;
}

@end