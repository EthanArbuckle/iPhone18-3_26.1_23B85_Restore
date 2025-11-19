@interface PosterRenderer
- (void)renderer:(id)a3 didReceiveEvent:(id)a4;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation PosterRenderer

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005C94(v4);
}

- (void)renderer:(id)a3 didReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000061F4(v8, v7);
}

@end