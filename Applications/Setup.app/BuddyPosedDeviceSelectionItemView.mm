@interface BuddyPosedDeviceSelectionItemView
- (BOOL)selected;
- (BuddyPosedDeviceSelectionItemView)initWithContentImage:(id)image selectionSegment:(int64_t)segment accessoryView:(id)view hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding;
- (BuddyPosedDeviceSelectionItemView)initWithContentView:(id)view selectionSegment:(int64_t)segment accessoryView:(id)accessoryView;
- (NSDirectionalEdgeInsets)hostViewLayoutMargins;
- (double)_idealPosedDeviceSizeForAspectRatio:(double)ratio layoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding;
- (double)_mainViewToAccessoryViewPadding;
- (double)_preferredHeight;
- (double)accessoryViewAndPaddingHeight;
- (double)contentContainerHeight;
- (double)updateBoundsForMaxContentHeight:(double)height;
- (id)_createContainerSize:(CGRect)size aspectRatio:(double)ratio hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding;
- (id)title;
- (void)setSelected:(BOOL)selected;
@end

@implementation BuddyPosedDeviceSelectionItemView

- (BuddyPosedDeviceSelectionItemView)initWithContentView:(id)view selectionSegment:(int64_t)segment accessoryView:(id)accessoryView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  obj[1] = segment;
  obj[0] = 0;
  objc_storeStrong(obj, accessoryView);
  v7 = selfCopy;
  selfCopy = 0;
  v41.receiver = v7;
  v41.super_class = BuddyPosedDeviceSelectionItemView;
  v8 = [(BuddyPosedDeviceSelectionItemView *)&v41 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(selfCopy + 2, obj[0]);
    objc_storeStrong(selfCopy + 1, location[0]);
    [selfCopy addSubview:*(selfCopy + 2)];
    [selfCopy addSubview:*(selfCopy + 1)];
    [selfCopy _mainViewToAccessoryViewPadding];
    v40 = v9;
    heightAnchor = [*(selfCopy + 1) heightAnchor];
    [*(selfCopy + 1) bounds];
    v12 = [heightAnchor constraintEqualToConstant:v11];
    v46[0] = v12;
    widthAnchor = [*(selfCopy + 1) widthAnchor];
    [*(selfCopy + 1) bounds];
    v15 = [widthAnchor constraintEqualToConstant:v14];
    v46[1] = v15;
    v16 = [NSArray arrayWithObjects:v46 count:2];
    v17 = *(selfCopy + 4);
    *(selfCopy + 4) = v16;

    [*(selfCopy + 1) bounds];
    v19 = v18;
    [*(selfCopy + 1) bounds];
    *(selfCopy + 3) = v19 / v20;
    topAnchor = [*(selfCopy + 1) topAnchor];
    topAnchor2 = [selfCopy topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:?];
    v45[0] = v37;
    centerXAnchor = [*(selfCopy + 1) centerXAnchor];
    centerXAnchor2 = [selfCopy centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:?];
    v45[1] = v34;
    topAnchor3 = [*(selfCopy + 2) topAnchor];
    bottomAnchor = [*(selfCopy + 1) bottomAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v40];
    v45[2] = v23;
    centerXAnchor3 = [*(selfCopy + 2) centerXAnchor];
    centerXAnchor4 = [*(selfCopy + 1) centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v45[3] = v26;
    bottomAnchor2 = [selfCopy bottomAnchor];
    bottomAnchor3 = [*(selfCopy + 2) bottomAnchor];
    v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v40];
    v45[4] = v29;
    v30 = [NSArray arrayWithObjects:v45 count:5];
    [NSLayoutConstraint activateConstraints:v30];

    contentContainerWidthHeightConstraints = [selfCopy contentContainerWidthHeightConstraints];
    [NSLayoutConstraint activateConstraints:contentContainerWidthHeightConstraints];

    [selfCopy layoutSubviews];
    [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v32 = selfCopy;
  objc_storeStrong(obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v32;
}

- (BuddyPosedDeviceSelectionItemView)initWithContentImage:(id)image selectionSegment:(int64_t)segment accessoryView:(id)view hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding
{
  marginsCopy = margins;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  segmentCopy = segment;
  v29 = 0;
  objc_storeStrong(&v29, view);
  paddingCopy = padding;
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
  v17 = selfCopy;
  [v27 bounds];
  v25[0] = [v17 _createContainerSize:v18 aspectRatio:v19 hostViewLayoutMargins:v20 posedDevicesPadding:{v21, v26, *&marginsCopy.top, *&marginsCopy.leading, *&marginsCopy.bottom, *&marginsCopy.trailing, *&paddingCopy, *&v18, *&v19, *&v20, *&v21}];
  [v25[0] addSubview:v27];
  [v27 pinToEdges:v25[0]];
  v22 = selfCopy;
  selfCopy = 0;
  selfCopy = [v22 initWithContentView:v25[0] selectionSegment:segmentCopy accessoryView:v29];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    *(selfCopy + 3) = v26;
    *(selfCopy + 48) = marginsCopy;
    *(selfCopy + 5) = paddingCopy;
  }

  v23 = selfCopy;
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v23;
}

- (double)_idealPosedDeviceSizeForAspectRatio:(double)ratio layoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding
{
  leading = margins.leading;
  trailing = margins.trailing;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    +[OBWelcomeController preferredContentSize];
    v11 = v7 - padding - (leading + trailing);
  }

  else
  {
    v8 = +[UIScreen mainScreen];
    [(UIScreen *)v8 bounds];
    v11 = v9 - padding - (leading + trailing);
  }

  [(BuddyPosedDeviceSelectionItemView *)self buddy_heightForContainerWidth:v11 / 3.0 ratio:ratio];
  return result;
}

- (id)_createContainerSize:(CGRect)size aspectRatio:(double)ratio hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding
{
  sizeCopy = size;
  marginsCopy = margins;
  selfCopy = self;
  v12 = a2;
  ratioCopy = ratio;
  location = [[UIView alloc] initWithFrame:{size.origin.x, size.origin.y, size.size.width, size.size.height}];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BuddyPosedDeviceSelectionItemView *)selfCopy _idealPosedDeviceSizeForAspectRatio:ratioCopy layoutMargins:margins.top posedDevicesPadding:margins.leading, margins.bottom, margins.trailing, padding];
  v7 = [location buddy_scaleHeightTo:v6 ratio:ratioCopy];
  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)setSelected:(BOOL)selected
{
  accessoryView = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)accessoryView setSelected:selected];
}

- (BOOL)selected
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView:a2];
  selected = [(BuddyPosedDeviceSelectionItemAccessoryView *)v2 selected];

  return selected & 1;
}

- (id)title
{
  v2 = [(BuddyPosedDeviceSelectionItemView *)self accessoryView:a2];
  titleLabel = [(BuddyPosedDeviceSelectionItemAccessoryView *)v2 titleLabel];
  text = [(UILabel *)titleLabel text];

  return text;
}

- (double)updateBoundsForMaxContentHeight:(double)height
{
  accessoryView = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)accessoryView bounds];
  v5 = v4;
  [(BuddyPosedDeviceSelectionItemView *)self _mainViewToAccessoryViewPadding];
  v41 = height - (v5 + v6);

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
  contentContainerWidthHeightConstraints = [(BuddyPosedDeviceSelectionItemView *)self contentContainerWidthHeightConstraints];
  [NSLayoutConstraint deactivateConstraints:contentContainerWidthHeightConstraints];

  contentContainer = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  [(BuddyPosedDeviceSelectionItemView *)self aspectRatio];
  v20 = [(UIView *)contentContainer buddy_scaleHeightTo:v35 ratio:v19];

  contentContainer2 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  heightAnchor = [(UIView *)contentContainer2 heightAnchor];
  [(UIView *)self->_contentContainer bounds];
  v24 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:v23];
  v43[0] = v24;
  contentContainer3 = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  widthAnchor = [(UIView *)contentContainer3 widthAnchor];
  [(UIView *)self->_contentContainer bounds];
  v31 = [(NSLayoutDimension *)widthAnchor constraintEqualToConstant:v29, v27, v28, *&v29, v30];
  v43[1] = v31;
  v32 = [NSArray arrayWithObjects:v43 count:2];
  [(BuddyPosedDeviceSelectionItemView *)self setContentContainerWidthHeightConstraints:v32];

  contentContainerWidthHeightConstraints2 = [(BuddyPosedDeviceSelectionItemView *)self contentContainerWidthHeightConstraints];
  [NSLayoutConstraint activateConstraints:contentContainerWidthHeightConstraints2];

  return v35;
}

- (double)accessoryViewAndPaddingHeight
{
  accessoryView = [(BuddyPosedDeviceSelectionItemView *)self accessoryView];
  [(BuddyPosedDeviceSelectionItemAccessoryView *)accessoryView bounds];
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
  contentContainer = [(BuddyPosedDeviceSelectionItemView *)self contentContainer];
  [(UIView *)contentContainer bounds];
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