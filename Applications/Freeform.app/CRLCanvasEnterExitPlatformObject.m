@interface CRLCanvasEnterExitPlatformObject
+ (id)platformObjectWithGesture:(id)a3;
- (CRLCanvasEnterExitPlatformObject)initWithGesture:(id)a3;
@end

@implementation CRLCanvasEnterExitPlatformObject

+ (id)platformObjectWithGesture:(id)a3
{
  v3 = a3;
  v4 = [[CRLCanvasEnterExitPlatformObject alloc] initWithGesture:v3];

  return v4;
}

- (CRLCanvasEnterExitPlatformObject)initWithGesture:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLCanvasEnterExitPlatformObject;
  v6 = [(CRLCanvasEnterExitPlatformObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UIGestureRecognizer, a3);
  }

  return v7;
}

@end