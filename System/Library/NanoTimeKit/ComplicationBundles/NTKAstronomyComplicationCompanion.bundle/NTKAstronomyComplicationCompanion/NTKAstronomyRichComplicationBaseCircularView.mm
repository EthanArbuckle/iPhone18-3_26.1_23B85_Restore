@interface NTKAstronomyRichComplicationBaseCircularView
- (NTKAstronomyRichComplicationBaseCircularView)initWithFamily:(int64_t)a3;
- (int64_t)_desaturatedFilterStyle;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setupContentViewForFamily:(int64_t)a3;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKAstronomyRichComplicationBaseCircularView

- (NTKAstronomyRichComplicationBaseCircularView)initWithFamily:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyRichComplicationBaseCircularView;
  v4 = [(NTKAstronomyRichComplicationBaseCircularView *)&v7 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    [(NTKAstronomyRichComplicationBaseCircularView *)v4 _setupContentViewForFamily:a3];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKAstronomyRichComplicationBaseCircularView;
  [(NTKAstronomyRichComplicationBaseCircularView *)&v12 layoutSubviews];
  v3 = [(NTKAstronomyRichComplicationBaseCircularView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView setFrame:v5, v7, v9, v11];
}

- (void)_applyPausedUpdate
{
  astronomyContentView = self->_astronomyContentView;
  v3 = [(NTKAstronomyRichComplicationBaseCircularView *)self paused];

  [(NTKAstronomyRichComplicationContentView *)astronomyContentView applyPausedUpdate:v3];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  astronomyContentView = self->_astronomyContentView;
  v6 = [a3 metadata];
  [(NTKAstronomyRichComplicationContentView *)astronomyContentView handleTemplateMetadata:v6 reason:a4];
}

- (int64_t)_desaturatedFilterStyle
{
  v2 = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
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

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKAstronomyRichComplicationBaseCircularView *)self filterProvider];
  v7 = [v5 filtersForView:self style:-[NTKAstronomyRichComplicationBaseCircularView _desaturatedFilterStyle](self fraction:{"_desaturatedFilterStyle"), a3}];

  if (v7)
  {
    v6 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
    [v6 setFilters:v7];
  }
}

- (void)updateMonochromeColor
{
  v3 = [(NTKAstronomyRichComplicationBaseCircularView *)self filterProvider];
  v5 = [v3 filtersForView:self style:{-[NTKAstronomyRichComplicationBaseCircularView _desaturatedFilterStyle](self, "_desaturatedFilterStyle")}];

  if (v5)
  {
    v4 = [(NTKAstronomyRichComplicationContentView *)self->_astronomyContentView layer];
    [v4 setFilters:v5];
  }
}

- (void)_setupContentViewForFamily:(int64_t)a3
{
  v5 = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
  if (a3 == 12)
  {
    NTKGraphicExtraLargeComplicationContentDiameter();
  }

  else
  {
    NTKWhistlerSubdialComplicationContentDiameter();
  }

  v7 = v6;

  v8 = [NTKAstronomyRichComplicationContentView alloc];
  v9 = [(NTKAstronomyRichComplicationBaseCircularView *)self device];
  v10 = [(NTKAstronomyRichComplicationContentView *)v8 initForDevice:v9 family:a3 diameter:v7];
  astronomyContentView = self->_astronomyContentView;
  self->_astronomyContentView = v10;

  v12 = [(NTKAstronomyRichComplicationBaseCircularView *)self contentView];
  [v12 addSubview:self->_astronomyContentView];

  [(NTKAstronomyRichComplicationBaseCircularView *)self setNeedsLayout];
}

@end