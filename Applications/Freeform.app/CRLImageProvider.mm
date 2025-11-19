@interface CRLImageProvider
+ (CRLImageProvider)allocWithZone:(_NSZone *)a3;
- (BOOL)isValid;
- (CGSize)naturalSize;
- (CRLImageProvider)initWithImageData:(id)a3;
- (CRLImageProvider)retain;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)i_flushIfNoOneUsing;
- (void)release;
@end

@implementation CRLImageProvider

+ (CRLImageProvider)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CRLImageProvider;
  result = objc_msgSendSuper2(&v4, "allocWithZone:", a3);
  if (result)
  {
    atomic_store(1u, &result->mRetainCount);
  }

  return result;
}

- (CRLImageProvider)initWithImageData:(id)a3
{
  if (!a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136C480();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C494();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLImageProvider initWithImageData:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProvider.m"] lineNumber:35 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];
  }

  v7.receiver = self;
  v7.super_class = CRLImageProvider;
  v5 = [(CRLImageProvider *)&v7 init];
  if (v5)
  {
    v5->mImageData = a3;
    [(CRLImageProvider *)v5 i_commonInit];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRLImageProvider;
  [(CRLImageProvider *)&v3 dealloc];
}

- (CGSize)naturalSize
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10136C578();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10136C58C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLImageProvider naturalSize]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProvider.m"] lineNumber:60 isFatal:0 description:"subclasses of CRLImageProvider must implement -naturalSize"];
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)isValid
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10136C648();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10136C65C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLImageProvider isValid]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProvider.m"] lineNumber:74 isFatal:0 description:"subclasses of CRLImageProvider must implement -isValid"];
  return 1;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_10136C718();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10136C72C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLImageProvider drawImageInContext:rect:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProvider.m"] lineNumber:84 isFatal:0 description:"subclasses of CRLImageProvider must implement -drawImageInContext:rect:"];
}

- (CRLImageProvider)retain
{
  atomic_fetch_add(&self->mRetainCount, 1u);
  v3.receiver = self;
  v3.super_class = CRLImageProvider;
  return [(CRLImageProvider *)&v3 retain];
}

- (void)release
{
  atomic_fetch_add(&self->mRetainCount, 0xFFFFFFFF);
  v2.receiver = self;
  v2.super_class = CRLImageProvider;
  [(CRLImageProvider *)&v2 release];
}

- (void)i_flushIfNoOneUsing
{
  v2 = atomic_load(&self->mRetainCount);
  if (v2 == 1)
  {
    [(CRLImageProvider *)self flush];
  }
}

@end