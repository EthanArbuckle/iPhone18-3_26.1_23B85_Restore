@interface CRLAnimatedGIFLayer
+ (id)defaultActionForKey:(id)a3;
- (CRLAnimatedGIFController)controller;
- (void)dealloc;
- (void)display;
- (void)setController:(id)a3;
@end

@implementation CRLAnimatedGIFLayer

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->mController);

  if (WeakRetained)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101369BFC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369C10(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101369CCC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLAnimatedGIFLayer dealloc]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFLayer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:23 isFatal:0 description:"expected nil value for '%{public}s'", "mController"];
  }

  v9.receiver = self;
  v9.super_class = CRLAnimatedGIFLayer;
  [(CRLAnimatedGIFLayer *)&v9 dealloc];
}

- (void)setController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->mController);
    [v5 removeLayer:self];

    v6 = objc_storeWeak(&self->mController, obj);
    [obj addLayer:self];

    [(CRLAnimatedGIFLayer *)self setNeedsDisplay];
  }
}

- (CRLAnimatedGIFController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->mController);

  return WeakRetained;
}

- (void)display
{
  WeakRetained = objc_loadWeakRetained(&self->mController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mController);
    -[CRLAnimatedGIFLayer setContents:](self, "setContents:", [v4 imageForCurrentTime]);
  }

  else
  {
    [(CRLAnimatedGIFLayer *)self setContents:0];
    v4 = +[CRLColor blackColor];
    -[CRLAnimatedGIFLayer setBackgroundColor:](self, "setBackgroundColor:", [v4 CGColor]);
  }
}

+ (id)defaultActionForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = +[NSNull null];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___CRLAnimatedGIFLayer;
    v5 = objc_msgSendSuper2(&v8, "defaultActionForKey:", v4);
  }

  v6 = v5;

  return v6;
}

@end