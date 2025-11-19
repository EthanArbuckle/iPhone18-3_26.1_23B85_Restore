@interface PosterRenderer
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation PosterRenderer

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1000143C4();

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100016410(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100016734();
}

@end