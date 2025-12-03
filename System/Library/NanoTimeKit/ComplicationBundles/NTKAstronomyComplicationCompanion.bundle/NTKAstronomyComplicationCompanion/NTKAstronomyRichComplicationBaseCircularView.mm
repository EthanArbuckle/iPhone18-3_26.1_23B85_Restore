@interface NTKAstronomyRichComplicationBaseCircularView
- (NTKAstronomyRichComplicationBaseCircularView)initWithFamily:(int64_t)family;
- (int64_t)_desaturatedFilterStyle;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_setupContentViewForFamily:(int64_t)family;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKAstronomyRichComplicationBaseCircularView

- (NTKAstronomyRichComplicationBaseCircularView)initWithFamily:(int64_t)family
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyRichComplicationBaseCircularView;
  v4 = [(NTKAstronomyRichComplicationBaseCircularView *)&v7 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    [(NTKAstronomyRichComplicationBaseCircularView *)v4 _setupContentViewForFamily:family];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKAstronomyRichComplicationBaseCircularView;
  [(NTKAstronomyRichComplicationBaseCircularView *)&v12 layoutSubviews];
  contentView = [(NTKAstronomyRichComplicationBaseCircularView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView setFrame:v5, v7, v9, v11];
}

- (void)_applyPausedUpdate
{
  astronomyContentView = self->_astronomyContentView;
  paused = [(NTKAstronomyRichComplicationBaseCircularView *)self paused];

  [(NTKAstronomyRichComplicationContentView *)astronomyContentView applyPausedUpdate:paused];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  astronomyContentView = self->_astronomyContentView;
  metadata = [template metadata];
  [(NTKAstronomyRichComplicationContentView *)astronomyContentView handleTemplateMetadata:metadata reason:reason];
}

- (int64_t)_desaturatedFilterStyle
{
  device = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
  v3 = NTKShowGossamerUI();

  if (v3)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKAstronomyRichComplicationBaseCircularView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:-[NTKAstronomyRichComplicationBaseCircularView _desaturatedFilterStyle](self fraction:{"_desaturatedFilterStyle"), fraction}];

  if (v7)
  {
    layer = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
    [layer setFilters:v7];
  }
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKAstronomyRichComplicationBaseCircularView *)self filterProvider];
  v5 = [filterProvider filtersForView:self style:{-[NTKAstronomyRichComplicationBaseCircularView _desaturatedFilterStyle](self, "_desaturatedFilterStyle")}];

  if (v5)
  {
    layer = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
    [layer setFilters:v5];
  }
}

- (void)_setupContentViewForFamily:(int64_t)family
{
  device = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
  if (family == 12)
  {
    NTKGraphicExtraLargeComplicationContentDiameter();
  }

  else
  {
    NTKWhistlerSubdialComplicationContentDiameter();
  }

  v7 = v6;

  v8 = [NTKAstronomyRichComplicationContentView alloc];
  device2 = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
  v10 = [(NTKAstronomyRichComplicationContentView *)v8 initForDevice:device2 family:family diameter:v7];
  astronomyContentView = self->_astronomyContentView;
  self->_astronomyContentView = v10;

  contentView = [(NTKAstronomyRichComplicationBaseCircularView *)self contentView];
  [contentView addSubview:self->_astronomyContentView];

  [(NTKAstronomyRichComplicationBaseCircularView *)self setNeedsLayout];
}

@end