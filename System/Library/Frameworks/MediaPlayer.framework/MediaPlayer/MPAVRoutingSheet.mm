@interface MPAVRoutingSheet
- (CGRect)_cancelButtonFrame;
- (CGRect)_controlsViewFrame;
- (CGRect)_routingViewFrame;
- (CGSize)_maxRoutingViewSize;
- (MPAVRoutingSheet)initWithAVItemType:(int64_t)a3;
- (void)_animateControls:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)_updateDismissButtonText;
- (void)_updateRoutingSheetFrame;
- (void)dealloc;
- (void)dismiss;
- (void)layoutSubviews;
- (void)routingViewControllerDidUpdateContents:(id)a3;
- (void)setMirroringOnly:(BOOL)a3;
- (void)showInView:(id)a3 withCompletionHandler:(id)a4;
- (void)tintColorDidChange;
@end

@implementation MPAVRoutingSheet

- (CGSize)_maxRoutingViewSize
{
  [(MPAVRoutingSheet *)self bounds];
  v2 = rint(v6.size.width + -16.0);
  v3 = rint(CGRectGetHeight(v6) * 0.666666667);
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGRect)_controlsViewFrame
{
  [(MPAVRoutingSheet *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MPAVRoutingSheet *)self _maxRoutingViewSize];
  v12 = v11 + 8.0;
  [(MPAVRoutingSheet *)self _cancelButtonFrame];
  v14 = v12 + v13;
  [(MPAVRoutingSheet *)self safeAreaInsets];
  v16 = v6 + v10 - v14 + -8.0 - v15;
  v17 = v4;
  v18 = v8;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (CGRect)_cancelButtonFrame
{
  [(MPAVRoutingSheet *)self _maxRoutingViewSize];
  v4 = v3 + 8.0;
  [(MPAVRoutingSheet *)self _maxRoutingViewSize];
  v6 = v5;
  [(MPAVRoutingViewController *)self->_routingViewController _normalCellHeight];
  v8 = v7;
  v9 = 8.0;
  v10 = v4;
  v11 = v6;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_routingViewFrame
{
  [(MPAVRoutingSheet *)self _maxRoutingViewSize];
  v4 = v3;
  v6 = v5;
  [(MPAVRoutingViewController *)self->_routingViewController preferredContentSize];
  if (v7 < v6)
  {
    v6 = v7;
  }

  [(MPAVRoutingSheet *)self _cancelButtonFrame];
  v8 = CGRectGetMinY(v12) + -8.0 - v6;
  v9 = 8.0;
  v10 = v4;
  v11 = v6;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)_updateDismissButtonText
{
  v3 = [(MPAVRoutingViewController *)self->_routingViewController _routingController];
  v4 = [v3 wirelessDisplayRouteIsPicked];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v6 = v5;
  if (v4)
  {
    v7 = @"DONE";
  }

  else
  {
    v7 = @"CANCEL";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F149ECA8 table:@"MediaPlayer"];

  [(UIButton *)self->_cancelButton setTitle:v8 forState:0];
}

- (void)_updateRoutingSheetFrame
{
  [(UIWindow *)self->_presentationWindow bounds];

  [(MPAVRoutingSheet *)self setFrame:?];
}

- (void)_animateControls:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(MPAVRoutingSheet *)self layoutIfNeeded];
  [(MPAVRoutingSheet *)self _controlsViewFrame];
  v10 = v7;
  v11 = v8;
  v13 = v12;
  v14 = v9;
  v15 = v8 + v9 + 8.0;
  if (v4)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 0.5;
  }

  if (v4)
  {
    v8 = v8 + v9 + 8.0;
  }

  [(UIView *)self->_controlsView setFrame:v7, v8];
  [(UIView *)self->_backgroundView setAlpha:v16];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MPAVRoutingSheet__animateControls_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E76766C8;
  v17[4] = self;
  v18 = v4;
  *&v17[5] = v10;
  *&v17[6] = v11;
  v17[7] = v13;
  *&v17[8] = v14;
  *&v17[9] = v10;
  *&v17[10] = v15;
  v17[11] = v13;
  *&v17[12] = v14;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v17 completion:v6];
}

uint64_t __59__MPAVRoutingSheet__animateControls_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 440);
  v3 = 72;
  if (*(a1 + 104))
  {
    v3 = 40;
  }

  v4 = 80;
  if (*(a1 + 104))
  {
    v4 = 48;
  }

  v5 = 88;
  if (*(a1 + 104))
  {
    v5 = 56;
  }

  v6 = 96;
  if (*(a1 + 104))
  {
    v6 = 64;
  }

  [v2 setFrame:{*(a1 + v3), *(a1 + v4), *(a1 + v5), *(a1 + v6)}];
  v7 = *(*(a1 + 32) + 416);
  v8 = 0.0;
  if (*(a1 + 104))
  {
    v8 = 0.5;
  }

  return [v7 setAlpha:v8];
}

- (void)routingViewControllerDidUpdateContents:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__MPAVRoutingSheet_routingViewControllerDidUpdateContents___block_invoke;
  v3[3] = &unk_1E7682518;
  v3[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v3 completion:0];
}

uint64_t __59__MPAVRoutingSheet_routingViewControllerDidUpdateContents___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _routingViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 32) + 456) view];
  [v10 setFrame:{v3, v5, v7, v9}];

  v11 = *(a1 + 32);

  return [v11 _updateDismissButtonText];
}

- (void)dismiss
{
  v3 = [(MPAVRoutingSheet *)self superview];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __27__MPAVRoutingSheet_dismiss__block_invoke;
    v4[3] = &unk_1E7679340;
    v4[4] = self;
    [(MPAVRoutingSheet *)self _animateControls:0 withCompletionHandler:v4];
  }
}

uint64_t __27__MPAVRoutingSheet_dismiss__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromSuperview];
    [*(*(v2 + 32) + 408) setHidden:1];
    v3 = *(v2 + 32);
    v4 = *(v3 + 408);
    *(v3 + 408) = 0;

    result = *(*(v2 + 32) + 464);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

- (void)showInView:(id)a3 withCompletionHandler:(id)a4
{
  v5 = [a4 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  v7 = [_MPAVRoutingSheetSecureWindow alloc];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 bounds];
  v9 = [(_MPAVRoutingSheetSecureWindow *)v7 initWithFrame:?];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = v9;

  [(UIWindow *)self->_presentationWindow setWindowLevel:*MEMORY[0x1E69DE7D8]];
  v11 = self->_presentationWindow;
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(UIWindow *)v11 setBackgroundColor:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v13 setView:self];
  [(MPAVRoutingSheet *)self _updateRoutingSheetFrame];
  [(UIWindow *)self->_presentationWindow setRootViewController:v13];
  [(UIWindow *)self->_presentationWindow makeKeyAndVisible];
  [(MPAVRoutingSheet *)self _animateControls:1 withCompletionHandler:0];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = MPAVRoutingSheet;
  [(MPAVRoutingSheet *)&v4 tintColorDidChange];
  v3 = [(MPAVRoutingSheet *)self tintColor];
  [(UIButton *)self->_cancelButton setTitleColor:v3 forState:0];
  [(MPAVRoutingViewController *)self->_routingViewController _setTableCellsContentColor:v3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MPAVRoutingSheet;
  [(MPAVRoutingSheet *)&v4 layoutSubviews];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__MPAVRoutingSheet_layoutSubviews__block_invoke;
  v3[3] = &unk_1E7682518;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

uint64_t __34__MPAVRoutingSheet_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(*(a1 + 32) + 416) setFrame:?];
  [*(*(a1 + 32) + 424) setFrame:{v3, v5, v7, v9}];
  v10 = [*(*(a1 + 32) + 456) view];
  [v10 setAutoresizingMask:0];

  v11 = [*(*(a1 + 32) + 456) view];
  [*(a1 + 32) _routingViewFrame];
  [v11 setFrame:?];

  v12 = *(a1 + 32);
  v13 = v12[56];
  [v12 _cancelButtonFrame];
  [v13 setFrame:?];
  [*(a1 + 32) _controlsViewFrame];
  v15 = v14;
  v17 = v16;
  [*(*(a1 + 32) + 440) setFrame:?];
  v18 = *(*(a1 + 32) + 432);

  return [v18 setFrame:{0.0, 0.0, v15, v17}];
}

- (void)setMirroringOnly:(BOOL)a3
{
  self->_mirroringOnly = a3;
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(MPAVRoutingViewController *)self->_routingViewController setMirroringStyle:v3];
}

- (void)dealloc
{
  [(MPAVRoutingSheet *)self dismiss];
  [(MPAVRoutingViewController *)self->_routingViewController viewDidDisappear:0];
  v3.receiver = self;
  v3.super_class = MPAVRoutingSheet;
  [(MPAVRoutingSheet *)&v3 dealloc];
}

- (MPAVRoutingSheet)initWithAVItemType:(int64_t)a3
{
  v49.receiver = self;
  v49.super_class = MPAVRoutingSheet;
  v4 = [(MPAVRoutingSheet *)&v49 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    controlsView = v4->_controlsView;
    v4->_controlsView = v5;

    v7 = v4->_controlsView;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v9;

    v11 = v4->_backgroundView;
    v12 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v11 setBackgroundColor:v12];

    [(UIView *)v4->_backgroundView setAlpha:0.0];
    [(MPAVRoutingSheet *)v4 addSubview:v4->_backgroundView];
    v13 = [MEMORY[0x1E69DC738] buttonWithType:0];
    dismissBackgroundButton = v4->_dismissBackgroundButton;
    v4->_dismissBackgroundButton = v13;

    v15 = v4->_dismissBackgroundButton;
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v15 setBackgroundColor:v16];

    [(UIButton *)v4->_dismissBackgroundButton addTarget:v4 action:sel__cancelButtonAction_ forControlEvents:64];
    [(MPAVRoutingSheet *)v4 addSubview:v4->_dismissBackgroundButton];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    dismissControlsViewButton = v4->_dismissControlsViewButton;
    v4->_dismissControlsViewButton = v17;

    v19 = v4->_dismissControlsViewButton;
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v19 setBackgroundColor:v20];

    [(UIButton *)v4->_dismissControlsViewButton addTarget:v4 action:sel__cancelButtonAction_ forControlEvents:64];
    [(UIView *)v4->_controlsView addSubview:v4->_dismissControlsViewButton];
    v21 = objc_alloc_init(MPAVOutputDeviceRoutingDataSource);
    v22 = [MPAVRoutingController alloc];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [(MPAVRoutingController *)v22 initWithDataSource:v21 name:v24];

    v26 = [[MPAVRoutingViewController alloc] initWithStyle:0 routingController:v25];
    routingViewController = v4->_routingViewController;
    v4->_routingViewController = v26;

    [(MPAVRoutingViewController *)v4->_routingViewController viewDidAppear:0];
    [(MPAVRoutingViewController *)v4->_routingViewController setDelegate:v4];
    v28 = [(MPAVRoutingViewController *)v4->_routingViewController view];
    v29 = [v28 layer];
    [v29 setCornerRadius:10.0];

    v30 = [(MPAVRoutingViewController *)v4->_routingViewController view];
    v31 = [v30 layer];
    [v31 setMasksToBounds:1];

    v32 = [(MPAVRoutingViewController *)v4->_routingViewController _tableView];
    [v32 _setSeparatorBackdropOverlayBlendMode:1];

    v33 = v4->_controlsView;
    v34 = [(MPAVRoutingViewController *)v4->_routingViewController view];
    [(UIView *)v33 addSubview:v34];

    v35 = [MEMORY[0x1E69DC888] systemBlueColor];
    if (dyld_program_sdk_at_least())
    {
      v36 = [MEMORY[0x1E69DC738] buttonWithType:1];
      cancelButton = v4->_cancelButton;
      v4->_cancelButton = v36;
    }

    else
    {
      v38 = [MEMORY[0x1E69DC738] buttonWithType:0];
      v39 = v4->_cancelButton;
      v4->_cancelButton = v38;

      v40 = v4->_cancelButton;
      cancelButton = [v35 colorWithAlphaComponent:0.2];
      [(UIButton *)v40 setTitleColor:cancelButton forState:1];
    }

    v41 = v4->_cancelButton;
    v42 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v41 setBackgroundColor:v42];

    [(UIButton *)v4->_cancelButton setTitleColor:v35 forState:0];
    [(UIButton *)v4->_cancelButton addTarget:v4 action:sel__cancelButtonAction_ forControlEvents:64];
    [(UIView *)v4->_controlsView _setVisualAltitude:*MEMORY[0x1E69DEAF0] * 1.5];
    v43 = [(UIButton *)v4->_cancelButton titleLabel];
    v44 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:19.0];
    [v43 setFont:v44];

    v45 = [(UIButton *)v4->_cancelButton layer];
    [v45 setCornerRadius:10.0];

    v46 = [(UIButton *)v4->_cancelButton layer];
    [v46 setMasksToBounds:1];

    [(UIView *)v4->_controlsView addSubview:v4->_cancelButton];
    [(MPAVRoutingSheet *)v4 addSubview:v4->_controlsView];
    v47 = [MEMORY[0x1E69DC888] clearColor];
    [(MPAVRoutingSheet *)v4 setBackgroundColor:v47];

    [(MPAVRoutingSheet *)v4 setAVItemType:a3];
    [(MPAVRoutingSheet *)v4 _updateDismissButtonText];
  }

  return v4;
}

@end