@interface NTKAstronomyRichComplicationCornerView
- (id)_outerView;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_updateInnerLabel;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKAstronomyRichComplicationCornerView

- (id)_outerView
{
  astronomyContentView = self->_astronomyContentView;
  if (!astronomyContentView)
  {
    [(NTKAstronomyRichComplicationCornerView *)self _outerViewDiameter];
    v5 = v4;
    v6 = [NTKAstronomyRichComplicationContentView alloc];
    device = [(NTKAstronomyRichComplicationCornerView *)self device];
    v8 = [(NTKAstronomyRichComplicationContentView *)v6 initForDevice:device family:10 diameter:v5];
    v9 = self->_astronomyContentView;
    self->_astronomyContentView = v8;

    astronomyContentView = self->_astronomyContentView;
  }

  return astronomyContentView;
}

- (void)_applyPausedUpdate
{
  astronomyContentView = self->_astronomyContentView;
  paused = [(NTKAstronomyRichComplicationCornerView *)self paused];

  [(NTKAstronomyRichComplicationContentView *)astronomyContentView applyPausedUpdate:paused];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  astronomyContentView = self->_astronomyContentView;
  metadata = [template metadata];
  [(NTKAstronomyRichComplicationContentView *)astronomyContentView handleTemplateMetadata:metadata reason:reason];

  [(NTKAstronomyRichComplicationCornerView *)self _updateInnerLabel];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v11 = [filterProvider filtersForView:self style:2 fraction:fraction];

  innerLabel = [(NTKAstronomyRichComplicationCornerView *)self innerLabel];
  layer = [innerLabel layer];
  [layer setFilters:v11];

  filterProvider2 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v9 = [filterProvider2 filtersForView:self style:4 fraction:fraction];

  layer2 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
  [layer2 setFilters:v9];
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:2];

  innerLabel = [(NTKAstronomyRichComplicationCornerView *)self innerLabel];
  layer = [innerLabel layer];
  [layer setFilters:v9];

  filterProvider2 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v7 = [filterProvider2 filtersForView:self style:4];

  layer2 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
  [layer2 setFilters:v7];
}

- (void)_updateInnerLabel
{
  selfCopy = self;
  template = [(NTKAstronomyRichComplicationCornerView *)self template];
  metadata = [template metadata];

  v5 = [metadata objectForKeyedSubscript:@"current date"];
  v6 = [metadata objectForKeyedSubscript:@"current location"];
  v7 = [metadata objectForKeyedSubscript:@"any location"];
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    timeTravelDate = [(NTKAstronomyRichComplicationCornerView *)selfCopy timeTravelDate];
    *buf = 138478595;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = timeTravelDate;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "NTKAstronomyRichComplicationCornerView create moon phase model with currentLocation:%{private}@ anyLocation:%{private}@ entryDate:%@ timeTravelDate:%@", buf, 0x2Au);
  }

  timeTravelDate2 = [(NTKAstronomyRichComplicationCornerView *)selfCopy timeTravelDate];
  if (timeTravelDate2)
  {
    timeTravelDate3 = [(NTKAstronomyRichComplicationCornerView *)selfCopy timeTravelDate];
  }

  else
  {
    timeTravelDate3 = v5;
  }

  v12 = timeTravelDate3;

  v13 = [NUNIMoonPhaseModel alloc];
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  v15 = [v13 initWithDate:v12 location:v14];
  eventDate = [v15 eventDate];
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = eventDate;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "NTKAstronomyRichComplicationCornerView created NUNIMoonPhaseModel with date:%@", buf, 0xCu);
  }

  if (eventDate)
  {
    [CLKTimeTextProvider textProviderWithDate:eventDate];
    v29 = selfCopy;
    v18 = v15;
    v19 = metadata;
    v20 = v6;
    v21 = v12;
    v22 = v7;
    v24 = v23 = v5;
    v25 = [CLKRelativeDateTextProvider textProviderWithDate:eventDate style:3 units:96];
    v26 = [CLKTextProvider textProviderWithFormat:@"%@, %@", v24, v25];

    v5 = v23;
    v7 = v22;
    v12 = v21;
    v6 = v20;
    metadata = v19;
    v15 = v18;
    selfCopy = v29;
  }

  else
  {
    v26 = [CLKTextProvider textProviderWithFormat:&stru_C888];
  }

  v27 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:1];
  [v26 setTintColor:v27];

  innerLabel = [(NTKAstronomyRichComplicationCornerView *)selfCopy innerLabel];
  [innerLabel setTextProvider:v26];
}

@end