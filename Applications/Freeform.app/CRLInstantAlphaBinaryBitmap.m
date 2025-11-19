@interface CRLInstantAlphaBinaryBitmap
- (CRLInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4;
- (CRLInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4 rowBytes:(int64_t)a5;
- (id)medianBitmap;
- (void)dealloc;
- (void)unionWithBitmap:(id)a3;
@end

@implementation CRLInstantAlphaBinaryBitmap

- (CRLInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4 rowBytes:(int64_t)a5
{
  if (a3 < 1 || a4 < 1 || (a3 >> 3) > a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132DFB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132DFCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132E07C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLInstantAlphaBinaryBitmap initWithWidth:height:rowBytes:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:23 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "width > 0 && height > 0 && rowBytes >= width / 8"];
  }

  v16.receiver = self;
  v16.super_class = CRLInstantAlphaBinaryBitmap;
  v12 = [(CRLInstantAlphaBinaryBitmap *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->mWidth = a3;
    v12->mHeight = a4;
    v12->mRowBytes = a5;
    v14 = malloc_type_calloc(a4, a5, 0x100004077774924uLL);
    v13->mData = v14;
    if (!v14)
    {

      return 0;
    }
  }

  return v13;
}

- (CRLInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4
{
  v7 = sub_1000CDCD4(vcvtpd_u64_f64(vcvtd_n_f64_s64(a3, 3uLL)));

  return [(CRLInstantAlphaBinaryBitmap *)self initWithWidth:a3 height:a4 rowBytes:v7];
}

- (void)dealloc
{
  mData = self->mData;
  if (mData)
  {
    free(mData);
  }

  v4.receiver = self;
  v4.super_class = CRLInstantAlphaBinaryBitmap;
  [(CRLInstantAlphaBinaryBitmap *)&v4 dealloc];
}

- (void)unionWithBitmap:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mWidth == v4[1] && (mHeight = self->mHeight, mHeight == v4[2]))
  {
    if (mHeight >= 1)
    {
      v7 = 0;
      v8 = v4[4];
      mRowBytes = self->mRowBytes;
      mData = self->mData;
      do
      {
        if (mRowBytes >= 1)
        {
          for (i = 0; i < mRowBytes; ++i)
          {
            mData[i] |= *(v8 + i);
            mRowBytes = self->mRowBytes;
          }

          mHeight = self->mHeight;
        }

        ++v7;
        mData += mRowBytes;
        v8 += v4[3];
      }

      while (mHeight > v7);
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132E0A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132E0B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132E158();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLInstantAlphaBinaryBitmap unionWithBitmap:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:53 isFatal:0 description:"unionWithBitmap: sizes do not match"];
  }
}

- (id)medianBitmap
{
  v3 = [[CRLInstantAlphaBinaryBitmap alloc] initWithWidth:self->mWidth height:self->mHeight rowBytes:self->mRowBytes];
  mHeight = self->mHeight;
  if (mHeight >= 1)
  {
    v5 = 0;
    mWidth = self->mWidth;
    do
    {
      if (mWidth <= 0)
      {
        v35 = v5 + 1;
      }

      else
      {
        v7 = 0;
        v37 = v5 + 1;
        do
        {
          v8 = self;
          v9 = v8;
          if (self->mWidth <= v7 || self->mHeight <= v5)
          {
            v38 = 0;
          }

          else
          {
            v38 = (self->mData[self->mRowBytes * v5 + (v7 >> 3)] << (v7 & 7)) & 0x80;
          }

          v10 = v9;
          v11 = v10;
          if (v7 && self->mWidth >= v7 && self->mHeight > v5)
          {
            v12 = (self->mData[self->mRowBytes * v5 + ((v7 - 1) >> 3)] << ((v7 - 1) & 7)) & 0x80;
          }

          else
          {
            v12 = 0;
          }

          v13 = v7 + 1;
          v14 = v11;
          v15 = v14;
          if (self->mWidth <= v7 + 1 || self->mHeight <= v5)
          {
            v16 = 0;
          }

          else
          {
            v16 = (self->mData[self->mRowBytes * v5 + (v13 >> 3)] << ((v7 + 1) & 7)) & 0x80;
          }

          v17 = v15;
          v18 = v17;
          v19 = 0;
          if (v5 && self->mWidth > v7)
          {
            if (self->mHeight >= v5)
            {
              v19 = (self->mData[self->mRowBytes * (v5 - 1) + (v7 >> 3)] << (v7 & 7)) & 0x80;
            }

            else
            {
              v19 = 0;
            }
          }

          v20 = v18;
          if (self->mWidth <= v7 || self->mHeight <= v37)
          {
            v21 = 0;
          }

          else
          {
            v21 = (self->mData[self->mRowBytes * v37 + (v7 >> 3)] << (v7 & 7)) & 0x80;
          }

          v22 = v3;
          if (v3->mWidth <= v7 || v3->mHeight <= v5)
          {
            v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132E180();
            }

            v27 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v31 = v3->mWidth;
              v32 = v3->mHeight;
              *buf = 67110914;
              v40 = v26;
              v41 = 2082;
              v42 = "void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)";
              v43 = 2082;
              v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h";
              v45 = 1024;
              v46 = 67;
              v47 = 2048;
              v48 = v7;
              v49 = 2048;
              v50 = v5;
              v51 = 2048;
              v52 = v31;
              v53 = 2048;
              v54 = v32;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
              if (qword_101AD5A10 != -1)
              {
                sub_10132E1A8();
              }
            }

            v28 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v33 = v28;
              v34 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v40 = v26;
              v41 = 2114;
              v42 = v34;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v29 = [NSString stringWithUTF8String:"void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)"];
            v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h"];
            [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:67 isFatal:0 description:"bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", v7, v5, v3->mWidth, v3->mHeight];
          }

          else
          {
            v23 = &v3->mData[v3->mRowBytes * v5];
            v24 = v23[v7 >> 3];
            if (v21 | (v12 + v38 + v16 + v19))
            {
              v25 = v24 | (0x80u >> (v7 & 7));
            }

            else
            {
              v25 = v24 & (-129 >> (v7 & 7));
            }

            v23[v7 >> 3] = v25;
          }

          mWidth = self->mWidth;
          ++v7;
        }

        while (mWidth > v13);
        mHeight = self->mHeight;
        v35 = v5 + 1;
      }

      v5 = v35;
    }

    while (mHeight > v35);
  }

  return v3;
}

@end