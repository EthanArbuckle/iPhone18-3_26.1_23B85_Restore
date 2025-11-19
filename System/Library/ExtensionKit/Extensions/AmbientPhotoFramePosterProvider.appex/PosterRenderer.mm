@interface PosterRenderer
- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation PosterRenderer

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000039D4(v4);
}

- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_100003EAC(v5);
}

@end