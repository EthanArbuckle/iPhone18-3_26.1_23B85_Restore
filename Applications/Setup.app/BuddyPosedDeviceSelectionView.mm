@interface BuddyPosedDeviceSelectionView
+ (id)selectionItemWithImageName:(id)name symbolName:(id)symbolName segment:(int64_t)segment text:(id)text hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding;
- (BuddyPosedDeviceSelectionDelegate)delegate;
- (BuddyPosedDeviceSelectionView)initWithLeftView:(id)view centerView:(id)centerView rightView:(id)rightView;
- (void)_updateViewContainerForAccessibilityOptions:(id)options contents:(id)contents;
- (void)didMoveToSuperview;
- (void)selectSegment:(int64_t)segment;
- (void)tapped:(id)tapped;
@end

@implementation BuddyPosedDeviceSelectionView

- (BuddyPosedDeviceSelectionView)initWithLeftView:(id)view centerView:(id)centerView rightView:(id)rightView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v68 = 0;
  objc_storeStrong(&v68, centerView);
  v67 = 0;
  objc_storeStrong(&v67, rightView);
  v7 = selfCopy;
  selfCopy = 0;
  v66.receiver = v7;
  v66.super_class = BuddyPosedDeviceSelectionView;
  v8 = [(BuddyPosedDeviceSelectionView *)&v66 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v9 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v10 = *(selfCopy + 5);
    *(selfCopy + 5) = v9;

    +[BuddyPosedDeviceSelectionView posedDevicesPadding];
    [*(selfCopy + 5) setSpacing:v11 * 0.5];
    [*(selfCopy + 5) setDistribution:1];
    [*(selfCopy + 5) setAxis:0];
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v13 = *(selfCopy + 6);
    *(selfCopy + 6) = v12;

    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(selfCopy + 7);
    *(selfCopy + 7) = v14;

    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = *(selfCopy + 8);
    *(selfCopy + 8) = v16;

    objc_storeStrong(selfCopy + 2, location[0]);
    objc_storeStrong(selfCopy + 3, v68);
    objc_storeStrong(selfCopy + 4, v67);
    [*(selfCopy + 6) addSubview:location[0]];
    [*(selfCopy + 7) addSubview:v68];
    [*(selfCopy + 8) addSubview:v67];
    centerXAnchor = [location[0] centerXAnchor];
    centerXAnchor2 = [*(selfCopy + 6) centerXAnchor];
    v63 = [centerXAnchor constraintEqualToAnchor:?];
    v71[0] = v63;
    widthAnchor = [location[0] widthAnchor];
    widthAnchor2 = [*(selfCopy + 6) widthAnchor];
    v60 = [widthAnchor constraintEqualToAnchor:?];
    v71[1] = v60;
    topAnchor = [location[0] topAnchor];
    topAnchor2 = [*(selfCopy + 6) topAnchor];
    v57 = [topAnchor constraintEqualToAnchor:?];
    v71[2] = v57;
    bottomAnchor = [*(selfCopy + 6) bottomAnchor];
    bottomAnchor2 = [location[0] bottomAnchor];
    v54 = [bottomAnchor constraintEqualToAnchor:?];
    v71[3] = v54;
    centerXAnchor3 = [v68 centerXAnchor];
    centerXAnchor4 = [*(selfCopy + 7) centerXAnchor];
    v51 = [centerXAnchor3 constraintEqualToAnchor:?];
    v71[4] = v51;
    widthAnchor3 = [v68 widthAnchor];
    widthAnchor4 = [*(selfCopy + 7) widthAnchor];
    v48 = [widthAnchor3 constraintEqualToAnchor:?];
    v71[5] = v48;
    topAnchor3 = [v68 topAnchor];
    topAnchor4 = [*(selfCopy + 7) topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:?];
    v71[6] = v45;
    bottomAnchor3 = [*(selfCopy + 7) bottomAnchor];
    bottomAnchor4 = [v68 bottomAnchor];
    v42 = [bottomAnchor3 constraintEqualToAnchor:?];
    v71[7] = v42;
    centerXAnchor5 = [v67 centerXAnchor];
    centerXAnchor6 = [*(selfCopy + 8) centerXAnchor];
    v39 = [centerXAnchor5 constraintEqualToAnchor:?];
    v71[8] = v39;
    widthAnchor5 = [v67 widthAnchor];
    widthAnchor6 = [*(selfCopy + 8) widthAnchor];
    v20 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v71[9] = v20;
    topAnchor5 = [v67 topAnchor];
    topAnchor6 = [*(selfCopy + 8) topAnchor];
    v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v71[10] = v23;
    bottomAnchor5 = [*(selfCopy + 8) bottomAnchor];
    bottomAnchor6 = [v67 bottomAnchor];
    v26 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v71[11] = v26;
    v27 = [NSArray arrayWithObjects:v71 count:12];
    [NSLayoutConstraint activateConstraints:v27];

    [*(selfCopy + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 7) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 8) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 5) addArrangedSubview:*(selfCopy + 6)];
    [*(selfCopy + 5) addArrangedSubview:*(selfCopy + 7)];
    [*(selfCopy + 5) addArrangedSubview:*(selfCopy + 8)];
    [selfCopy addSubview:*(selfCopy + 5)];
    [*(selfCopy + 5) pinToEdges:selfCopy];
    v28 = [UITapGestureRecognizer alloc];
    v29 = [v28 initWithTarget:selfCopy action:"tapped:"];
    v30 = *(selfCopy + 9);
    *(selfCopy + 9) = v29;

    v31 = [UITapGestureRecognizer alloc];
    v32 = [v31 initWithTarget:selfCopy action:"tapped:"];
    v33 = *(selfCopy + 10);
    *(selfCopy + 10) = v32;

    v34 = [UITapGestureRecognizer alloc];
    v35 = [v34 initWithTarget:selfCopy action:"tapped:"];
    v36 = *(selfCopy + 11);
    *(selfCopy + 11) = v35;

    [*(selfCopy + 6) addGestureRecognizer:*(selfCopy + 9)];
    [*(selfCopy + 7) addGestureRecognizer:*(selfCopy + 10)];
    [*(selfCopy + 8) addGestureRecognizer:*(selfCopy + 11)];
  }

  v37 = selfCopy;
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v37;
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = BuddyPosedDeviceSelectionView;
  [(BuddyPosedDeviceSelectionView *)&v11 didMoveToSuperview];
  v2 = selfCopy;
  leftContainer = [(BuddyPosedDeviceSelectionView *)selfCopy leftContainer];
  leftPosedView = [(BuddyPosedDeviceSelectionView *)selfCopy leftPosedView];
  [(BuddyPosedDeviceSelectionView *)v2 _updateViewContainerForAccessibilityOptions:leftContainer contents:leftPosedView];

  v5 = selfCopy;
  centerContainer = [(BuddyPosedDeviceSelectionView *)selfCopy centerContainer];
  centerPosedView = [(BuddyPosedDeviceSelectionView *)selfCopy centerPosedView];
  [(BuddyPosedDeviceSelectionView *)v5 _updateViewContainerForAccessibilityOptions:centerContainer contents:centerPosedView];

  v8 = selfCopy;
  rightContainer = [(BuddyPosedDeviceSelectionView *)selfCopy rightContainer];
  rightPosedView = [(BuddyPosedDeviceSelectionView *)selfCopy rightPosedView];
  [(BuddyPosedDeviceSelectionView *)v8 _updateViewContainerForAccessibilityOptions:rightContainer contents:rightPosedView];
}

- (void)tapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v3 = location[0];
  view = [location[0] view];
  [v3 locationInView:view];
  v6 = v5;
  leftPosedView = [(BuddyPosedDeviceSelectionView *)selfCopy leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)leftPosedView contentContainerHeight];
  v9 = v8;

  if (v6 >= v9)
  {
    view2 = [location[0] view];
    leftContainer = [(BuddyPosedDeviceSelectionView *)selfCopy leftContainer];

    if (view2 == leftContainer)
    {
      [(BuddyPosedDeviceSelectionView *)selfCopy selectSegment:0];
    }

    else
    {
      view3 = [location[0] view];
      centerContainer = [(BuddyPosedDeviceSelectionView *)selfCopy centerContainer];

      if (view3 == centerContainer)
      {
        [(BuddyPosedDeviceSelectionView *)selfCopy selectSegment:2];
      }

      else
      {
        view4 = [location[0] view];
        rightContainer = [(BuddyPosedDeviceSelectionView *)selfCopy rightContainer];

        if (view4 == rightContainer)
        {
          [(BuddyPosedDeviceSelectionView *)selfCopy selectSegment:1];
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)selectSegment:(int64_t)segment
{
  leftPosedView = [(BuddyPosedDeviceSelectionView *)self leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)leftPosedView setSelected:segment == 0];

  centerPosedView = [(BuddyPosedDeviceSelectionView *)self centerPosedView];
  [(BuddyPosedDeviceSelectionItemView *)centerPosedView setSelected:segment == 2];

  rightPosedView = [(BuddyPosedDeviceSelectionView *)self rightPosedView];
  [(BuddyPosedDeviceSelectionItemView *)rightPosedView setSelected:segment == 1];

  leftContainer = [(BuddyPosedDeviceSelectionView *)self leftContainer];
  leftPosedView2 = [(BuddyPosedDeviceSelectionView *)self leftPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:leftContainer contents:leftPosedView2];

  centerContainer = [(BuddyPosedDeviceSelectionView *)self centerContainer];
  centerPosedView2 = [(BuddyPosedDeviceSelectionView *)self centerPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:centerContainer contents:centerPosedView2];

  rightContainer = [(BuddyPosedDeviceSelectionView *)self rightContainer];
  rightPosedView2 = [(BuddyPosedDeviceSelectionView *)self rightPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:rightContainer contents:rightPosedView2];

  delegate = [(BuddyPosedDeviceSelectionView *)self delegate];
  [(BuddyPosedDeviceSelectionDelegate *)delegate didSelectSegment:segment];
}

+ (id)selectionItemWithImageName:(id)name symbolName:(id)symbolName segment:(int64_t)segment text:(id)text hostViewLayoutMargins:(NSDirectionalEdgeInsets)margins posedDevicesPadding:(double)padding
{
  marginsCopy = margins;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v20 = 0;
  objc_storeStrong(&v20, symbolName);
  segmentCopy = segment;
  v18 = 0;
  objc_storeStrong(&v18, text);
  v17[1] = *&padding;
  v12 = [BuddyPosedDeviceSelectionItemAccessoryView alloc];
  v17[0] = [(BuddyPosedDeviceSelectionItemAccessoryView *)v12 initWithSymbol:v20 text:v18];
  v16 = [UIImage imageNamed:location[0]];
  v13 = [BuddyPosedDeviceSelectionItemView alloc];
  padding = [(BuddyPosedDeviceSelectionItemView *)v13 initWithContentImage:v16 selectionSegment:segmentCopy accessoryView:v17[0] hostViewLayoutMargins:marginsCopy.top posedDevicesPadding:marginsCopy.leading, marginsCopy.bottom, marginsCopy.trailing, padding];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return padding;
}

- (void)_updateViewContainerForAccessibilityOptions:(id)options contents:(id)contents
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v8 = 0;
  objc_storeStrong(&v8, contents);
  [location[0] setIsAccessibilityElement:1];
  [location[0] setAccessibilityTraits:UIAccessibilityTraitButton];
  if ([v8 selected])
  {
    v5 = location[0];
    accessibilityTraits = [location[0] accessibilityTraits];
    [v5 setAccessibilityTraits:accessibilityTraits | UIAccessibilityTraitSelected];
  }

  title = [v8 title];
  [location[0] setAccessibilityLabel:title];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BuddyPosedDeviceSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end