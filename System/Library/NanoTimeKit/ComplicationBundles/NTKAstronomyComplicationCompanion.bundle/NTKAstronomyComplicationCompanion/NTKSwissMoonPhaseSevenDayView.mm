@interface NTKSwissMoonPhaseSevenDayView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKSwissMoonPhaseSevenDayView)initWithFrame:(CGRect)frame;
- (int64_t)_labelFilterStyle;
- (int64_t)_moonFilterStyle;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation NTKSwissMoonPhaseSevenDayView

- (NTKSwissMoonPhaseSevenDayView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = NTKSwissMoonPhaseSevenDayView;
  v3 = [(NTKSwissMoonPhaseSevenDayView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIStackView *)v4 setAxis:0];
    [(UIStackView *)v4 setDistribution:3];
    [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    sevenDayLayoutView = v3->_sevenDayLayoutView;
    v3->_sevenDayLayoutView = v4;

    [(NTKSwissMoonPhaseSevenDayView *)v3 addSubview:v3->_sevenDayLayoutView];
    topAnchor = [(UIStackView *)v3->_sevenDayLayoutView topAnchor];
    topAnchor2 = [(NTKSwissMoonPhaseSevenDayView *)v3 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v31;
    bottomAnchor = [(NTKSwissMoonPhaseSevenDayView *)v3 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v3->_sevenDayLayoutView bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[1] = v6;
    leadingAnchor = [(UIStackView *)v3->_sevenDayLayoutView leadingAnchor];
    leadingAnchor2 = [(NTKSwissMoonPhaseSevenDayView *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[2] = v9;
    trailingAnchor = [(NTKSwissMoonPhaseSevenDayView *)v3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v3->_sevenDayLayoutView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
      widthAnchor = [v19 widthAnchor];
      widthAnchor2 = [(UIStackView *)v3->_sevenDayLayoutView widthAnchor];
      v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.128571429];
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

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  v5 = qword_12018;
  providerCopy = provider;
  if (v5 != -1)
  {
    sub_5660();
  }

  metadata = [providerCopy metadata];
  v8 = [metadata objectForKeyedSubscript:@"CurrentLocation"];

  metadata2 = [providerCopy metadata];
  v10 = [metadata2 objectForKeyedSubscript:@"AnyLocation"];

  v11 = +[NSCalendar currentCalendar];
  metadata3 = [providerCopy metadata];
  v13 = [metadata3 objectForKeyedSubscript:@"CurrentEventDate"];

  v14 = [v11 components:60 fromDate:v13];
  v15 = [v14 day];
  metadata4 = [providerCopy metadata];

  v17 = [metadata4 objectForKeyedSubscript:@"MoonViewOffsetDate"];

  v18 = [v11 components:60 fromDate:v17];
  v19 = [v18 day];
  dailyViews = [(NTKSwissMoonPhaseSevenDayView *)self dailyViews];
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
  [dailyViews enumerateObjectsUsingBlock:v26];
}

- (int64_t)_moonFilterStyle
{
  filterProvider = [(NTKSwissMoonPhaseSevenDayView *)self filterProvider];
  device = [filterProvider device];
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
  filterProvider = [(NTKSwissMoonPhaseSevenDayView *)self filterProvider];
  device = [filterProvider device];
  v4 = NTKShowGossamerUI();

  return v4 ^ 1u;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v6 = [WeakRetained filtersForView:self style:-[NTKSwissMoonPhaseSevenDayView _moonFilterStyle](self fraction:{"_moonFilterStyle"), fraction}];

  v7 = objc_loadWeakRetained(&self->_filterProvider);
  v8 = [v7 filtersForView:self style:-[NTKSwissMoonPhaseSevenDayView _labelFilterStyle](self fraction:{"_labelFilterStyle"), fraction}];

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