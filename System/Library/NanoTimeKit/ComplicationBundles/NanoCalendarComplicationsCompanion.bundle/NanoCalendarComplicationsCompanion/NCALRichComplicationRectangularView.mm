@interface NCALRichComplicationRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4;
- (void)_updateViews:(id)a3 withFilters:(id)a4;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 desaturatedFilters:(id)a4;
@end

@implementation NCALRichComplicationRectangularView

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NCALRichComplicationRectangularView;
  v5 = [(NCALRichComplicationRectangularView *)&v29 init];
  if (v5)
  {
    v6 = [[NCALRichComplicationContentView alloc] initForDevice:v4];
    contentView = v5->_contentView;
    v5->_contentView = v6;

    [(NCALRichComplicationContentView *)v5->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NCALRichComplicationRectangularView *)v5 addSubview:v5->_contentView];
    v27 = [(NCALRichComplicationContentView *)v5->_contentView centerYAnchor];
    v26 = [(NCALRichComplicationRectangularView *)v5 centerYAnchor];
    v8 = [v27 constraintEqualToAnchor:v26];
    v32[0] = v8;
    v9 = [(NCALRichComplicationContentView *)v5->_contentView centerXAnchor];
    v10 = [(NCALRichComplicationRectangularView *)v5 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v32[1] = v11;
    v12 = [(NCALRichComplicationContentView *)v5->_contentView widthAnchor];
    [(NCALRichComplicationRectangularView *)v5 widthAnchor];
    v13 = v28 = v4;
    v14 = [v12 constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [NSArray arrayWithObjects:v32 count:3];
    [NSLayoutConstraint activateConstraints:v15];

    v16 = [(NCALRichComplicationContentView *)v5->_contentView headerLabel];
    v31 = v16;
    v17 = [NSArray arrayWithObjects:&v31 count:1];
    accentViews = v5->_accentViews;
    v5->_accentViews = v17;

    v19 = [(NCALRichComplicationContentView *)v5->_contentView bodyLabel];
    v30[0] = v19;
    v20 = [(NCALRichComplicationContentView *)v5->_contentView body2Label];
    v30[1] = v20;
    v21 = [(NCALRichComplicationContentView *)v5->_contentView verticalPill];
    v30[2] = v21;
    v22 = [(NCALRichComplicationContentView *)v5->_contentView verticalPill2];
    v30[3] = v22;
    v23 = [NSArray arrayWithObjects:v30 count:4];
    desaturateViews = v5->_desaturateViews;
    v5->_desaturateViews = v23;

    v4 = v28;
  }

  return v5;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v16 = [a3 metadata];
  v5 = [v16 objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularEventColorsKey"];
  v6 = [v5 firstObject];
  [(NCALRichComplicationContentView *)self->_contentView setFirstEventColor:v6];

  v7 = [v5 count];
  v8 = v7;
  if (v7 >= 2)
  {
    v9 = [v5 subarrayWithRange:{1, v7 - 1}];
    [(NCALRichComplicationContentView *)self->_contentView setOtherEventColors:v9];
  }

  [(NCALRichComplicationContentView *)self->_contentView setEventCount:v8];
  [(NCALRichComplicationContentView *)self->_contentView setHasConflicts:v8 > 1];
  v10 = [(NCALRichComplicationContentView *)self->_contentView headerLabel];
  v11 = [v16 objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewFirstTextKey"];
  [v10 setTextProvider:v11];

  v12 = [(NCALRichComplicationContentView *)self->_contentView bodyLabel];
  v13 = [v16 objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewSecondTextKey"];
  [v12 setTextProvider:v13];

  v14 = [(NCALRichComplicationContentView *)self->_contentView body2Label];
  v15 = [v16 objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewThirdTextKey"];
  [v14 setTextProvider:v15];

  [(NCALRichComplicationContentView *)self->_contentView updateLayout];
  [(NCALRichComplicationRectangularView *)self setNeedsLayout];
}

- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v8 = WeakRetained;
  if (v5)
  {
    v10 = [WeakRetained filtersForView:self style:2 fraction:a4];
    [v8 filtersForView:self style:1 fraction:a4];
  }

  else
  {
    v10 = [WeakRetained filtersForView:self style:2];
    [v8 filtersForView:self style:1];
  }
  v9 = ;
  [(NCALRichComplicationRectangularView *)self updateMonochromeFiltersWithAccentFilters:v10 desaturatedFilters:v9];
}

- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 desaturatedFilters:(id)a4
{
  accentViews = self->_accentViews;
  v7 = a4;
  [(NCALRichComplicationRectangularView *)self _updateViews:accentViews withFilters:a3];
  [(NCALRichComplicationRectangularView *)self _updateViews:self->_desaturateViews withFilters:v7];
}

- (void)_updateViews:(id)a3 withFilters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) layer];
        [v11 setFilters:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end