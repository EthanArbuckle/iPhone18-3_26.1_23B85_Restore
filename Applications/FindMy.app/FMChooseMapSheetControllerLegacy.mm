@interface FMChooseMapSheetControllerLegacy
- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithCoder:(id)coder;
- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMChooseMapSheetControllerLegacy

- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_blurredBackground;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for FMChooseMapSheetControllerLegacy.FMBlurredBackgroundView()) init];
  v5 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_closeButton;
  *(&self->super.super.super.isa + v5) = [objc_opt_self() buttonWithType:7];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001ABFCC(disappear);
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

- (_TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 1)
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

@end