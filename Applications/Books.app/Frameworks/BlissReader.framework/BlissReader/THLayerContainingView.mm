@interface THLayerContainingView
- (void)addSublayer:(id)a3;
- (void)removeSublayer:(id)a3;
@end

@implementation THLayerContainingView

- (void)addSublayer:(id)a3
{
  TSUScreenScale();
  [a3 setContentsScale:?];
  v5 = [(THLayerContainingView *)self layer];

  [v5 addSublayer:a3];
}

- (void)removeSublayer:(id)a3
{
  v5 = [a3 superlayer];
  if (v5 == [(THLayerContainingView *)self layer])
  {

    [a3 removeFromSuperlayer];
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THLayerContainingView removeSublayer:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Utility/THLayerContainingView.m"];

    [v6 handleFailureInFunction:v7 file:v8 lineNumber:33 description:@"this isn't one of our sublayers"];
  }
}

@end