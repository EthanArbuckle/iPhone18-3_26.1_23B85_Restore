@interface NTKSwissMoonPhaseSevenDayView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKSwissMoonPhaseSevenDayView)initWithFrame:(CGRect)a3;
- (int64_t)_labelFilterStyle;
- (int64_t)_moonFilterStyle;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)transitionToMonochromeWithFraction:(double)a3;
@end

@implementation NTKSwissMoonPhaseSevenDayView

- (NTKSwissMoonPhaseSevenDayView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = NTKSwissMoonPhaseSevenDayView;
  v3 = [(NTKSwissMoonPhaseSevenDayView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIStackView *)v4 setAxis:0];
    [(UIStackView *)v4 setDistribution:3];
    [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    sevenDayLayoutView = v3->_sevenDayLayoutView;
    v3->_sevenDayLayoutView = v4;

    [(NTKSwissMoonPhaseSevenDayView *)v3 addSubview:v3->_sevenDayLayoutView];
    v33 = [(UIStackView *)v3->_sevenDayLayoutView topAnchor];
    v32 = [(NTKSwissMoonPhaseSevenDayView *)v3 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v36[0] = v31;
    v30 = [(NTKSwissMoonPhaseSevenDayView *)v3 bottomAnchor];
    v29 = [(UIStackView *)v3->_sevenDayLayoutView bottomAnchor];
    v6 = [v30 constraintEqualToAnchor:v29];
    v36[1] = v6;
    v7 = [(UIStackView *)v3->_sevenDayLayoutView leadingAnchor];
    v8 = [(NTKSwissMoonPhaseSevenDayView *)v3 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v36[2] = v9;
    v10 = [(NTKSwissMoonPhaseSevenDayView *)v3 trailingAnchor];
    v11 = [(UIStackView *)v3->_sevenDayLayoutView trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v36[3] = v12;
    v13 = [NSArray arrayWithObjects:v36 count:4];

    v34 = v13;
    [NSLayoutConstraint activateConstraints:v13];
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    [v14 addObject:v15];
    [(UIStackView *)v3->_sevenDayLayoutView addArrangedSubview:v15];

    v16 = +[NSMutableArray array];
    v17 = 7;
    v18 = [NSMutableArray arrayWithCapacity:7];
    do
    {
      v19 = objc_opt_new();
      [v18 addObject:v19];
      [(UIStackView *)v3->_sevenDayLayoutView addArrangedSubview:v19];
      v20 = [v19 widthAnchor];
      v21 = [(UIStackView *)v3->_sevenDayLayoutView widthAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.128571429];
      [v16 addObject:v22];

      v23 = objc_opt_new();
      [v14 addObject:v23];
      [(UIStackView *)v3->_sevenDayLayoutView addArrangedSubview:v23];

      --v17;
    }

    while (v17);
    v24 = [v18 copy];
    dailyViews = v3->_dailyViews;
    v3->_dailyViews = v24;

    v26 = [v14 copy];
    dividerViews = v3->_dividerViews;
    v3->_dividerViews = v26;

    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = qword_12018;
  v6 = a3;
  if (v5 != -1)
  {
    sub_5660();
  }

  v7 = [v6 metadata];
  v8 = [v7 objectForKeyedSubscript:@"CurrentLocation"];

  v9 = [v6 metadata];
  v10 = [v9 objectForKeyedSubscript:@"AnyLocation"];

  v11 = +[NSCalendar currentCalendar];
  v12 = [v6 metadata];
  v13 = [v12 objectForKeyedSubscript:@"CurrentEventDate"];

  v14 = [v11 components:60 fromDate:v13];
  v15 = [v14 day];
  v16 = [v6 metadata];

  v17 = [v16 objectForKeyedSubscript:@"MoonViewOffsetDate"];

  v18 = [v11 components:60 fromDate:v17];
  v19 = [v18 day];
  v20 = [(NTKSwissMoonPhaseSevenDayView *)self dailyViews];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_38A0;
  v26[3] = &unk_C518;
  v27 = v14;
  v28 = v11;
  v32 = v15;
  v33 = v19;
  v29 = v18;
  v30 = v8;
  v31 = v10;
  v21 = v10;
  v22 = v8;
  v23 = v18;
  v24 = v11;
  v25 = v14;
  [v20 enumerateObjectsUsingBlock:v26];
}

- (int64_t)_moonFilterStyle
{
  v2 = [(NTKSwissMoonPhaseSevenDayView *)self filterProvider];
  v3 = [v2 device];
  v4 = NTKShowGossamerUI();

  if (v4)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_labelFilterStyle
{
  v2 = [(NTKSwissMoonPhaseSevenDayView *)self filterProvider];
  v3 = [v2 device];
  v4 = NTKShowGossamerUI();

  return v4 ^ 1u;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v6 = [WeakRetained filtersForView:self style:-[NTKSwissMoonPhaseSevenDayView _moonFilterStyle](self fraction:{"_moonFilterStyle"), a3}];

  v7 = objc_loadWeakRetained(&self->_filterProvider);
  v8 = [v7 filtersForView:self style:-[NTKSwissMoonPhaseSevenDayView _labelFilterStyle](self fraction:{"_labelFilterStyle"), a3}];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    dailyViews = self->_dailyViews;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3DF8;
    v15[3] = &unk_C540;
    v16 = v6;
    v11 = v8;
    v17 = v11;
    [(NSArray *)dailyViews enumerateObjectsUsingBlock:v15];
    dividerViews = self->_dividerViews;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3EC8;
    v13[3] = &unk_C568;
    v14 = v11;
    [(NSArray *)dividerViews enumerateObjectsUsingBlock:v13];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end