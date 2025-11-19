@interface CRLImageFillCachedImage
+ (id)cachedImageWithHandler:(id)a3;
- (CRLImage)image;
- (CRLImageFillCachedImage)initWithHandler:(id)a3;
- (void)flush;
@end

@implementation CRLImageFillCachedImage

+ (id)cachedImageWithHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandler:v4];

  return v5;
}

- (CRLImageFillCachedImage)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLImageFillCachedImage;
  v5 = [(CRLImageFillCachedImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mHandler = v5->mHandler;
    v5->mHandler = v6;

    v5->mLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v5;
}

- (CRLImage)image
{
  os_unfair_lock_lock(&self->mLock);
  if (!self->mCachedImage)
  {
    v3 = (*(self->mHandler + 2))();
    mCachedImage = self->mCachedImage;
    self->mCachedImage = v3;

    if (!self->mCachedImage)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101320F80();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101320F94();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101321030();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLImageFillCachedImage image]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:95 isFatal:0 description:"invalid nil value for '%{public}s'", "mCachedImage"];
    }
  }

  os_unfair_lock_unlock(&self->mLock);
  v8 = self->mCachedImage;

  return v8;
}

- (void)flush
{
  os_unfair_lock_lock(&self->mLock);
  mCachedImage = self->mCachedImage;
  self->mCachedImage = 0;

  os_unfair_lock_unlock(&self->mLock);
}

@end