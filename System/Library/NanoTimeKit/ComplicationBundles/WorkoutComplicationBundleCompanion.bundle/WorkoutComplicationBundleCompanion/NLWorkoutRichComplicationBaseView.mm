@interface NLWorkoutRichComplicationBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (NLWorkoutRichComplicationBaseView)initWithFrame:(CGRect)frame;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)noActiveWorkoutImage;
- (id)noActiveWorkoutImageName;
- (int64_t)_filterStyle;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)provider;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NLWorkoutRichComplicationBaseView

- (NLWorkoutRichComplicationBaseView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v11 = a2;
  v12 = 0;
  v10.receiver = self;
  v10.super_class = NLWorkoutRichComplicationBaseView;
  v12 = [(NLWorkoutRichComplicationBaseView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v7 = [CLKUIColoringImageView alloc];
    noActiveWorkoutImage = [(NLWorkoutRichComplicationBaseView *)v12 noActiveWorkoutImage];
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
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = NLWorkoutRichComplicationBaseView;
  [(NLWorkoutRichComplicationBaseView *)&v4 layoutSubviews];
  [(NLWorkoutRichComplicationBaseView *)selfCopy bounds];
  CLKRectGetCenter();
  [(CLKUIColoringImageView *)selfCopy->_staticImageView setCenter:v2, v3];
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

- (id)initFullColorImageViewWithDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(NLWorkoutRichComplicationBaseView *)v3 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v11[1] = reason;
  v11[0] = [location[0] metadata];
  v6 = [v11[0] objectForKeyedSubscript:@"NLWorkoutComplicationMetadataHasActiveWorkoutKey"];
  bOOLValue = [v6 BOOLValue];

  v8 = [v11[0] objectForKeyedSubscript:@"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey"];
  bOOLValue2 = [v8 BOOLValue];

  v10 = 0;
  if (bOOLValue)
  {
    v4 = 2;
    if ((bOOLValue2 & 1) == 0)
    {
      v4 = 1;
    }

    v10 = v4;
  }

  if (v10 != selfCopy->_state)
  {
    selfCopy->_state = v10;
    [(NLWorkoutRichComplicationBaseView *)selfCopy _updateUI];
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setFilterProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  objc_storeWeak(&selfCopy->_filterProvider, location[0]);
  objc_storeStrong(location, 0);
}

- (int64_t)_filterStyle
{
  filterProvider = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  device = [(CLKMonochromeFilterProvider *)filterProvider device];
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

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  selfCopy = self;
  v7 = a2;
  fractionCopy = fraction;
  filterProvider = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  location = [(CLKMonochromeFilterProvider *)filterProvider filtersForView:selfCopy style:[(NLWorkoutRichComplicationBaseView *)selfCopy _filterStyle] fraction:fractionCopy];

  if (location)
  {
    layer = [(NLWorkoutRichComplicationBaseView *)selfCopy layer];
    [layer setFilters:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)updateMonochromeColor
{
  selfCopy = self;
  location[1] = a2;
  filterProvider = [(NLWorkoutRichComplicationBaseView *)self filterProvider];
  location[0] = [(CLKMonochromeFilterProvider *)filterProvider filtersForView:selfCopy style:[(NLWorkoutRichComplicationBaseView *)selfCopy _filterStyle]];

  if (location[0])
  {
    layer = [(NLWorkoutRichComplicationBaseView *)selfCopy layer];
    [layer setFilters:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end