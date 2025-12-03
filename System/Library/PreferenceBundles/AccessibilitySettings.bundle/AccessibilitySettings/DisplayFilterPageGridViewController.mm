@interface DisplayFilterPageGridViewController
- (DisplayFilterPageGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_dynamicPreviewView;
- (void)_updateConstraints;
- (void)loadView;
- (void)setPageHeight:(double)height;
@end

@implementation DisplayFilterPageGridViewController

- (DisplayFilterPageGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = DisplayFilterPageGridViewController;
  v4 = [(DisplayFilterPageGridViewController *)&v14 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    pageHeightConstraints = v4->_pageHeightConstraints;
    v4->_pageHeightConstraints = v5;

    v7 = objc_opt_new();
    swatchWidthConstraints = v4->_swatchWidthConstraints;
    v4->_swatchWidthConstraints = v7;

    v9 = objc_opt_new();
    swatchHeightConstraints = v4->_swatchHeightConstraints;
    v4->_swatchHeightConstraints = v9;

    v11 = objc_opt_new();
    labelHeightConstraints = v4->_labelHeightConstraints;
    v4->_labelHeightConstraints = v11;
  }

  return v4;
}

- (void)setPageHeight:(double)height
{
  v5.receiver = self;
  v5.super_class = DisplayFilterPageGridViewController;
  [(DisplayFilterPageViewController *)&v5 setPageHeight:height];
  view = [(DisplayFilterPageGridViewController *)self view];
  [(DisplayFilterPageGridViewController *)self _updateConstraints];
}

- (void)_updateConstraints
{
  [(DisplayFilterPageViewController *)self pageHeight];
  v4 = floor(v3 / 6.0);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  swatchWidthConstraints = [(DisplayFilterPageGridViewController *)self swatchWidthConstraints];
  v6 = [swatchWidthConstraints countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(swatchWidthConstraints);
        }

        [*(*(&v37 + 1) + 8 * v9) setConstant:v4 * 6.0 / 3.0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [swatchWidthConstraints countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  swatchHeightConstraints = [(DisplayFilterPageGridViewController *)self swatchHeightConstraints];
  v11 = [swatchHeightConstraints countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(swatchHeightConstraints);
        }

        [*(*(&v33 + 1) + 8 * v14) setConstant:v4];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [swatchHeightConstraints countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  labelHeightConstraints = [(DisplayFilterPageGridViewController *)self labelHeightConstraints];
  v16 = [labelHeightConstraints countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(labelHeightConstraints);
        }

        [*(*(&v29 + 1) + 8 * v19) setConstant:v4];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [labelHeightConstraints countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  pageHeightConstraints = [(DisplayFilterPageGridViewController *)self pageHeightConstraints];
  v21 = [pageHeightConstraints countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(pageHeightConstraints);
        }

        [*(*(&v25 + 1) + 8 * v24) setConstant:v4 * 6.0];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [pageHeightConstraints countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)_dynamicPreviewView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  v4 = [UIStackView alloc];
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  [v5 setAxis:1];
  [v5 setSpacing:0.0];
  [v5 setAlignment:4];
  [v5 setAutoresizingMask:18];
  v78 = v5;
  [v3 addSubview:v5];
  [v3 setIsAccessibilityElement:1];
  v6 = settingsLocString(@"DISPLAY_FILTER_PREVIEW_AX_LABEL", @"Accessibility");
  v77 = v3;
  [v3 setAccessibilityLabel:v6];

  v72 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:0.6];
  v97[0] = v72;
  v85 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v97[1] = v85;
  v83 = [UIColor colorWithRed:0.878431373 green:0.0235294118 blue:0.105882353 alpha:1.0];
  v97[2] = v83;
  v81 = [NSArray arrayWithObjects:v97 count:3];
  v98[0] = v81;
  v79 = [UIColor colorWithRed:1.0 green:0.584313725 blue:0.0 alpha:0.6];
  v96[0] = v79;
  v75 = [UIColor colorWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  v96[1] = v75;
  v74 = [UIColor colorWithRed:0.937254902 green:0.337254902 blue:0.00784313725 alpha:1.0];
  v96[2] = v74;
  v73 = [NSArray arrayWithObjects:v96 count:3];
  v98[1] = v73;
  v71 = [UIColor colorWithRed:1.0 green:0.8 blue:0.0 alpha:0.6];
  v95[0] = v71;
  v70 = [UIColor colorWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];
  v95[1] = v70;
  v69 = [UIColor colorWithRed:0.949019608 green:0.71372549 blue:0.0 alpha:1.0];
  v95[2] = v69;
  v68 = [NSArray arrayWithObjects:v95 count:3];
  v98[2] = v68;
  v67 = [UIColor colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:0.6];
  v94[0] = v67;
  v66 = [UIColor colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  v94[1] = v66;
  v65 = [UIColor colorWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  v94[2] = v65;
  v64 = [NSArray arrayWithObjects:v94 count:3];
  v98[3] = v64;
  v7 = [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:0.6];
  v93[0] = v7;
  v8 = [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v93[1] = v8;
  v9 = [UIColor colorWithRed:0.0 green:0.250980392 blue:0.866666667 alpha:1.0];
  v93[2] = v9;
  v10 = [NSArray arrayWithObjects:v93 count:3];
  v98[4] = v10;
  v11 = [UIColor colorWithRed:0.8 green:0.607843137 blue:0.882352941 alpha:0.6];
  v92[0] = v11;
  v12 = [UIColor colorWithRed:0.8 green:0.607843137 blue:0.882352941 alpha:1.0];
  v92[1] = v12;
  v13 = [UIColor colorWithRed:0.717647059 green:0.0 blue:0.815686275 alpha:1.0];
  v92[2] = v13;
  v14 = [NSArray arrayWithObjects:v92 count:3];
  v98[5] = v14;
  v76 = [NSArray arrayWithObjects:v98 count:6];

  v15 = [&off_27CC08 count];
  height = UILayoutFittingCompressedSize.height;
  if (v15)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v17;
      v20 = [&off_27CC08 objectAtIndexedSubscript:v18];
      v21 = settingsLocString(v20, @"Accessibility");

      v86 = v18;
      v22 = [v76 objectAtIndexedSubscript:v18];
      v23 = [UIStackView alloc];
      [v77 bounds];
      v24 = [v23 initWithFrame:?];
      [v24 setAxis:0];
      [v24 setSpacing:0.0];
      [v24 setAlignment:4];
      [v24 setAutoresizingMask:18];
      [v78 addArrangedSubview:v24];
      v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 50.0, 10.0}];
      v26 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 50.0, 10.0}];
      v27 = [UIFont boldSystemFontOfSize:15.0];
      [v26 setFont:v27];

      v84 = v21;
      [v26 setText:v21];
      [v25 addSubview:v26];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = v25;
      v29 = [NSLayoutConstraint constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v28 attribute:3 multiplier:1.0 constant:5.0];
      [v28 addConstraint:v29];

      v30 = v28;
      v31 = [NSLayoutConstraint constraintWithItem:v26 attribute:4 relatedBy:0 toItem:v30 attribute:4 multiplier:1.0 constant:-5.0];
      [v30 addConstraint:v31];

      v32 = v30;
      v33 = [NSLayoutConstraint constraintWithItem:v26 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:0.0];
      [v32 addConstraint:v33];

      v34 = v32;
      v82 = v26;
      v35 = [NSLayoutConstraint constraintWithItem:v26 attribute:6 relatedBy:0 toItem:v34 attribute:6 multiplier:1.0 constant:-10.0];
      [v34 addConstraint:v35];

      [v34 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v37 = v36;
      v17 = [NSLayoutConstraint constraintWithItem:v34 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:?];

      [v34 addConstraint:v17];
      labelHeightConstraints = [(DisplayFilterPageGridViewController *)self labelHeightConstraints];
      [labelHeightConstraints addObject:v17];

      v80 = v34;
      [v24 addArrangedSubview:v34];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v39 = v22;
      v40 = [v39 countByEnumeratingWithState:&v87 objects:v91 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v88;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v88 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v87 + 1) + 8 * i);
            v45 = [[UIView alloc] initWithFrame:{0.0, 0.0, v37, v37}];
            [v45 setBackgroundColor:v44];
            [v24 addArrangedSubview:v45];
            v46 = [NSLayoutConstraint constraintWithItem:v45 attribute:7 relatedBy:0 toItem:0 attribute:7 multiplier:1.0 constant:v37];

            [v45 addConstraint:v46];
            swatchWidthConstraints = [(DisplayFilterPageGridViewController *)self swatchWidthConstraints];
            [swatchWidthConstraints addObject:v46];

            v17 = [NSLayoutConstraint constraintWithItem:v45 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v37];

            [v45 addConstraint:v17];
            swatchHeightConstraints = [(DisplayFilterPageGridViewController *)self swatchHeightConstraints];
            [swatchHeightConstraints addObject:v17];
          }

          v41 = [v39 countByEnumeratingWithState:&v87 objects:v91 count:16];
        }

        while (v41);
      }

      v18 = v86 + 1;
    }

    while (v86 + 1 < [&off_27CC08 count]);
  }

  [v78 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
  v50 = v49;
  [v77 frame];
  [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = v77;
  v52 = [NSLayoutConstraint constraintWithItem:v78 attribute:3 relatedBy:0 toItem:v51 attribute:3 multiplier:1.0 constant:0.0];
  [v51 addConstraint:v52];

  v53 = v51;
  v54 = [NSLayoutConstraint constraintWithItem:v78 attribute:4 relatedBy:0 toItem:v53 attribute:4 multiplier:1.0 constant:0.0];
  [v53 addConstraint:v54];

  v55 = v53;
  v56 = [NSLayoutConstraint constraintWithItem:v78 attribute:5 relatedBy:0 toItem:v55 attribute:5 multiplier:1.0 constant:0.0];
  [v55 addConstraint:v56];

  v57 = v55;
  v58 = [NSLayoutConstraint constraintWithItem:v78 attribute:6 relatedBy:0 toItem:v57 attribute:6 multiplier:1.0 constant:0.0];
  [v57 addConstraint:v58];

  v59 = [NSLayoutConstraint constraintWithItem:v57 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v50];
  [v57 addConstraint:v59];
  pageHeightConstraints = [(DisplayFilterPageGridViewController *)self pageHeightConstraints];
  [pageHeightConstraints addObject:v59];

  v61 = [NSLayoutConstraint constraintWithItem:v78 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v50];

  [v78 addConstraint:v61];
  pageHeightConstraints2 = [(DisplayFilterPageGridViewController *)self pageHeightConstraints];
  [pageHeightConstraints2 addObject:v61];

  return v57;
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 600.0, 600.0}];
  [(DisplayFilterPageGridViewController *)self setView:v3];
  _dynamicPreviewView = [(DisplayFilterPageGridViewController *)self _dynamicPreviewView];
  [v3 addSubview:_dynamicPreviewView];
  [_dynamicPreviewView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v3;
  v6 = [NSLayoutConstraint constraintWithItem:_dynamicPreviewView attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
  [v5 addConstraint:v6];

  v8 = v5;
  v7 = [NSLayoutConstraint constraintWithItem:_dynamicPreviewView attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
  [v8 addConstraint:v7];
}

@end