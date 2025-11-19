@interface UIViewController
- (BOOL)canPresentViewControllers;
- (NSArray)completePlayActivityFeatureNames;
- (NSData)playActivityForwardedRecommendationData;
- (NSString)combinedPlayActivityFeatureName;
- (UIViewController)playActivityFeatureNameSourceViewController;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3;
- (void)setPlayActivityFeatureNameSourceViewController:(id)a3;
- (void)setPlayActivityForwardedRecommendationData:(id)a3;
@end

@implementation UIViewController

- (UIViewController)playActivityFeatureNameSourceViewController
{
  v2 = self;
  v3 = UIViewController.playActivityFeatureNameSourceViewController.getter();

  return v3;
}

- (void)setPlayActivityFeatureNameSourceViewController:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1001328A8(a3, &qword_1005FFF58, &qword_1006043F8);
}

- (NSData)playActivityForwardedRecommendationData
{
  v2 = self;
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

- (void)setPlayActivityForwardedRecommendationData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_1004B6B74();
    v8 = v7;
  }

  else
  {
    v9 = self;
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
    sub_10003E428(v3, v8);
    isa = sub_1004B6B64().super.isa;
    sub_100004D7C(v3, v8);
  }

  objc_setAssociatedObject(self, v10, isa, 3);

  sub_100004D7C(v3, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3
{
  sub_100003ABC(&unk_1006040A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  v5 = self;
  v6 = [(UIViewController *)v5 playActivityFeatureName];
  v7 = sub_1004BBE64();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = sub_1004BC284().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  v2 = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = sub_1004BC284().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  v2 = self;
  v3 = [(UIViewController *)v2 completePlayActivityFeatureNames];
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
  v2 = [(UIViewController *)self popoverPresentationController];
  v3 = v2;
  if (v2)
  {
  }

  return v3 == 0;
}

@end