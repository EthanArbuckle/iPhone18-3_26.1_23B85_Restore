@interface CRLMutableImageFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setImageData:(id)data;
- (void)setScale:(double)scale;
- (void)setTechnique:(unint64_t)technique;
- (void)setTintColor:(id)color;
@end

@implementation CRLMutableImageFill

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLImageFill allocWithZone:zone];
  mImageData = self->super.mImageData;
  mTechnique = self->super.mTechnique;
  mTintColor = self->super.mTintColor;
  [(CRLImageFill *)self fillSize];
  mReferenceColor = self->super.mReferenceColor;

  return [(CRLImageFill *)v4 initWithImageData:mImageData technique:mTechnique tintColor:mTintColor size:mReferenceColor referenceColor:?];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  mTintColor = self->super.mTintColor;
  if (colorCopy | mTintColor)
  {
    v11 = colorCopy;
    v6 = [(CRLColor *)mTintColor isEqual:colorCopy];
    colorCopy = v11;
    if ((v6 & 1) == 0)
    {
      [(CRLImageFill *)self p_clearTintedImageCache];
      v7 = [v11 copy];
      v8 = self->super.mTintColor;
      self->super.mTintColor = v7;

      mReferenceColor = self->super.mReferenceColor;
      self->super.mReferenceColor = 0;

      mCachedReferenceColor = self->super.mCachedReferenceColor;
      self->super.mCachedReferenceColor = 0;

      [(CRLImageFill *)self i_updateStoredReferenceColorIfNeeded];
      colorCopy = v11;
    }
  }
}

- (void)setTechnique:(unint64_t)technique
{
  techniqueCopy = technique;
  if (technique >= 5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321FD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321FEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101322078();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMutableImageFill setTechnique:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1128 isFatal:0 description:"Invalid image fill technique: %zu Defaulting to natural size.", techniqueCopy];

    techniqueCopy = 0;
  }

  self->super.mTechnique = techniqueCopy;
}

- (void)setImageData:(id)data
{
  dataCopy = data;
  if (self->super.mImageData != dataCopy)
  {
    v10 = dataCopy;
    [(CRLImageFill *)self p_clearTintedImageCache];
    objc_storeStrong(&self->super.mImageData, data);
    self->super.mFillSize = CGSizeZero;
    [(CRLImageFill *)self fillSize];
    self->super.mFillSize.width = v6;
    self->super.mFillSize.height = v7;
    mReferenceColor = self->super.mReferenceColor;
    self->super.mReferenceColor = 0;

    mCachedReferenceColor = self->super.mCachedReferenceColor;
    self->super.mCachedReferenceColor = 0;

    self->super.mShouldSkipFurtherAttemptsToCalculateReferenceColor = 0;
    [(CRLImageFill *)self i_updateStoredReferenceColorIfNeeded];
    dataCopy = v10;
  }
}

- (void)setScale:(double)scale
{
  [(CRLImageFill *)self p_imageDataNaturalSize];
  [(CRLMutableImageFill *)self setFillSize:sub_10011F340(v5, v6, scale)];
  [(CRLImageFill *)self scale];
  if (v7 != scale && vabdd_f64(scale, v7) >= 0.00999999978)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013220A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013220B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101322144();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMutableImageFill setScale:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1164 isFatal:0 description:"Scale math changed the scale"];
  }
}

@end