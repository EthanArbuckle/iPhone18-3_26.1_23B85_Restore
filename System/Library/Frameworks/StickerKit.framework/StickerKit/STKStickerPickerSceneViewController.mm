@interface STKStickerPickerSceneViewController
+ (UIEdgeInsets)additionalInsets;
- (STKStickerPickerSceneViewController)init;
- (STKStickerPickerSceneViewControllerDelegate)delegate;
- (void)setupSceneHosting;
- (void)stickerPickerSceneDidRequestDismissal;
@end

@implementation STKStickerPickerSceneViewController

- (STKStickerPickerSceneViewController)init
{
  v5.receiver = self;
  v5.super_class = STKStickerPickerSceneViewController;
  v2 = [(STKStickerPickerSceneViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(STKStickerPickerSceneViewController *)v2 setupSceneHosting];
  }

  return v3;
}

- (void)setupSceneHosting
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (!self->_hostingController)
  {
    [(STKStickerPickerSceneViewController *)self _beginDelayingPresentation:&__block_literal_global_1 cancellationHandler:3.0];
    v24 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.StickerKit.StickerPickerService"];
    v3 = objc_alloc(MEMORY[0x1E69DD688]);
    v4 = +[(FBSSceneSpecification *)STKStickerPickerSceneSpecification];
    v5 = [v3 initWithProcessIdentity:v24 sceneSpecification:v4];
    hostingController = self->_hostingController;
    self->_hostingController = v5;

    [(_UISceneHostingController *)self->_hostingController setDelegate:self];
    sceneViewController = [(_UISceneHostingController *)self->_hostingController sceneViewController];
    [(STKStickerPickerSceneViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(STKStickerPickerSceneViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v20;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v16;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v11;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v17 activateConstraints:v15];

    [sceneViewController didMoveToParentViewController:self];
  }
}

+ (UIEdgeInsets)additionalInsets
{
  v2 = 600.0;
  v3 = 300.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (void)stickerPickerSceneDidRequestDismissal
{
  delegate = [(STKStickerPickerSceneViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(STKStickerPickerSceneViewController *)self delegate];
    [delegate2 stickerPickerSceneDidRequestDismissal:self];
  }
}

- (STKStickerPickerSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end