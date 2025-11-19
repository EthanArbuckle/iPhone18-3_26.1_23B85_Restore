@interface DrawingController
- (_TtC22MercuryPosterExtension17DrawingController)init;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation DrawingController

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100001E9C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1000350E4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000367A8(v4);
}

- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_100036A30(v7, x, y);
}

- (_TtC22MercuryPosterExtension17DrawingController)init
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_rendererCoordinators;
  *(&self->super.isa + v3) = sub_1000A1A78(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_transitionSessions;
  *(&self->super.isa + v4) = sub_1000A1B70(_swiftEmptyArrayStorage);
  v6.receiver = self;
  v6.super_class = type metadata accessor for DrawingController();
  return [(DrawingController *)&v6 init];
}

@end