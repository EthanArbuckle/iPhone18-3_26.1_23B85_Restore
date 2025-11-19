@interface BuddyPosedDeviceSelectionView
+ (id)selectionItemWithImageName:(id)a3 symbolName:(id)a4 segment:(int64_t)a5 text:(id)a6 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a7 posedDevicesPadding:(double)a8;
- (BuddyPosedDeviceSelectionDelegate)delegate;
- (BuddyPosedDeviceSelectionView)initWithLeftView:(id)a3 centerView:(id)a4 rightView:(id)a5;
- (void)_updateViewContainerForAccessibilityOptions:(id)a3 contents:(id)a4;
- (void)didMoveToSuperview;
- (void)selectSegment:(int64_t)a3;
- (void)tapped:(id)a3;
@end

@implementation BuddyPosedDeviceSelectionView

- (BuddyPosedDeviceSelectionView)initWithLeftView:(id)a3 centerView:(id)a4 rightView:(id)a5
{
  v70 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v68 = 0;
  objc_storeStrong(&v68, a4);
  v67 = 0;
  objc_storeStrong(&v67, a5);
  v7 = v70;
  v70 = 0;
  v66.receiver = v7;
  v66.super_class = BuddyPosedDeviceSelectionView;
  v8 = [(BuddyPosedDeviceSelectionView *)&v66 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v70 = v8;
  objc_storeStrong(&v70, v8);
  if (v8)
  {
    v9 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v10 = *(v70 + 5);
    *(v70 + 5) = v9;

    +[BuddyPosedDeviceSelectionView posedDevicesPadding];
    [*(v70 + 5) setSpacing:v11 * 0.5];
    [*(v70 + 5) setDistribution:1];
    [*(v70 + 5) setAxis:0];
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v13 = *(v70 + 6);
    *(v70 + 6) = v12;

    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(v70 + 7);
    *(v70 + 7) = v14;

    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = *(v70 + 8);
    *(v70 + 8) = v16;

    objc_storeStrong(v70 + 2, location[0]);
    objc_storeStrong(v70 + 3, v68);
    objc_storeStrong(v70 + 4, v67);
    [*(v70 + 6) addSubview:location[0]];
    [*(v70 + 7) addSubview:v68];
    [*(v70 + 8) addSubview:v67];
    v65 = [location[0] centerXAnchor];
    v64 = [*(v70 + 6) centerXAnchor];
    v63 = [v65 constraintEqualToAnchor:?];
    v71[0] = v63;
    v62 = [location[0] widthAnchor];
    v61 = [*(v70 + 6) widthAnchor];
    v60 = [v62 constraintEqualToAnchor:?];
    v71[1] = v60;
    v59 = [location[0] topAnchor];
    v58 = [*(v70 + 6) topAnchor];
    v57 = [v59 constraintEqualToAnchor:?];
    v71[2] = v57;
    v56 = [*(v70 + 6) bottomAnchor];
    v55 = [location[0] bottomAnchor];
    v54 = [v56 constraintEqualToAnchor:?];
    v71[3] = v54;
    v53 = [v68 centerXAnchor];
    v52 = [*(v70 + 7) centerXAnchor];
    v51 = [v53 constraintEqualToAnchor:?];
    v71[4] = v51;
    v50 = [v68 widthAnchor];
    v49 = [*(v70 + 7) widthAnchor];
    v48 = [v50 constraintEqualToAnchor:?];
    v71[5] = v48;
    v47 = [v68 topAnchor];
    v46 = [*(v70 + 7) topAnchor];
    v45 = [v47 constraintEqualToAnchor:?];
    v71[6] = v45;
    v44 = [*(v70 + 7) bottomAnchor];
    v43 = [v68 bottomAnchor];
    v42 = [v44 constraintEqualToAnchor:?];
    v71[7] = v42;
    v41 = [v67 centerXAnchor];
    v40 = [*(v70 + 8) centerXAnchor];
    v39 = [v41 constraintEqualToAnchor:?];
    v71[8] = v39;
    v18 = [v67 widthAnchor];
    v19 = [*(v70 + 8) widthAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v71[9] = v20;
    v21 = [v67 topAnchor];
    v22 = [*(v70 + 8) topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v71[10] = v23;
    v24 = [*(v70 + 8) bottomAnchor];
    v25 = [v67 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v71[11] = v26;
    v27 = [NSArray arrayWithObjects:v71 count:12];
    [NSLayoutConstraint activateConstraints:v27];

    [*(v70 + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v70 + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v70 + 7) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v70 + 8) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v70 + 5) addArrangedSubview:*(v70 + 6)];
    [*(v70 + 5) addArrangedSubview:*(v70 + 7)];
    [*(v70 + 5) addArrangedSubview:*(v70 + 8)];
    [v70 addSubview:*(v70 + 5)];
    [*(v70 + 5) pinToEdges:v70];
    v28 = [UITapGestureRecognizer alloc];
    v29 = [v28 initWithTarget:v70 action:"tapped:"];
    v30 = *(v70 + 9);
    *(v70 + 9) = v29;

    v31 = [UITapGestureRecognizer alloc];
    v32 = [v31 initWithTarget:v70 action:"tapped:"];
    v33 = *(v70 + 10);
    *(v70 + 10) = v32;

    v34 = [UITapGestureRecognizer alloc];
    v35 = [v34 initWithTarget:v70 action:"tapped:"];
    v36 = *(v70 + 11);
    *(v70 + 11) = v35;

    [*(v70 + 6) addGestureRecognizer:*(v70 + 9)];
    [*(v70 + 7) addGestureRecognizer:*(v70 + 10)];
    [*(v70 + 8) addGestureRecognizer:*(v70 + 11)];
  }

  v37 = v70;
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v70, 0);
  return v37;
}

- (void)didMoveToSuperview
{
  v13 = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = BuddyPosedDeviceSelectionView;
  [(BuddyPosedDeviceSelectionView *)&v11 didMoveToSuperview];
  v2 = v13;
  v3 = [(BuddyPosedDeviceSelectionView *)v13 leftContainer];
  v4 = [(BuddyPosedDeviceSelectionView *)v13 leftPosedView];
  [(BuddyPosedDeviceSelectionView *)v2 _updateViewContainerForAccessibilityOptions:v3 contents:v4];

  v5 = v13;
  v6 = [(BuddyPosedDeviceSelectionView *)v13 centerContainer];
  v7 = [(BuddyPosedDeviceSelectionView *)v13 centerPosedView];
  [(BuddyPosedDeviceSelectionView *)v5 _updateViewContainerForAccessibilityOptions:v6 contents:v7];

  v8 = v13;
  v9 = [(BuddyPosedDeviceSelectionView *)v13 rightContainer];
  v10 = [(BuddyPosedDeviceSelectionView *)v13 rightPosedView];
  [(BuddyPosedDeviceSelectionView *)v8 _updateViewContainerForAccessibilityOptions:v9 contents:v10];
}

- (void)tapped:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [location[0] view];
  [v3 locationInView:v4];
  v6 = v5;
  v7 = [(BuddyPosedDeviceSelectionView *)v17 leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)v7 contentContainerHeight];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = [location[0] view];
    v11 = [(BuddyPosedDeviceSelectionView *)v17 leftContainer];

    if (v10 == v11)
    {
      [(BuddyPosedDeviceSelectionView *)v17 selectSegment:0];
    }

    else
    {
      v12 = [location[0] view];
      v13 = [(BuddyPosedDeviceSelectionView *)v17 centerContainer];

      if (v12 == v13)
      {
        [(BuddyPosedDeviceSelectionView *)v17 selectSegment:2];
      }

      else
      {
        v14 = [location[0] view];
        v15 = [(BuddyPosedDeviceSelectionView *)v17 rightContainer];

        if (v14 == v15)
        {
          [(BuddyPosedDeviceSelectionView *)v17 selectSegment:1];
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)selectSegment:(int64_t)a3
{
  v3 = [(BuddyPosedDeviceSelectionView *)self leftPosedView];
  [(BuddyPosedDeviceSelectionItemView *)v3 setSelected:a3 == 0];

  v4 = [(BuddyPosedDeviceSelectionView *)self centerPosedView];
  [(BuddyPosedDeviceSelectionItemView *)v4 setSelected:a3 == 2];

  v5 = [(BuddyPosedDeviceSelectionView *)self rightPosedView];
  [(BuddyPosedDeviceSelectionItemView *)v5 setSelected:a3 == 1];

  v6 = [(BuddyPosedDeviceSelectionView *)self leftContainer];
  v7 = [(BuddyPosedDeviceSelectionView *)self leftPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:v6 contents:v7];

  v8 = [(BuddyPosedDeviceSelectionView *)self centerContainer];
  v9 = [(BuddyPosedDeviceSelectionView *)self centerPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:v8 contents:v9];

  v10 = [(BuddyPosedDeviceSelectionView *)self rightContainer];
  v11 = [(BuddyPosedDeviceSelectionView *)self rightPosedView];
  [(BuddyPosedDeviceSelectionView *)self _updateViewContainerForAccessibilityOptions:v10 contents:v11];

  v12 = [(BuddyPosedDeviceSelectionView *)self delegate];
  [(BuddyPosedDeviceSelectionDelegate *)v12 didSelectSegment:a3];
}

+ (id)selectionItemWithImageName:(id)a3 symbolName:(id)a4 segment:(int64_t)a5 text:(id)a6 hostViewLayoutMargins:(NSDirectionalEdgeInsets)a7 posedDevicesPadding:(double)a8
{
  v22 = a7;
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = a5;
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v17[1] = *&a8;
  v12 = [BuddyPosedDeviceSelectionItemAccessoryView alloc];
  v17[0] = [(BuddyPosedDeviceSelectionItemAccessoryView *)v12 initWithSymbol:v20 text:v18];
  v16 = [UIImage imageNamed:location[0]];
  v13 = [BuddyPosedDeviceSelectionItemView alloc];
  v14 = [(BuddyPosedDeviceSelectionItemView *)v13 initWithContentImage:v16 selectionSegment:v19 accessoryView:v17[0] hostViewLayoutMargins:v22.top posedDevicesPadding:v22.leading, v22.bottom, v22.trailing, a8];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v14;
}

- (void)_updateViewContainerForAccessibilityOptions:(id)a3 contents:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [location[0] setIsAccessibilityElement:1];
  [location[0] setAccessibilityTraits:UIAccessibilityTraitButton];
  if ([v8 selected])
  {
    v5 = location[0];
    v6 = [location[0] accessibilityTraits];
    [v5 setAccessibilityTraits:v6 | UIAccessibilityTraitSelected];
  }

  v7 = [v8 title];
  [location[0] setAccessibilityLabel:v7];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BuddyPosedDeviceSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end