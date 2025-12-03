@interface BKActionMenuPositionCell
- (BKActionMenuPositionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (BKImageRadioButtonView)leftView;
- (BKImageRadioButtonView)rightView;
- (id)accessibilityElements;
@end

@implementation BKActionMenuPositionCell

- (BKActionMenuPositionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v91.receiver = self;
  v91.super_class = BKActionMenuPositionCell;
  v4 = [(BKActionMenuPositionCell *)&v91 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [BKImageRadioButtonView alloc];
    v6 = BKSettingsBundle();
    v7 = [v6 localizedStringForKey:@"Left" value:&stru_14E68 table:@"Settings"];
    v8 = [(BKImageRadioButtonView *)v5 initWithImageName:@"ActionMenuSettingLeft" title:v7];

    objc_storeWeak(&v4->_leftView, v8);
    v9 = [BKImageRadioButtonView alloc];
    v10 = BKSettingsBundle();
    v11 = [v10 localizedStringForKey:@"Right" value:&stru_14E68 table:@"Settings"];
    v12 = [(BKImageRadioButtonView *)v9 initWithImageName:@"ActionMenuSettingRight" title:v11];

    objc_storeWeak(&v4->_rightView, v12);
    v13 = +[BooksSettings shared];
    menuOnLeft = [v13 menuOnLeft];

    [(BKActionMenuPositionCell *)v4 _updateSelection:menuOnLeft];
    contentView = [(BKActionMenuPositionCell *)v4 contentView];
    [contentView addSubview:v8];

    contentView2 = [(BKActionMenuPositionCell *)v4 contentView];
    [contentView2 addSubview:v12];

    v17 = [[BKViewTapGestureRecognizer alloc] initWithTarget:v4 action:"_setActionMenuOnLeft:"];
    [(BKImageRadioButtonView *)v8 addGestureRecognizer:v17];

    v18 = [[BKViewTapGestureRecognizer alloc] initWithTarget:v4 action:"_setActionMenuOnRight:"];
    [(BKImageRadioButtonView *)v12 addGestureRecognizer:v18];

    v19 = objc_opt_new();
    v94[0] = v19;
    v20 = objc_opt_new();
    v94[1] = v20;
    v21 = objc_opt_new();
    v94[2] = v21;
    v22 = [NSArray arrayWithObjects:v94 count:3];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v88;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v88 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v87 + 1) + 8 * i);
          [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
          backgroundColor = [(BKActionMenuPositionCell *)v4 backgroundColor];
          [v28 setBackgroundColor:backgroundColor];

          contentView3 = [(BKActionMenuPositionCell *)v4 contentView];
          [contentView3 addSubview:v28];

          heightAnchor = [v28 heightAnchor];
          v32 = [heightAnchor constraintEqualToConstant:10.0];
          [v32 setActive:1];
        }

        v25 = [v23 countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v25);
    }

    topAnchor = [(BKImageRadioButtonView *)v8 topAnchor];
    contentView4 = [(BKActionMenuPositionCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v83 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v92[0] = v83;
    bottomAnchor = [(BKImageRadioButtonView *)v8 bottomAnchor];
    contentView5 = [(BKActionMenuPositionCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v92[1] = v79;
    topAnchor3 = [(BKImageRadioButtonView *)v12 topAnchor];
    contentView6 = [(BKActionMenuPositionCell *)v4 contentView];
    topAnchor4 = [contentView6 topAnchor];
    v75 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v92[2] = v75;
    bottomAnchor3 = [(BKImageRadioButtonView *)v12 bottomAnchor];
    contentView7 = [(BKActionMenuPositionCell *)v4 contentView];
    bottomAnchor4 = [contentView7 bottomAnchor];
    v71 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v92[3] = v71;
    v70 = [v23 objectAtIndexedSubscript:0];
    leftAnchor = [v70 leftAnchor];
    leftAnchor2 = [(BKActionMenuPositionCell *)v4 leftAnchor];
    v67 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v92[4] = v67;
    leftAnchor3 = [(BKImageRadioButtonView *)v8 leftAnchor];
    v66 = [v23 objectAtIndexedSubscript:0];
    rightAnchor = [v66 rightAnchor];
    v63 = [leftAnchor3 constraintEqualToAnchor:rightAnchor];
    v92[5] = v63;
    v62 = [v23 objectAtIndexedSubscript:1];
    leftAnchor4 = [v62 leftAnchor];
    rightAnchor2 = [(BKImageRadioButtonView *)v8 rightAnchor];
    v57 = [leftAnchor4 constraintEqualToAnchor:rightAnchor2];
    v92[6] = v57;
    leftAnchor5 = [(BKImageRadioButtonView *)v12 leftAnchor];
    v56 = [v23 objectAtIndexedSubscript:1];
    rightAnchor3 = [v56 rightAnchor];
    v53 = [leftAnchor5 constraintEqualToAnchor:rightAnchor3];
    v92[7] = v53;
    v52 = [v23 objectAtIndexedSubscript:2];
    leftAnchor6 = [v52 leftAnchor];
    rightAnchor4 = [(BKImageRadioButtonView *)v12 rightAnchor];
    v49 = [leftAnchor6 constraintEqualToAnchor:rightAnchor4];
    v92[8] = v49;
    v48 = [v23 objectAtIndexedSubscript:2];
    rightAnchor5 = [v48 rightAnchor];
    rightAnchor6 = [(BKActionMenuPositionCell *)v4 rightAnchor];
    v45 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
    v92[9] = v45;
    v44 = [v23 objectAtIndexedSubscript:0];
    widthAnchor = [v44 widthAnchor];
    v43 = [v23 objectAtIndexedSubscript:1];
    widthAnchor2 = [v43 widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v34 = v61 = v8;
    v92[10] = v34;
    [v23 objectAtIndexedSubscript:1];
    v35 = v60 = v12;
    widthAnchor3 = [v35 widthAnchor];
    v37 = [v23 objectAtIndexedSubscript:2];
    widthAnchor4 = [v37 widthAnchor];
    v39 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v92[11] = v39;
    v40 = [NSArray arrayWithObjects:v92 count:12];
    [NSLayoutConstraint activateConstraints:v40];

    [(BKActionMenuPositionCell *)v4 setShouldHideTitle:1];
  }

  return v4;
}

- (id)accessibilityElements
{
  WeakRetained = objc_loadWeakRetained(&self->_leftView);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_rightView), v5, v4, v5))
  {
    v6 = objc_loadWeakRetained(&self->_leftView);
    v10[0] = v6;
    v7 = objc_loadWeakRetained(&self->_rightView);
    v10[1] = v7;
    v8 = [NSArray arrayWithObjects:v10 count:2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BKImageRadioButtonView)leftView
{
  WeakRetained = objc_loadWeakRetained(&self->_leftView);

  return WeakRetained;
}

- (BKImageRadioButtonView)rightView
{
  WeakRetained = objc_loadWeakRetained(&self->_rightView);

  return WeakRetained;
}

@end