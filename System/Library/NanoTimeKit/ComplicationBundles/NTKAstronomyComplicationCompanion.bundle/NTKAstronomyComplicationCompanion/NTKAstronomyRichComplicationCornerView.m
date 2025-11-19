@interface NTKAstronomyRichComplicationCornerView
- (id)_outerView;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_updateInnerLabel;
- (void)transitionToMonochromeWithFraction:(double)a3;
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
    v7 = [(NTKAstronomyRichComplicationCornerView *)self device];
    v8 = [(NTKAstronomyRichComplicationContentView *)v6 initForDevice:v7 family:10 diameter:v5];
    v9 = self->_astronomyContentView;
    self->_astronomyContentView = v8;

    astronomyContentView = self->_astronomyContentView;
  }

  return astronomyContentView;
}

- (void)_applyPausedUpdate
{
  astronomyContentView = self->_astronomyContentView;
  v3 = [(NTKAstronomyRichComplicationCornerView *)self paused];

  [(NTKAstronomyRichComplicationContentView *)astronomyContentView applyPausedUpdate:v3];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  astronomyContentView = self->_astronomyContentView;
  v7 = [a3 metadata];
  [(NTKAstronomyRichComplicationContentView *)astronomyContentView handleTemplateMetadata:v7 reason:a4];

  [(NTKAstronomyRichComplicationCornerView *)self _updateInnerLabel];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v11 = [v5 filtersForView:self style:2 fraction:a3];

  v6 = [(NTKAstronomyRichComplicationCornerView *)self innerLabel];
  v7 = [v6 layer];
  [v7 setFilters:v11];

  v8 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v9 = [v8 filtersForView:self style:4 fraction:a3];

  v10 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
  [v10 setFilters:v9];
}

- (void)updateMonochromeColor
{
  v3 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v9 = [v3 filtersForView:self style:2];

  v4 = [(NTKAstronomyRichComplicationCornerView *)self innerLabel];
  v5 = [v4 layer];
  [v5 setFilters:v9];

  v6 = [(NTKAstronomyRichComplicationCornerView *)self filterProvider];
  v7 = [v6 filtersForView:self style:4];

  v8 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
  [v8 setFilters:v7];
}

- (void)_updateInnerLabel
{
  v2 = self;
  v3 = [(NTKAstronomyRichComplicationCornerView *)self template];
  v4 = [v3 metadata];

  v5 = [v4 objectForKeyedSubscript:@"current date"];
  v6 = [v4 objectForKeyedSubscript:@"current location"];
  v7 = [v4 objectForKeyedSubscript:@"any location"];
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NTKAstronomyRichComplicationCornerView *)v2 timeTravelDate];
    *buf = 138478595;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "NTKAstronomyRichComplicationCornerView create moon phase model with currentLocation:%{private}@ anyLocation:%{private}@ entryDate:%@ timeTravelDate:%@", buf, 0x2Au);
  }

  v10 = [(NTKAstronomyRichComplicationCornerView *)v2 timeTravelDate];
  if (v10)
  {
    v11 = [(NTKAstronomyRichComplicationCornerView *)v2 timeTravelDate];
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

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
  v16 = [v15 eventDate];
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v16;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "NTKAstronomyRichComplicationCornerView created NUNIMoonPhaseModel with date:%@", buf, 0xCu);
  }

  if (v16)
  {
    [CLKTimeTextProvider textProviderWithDate:v16];
    v29 = v2;
    v18 = v15;
    v19 = v4;
    v20 = v6;
    v21 = v12;
    v22 = v7;
    v24 = v23 = v5;
    v25 = [CLKRelativeDateTextProvider textProviderWithDate:v16 style:3 units:96];
    v26 = [CLKTextProvider textProviderWithFormat:@"%@, %@", v24, v25];

    v5 = v23;
    v7 = v22;
    v12 = v21;
    v6 = v20;
    v4 = v19;
    v15 = v18;
    v2 = v29;
  }

  else
  {
    v26 = [CLKTextProvider textProviderWithFormat:&stru_C888];
  }

  v27 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:1];
  [v26 setTintColor:v27];

  v28 = [(NTKAstronomyRichComplicationCornerView *)v2 innerLabel];
  [v28 setTextProvider:v26];
}

@end