@interface THLayerContainingView
- (void)addSublayer:(id)sublayer;
- (void)removeSublayer:(id)sublayer;
@end

@implementation THLayerContainingView

- (void)addSublayer:(id)sublayer
{
  TSUScreenScale();
  [sublayer setContentsScale:?];
  layer = [(THLayerContainingView *)self layer];

  [layer addSublayer:sublayer];
}

- (void)removeSublayer:(id)sublayer
{
  superlayer = [sublayer superlayer];
  if (superlayer == [(THLayerContainingView *)self layer])
  {

    [sublayer removeFromSuperlayer];
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