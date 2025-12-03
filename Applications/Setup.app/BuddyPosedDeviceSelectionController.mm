@interface BuddyPosedDeviceSelectionController
- (BOOL)_buttonTrayInlined;
- (double)_contentViewHeight;
- (double)_headerToContentPadding;
- (double)_landscapeDefaultSize;
- (double)_portraitDefaultHeight;
- (void)_setPosedViewToBoundedHeight:(double)height animated:(BOOL)animated requireLayout:(BOOL)layout;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyPosedDeviceSelectionController

- (void)viewDidLoad
{
  selfCopy = self;
  v43 = a2;
  v42.receiver = self;
  v42.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v42 viewDidLoad];
  selectionView = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  [(BuddyPosedDeviceSelectionView *)selectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = selfCopy;
  selectionView2 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  [(BuddyPosedDeviceSelectionView *)selectionView2 setDelegate:v3];

  contentView = [(BuddyPosedDeviceSelectionController *)selfCopy contentView];
  selectionView3 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  [contentView addSubview:selectionView3];

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

  selectionView4 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  topAnchor = [(BuddyPosedDeviceSelectionView *)selectionView4 topAnchor];
  headerView = [(BuddyPosedDeviceSelectionController *)selfCopy headerView];
  bottomAnchor = [headerView bottomAnchor];
  v16 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v41];
  [(BuddyPosedDeviceSelectionController *)selfCopy setContentViewTopConstraint:v16];

  v17 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v17 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    selectionView5 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
    topAnchor2 = [(BuddyPosedDeviceSelectionView *)selectionView5 topAnchor];
    contentView2 = [(BuddyPosedDeviceSelectionController *)selfCopy contentView];
    topAnchor3 = [contentView2 topAnchor];
    v23 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    [(BuddyPosedDeviceSelectionController *)selfCopy setContentViewTopConstraint:v23];
  }

  contentViewTopConstraint = [(BuddyPosedDeviceSelectionController *)selfCopy contentViewTopConstraint];
  v45[0] = contentViewTopConstraint;
  selectionView6 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  leftAnchor = [(BuddyPosedDeviceSelectionView *)selectionView6 leftAnchor];
  contentView3 = [(BuddyPosedDeviceSelectionController *)selfCopy contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v35 = [leftAnchor constraintEqualToAnchor:?];
  v45[1] = v35;
  selectionView7 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  rightAnchor = [(BuddyPosedDeviceSelectionView *)selectionView7 rightAnchor];
  contentView4 = [(BuddyPosedDeviceSelectionController *)selfCopy contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v45[2] = v27;
  selectionView8 = [(BuddyPosedDeviceSelectionController *)selfCopy selectionView];
  bottomAnchor2 = [(BuddyPosedDeviceSelectionView *)selectionView8 bottomAnchor];
  contentView5 = [(BuddyPosedDeviceSelectionController *)selfCopy contentView];
  bottomAnchor3 = [contentView5 bottomAnchor];
  v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v45[3] = v32;
  v33 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v33];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v3 viewDidLayoutSubviews];
  v2 = selfCopy;
  [(BuddyPosedDeviceSelectionController *)selfCopy _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v2 _setPosedViewToBoundedHeight:0 animated:0 requireLayout:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v6 viewWillAppear:appear];
  view = [(BuddyPosedDeviceSelectionController *)selfCopy view];
  [view setNeedsLayout];

  view2 = [(BuddyPosedDeviceSelectionController *)selfCopy view];
  [view2 layoutIfNeeded];

  v5 = selfCopy;
  [(BuddyPosedDeviceSelectionController *)selfCopy _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v5 _setPosedViewToBoundedHeight:0 animated:?];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v4.receiver = selfCopy;
  v4.super_class = BuddyPosedDeviceSelectionController;
  [(BuddyPosedDeviceSelectionController *)&v4 traitCollectionDidChange:location[0]];
  v3 = selfCopy;
  [(BuddyPosedDeviceSelectionController *)selfCopy _contentViewHeight];
  [(BuddyPosedDeviceSelectionController *)v3 _setPosedViewToBoundedHeight:0 animated:?];
  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  if ([(BuddyPosedDeviceSelectionController *)selfCopy _buttonTrayInlined])
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
      v15[0] = selfCopy;
      [v9 animateAlongsideTransition:&v10 completion:0];
      objc_storeStrong(v15, 0);
    }

    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_setPosedViewToBoundedHeight:(double)height animated:(BOOL)animated requireLayout:(BOOL)layout
{
  selfCopy = self;
  v25 = a2;
  heightCopy = height;
  animatedCopy = animated;
  layoutCopy = layout;
  v21 = 0.7;
  if (!animated)
  {
    v21 = 0.0;
  }

  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100152F2C;
  v17 = &unk_10032DA98;
  v18[0] = selfCopy;
  v18[1] = *&heightCopy;
  v19 = animatedCopy;
  v20 = layoutCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001530C4;
  v9 = &unk_10032DAC0;
  v11 = animatedCopy;
  v12 = layoutCopy;
  v10 = selfCopy;
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
  selectionView = [(BuddyPosedDeviceSelectionController *)self selectionView];
  leftPosedView = [(BuddyPosedDeviceSelectionView *)selectionView leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)leftPosedView accessoryViewAndPaddingHeight];
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
    leftPosedView = [(BuddyPosedDeviceSelectionView *)v10 leftPosedView];
    [(BuddyPosedDeviceSelectionItemView *)leftPosedView accessoryViewAndPaddingHeight];
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
  buttonTray = [(BuddyPosedDeviceSelectionController *)self buttonTray];
  superview = [buttonTray superview];
  view = [(BuddyPosedDeviceSelectionController *)self view];
  v5 = superview != view;

  return v5;
}

- (double)_contentViewHeight
{
  buttonTray = [(BuddyPosedDeviceSelectionController *)self buttonTray];
  [buttonTray frame];
  v4 = v3;
  contentView = [(BuddyPosedDeviceSelectionController *)self contentView];
  [contentView frame];
  v7 = v4 - v6;
  [(BuddyPosedDeviceSelectionController *)self _headerToContentPadding];
  v9 = v7 - v8;
  navigationController = [(BuddyPosedDeviceSelectionController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v46 = v12;
  v45 = v13;
  v48 = v14;
  v47 = v15;
  v16 = v9 - v14;

  v49 = v16;
  v43 = 0x3FD3333340000000;
  v17 = +[BYDevice currentDevice];
  type = [v17 type];

  if (type == 1)
  {
    v43 = 0x3FDEB851E0000000;
  }

  v19 = [(BuddyPosedDeviceSelectionController *)self navigationController:v43];
  view = [v19 view];
  window = [view window];
  windowScene = [window windowScene];
  v23 = sub_100153728([windowScene interfaceOrientation]);

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