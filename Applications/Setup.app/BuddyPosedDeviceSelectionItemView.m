@interface BuddyPosedDeviceSelectionItemView
- (BOOL)selected;
- (BuddyPosedDeviceSelectionItemView)initWithContentImage:(id)a3 selectionSegment:(int64_t)a4 accessoryView:(id)a5 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a6 posedDevicesPadding:(double)a7;
- (BuddyPosedDeviceSelectionItemView)initWithContentView:(id)a3 selectionSegment:(int64_t)a4 accessoryView:(id)a5;
- (NSDirectionalEdgeInsets)hostViewLayoutMargins;
- (double)_idealPosedDeviceSizeForAspectRatio:(double)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 posedDevicesPadding:(double)a5;
- (double)_mainViewToAccessoryViewPadding;
- (double)_preferredHeight;
- (double)accessoryViewAndPaddingHeight;
- (double)contentContainerHeight;
- (double)updateBoundsForMaxContentHeight:(double)a3;
- (id)_createContainerSize:(CGRect)a3 aspectRatio:(double)a4 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a5 posedDevicesPadding:(double)a6;
- (id)title;
- (void)setSelected:(BOOL)a3;
@end

@implementation BuddyPosedDeviceSelectionItemView

- (BuddyPosedDeviceSelectionItemView)initWithContentView:(id)a3 selectionSegment:(int64_t)a4 accessoryView:(id)a5
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj[1] = a4;
  obj[0] = 0;
  objc_storeStrong(obj, a5);
  v7 = v44;
  v44 = 0;
  v41.receiver = v7;
  v41.super_class = BuddyPosedDeviceSelectionItemView;
  v8 = [(BuddyPosedDeviceSelectionItemView *)&v41 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v44 = v8;
  objc_storeStrong(&v44, v8);
  if (v8)
  {
    objc_storeStrong(v44 + 2, obj[0]);
    objc_storeStrong(v44 + 1, location[0]);
    [v44 addSubview:*(v44 + 2)];
    [v44 addSubview:*(v44 + 1)];
    [v44 _mainViewToAccessoryViewPadding];
    v40 = v9;
    v10 = [*(v44 + 1) heightAnchor];
    [*(v44 + 1) bounds];
    v12 = [v10 constraintEqualToConstant:v11];
    v46[0] = v12;
    v13 = [*(v44 + 1) widthAnchor];
    [*(v44 + 1) bounds];
    v15 = [v13 constraintEqualToConstant:v14];
    v46[1] = v15;
    v16 = [NSArray arrayWithObjects:v46 count:2];
    v17 = *(v44 + 4);
    *(v44 + 4) = v16;

    [*(v44 + 1) bounds];
    v19 = v18;
    [*(v44 + 1) bounds];
    *(v44 + 3) = v19 / v20;
    v39 = [*(v44 + 1) topAnchor];
    v38 = [v44 topAnchor];
    v37 = [v39 constraintEqualToAnchor:?];
    v45[0] = v37;
    v36 = [*(v44 + 1) centerXAnchor];
    v35 = [v44 centerXAnchor];
    v34 = [v36 constraintEqualToAnchor:?];
    v45[1] = v34;
    v21 = [*(v44 + 2) topAnchor];
    v22 = [*(v44 + 1) bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:v40];
    v45[2] = v23;
    v24 = [*(v44 + 2) centerXAnchor];
    v25 = [*(v44 + 1) centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v45[3] = v26;
    v27 = [v44 bottomAnchor];
    v28 = [*(v44 + 2) bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:v40];
    v45[4] = v29;
    v30 = [NSArray arrayWithObjects:v45 count:5];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = [v44 contentContainerWidthHeightConstraints];
    [NSLayoutConstraint activateConstraints:v31];

    [v44 layoutSubviews];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v32 = v44;
  objc_storeStrong(obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v44, 0);
  return v32;
}

- (BuddyPosedDeviceSelectionItemView)initWithContentImage:(id)a3 selectionSegment:(int64_t)a4 accessoryView:(id)a5 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a6 posedDevicesPadding:(double)a7
{
  v33 = a6;
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = a7;
  v10 = [UIImageView alloc];
  v27 = [v10 initWithImage:location[0]];
  v11 = [UIColor colorWithRed:0.152941182 green:0.152941182 blue:0.152941182 alpha:1.0];
  [v27 setTintColor:v11];

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [location[0] size];
  v25[3] = v12;
  v25[4] = v13;
  v14 = *&v13;
  [location[0] size];
  v25[1] = v15;
  v25[2] = v16;
  v26 = v14 / *&v15;
  v17 = v32;
  [v27 bounds];
  v25[0] = [v17 _createContainerSize:v18 aspectRatio:v19 hostViewLayoutMargins:v20 posedDevicesPadding:{v21, v26, *&v33.top, *&v33.leading, *&v33.bottom, *&v33.trailing, *&v28, *&v18, *&v19, *&v20, *&v21}];
  [v25[0] addSubview:v27];
  [v27 pinToEdges:v25[0]];
  v22 = v32;
  v32 = 0;
  v32 = [v22 initWithContentView:v25[0] selectionSegment:v30 accessoryView:v29];
  objc_storeStrong(&v32, v32);
  if (v32)
  {
    *(v32 + 3) = v26;
    *(v32 + 48) = v33;
    *(v32 + 5) = v28;
  }

  v23 = v32;
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v32, 0);
  return v23;
}

- (double)_idealPosedDeviceSizeForAspectRatio:(double)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 posedDevicesPadding:(double)a5
{
  leading = a4.leading;
  trailing = a4.trailing;
  v5 = +[UIDevice currentDevice];
  v6 = [(UIDevice *)v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    +[OBWelcomeController preferredContentSize];
    v11 = v7 - a5 - (leading + trailing);
  }

  else
  {
    v8 = +[UIScreen mainScreen];
    [(UIScreen *)v8 bounds];
    v11 = v9 - a5 - (leading + trailing);
  }

  [(BuddyPosedDeviceSelectionItemView *)self buddy_heightForContainerWidth:v11 / 3.0 ratio:a3];
  return result;
}

- (id)_createContainerSize:(CGRect)a3 aspectRatio:(double)a4 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a5 posedDevicesPadding:(double)a6
{
  v15 = a3;
  v14 = a5;
  v13 = self;
  v12 = a2;
  v11 = a4;
  location = [[UIView alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BuddyPosedDeviceSelectionItemView *)v13 _idealPosedDeviceSizeForAspectRatio:v11 layoutMargins:a5.top posedDevicesPadding:a5.leading, a5.bottom, a5.trailing, a6];
  v7 = [location buddy_scaleHeightTo:v6 ratio:v11];
  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)setSelected:(BOOL)a3
{
  v4 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)v4 setSelected:a3];
}

- (BOOL)selected
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView:a2];
  v3 = [(BuddyPosedDeviceSelectionItemAccessoryView *)v2 selected];

  return v3 & 1;
}

- (id)title
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView:a2];
  v3 = [(BuddyPosedDeviceSelectionItemAccessoryView *)v2 titleLabel];
  v4 = [(UILabel *)v3 text];

  return v4;
}

- (double)updateBoundsForMaxContentHeight:(double)a3
{
  v3 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)v3 bounds];
  v5 = v4;
  [(BuddyPosedDeviceSelectionItemView *)self _mainViewToAccessoryViewPadding];
  v41 = a3 - (v5 + v6);

  [(BuddyPosedDeviceSelectionItemView *)self aspectRatio];
  v8 = v7;
  [(BuddyPosedDeviceSelectionItemView *)self hostViewLayoutMargins];
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  [(BuddyPosedDeviceSelectionItemView *)self posedDevicesPadding];
  [(BuddyPosedDeviceSelectionItemView *)self _idealPosedDeviceSizeForAspectRatio:v8 layoutMargins:v36 posedDevicesPadding:v37, v38, v39, v13];
  v15 = sub_100156BEC(v41, v14);
  [(BuddyPosedDeviceSelectionItemView *)self _preferredHeight];
  v35 = sub_100156BEC(v15, v16);
  v17 = [(BuddyPosedDeviceSelectionItemView *)self contentContainerWidthHeightConstraints];
  [NSLayoutConstraint deactivateConstraints:v17];

  v18 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  [(BuddyPosedDeviceSelectionItemView *)self aspectRatio];
  v20 = [(UIView *)v18 buddy_scaleHeightTo:v35 ratio:v19];

  v21 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  v22 = [(UIView *)v21 heightAnchor];
  [(UIView *)self->_contentContainer bounds];
  v24 = [(NSLayoutDimension *)v22 constraintEqualToConstant:v23];
  v43[0] = v24;
  v25 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  v26 = [(UIView *)v25 widthAnchor];
  [(UIView *)self->_contentContainer bounds];
  v31 = [(NSLayoutDimension *)v26 constraintEqualToConstant:v29, v27, v28, *&v29, v30];
  v43[1] = v31;
  v32 = [NSArray arrayWithObjects:v43 count:2];
  [(BuddyPosedDeviceSelectionItemView *)self setContentContainerWidthHeightConstraints:v32];

  v33 = [(BuddyPosedDeviceSelectionItemView *)self contentContainerWidthHeightConstraints];
  [NSLayoutConstraint activateConstraints:v33];

  return v35;
}

- (double)accessoryViewAndPaddingHeight
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)v2 bounds];
  v4 = v3;
  [(BuddyPosedDeviceSelectionItemView *)self _mainViewToAccessoryViewPadding:v5];
  v9 = v4 + v8;

  return v9;
}

- (double)_preferredHeight
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 bounds];
  v4 = v3 * 0.3;

  return v4;
}

- (double)_mainViewToAccessoryViewPadding
{
  v5 = 22.0;
  v2 = +[BYDevice currentDevice];
  v3 = [v2 size];

  if (v3 == 2)
  {
    return 10.0;
  }

  return v5;
}

- (double)contentContainerHeight
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  [(UIView *)v2 bounds];
  v4 = v3;

  return v4;
}

- (NSDirectionalEdgeInsets)hostViewLayoutMargins
{
  leading = self->_hostViewLayoutMargins.leading;
  top = self->_hostViewLayoutMargins.top;
  trailing = self->_hostViewLayoutMargins.trailing;
  bottom = self->_hostViewLayoutMargins.bottom;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end