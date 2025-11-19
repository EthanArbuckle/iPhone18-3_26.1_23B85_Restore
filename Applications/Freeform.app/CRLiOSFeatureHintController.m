@interface CRLiOSFeatureHintController
- (_TtC8Freeform27CRLiOSFeatureHintController)initWithCoder:(id)a3;
- (_TtC8Freeform27CRLiOSFeatureHintController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)updatePreferredContentSize;
- (void)viewDidLoad;
@end

@implementation CRLiOSFeatureHintController

- (_TtC8Freeform27CRLiOSFeatureHintController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_kVerticalMargin) = 0x4028000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_kLeadingMargin) = 0x4030000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_kTrailingMargin) = 0x4028000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_kTextToButtonSpacing) = 0x4028000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_kCloseButtonHitRegionWidth) = 0x4046000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_100BF1870();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100BF1A94();
}

- (void)updatePreferredContentSize
{
  v2 = self;
  sub_100BF1FF4();
}

- (_TtC8Freeform27CRLiOSFeatureHintController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end