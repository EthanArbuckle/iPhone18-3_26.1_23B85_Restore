@interface UIViewController
- (BOOL)canPresentViewControllers;
- (NSArray)completePlayActivityFeatureNames;
- (NSData)playActivityForwardedRecommendationData;
- (NSString)combinedPlayActivityFeatureName;
- (UIColor)viewBackgroundColor;
- (UIViewController)playActivityFeatureNameSourceViewController;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3;
- (void)setPlayActivityFeatureNameSourceViewController:(id)a3;
- (void)setPlayActivityForwardedRecommendationData:(id)a3;
- (void)setViewBackgroundColor:(id)a3;
@end

@implementation UIViewController

- (UIColor)viewBackgroundColor
{
  v2 = self;
  v3 = sub_1007F0B30();

  return v3;
}

- (void)setViewBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007F0E64(v4);
}

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
  sub_10099C698(a3, &qword_1011A6968, &qword_1011AAE08);
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
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100029CA4(v3, v5);
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
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  if (qword_1011A6978 != -1)
  {
    swift_once();
  }

  v10 = qword_1011AAE18;
  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_10002BC44(v3, v8);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100029CA4(v3, v8);
  }

  objc_setAssociatedObject(self, v10, isa, 3);

  sub_100029CA4(v3, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3
{
  sub_10010FC20(&unk_1011AAAB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  v5 = self;
  v6 = [(UIViewController *)v5 playActivityFeatureName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  v2 = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  v2 = self;
  v3 = [(UIViewController *)v2 completePlayActivityFeatureNames];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10010FC20(&unk_1011A9FA0);
  sub_10099C774();
  sub_10000988C();
  Sequence<>.joined(separator:)();

  v4 = String._bridgeToObjectiveC()();

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