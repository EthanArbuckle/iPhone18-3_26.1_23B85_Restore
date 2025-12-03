@interface DrawingController
- (void)dealloc;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation DrawingController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DrawingController();
  [(DrawingController *)&v6 dealloc];
}

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000EF6C(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10000F824(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  swift_getKeyPath();
  swift_getKeyPath();
  invalidateCopy = invalidate;
  selfCopy = self;
  v7 = sub_100012EA4();
  sub_1000100E4(invalidateCopy, sub_100012304, sub_1000037AC, sub_10001048C);

  v7(&v8, 0);
}

@end