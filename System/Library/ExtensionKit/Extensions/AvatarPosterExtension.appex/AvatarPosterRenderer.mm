@interface AvatarPosterRenderer
- (void)dealloc;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion;
@end

@implementation AvatarPosterRenderer

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100004AAC(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100005690(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000091B4();
}

- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100009440(invalidateCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession);
  *(&self->super.isa + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession) = 0;
  selfCopy = self;

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AvatarPosterRenderer *)&v6 dealloc];
}

@end