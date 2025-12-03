@interface ARKitRunner
- (_TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner)init;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation ARKitRunner

- (void)session:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  selfCopy = self;
  specialized ARKitRunner.session(_:didChange:)(state);
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  specialized ARKitRunner.session(_:didUpdate:)();
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  specialized ARKitRunner.session(_:didFailWithError:)(errorCopy);
}

- (_TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner)init
{
  v3 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  v5 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARKitRunner();
  return [(ARKitRunner *)&v8 init];
}

@end