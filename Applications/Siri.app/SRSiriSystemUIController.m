@interface SRSiriSystemUIController
- (SRSiriSystemUIController)init;
- (SRSiriSystemUIController)initWithDelegate:(id)a3 systemUIDevice:(BOOL)a4 systemApertureSupportedDevice:(BOOL)a5;
- (id)transformAddViews:(id)a3 mode:(unint64_t)a4 idiom:(int64_t)a5;
- (void)collapseSystemUI;
- (void)dealloc;
- (void)orientationChangedTo:(int64_t)a3;
- (void)tearDown;
- (void)updateSystemUIForAddViews:(id)a3 viewMode:(int64_t)a4 lockState:(unint64_t)a5 isInAmbient:(BOOL)a6;
@end

@implementation SRSiriSystemUIController

- (SRSiriSystemUIController)initWithDelegate:(id)a3 systemUIDevice:(BOOL)a4 systemApertureSupportedDevice:(BOOL)a5
{
  swift_unknownObjectRetain();
  v8 = sub_10000512C(a3, a4, a5);
  swift_unknownObjectRelease();
  return v8;
}

- (void)updateSystemUIForAddViews:(id)a3 viewMode:(int64_t)a4 lockState:(unint64_t)a5 isInAmbient:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = self;
  sub_10000D260(v10, a4, a5, v6);
}

- (void)dealloc
{
  v2 = self;
  sub_1000A0CB4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for SiriSystemUIController();
  [(SRSiriSystemUIController *)&v3 dealloc];
}

- (id)transformAddViews:(id)a3 mode:(unint64_t)a4 idiom:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_10009F698(v8, a4, a5);

  return v10;
}

- (void)tearDown
{
  v2 = self;
  sub_1000A0CB4();
}

- (void)orientationChangedTo:(int64_t)a3
{
  v4 = sub_1000A37AC(a3);
  v5 = self;
  if (v4 && (*(&v5->super.isa + OBJC_IVAR___SRSiriSystemUIController_currentActivitySupportsLandscape) & 1) == 0)
  {
    v6 = v5;
    sub_1000A0EF4();
    v5 = v6;
  }
}

- (void)collapseSystemUI
{
  v2 = self;
  sub_1000A0EF4();
}

- (SRSiriSystemUIController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end