@interface FMChooseMapSheetControllerLegacy
- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithCoder:(id)a3;
- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMChooseMapSheetControllerLegacy

- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_blurredBackground;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for FMChooseMapSheetControllerLegacy.FMBlurredBackgroundView()) init];
  v5 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_closeButton;
  *(&self->super.super.super.isa + v5) = [objc_opt_self() buttonWithType:7];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001ABFCC(a3);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FMChooseMapSheetControllerLegacy *)&v3 viewDidLoad];
  sub_1001AC1F0();
  sub_1001AC410();
}

- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if ([a4 horizontalSizeClass] == 1)
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

@end