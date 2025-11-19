@interface MSStickerBrowserViewController
- (CGRect)initialFrameBeforeAppearance;
- (MSStickerBrowserViewController)initWithCoder:(id)a3;
- (MSStickerBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MSStickerBrowserViewController)initWithStickerSize:(MSStickerSize)stickerSize;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)disableUserInteraction;
- (void)enableUserInteraction;
- (void)loadView;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MSStickerBrowserViewController

- (MSStickerBrowserViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MSStickerBrowserViewController;
  result = [(MSStickerBrowserViewController *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_stickerSize = 1;
  }

  return result;
}

- (MSStickerBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = MSStickerBrowserViewController;
  result = [(MSStickerBrowserViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_stickerSize = 1;
  }

  return result;
}

- (MSStickerBrowserViewController)initWithStickerSize:(MSStickerSize)stickerSize
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserViewController;
  result = [(MSStickerBrowserViewController *)&v6 initWithNibName:0 bundle:0];
  if (result)
  {
    v5 = *(MEMORY[0x1E695F058] + 16);
    result->_initialFrameBeforeAppearance.origin = *MEMORY[0x1E695F058];
    result->_initialFrameBeforeAppearance.size = v5;
    result->_stickerSize = stickerSize;
  }

  return result;
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v13 loadView];
  [(MSStickerBrowserViewController *)self setViewHasAppeared:0];
  v3 = [MSStickerBrowserView alloc];
  v4 = [(MSStickerBrowserViewController *)self stickerSize];
  v5 = [(MSStickerBrowserView *)v3 initWithFrame:v4 stickerSize:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MSStickerBrowserView *)v5 setDataSource:self];
  [(MSStickerBrowserViewController *)self setStickerBrowserView:v5];
  v6 = [(MSStickerBrowserViewController *)self view];
  [v6 addSubview:v5];

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = MSStickerBrowserStateRestorationInfo(v8);

  if ([v9 count])
  {
    v10 = [(MSStickerBrowserViewController *)self stickerBrowserView];
    [v10 restoreFromState:v9];
  }

  v11 = [(MSStickerBrowserViewController *)self view];
  v12 = [v11 layer];
  [v12 setHitTestsAsOpaque:1];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  v6.receiver = self;
  v6.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v6 _setContentOverlayInsets:a3.top, a3.left, a3.bottom, a3.right];
  [(MSStickerBrowserViewController *)self _setNavigationControllerContentInsetAdjustment:top, 0.0, bottom, 0.0];
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v17 viewDidLayoutSubviews];
  v3 = [(MSStickerBrowserViewController *)self stickerSize];
  v4 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  v5 = [v4 stickerSize];

  if (v3 != v5)
  {
    v6 = [(MSStickerBrowserViewController *)self stickerBrowserView];
    [v6 reloadData];
  }

  v7 = [(MSStickerBrowserViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v4 viewWillAppear:a3];
  [(MSStickerBrowserViewController *)self setInitialFrameBeforeAppearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v6 viewDidAppear:a3];
  if (![(MSStickerBrowserViewController *)self viewHasAppeared])
  {
    v4 = [(MSStickerBrowserViewController *)self extensionContext];
    [v4 _remoteViewDidBecomeReadyForDisplay];

    [(MSStickerBrowserViewController *)self setViewHasAppeared:1];
  }

  v5 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v5 _startAnimating];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v5 viewDidDisappear:a3];
  v4 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v4 _stopAnimating];
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v3 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v3 setUserInteractionEnabled:0];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v3 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v3 setUserInteractionEnabled:1];
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  v21 = [v5 stateRestorationInfo];

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = MSStickerBrowserStateRestorationInfoPath(v7);
  [v21 writeToFile:v8 atomically:1];

  v9 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [v9 prepareForSnapshotting];

  v10 = [(MSStickerBrowserViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 scale];
  v17 = v16;
  v23.width = v12;
  v23.height = v14;
  UIGraphicsBeginImageContextWithOptions(v23, 0, v17);

  v18 = [(MSStickerBrowserViewController *)self view];
  v19 = [v18 layer];
  [v19 renderInContext:UIGraphicsGetCurrentContext()];

  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4[2](v4, v20);
}

- (void)enableUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MSStickerBrowserViewController_enableUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__MSStickerBrowserViewController_enableUserInteraction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stickerBrowserView];
  [v1 setUserInteractionEnabled:1];
}

- (void)disableUserInteraction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MSStickerBrowserViewController_disableUserInteraction__block_invoke;
  block[3] = &unk_1E83A2C20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__MSStickerBrowserViewController_disableUserInteraction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stickerBrowserView];
  [v1 setUserInteractionEnabled:0];
}

- (CGRect)initialFrameBeforeAppearance
{
  x = self->_initialFrameBeforeAppearance.origin.x;
  y = self->_initialFrameBeforeAppearance.origin.y;
  width = self->_initialFrameBeforeAppearance.size.width;
  height = self->_initialFrameBeforeAppearance.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end