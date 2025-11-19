@interface _SFAdaptivePreviewViewController
- (CGSize)preferredDocumentContentSize;
- (UIViewController)contentViewController;
- (_SFAdaptivePreviewViewController)initWithURL:(id)a3;
- (_SFAdaptivePreviewViewControllerDelegate)delegate;
- (void)_addViewFromViewController:(id)a3;
- (void)_removeViewController:(id)a3;
- (void)_setUpLinkPreviewViewControllerIfNeeded;
- (void)_setUpTextPreviewViewControllerIfNeeded;
- (void)_updatePreferredContentSize;
- (void)linkPreviewHeader:(id)a3 didEnableLinkPreview:(BOOL)a4;
- (void)linkPreviewHeaderBoundsDidChange:(id)a3;
- (void)setLinkPreviewEnabled:(BOOL)a3;
- (void)setPreferredDocumentContentSize:(CGSize)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _SFAdaptivePreviewViewController

- (_SFAdaptivePreviewViewController)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFAdaptivePreviewViewController;
  v5 = [(_SFAdaptivePreviewViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v3 = [(_SFAdaptivePreviewViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  if (_SFShouldShowLinkPreviews())
  {
    [(_SFAdaptivePreviewViewController *)self _setUpLinkPreviewViewControllerIfNeeded];
  }

  else
  {
    [(_SFAdaptivePreviewViewController *)self _setUpTextPreviewViewControllerIfNeeded];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFAdaptivePreviewViewController;
  [(_SFAdaptivePreviewViewController *)&v4 viewWillAppear:a3];
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

- (void)_addViewFromViewController:(id)a3
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFAdaptivePreviewViewController *)self view];
  v6 = [v4 view];

  [v5 addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 bottomAnchor];
  v8 = [v5 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  LODWORD(v10) = 1144586240;
  v19 = v9;
  [v9 setPriority:v10];
  v20 = MEMORY[0x1E696ACD8];
  v22 = [v6 leadingAnchor];
  v21 = [v5 leadingAnchor];
  v11 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v11;
  v12 = [v6 trailingAnchor];
  v13 = [v5 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v23[1] = v14;
  v15 = [v6 topAnchor];
  v16 = [v5 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
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
    v5 = [(_SFURLTextPreviewViewController *)self->_textPreviewViewController _previewHeader];
    [v5 setDelegate:self];
  }
}

- (void)_removeViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [v4 view];
    [v5 removeFromSuperview];

    [(_SFAdaptivePreviewViewController *)self removeChildViewController:v8];
    [v8 didMoveToParentViewController:0];
    v4 = v8;
    p_textPreviewViewController = &self->_textPreviewViewController;
    textPreviewViewController = self->_textPreviewViewController;
    if (textPreviewViewController == v8 || (p_textPreviewViewController = &self->_linkPreviewViewController, textPreviewViewController = self->_linkPreviewViewController, textPreviewViewController == v8))
    {
      *p_textPreviewViewController = 0;

      v4 = v8;
    }
  }
}

- (void)setLinkPreviewEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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

- (void)setPreferredDocumentContentSize:(CGSize)a3
{
  if (a3.width != self->_preferredDocumentContentSize.width || a3.height != self->_preferredDocumentContentSize.height)
  {
    self->_preferredDocumentContentSize = a3;
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
    v4 = [(_SFURLTextPreviewViewController *)textPreviewViewController view];
    v5 = MEMORY[0x1E69DD250];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __63___SFAdaptivePreviewViewController__updatePreferredContentSize__block_invoke;
    v18 = &unk_1E848F548;
    v19 = self;
    v20 = v4;
    v6 = v4;
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

- (void)linkPreviewHeader:(id)a3 didEnableLinkPreview:(BOOL)a4
{
  v4 = a4;
  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained adaptivePreviewViewControllerWillDisableLinkPreview:self];
    }
  }

  [(_SFAdaptivePreviewViewController *)self setLinkPreviewEnabled:v4];
}

- (void)linkPreviewHeaderBoundsDidChange:(id)a3
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