@interface CRLCanvasEnterExitPlatformObject
+ (id)platformObjectWithGesture:(id)gesture;
- (CRLCanvasEnterExitPlatformObject)initWithGesture:(id)gesture;
@end

@implementation CRLCanvasEnterExitPlatformObject

+ (id)platformObjectWithGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [[CRLCanvasEnterExitPlatformObject alloc] initWithGesture:gestureCopy];

  return v4;
}

- (CRLCanvasEnterExitPlatformObject)initWithGesture:(id)gesture
{
  gestureCopy = gesture;
  v9.receiver = self;
  v9.super_class = CRLCanvasEnterExitPlatformObject;
  v6 = [(CRLCanvasEnterExitPlatformObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UIGestureRecognizer, gesture);
  }

  return v7;
}

@end