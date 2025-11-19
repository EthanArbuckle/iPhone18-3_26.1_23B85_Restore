@interface BKActionMenuPositionCell
- (BKActionMenuPositionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (BKImageRadioButtonView)leftView;
- (BKImageRadioButtonView)rightView;
- (id)accessibilityElements;
@end

@implementation BKActionMenuPositionCell

- (BKActionMenuPositionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v91.receiver = self;
  v91.super_class = BKActionMenuPositionCell;
  v4 = [(BKActionMenuPositionCell *)&v91 initWithStyle:a3 reuseIdentifier:a4];
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
    v14 = [v13 menuOnLeft];

    [(BKActionMenuPositionCell *)v4 _updateSelection:v14];
    v15 = [(BKActionMenuPositionCell *)v4 contentView];
    [v15 addSubview:v8];

    v16 = [(BKActionMenuPositionCell *)v4 contentView];
    [v16 addSubview:v12];

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
          v29 = [(BKActionMenuPositionCell *)v4 backgroundColor];
          [v28 setBackgroundColor:v29];

          v30 = [(BKActionMenuPositionCell *)v4 contentView];
          [v30 addSubview:v28];

          v31 = [v28 heightAnchor];
          v32 = [v31 constraintEqualToConstant:10.0];
          [v32 setActive:1];
        }

        v25 = [v23 countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v25);
    }

    v85 = [(BKImageRadioButtonView *)v8 topAnchor];
    v86 = [(BKActionMenuPositionCell *)v4 contentView];
    v84 = [v86 topAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v92[0] = v83;
    v81 = [(BKImageRadioButtonView *)v8 bottomAnchor];
    v82 = [(BKActionMenuPositionCell *)v4 contentView];
    v80 = [v82 bottomAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v92[1] = v79;
    v77 = [(BKImageRadioButtonView *)v12 topAnchor];
    v78 = [(BKActionMenuPositionCell *)v4 contentView];
    v76 = [v78 topAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v92[2] = v75;
    v73 = [(BKImageRadioButtonView *)v12 bottomAnchor];
    v74 = [(BKActionMenuPositionCell *)v4 contentView];
    v72 = [v74 bottomAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v92[3] = v71;
    v70 = [v23 objectAtIndexedSubscript:0];
    v69 = [v70 leftAnchor];
    v68 = [(BKActionMenuPositionCell *)v4 leftAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v92[4] = v67;
    v65 = [(BKImageRadioButtonView *)v8 leftAnchor];
    v66 = [v23 objectAtIndexedSubscript:0];
    v64 = [v66 rightAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v92[5] = v63;
    v62 = [v23 objectAtIndexedSubscript:1];
    v59 = [v62 leftAnchor];
    v58 = [(BKImageRadioButtonView *)v8 rightAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v92[6] = v57;
    v55 = [(BKImageRadioButtonView *)v12 leftAnchor];
    v56 = [v23 objectAtIndexedSubscript:1];
    v54 = [v56 rightAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v92[7] = v53;
    v52 = [v23 objectAtIndexedSubscript:2];
    v51 = [v52 leftAnchor];
    v50 = [(BKImageRadioButtonView *)v12 rightAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v92[8] = v49;
    v48 = [v23 objectAtIndexedSubscript:2];
    v47 = [v48 rightAnchor];
    v46 = [(BKActionMenuPositionCell *)v4 rightAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v92[9] = v45;
    v44 = [v23 objectAtIndexedSubscript:0];
    v42 = [v44 widthAnchor];
    v43 = [v23 objectAtIndexedSubscript:1];
    v33 = [v43 widthAnchor];
    [v42 constraintEqualToAnchor:v33];
    v34 = v61 = v8;
    v92[10] = v34;
    [v23 objectAtIndexedSubscript:1];
    v35 = v60 = v12;
    v36 = [v35 widthAnchor];
    v37 = [v23 objectAtIndexedSubscript:2];
    v38 = [v37 widthAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
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