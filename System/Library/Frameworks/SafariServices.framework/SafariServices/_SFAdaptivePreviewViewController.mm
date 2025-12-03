@interface _SFAdaptivePreviewViewController
- (CGSize)preferredDocumentContentSize;
- (UIViewController)contentViewController;
- (_SFAdaptivePreviewViewController)initWithURL:(id)l;
- (_SFAdaptivePreviewViewControllerDelegate)delegate;
- (void)_addViewFromViewController:(id)controller;
- (void)_removeViewController:(id)controller;
- (void)_setUpLinkPreviewViewControllerIfNeeded;
- (void)_setUpTextPreviewViewControllerIfNeeded;
- (void)_updatePreferredContentSize;
- (void)linkPreviewHeader:(id)header didEnableLinkPreview:(BOOL)preview;
- (void)linkPreviewHeaderBoundsDidChange:(id)change;
- (void)setLinkPreviewEnabled:(BOOL)enabled;
- (void)setPreferredDocumentContentSize:(CGSize)size;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _SFAdaptivePreviewViewController

- (_SFAdaptivePreviewViewController)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = _SFAdaptivePreviewViewController;
  v5 = [(_SFAdaptivePreviewViewController *)&v10 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _SFAdaptivePreviewViewController;
  [(_SFAdaptivePreviewViewController *)&v5 viewDidLoad];
  view = [(_SFAdaptivePreviewViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  if (_SFShouldShowLinkPreviews())
  {
    [(_SFAdaptivePreviewViewController *)self _setUpLinkPreviewViewControllerIfNeeded];
  }

  else
  {
    [(_SFAdaptivePreviewViewController *)self _setUpTextPreviewViewControllerIfNeeded];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _SFAdaptivePreviewViewController;
  [(_SFAdaptivePreviewViewController *)&v4 viewWillAppear:appear];
  [(_SFAdaptivePreviewViewController *)self _updatePreferredContentSize];
}

- (void)_setUpLinkPreviewViewControllerIfNeeded
{
  if (!self->_linkPreviewViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained adaptivePreviewViewController:self requestLinkPreviewViewControllerWithURL:self->_URL];
    linkPreviewViewController = self->_linkPreviewViewController;
    self->_linkPreviewViewController = v4;

    [(_SFBrowserViewProviding *)self->_linkPreviewViewController setPreferredContentSize:self->_preferredDocumentContentSize.width, self->_preferredDocumentContentSize.height];
    [(_SFAdaptivePreviewViewController *)self addChildViewController:self->_linkPreviewViewController];
    [(_SFAdaptivePreviewViewController *)self _addViewFromViewController:self->_linkPreviewViewController];
    v6 = self->_linkPreviewViewController;

    [(_SFBrowserViewProviding *)v6 didMoveToParentViewController:self];
  }
}

- (void)_addViewFromViewController:(id)controller
{
  v23[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  view = [(_SFAdaptivePreviewViewController *)self view];
  view2 = [controllerCopy view];

  [view addSubview:view2];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v10) = 1144586240;
  v19 = v9;
  [v9 setPriority:v10];
  v20 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v11;
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v14;
  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v17;
  v23[3] = v9;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v20 activateConstraints:v18];
}

- (void)_setUpTextPreviewViewControllerIfNeeded
{
  if (!self->_textPreviewViewController)
  {
    v3 = [[_SFURLTextPreviewViewController alloc] initWithURL:self->_URL];
    textPreviewViewController = self->_textPreviewViewController;
    self->_textPreviewViewController = v3;

    [(_SFAdaptivePreviewViewController *)self addChildViewController:self->_textPreviewViewController];
    [(_SFAdaptivePreviewViewController *)self _addViewFromViewController:self->_textPreviewViewController];
    [(_SFURLTextPreviewViewController *)self->_textPreviewViewController didMoveToParentViewController:self];
    _previewHeader = [(_SFURLTextPreviewViewController *)self->_textPreviewViewController _previewHeader];
    [_previewHeader setDelegate:self];
  }
}

- (void)_removeViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v8 = controllerCopy;
    view = [controllerCopy view];
    [view removeFromSuperview];

    [(_SFAdaptivePreviewViewController *)self removeChildViewController:v8];
    [v8 didMoveToParentViewController:0];
    controllerCopy = v8;
    p_textPreviewViewController = &self->_textPreviewViewController;
    textPreviewViewController = self->_textPreviewViewController;
    if (textPreviewViewController == v8 || (p_textPreviewViewController = &self->_linkPreviewViewController, textPreviewViewController = self->_linkPreviewViewController, textPreviewViewController == v8))
    {
      *p_textPreviewViewController = 0;

      controllerCopy = v8;
    }
  }
}

- (void)setLinkPreviewEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    [(_SFAdaptivePreviewViewController *)self _setUpLinkPreviewViewControllerIfNeeded];
    v5 = &OBJC_IVAR____SFAdaptivePreviewViewController__textPreviewViewController;
  }

  else
  {
    [(_SFAdaptivePreviewViewController *)self _setUpTextPreviewViewControllerIfNeeded];
    v5 = &OBJC_IVAR____SFAdaptivePreviewViewController__linkPreviewViewController;
  }

  [(_SFAdaptivePreviewViewController *)self _removeViewController:*(&self->super.super.super.isa + *v5)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___SFAdaptivePreviewViewController_setLinkPreviewEnabled___block_invoke;
  v8[3] = &unk_1E848F810;
  v8[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v7 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(*MEMORY[0x1E69B1F88], v6, *MEMORY[0x1E695E890]);
  CFPreferencesAppSynchronize(v7);
}

- (UIViewController)contentViewController
{
  linkPreviewViewController = self->_linkPreviewViewController;
  if (!linkPreviewViewController)
  {
    linkPreviewViewController = self->_textPreviewViewController;
  }

  return linkPreviewViewController;
}

- (void)setPreferredDocumentContentSize:(CGSize)size
{
  if (size.width != self->_preferredDocumentContentSize.width || size.height != self->_preferredDocumentContentSize.height)
  {
    self->_preferredDocumentContentSize = size;
    linkPreviewViewController = self->_linkPreviewViewController;
    if (linkPreviewViewController)
    {
      [(_SFBrowserViewProviding *)linkPreviewViewController setPreferredContentSize:?];

      [(_SFAdaptivePreviewViewController *)self _updatePreferredContentSize];
    }
  }
}

- (void)_updatePreferredContentSize
{
  textPreviewViewController = self->_textPreviewViewController;
  if (textPreviewViewController)
  {
    view = [(_SFURLTextPreviewViewController *)textPreviewViewController view];
    v5 = MEMORY[0x1E69DD250];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __63___SFAdaptivePreviewViewController__updatePreferredContentSize__block_invoke;
    v18 = &unk_1E848F548;
    selfCopy = self;
    v20 = view;
    v6 = view;
    [v5 performWithoutAnimation:&v15];
    v7 = [(_SFAdaptivePreviewViewController *)self view:v15];
    [v7 bounds];
    Width = CGRectGetWidth(v22);

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v6 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v9, v10}];
    [(_SFAdaptivePreviewViewController *)self setPreferredContentSize:0.0];
  }

  else if (self->_linkPreviewViewController && self->_preferredDocumentContentSize.width != 0.0)
  {
    height = self->_preferredDocumentContentSize.height;
    if (height == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained headerViewHeightForAdaptivePreviewViewController:self];
      height = height + v13;

      v14 = self->_preferredDocumentContentSize.width;
    }

    [(_SFAdaptivePreviewViewController *)self setPreferredContentSize:v14, height];
  }
}

- (void)linkPreviewHeader:(id)header didEnableLinkPreview:(BOOL)preview
{
  previewCopy = preview;
  if (!preview)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained adaptivePreviewViewControllerWillDisableLinkPreview:self];
    }
  }

  [(_SFAdaptivePreviewViewController *)self setLinkPreviewEnabled:previewCopy];
}

- (void)linkPreviewHeaderBoundsDidChange:(id)change
{
  if (self->_linkPreviewViewController)
  {
    [(_SFAdaptivePreviewViewController *)self _updatePreferredContentSize];
  }
}

- (_SFAdaptivePreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredDocumentContentSize
{
  width = self->_preferredDocumentContentSize.width;
  height = self->_preferredDocumentContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end