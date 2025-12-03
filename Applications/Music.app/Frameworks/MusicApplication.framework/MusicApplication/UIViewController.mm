@interface UIViewController
- (BOOL)canPresentViewControllers;
- (NSArray)completePlayActivityFeatureNames;
- (NSData)playActivityForwardedRecommendationData;
- (NSString)combinedPlayActivityFeatureName;
- (UIColor)viewBackgroundColor;
- (UIViewController)playActivityFeatureNameSourceViewController;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller;
- (void)_music_setParentTraitEnvironmentOverride:(id)override;
- (void)indexKeyCommandHandler:(id)handler;
- (void)setPlayActivityFeatureNameSourceViewController:(id)controller;
- (void)setPlayActivityForwardedRecommendationData:(id)data;
- (void)setViewBackgroundColor:(id)color;
@end

@implementation UIViewController

- (void)_music_setParentTraitEnvironmentOverride:(id)override
{
  overrideCopy = override;
  if (_music_setParentTraitEnvironmentOverride__onceToken != -1)
  {
    [UIViewController(MusicParentTraitEnvironmentOverride) _music_setParentTraitEnvironmentOverride:];
  }

  objc_initWeak(&location, overrideCopy);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __98__UIViewController_MusicParentTraitEnvironmentOverride___music_setParentTraitEnvironmentOverride___block_invoke_3;
  v6[3] = &unk_CEEFC8;
  objc_copyWeak(&v7, &location);
  v5 = objc_retainBlock(v6);
  objc_setAssociatedObject(self, "_music_parentTraitEnvironmentOverride", v5, &dword_0 + 3);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __98__UIViewController_MusicParentTraitEnvironmentOverride___music_setParentTraitEnvironmentOverride___block_invoke(id a1)
{
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, "_parentTraitEnvironment");
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __98__UIViewController_MusicParentTraitEnvironmentOverride___music_setParentTraitEnvironmentOverride___block_invoke_2;
  v7[3] = &__block_descriptor_48_e26__16__0__UIViewController_8l;
  v7[4] = method_getImplementation(InstanceMethod);
  v7[5] = "_parentTraitEnvironment";
  v3 = objc_retainBlock(v7);
  v4 = imp_implementationWithBlock(v3);

  v5 = objc_opt_class();
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  class_replaceMethod(v5, "_parentTraitEnvironment", v4, TypeEncoding);
}

id __98__UIViewController_MusicParentTraitEnvironmentOverride___music_setParentTraitEnvironmentOverride___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_getAssociatedObject(v3, "_music_parentTraitEnvironmentOverride");
  v5 = v4;
  if (!v4 || ((*(v4 + 16))(v4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = (*(a1 + 32))(v3, *(a1 + 40));
  }

  return v6;
}

id __98__UIViewController_MusicParentTraitEnvironmentOverride___music_setParentTraitEnvironmentOverride___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

- (UIColor)viewBackgroundColor
{
  selfCopy = self;
  v3 = sub_B9644();

  return v3;
}

- (void)setViewBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_B9978(colorCopy);
}

- (void)indexKeyCommandHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  sub_381000(handlerCopy);
}

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
  sub_61C994(controller, &qword_E0CDA8, &qword_E11248);
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
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v5);
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
    dataCopy = sub_AB3260();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  if (qword_E0CDB8 != -1)
  {
    swift_once();
  }

  v10 = qword_E11258;
  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_90090(dataCopy, v8);
    isa = sub_AB3250().super.isa;
    sub_466A4(dataCopy, v8);
  }

  objc_setAssociatedObject(self, v10, isa, &dword_0 + 3);

  sub_466A4(dataCopy, v8);
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  selfCopy = self;
  playActivityFeatureName = [(UIViewController *)selfCopy playActivityFeatureName];
  v7 = sub_AB92A0();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  v10.super.isa = sub_AB9740().super.isa;

  return v10.super.isa;
}

- (NSArray)completePlayActivityFeatureNames
{
  selfCopy = self;
  UIViewController.completePlayActivityFeatureNames.getter();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (NSString)combinedPlayActivityFeatureName
{
  selfCopy = self;
  completePlayActivityFeatureNames = [(UIViewController *)selfCopy completePlayActivityFeatureNames];
  sub_AB9760();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  sub_61CA70();
  sub_4FD6CC();
  sub_AB96C0();

  v4 = sub_AB9260();

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