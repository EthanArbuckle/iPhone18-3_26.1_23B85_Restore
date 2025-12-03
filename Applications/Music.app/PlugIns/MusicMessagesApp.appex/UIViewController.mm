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
  sub_100154650(controller, &qword_100633CA8, &qword_100638148);
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
    isa = sub_1004D80FC().super.isa;
    sub_100010584(v3, v5);
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
    dataCopy = sub_1004D810C();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  if (qword_100633CB8 != -1)
  {
    swift_once();
  }

  v10 = qword_100638158;
  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_100010530(dataCopy, v8);
    isa = sub_1004D80FC().super.isa;
    sub_100010584(dataCopy, v8);
  }

  objc_setAssociatedObject(self, v10, isa, 3);

  sub_100010584(dataCopy, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  sub_100004CB8(&unk_100637DF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511DA0;
  selfCopy = self;
  playActivityFeatureName = [(UIViewController *)selfCopy playActivityFeatureName];
  v7 = sub_1004DD43C();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = sub_1004DD85C().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  selfCopy = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = sub_1004DD85C().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  selfCopy = self;
  completePlayActivityFeatureNames = [(UIViewController *)selfCopy completePlayActivityFeatureNames];
  sub_1004DD87C();

  sub_100004CB8(&unk_1006372E0);
  sub_10015472C();
  sub_100030C58();
  sub_1004DD80C();

  v4 = sub_1004DD3FC();

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