@interface THSectionRep
- (void)drawInLayerContext:(CGContext *)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
@end

@implementation THSectionRep

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  if (!CGRectIsEmpty(a3))
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THSectionRep setNeedsDisplayInRect:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionRep.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:27 description:{@"this method should never be called, and section reps should never get a bitmap allocated"}];
  }
}

- (void)drawInLayerContext:(CGContext *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THSectionRep drawInLayerContext:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSectionRep.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:37 description:{@"this method should never be called, and section reps should never get a bitmap allocated"}];
}

@end