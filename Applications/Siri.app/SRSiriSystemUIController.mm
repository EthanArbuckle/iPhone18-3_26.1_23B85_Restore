@interface SRSiriSystemUIController
- (SRSiriSystemUIController)init;
- (SRSiriSystemUIController)initWithDelegate:(id)delegate systemUIDevice:(BOOL)device systemApertureSupportedDevice:(BOOL)supportedDevice;
- (id)transformAddViews:(id)views mode:(unint64_t)mode idiom:(int64_t)idiom;
- (void)collapseSystemUI;
- (void)dealloc;
- (void)orientationChangedTo:(int64_t)to;
- (void)tearDown;
- (void)updateSystemUIForAddViews:(id)views viewMode:(int64_t)mode lockState:(unint64_t)state isInAmbient:(BOOL)ambient;
@end

@implementation SRSiriSystemUIController

- (SRSiriSystemUIController)initWithDelegate:(id)delegate systemUIDevice:(BOOL)device systemApertureSupportedDevice:(BOOL)supportedDevice
{
  swift_unknownObjectRetain();
  v8 = sub_10000512C(delegate, device, supportedDevice);
  swift_unknownObjectRelease();
  return v8;
}

- (void)updateSystemUIForAddViews:(id)views viewMode:(int64_t)mode lockState:(unint64_t)state isInAmbient:(BOOL)ambient
{
  ambientCopy = ambient;
  viewsCopy = views;
  selfCopy = self;
  sub_10000D260(viewsCopy, mode, state, ambientCopy);
}

- (void)dealloc
{
  selfCopy = self;
  sub_1000A0CB4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for SiriSystemUIController();
  [(SRSiriSystemUIController *)&v3 dealloc];
}

- (id)transformAddViews:(id)views mode:(unint64_t)mode idiom:(int64_t)idiom
{
  viewsCopy = views;
  selfCopy = self;
  v10 = sub_10009F698(viewsCopy, mode, idiom);

  return v10;
}

- (void)tearDown
{
  selfCopy = self;
  sub_1000A0CB4();
}

- (void)orientationChangedTo:(int64_t)to
{
  v4 = sub_1000A37AC(to);
  selfCopy = self;
  if (v4 && (*(&selfCopy->super.isa + OBJC_IVAR___SRSiriSystemUIController_currentActivitySupportsLandscape) & 1) == 0)
  {
    v6 = selfCopy;
    sub_1000A0EF4();
    selfCopy = v6;
  }
}

- (void)collapseSystemUI
{
  selfCopy = self;
  sub_1000A0EF4();
}

- (SRSiriSystemUIController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end