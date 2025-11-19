@interface BuddyPosedDeviceSelectionController
- (BOOL)_buttonTrayInlined;
- (double)_contentViewHeight;
- (double)_headerToContentPadding;
- (double)_landscapeDefaultSize;
- (double)_portraitDefaultHeight;
- (void)_setPosedViewToBoundedHeight:(double)a3 animated:(BOOL)a4 requireLayout:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyPosedDeviceSelectionController

- (void)viewDidLoad
{
  v44 = self;
  v43 = a2;
  v42.receiver = self;
  v42.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v42 viewDidLoad];
  v2 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  [(BuddyPosedDeviceSelectionView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = v44;
  v4 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  [(BuddyPosedDeviceSelectionView *)v4 setDelegate:v3];

  v5 = [(BuddyPosedDeviceSelectionController *)v44 contentView];
  v6 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  [v5 addSubview:v6];

  v7 = +[BYDevice currentDevice];
  if ([v7 posedDeviceSelection_largeSizeDevice])
  {
    v8 = 57;
  }

  else
  {
    v8 = 37;
  }

  v9 = v8;

  v41 = v9;
  v10 = +[BYDevice currentDevice];
  v11 = [v10 size];

  if (v11 == 2)
  {
    v41 = 16.0;
  }

  v12 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  v13 = [(BuddyPosedDeviceSelectionView *)v12 topAnchor];
  v14 = [(BuddyPosedDeviceSelectionController *)v44 headerView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:v41];
  [(BuddyPosedDeviceSelectionController *)v44 setContentViewTopConstraint:v16];

  v17 = +[UIDevice currentDevice];
  v18 = [(UIDevice *)v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    v19 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
    v20 = [(BuddyPosedDeviceSelectionView *)v19 topAnchor];
    v21 = [(BuddyPosedDeviceSelectionController *)v44 contentView];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [(BuddyPosedDeviceSelectionController *)v44 setContentViewTopConstraint:v23];
  }

  v40 = [(BuddyPosedDeviceSelectionController *)v44 contentViewTopConstraint];
  v45[0] = v40;
  v39 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  v37 = [(BuddyPosedDeviceSelectionView *)v39 leftAnchor];
  v38 = [(BuddyPosedDeviceSelectionController *)v44 contentView];
  v36 = [v38 leftAnchor];
  v35 = [v37 constraintEqualToAnchor:?];
  v45[1] = v35;
  v34 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  v24 = [(BuddyPosedDeviceSelectionView *)v34 rightAnchor];
  v25 = [(BuddyPosedDeviceSelectionController *)v44 contentView];
  v26 = [v25 rightAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v45[2] = v27;
  v28 = [(BuddyPosedDeviceSelectionController *)v44 selectionView];
  v29 = [(BuddyPosedDeviceSelectionView *)v28 bottomAnchor];
  v30 = [(BuddyPosedDeviceSelectionController *)v44 contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v45[3] = v32;
  v33 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v33];
}

- (void)viewDidLayoutSubviews
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v3 viewDidLayoutSubviews];
  v2 = v5;
  [(BuddyPosedDeviceSelectionController *)v5 _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v2 _setPosedViewToBoundedHeight:0 animated:0 requireLayout:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v6 viewWillAppear:a3];
  v3 = [(BuddyPosedDeviceSelectionController *)v9 view];
  [v3 setNeedsLayout];

  v4 = [(BuddyPosedDeviceSelectionController *)v9 view];
  [v4 layoutIfNeeded];

  v5 = v9;
  [(BuddyPosedDeviceSelectionController *)v9 _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v5 _setPosedViewToBoundedHeight:0 animated:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v4 traitCollectionDidChange:location[0]];
  v3 = v6;
  [(BuddyPosedDeviceSelectionController *)v6 _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v3 _setPosedViewToBoundedHeight:0 animated:?];
  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v21 = a3;
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if ([(BuddyPosedDeviceSelectionController *)v20 _buttonTrayInlined])
  {
    v18 = 1;
  }

  else
  {
    v4 = +[UIScreen mainScreen];
    [(UIScreen *)v4 bounds];
    v15[2] = v5;
    v15[1] = v6;
    v15[4] = v7;
    v15[3] = v8;
    v16 = *&v8;
    v17 = *&v7;

    if (v16 - 88.0 < 820.0 || v17 - 88.0 < 820.0)
    {
      v9 = location[0];
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_100152C54;
      v14 = &unk_10032D9E8;
      v15[0] = v20;
      [v9 animateAlongsideTransition:&v10 completion:0];
      objc_storeStrong(v15, 0);
    }

    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_setPosedViewToBoundedHeight:(double)a3 animated:(BOOL)a4 requireLayout:(BOOL)a5
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = 0.7;
  if (!a4)
  {
    v21 = 0.0;
  }

  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100152F2C;
  v17 = &unk_10032DA98;
  v18[0] = v26;
  v18[1] = *&v24;
  v19 = v23;
  v20 = v22;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001530C4;
  v9 = &unk_10032DAC0;
  v11 = v23;
  v12 = v22;
  v10 = v26;
  [UIView animateWithDuration:&v13 animations:&v5 completion:v21];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v18, 0);
}

- (double)_landscapeDefaultSize
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 bounds];
  v14 = v3;
  v15 = v4;

  if (v14 >= v15)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14;
  }

  v6 = v5;
  v7 = [(BuddyPosedDeviceSelectionController *)self selectionView];
  v8 = [(BuddyPosedDeviceSelectionView *)v7 leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)v8 accessoryViewAndPaddingHeight];
  v10 = v9 + v6 * 0.300000012;
  [(BuddyPosedDeviceSelectionController *)self _headerToContentPadding];
  v12 = v10 + v11;

  return v12;
}

- (double)_portraitDefaultHeight
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 bounds];
  v17 = v3;
  v16 = v4;
  v19 = v5;
  v18 = v6;
  v20 = v6;
  v21 = v5;

  if (v20 - 88.0 <= 820.0 || v21 - 88.0 <= 820.0)
  {
    if (v20 <= v21)
    {
      v8 = v21;
    }

    else
    {
      v8 = v20;
    }

    v9 = v8;
    v10 = [(BuddyPosedDeviceSelectionController *)self selectionView:*&v8];
    v11 = [(BuddyPosedDeviceSelectionView *)v10 leftPosedView];
    [(BuddyPosedDeviceSelectionItemView *)v11 accessoryViewAndPaddingHeight];
    v13 = v12 + v9 * 0.300000012;
    [(BuddyPosedDeviceSelectionController *)self _headerToContentPadding];
    v23 = v13 + v14;
  }

  else
  {
    [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
    return v7;
  }

  return v23;
}

- (BOOL)_buttonTrayInlined
{
  v2 = [(BuddyPosedDeviceSelectionController *)self buttonTray];
  v3 = [v2 superview];
  v4 = [(BuddyPosedDeviceSelectionController *)self view];
  v5 = v3 != v4;

  return v5;
}

- (double)_contentViewHeight
{
  v2 = [(BuddyPosedDeviceSelectionController *)self buttonTray];
  [v2 frame];
  v4 = v3;
  v5 = [(BuddyPosedDeviceSelectionController *)self contentView];
  [v5 frame];
  v7 = v4 - v6;
  [(BuddyPosedDeviceSelectionController *)self _headerToContentPadding];
  v9 = v7 - v8;
  v10 = [(BuddyPosedDeviceSelectionController *)self navigationController];
  v11 = [v10 navigationBar];
  [v11 frame];
  v46 = v12;
  v45 = v13;
  v48 = v14;
  v47 = v15;
  v16 = v9 - v14;

  v49 = v16;
  v43 = 0x3FD3333340000000;
  v17 = +[BYDevice currentDevice];
  v18 = [v17 type];

  if (v18 == 1)
  {
    v43 = 0x3FDEB851E0000000;
  }

  v19 = [(BuddyPosedDeviceSelectionController *)self navigationController:v43];
  v20 = [v19 view];
  v21 = [v20 window];
  v22 = [v21 windowScene];
  v23 = sub_100153728([v22 interfaceOrientation]);

  if (v23)
  {
    [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
    if (v16 >= v24 || [(BuddyPosedDeviceSelectionController *)self _buttonTrayInlined])
    {
      [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
      return v25;
    }

    else
    {
      [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
      v27 = v26;
      [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
      if (v49 > v27 + -v28 * v44)
      {
        return v49;
      }

      [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
      v31 = v30;
      [(BuddyPosedDeviceSelectionController *)self _landscapeDefaultSize];
      return v31 + -v32 * v44;
    }
  }

  else
  {
    [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
    if (v16 >= v33 || [(BuddyPosedDeviceSelectionController *)self _buttonTrayInlined])
    {
      [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
      return v34;
    }

    else
    {
      [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
      v36 = v35;
      [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
      if (v49 > v36 + -v37 * v44)
      {
        return v49;
      }

      [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
      v40 = v39;
      [(BuddyPosedDeviceSelectionController *)self _portraitDefaultHeight];
      return v40 + -v41 * v44;
    }
  }
}

- (double)_headerToContentPadding
{
  v2 = [(BuddyPosedDeviceSelectionController *)self contentViewTopConstraint:a2];
  [(NSLayoutConstraint *)v2 constant];
  v4 = v3;

  return v4;
}

@end