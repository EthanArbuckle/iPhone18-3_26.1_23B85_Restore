@interface UIViewController
- (BOOL)canPresentViewControllers;
- (NSArray)completePlayActivityFeatureNames;
- (NSData)playActivityForwardedRecommendationData;
- (NSString)combinedPlayActivityFeatureName;
- (UIViewController)playActivityFeatureNameSourceViewController;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller;
- (void)setPlayActivityFeatureNameSourceViewController:(id)controller;
- (void)setPlayActivityForwardedRecommendationData:(id)data;
@end

@implementation UIViewController

- (UIViewController)playActivityFeatureNameSourceViewController
{
  selfCopy = self;
  v3 = UIViewController.playActivityFeatureNameSourceViewController.getter();

  return v3;
}

- (void)setPlayActivityFeatureNameSourceViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001328A8(controller, &qword_1005FFF58, &qword_1006043F8);
}

- (NSData)playActivityForwardedRecommendationData
{
  selfCopy = self;
  v3 = UIViewController.playActivityForwardedRecommendationData.getter();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = sub_1004B6B64().super.isa;
    sub_100004D7C(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (void)setPlayActivityForwardedRecommendationData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v6 = dataCopy;
    dataCopy = sub_1004B6B74();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  if (qword_1005FFF68 != -1)
  {
    swift_once();
  }

  v10 = qword_100604408;
  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_10003E428(dataCopy, v8);
    isa = sub_1004B6B64().super.isa;
    sub_100004D7C(dataCopy, v8);
  }

  objc_setAssociatedObject(self, v10, isa, 3);

  sub_100004D7C(dataCopy, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  sub_100003ABC(&unk_1006040A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  selfCopy = self;
  playActivityFeatureName = [(UIViewController *)selfCopy playActivityFeatureName];
  v7 = sub_1004BBE64();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = sub_1004BC284().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  selfCopy = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = sub_1004BC284().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  selfCopy = self;
  completePlayActivityFeatureNames = [(UIViewController *)selfCopy completePlayActivityFeatureNames];
  sub_1004BC2A4();

  sub_100003ABC(&unk_100603590);
  sub_100132984();
  sub_10000E7F4();
  sub_1004BC234();

  v4 = sub_1004BBE24();

  return v4;
}

- (BOOL)canPresentViewControllers
{
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  v3 = popoverPresentationController;
  if (popoverPresentationController)
  {
  }

  return v3 == 0;
}

@end