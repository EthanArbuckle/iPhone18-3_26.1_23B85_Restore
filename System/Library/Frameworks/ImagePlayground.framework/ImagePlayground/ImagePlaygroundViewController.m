@interface ImagePlaygroundViewController
- (BOOL)isLoadingRecipe;
- (BOOL)isModalInPresentation;
- (BOOL)sourceImageIsSketch;
- (CGSize)preferredContentSize;
- (GPRecipe)recipe;
- (ImageGenerationViewControllerDelegate)delegate;
- (NSArray)resultingAssets;
- (NSString)localizedCreateButtonTitle;
- (UIImage)sourceImage;
- (_TtC15ImagePlayground29ImagePlaygroundViewController)init;
- (_TtC15ImagePlayground29ImagePlaygroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP15ImagePlayground44ImageGenerationViewControllerPrivateDelegate_)privateDelegate;
- (int64_t)modalPresentationStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_viewControllerPresentationDidInitiate;
- (void)editorDidCancelWithRequiresShowingGrid:(BOOL)a3;
- (void)editorDidGenerateAssets:(id)a3;
- (void)endTheDelay;
- (void)setIsLoadingRecipe:(BOOL)a3;
- (void)setLocalizedCreateButtonTitle:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setPrivateDelegate:(id)a3;
- (void)setResultingAssets:(id)a3;
- (void)setSourceImageIsSketch:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ImagePlaygroundViewController

- (UIImage)sourceImage
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage;
  swift_beginAccess();
  return *(self + v3);
}

- (ImageGenerationViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP15ImagePlayground44ImageGenerationViewControllerPrivateDelegate_)privateDelegate
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setPrivateDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (NSArray)resultingAssets
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for GPExportablePhotoAsset(0);

  v5 = sub_1D2AC6D24();

  return v5;
}

- (void)setResultingAssets:(id)a3
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v4 = sub_1D2AC6D34();
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)sourceImageIsSketch
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceImageIsSketch:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)localizedCreateButtonTitle
{
  v2 = (self + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1D2AC6BF4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocalizedCreateButtonTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1D2AC6C24();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)isLoadingRecipe
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLoadingRecipe:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  *(self + v5) = a3;
  *(*(self + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = self;
  sub_1D2A5B93C(sub_1D2A57618, 0, sub_1D2A47D44, v6);
}

- (GPRecipe)recipe
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC15ImagePlayground29ImagePlaygroundViewController)init
{
  v3 = objc_allocWithZone(type metadata accessor for ImagePlaygroundViewController(0));
  v4 = sub_1D2A3A180(1);
  swift_getObjectType();
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x30);
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

- (int64_t)modalPresentationStyle
{
  v2 = self;
  v3 = sub_1D2A3A8A8();

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  [(ImagePlaygroundViewController *)&v4 setModalPresentationStyle:a3];
}

- (CGSize)preferredContentSize
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    v7 = sub_1D2A39E70();

    v8 = 720.0;
    v9 = 764.0;
    if ((v7 & 1) == 0)
    {
      v9 = 720.0;
    }
  }

  else
  {
    v14.receiver = v4;
    v14.super_class = type metadata accessor for ImagePlaygroundViewController(0);
    [(ImagePlaygroundViewController *)&v14 preferredContentSize];
    v11 = v10;
    v13 = v12;

    v9 = v13;
    v8 = v11;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  [(ImagePlaygroundViewController *)&v5 setPreferredContentSize:width, height];
}

- (BOOL)isModalInPresentation
{
  v3 = *(self + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  v4 = self;

  sub_1D2AC6094();

  LOBYTE(v4) = *(v3 + 26);

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    v9.receiver = v4;
    v9.super_class = type metadata accessor for ImagePlaygroundViewController(0);
    v7 = [(ImagePlaygroundViewController *)&v9 supportedInterfaceOrientations];
  }

  else
  {

    return 2;
  }

  return v7;
}

- (void)endTheDelay
{
  v2 = self;
  [(ImagePlaygroundViewController *)v2 _endDelayingPresentation];
  *(v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation) = 0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D2A3ADB4();
}

- (void)_viewControllerPresentationDidInitiate
{
  v2 = self;
  sub_1D2A3B310();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1D2A3B4F4(a3);
}

- (_TtC15ImagePlayground29ImagePlaygroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editorDidGenerateAssets:(id)a3
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v4 = sub_1D2AC6D34();
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
  v7 = self;

  sub_1D2A3D958();
}

- (void)editorDidCancelWithRequiresShowingGrid:(BOOL)a3
{
  v4 = self;
  ImagePlaygroundViewController.editorDidCancel(requiresShowingGrid:)(a3);
}

@end