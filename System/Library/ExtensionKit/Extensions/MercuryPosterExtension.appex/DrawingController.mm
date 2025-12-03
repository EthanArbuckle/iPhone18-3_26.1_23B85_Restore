@interface DrawingController
- (_TtC22MercuryPosterExtension17DrawingController)init;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation DrawingController

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100001E9C(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000350E4(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000367A8(invalidateCopy);
}

- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  rendererCopy = renderer;
  selfCopy = self;
  sub_100036A30(rendererCopy, x, y);
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