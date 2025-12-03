@interface MSStickerBrowserViewController
- (CGRect)initialFrameBeforeAppearance;
- (MSStickerBrowserViewController)initWithCoder:(id)coder;
- (MSStickerBrowserViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MSStickerBrowserViewController)initWithStickerSize:(MSStickerSize)stickerSize;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)disableUserInteraction;
- (void)enableUserInteraction;
- (void)loadView;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MSStickerBrowserViewController

- (MSStickerBrowserViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MSStickerBrowserViewController;
  result = [(MSStickerBrowserViewController *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_stickerSize = 1;
  }

  return result;
}

- (MSStickerBrowserViewController)initWithNibName:(id)name bundle:(id)bundle
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
  stickerSize = [(MSStickerBrowserViewController *)self stickerSize];
  v5 = [(MSStickerBrowserView *)v3 initWithFrame:stickerSize stickerSize:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MSStickerBrowserView *)v5 setDataSource:self];
  [(MSStickerBrowserViewController *)self setStickerBrowserView:v5];
  view = [(MSStickerBrowserViewController *)self view];
  [view addSubview:v5];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = MSStickerBrowserStateRestorationInfo(bundleIdentifier);

  if ([v9 count])
  {
    stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
    [stickerBrowserView restoreFromState:v9];
  }

  view2 = [(MSStickerBrowserViewController *)self view];
  layer = [view2 layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  top = insets.top;
  v6.receiver = self;
  v6.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v6 _setContentOverlayInsets:insets.top, insets.left, insets.bottom, insets.right];
  [(MSStickerBrowserViewController *)self _setNavigationControllerContentInsetAdjustment:top, 0.0, bottom, 0.0];
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v17 viewDidLayoutSubviews];
  stickerSize = [(MSStickerBrowserViewController *)self stickerSize];
  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  stickerSize2 = [stickerBrowserView stickerSize];

  if (stickerSize != stickerSize2)
  {
    stickerBrowserView2 = [(MSStickerBrowserViewController *)self stickerBrowserView];
    [stickerBrowserView2 reloadData];
  }

  view = [(MSStickerBrowserViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  stickerBrowserView3 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView3 setFrame:{v9, v11, v13, v15}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v4 viewWillAppear:appear];
  [(MSStickerBrowserViewController *)self setInitialFrameBeforeAppearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v6 viewDidAppear:appear];
  if (![(MSStickerBrowserViewController *)self viewHasAppeared])
  {
    extensionContext = [(MSStickerBrowserViewController *)self extensionContext];
    [extensionContext _remoteViewDidBecomeReadyForDisplay];

    [(MSStickerBrowserViewController *)self setViewHasAppeared:1];
  }

  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView _startAnimating];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MSStickerBrowserViewController;
  [(MSStickerBrowserViewController *)&v5 viewDidDisappear:disappear];
  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView _stopAnimating];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView setUserInteractionEnabled:0];
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView setUserInteractionEnabled:1];
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  stickerBrowserView = [(MSStickerBrowserViewController *)self stickerBrowserView];
  stateRestorationInfo = [stickerBrowserView stateRestorationInfo];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = MSStickerBrowserStateRestorationInfoPath(bundleIdentifier);
  [stateRestorationInfo writeToFile:v8 atomically:1];

  stickerBrowserView2 = [(MSStickerBrowserViewController *)self stickerBrowserView];
  [stickerBrowserView2 prepareForSnapshotting];

  view = [(MSStickerBrowserViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v17 = v16;
  v23.width = v12;
  v23.height = v14;
  UIGraphicsBeginImageContextWithOptions(v23, 0, v17);

  view2 = [(MSStickerBrowserViewController *)self view];
  layer = [view2 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  blockCopy[2](blockCopy, v20);
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