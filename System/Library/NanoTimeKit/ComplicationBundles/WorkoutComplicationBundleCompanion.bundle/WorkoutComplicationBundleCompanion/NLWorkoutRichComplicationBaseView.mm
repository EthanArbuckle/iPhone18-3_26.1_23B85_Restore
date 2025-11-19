@interface NLWorkoutRichComplicationBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (NLWorkoutRichComplicationBaseView)initWithFrame:(CGRect)a3;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (id)noActiveWorkoutImage;
- (id)noActiveWorkoutImageName;
- (int64_t)_filterStyle;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NLWorkoutRichComplicationBaseView

- (NLWorkoutRichComplicationBaseView)initWithFrame:(CGRect)a3
{
  v13 = a3;
  v11 = a2;
  v12 = 0;
  v10.receiver = self;
  v10.super_class = NLWorkoutRichComplicationBaseView;
  v12 = [(NLWorkoutRichComplicationBaseView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v7 = [CLKUIColoringImageView alloc];
    v8 = [(NLWorkoutRichComplicationBaseView *)v12 noActiveWorkoutImage];
    v3 = [v7 initWithImage:?];
    staticImageView = v12->_staticImageView;
    v12->_staticImageView = v3;

    [(NLWorkoutRichComplicationBaseView *)v12 addSubview:v12->_staticImageView];
    v9 = NLWorkoutNoNonGradientTextColor();
    [(NLWorkoutRichComplicationBaseView *)v12 setTintColor:?];

    v12->_state = 0;
    [(NLWorkoutRichComplicationBaseView *)v12 _updateUI];
  }

  v6 = v12;
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)layoutSubviews
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = NLWorkoutRichComplicationBaseView;
  [(NLWorkoutRichComplicationBaseView *)&v4 layoutSubviews];
  [(NLWorkoutRichComplicationBaseView *)v6 bounds];
  CLKRectGetCenter();
  [(CLKUIColoringImageView *)v6->_staticImageView setCenter:v2, v3];
}

- (id)noActiveWorkoutImageName
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return &stru_10518;
}

- (id)noActiveWorkoutImage
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(NLWorkoutRichComplicationBaseView *)v3 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&v7, v7);
  v5 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11[1] = a4;
  v11[0] = [location[0] metadata];
  v6 = [v11[0] objectForKeyedSubscript:@"NLWorkoutComplicationMetadataHasActiveWorkoutKey"];
  v7 = [v6 BOOLValue];

  v8 = [v11[0] objectForKeyedSubscript:@"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey"];
  v9 = [v8 BOOLValue];

  v10 = 0;
  if (v7)
  {
    v4 = 2;
    if ((v9 & 1) == 0)
    {
      v4 = 1;
    }

    v10 = v4;
  }

  if (v10 != v13->_state)
  {
    v13->_state = v10;
    [(NLWorkoutRichComplicationBaseView *)v13 _updateUI];
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setFilterProvider:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_filterProvider, location[0]);
  objc_storeStrong(location, 0);
}

- (int64_t)_filterStyle
{
  v4 = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  v3 = [(CLKMonochromeFilterProvider *)v4 device];
  v5 = NTKShowGossamerUI();

  if (v5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v4 = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  location = [(CLKMonochromeFilterProvider *)v4 filtersForView:v8 style:[(NLWorkoutRichComplicationBaseView *)v8 _filterStyle] fraction:v6];

  if (location)
  {
    v3 = [(NLWorkoutRichComplicationBaseView *)v8 layer];
    [v3 setFilters:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)updateMonochromeColor
{
  v5 = self;
  location[1] = a2;
  v3 = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  location[0] = [(CLKMonochromeFilterProvider *)v3 filtersForView:v5 style:[(NLWorkoutRichComplicationBaseView *)v5 _filterStyle]];

  if (location[0])
  {
    v2 = [(NLWorkoutRichComplicationBaseView *)v5 layer];
    [v2 setFilters:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end