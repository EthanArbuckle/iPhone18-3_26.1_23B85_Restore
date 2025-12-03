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
  specialized UIViewController.playActivityFeatureNameSourceViewController.setter(controller, &one-time initialization token for playActivityFeatureNameSourceViewController, &static AssociatedKeys.playActivityFeatureNameSourceViewController);
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
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v3, v5);
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
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  if (one-time initialization token for playActivityForwardedRecommendationData != -1)
  {
    swift_once();
  }

  v10 = static AssociatedKeys.playActivityForwardedRecommendationData;
  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    outlined copy of Data._Representation(dataCopy, v8);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(dataCopy, v8);
  }

  objc_setAssociatedObject(self, v10, isa, 3);

  outlined consume of Data?(dataCopy, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
  selfCopy = self;
  playActivityFeatureName = [(UIViewController *)selfCopy playActivityFeatureName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  selfCopy = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  selfCopy = self;
  completePlayActivityFeatureNames = [(UIViewController *)selfCopy completePlayActivityFeatureNames];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type String and conformance String();
  Sequence<>.joined(separator:)();

  v4 = String._bridgeToObjectiveC()();

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