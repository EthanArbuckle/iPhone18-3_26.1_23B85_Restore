@interface NCALRichComplicationRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_updateFiltersShouldUseFraction:(BOOL)fraction fraction:(double)a4;
- (void)_updateViews:(id)views withFilters:(id)filters;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)updateMonochromeFiltersWithAccentFilters:(id)filters desaturatedFilters:(id)desaturatedFilters;
@end

@implementation NCALRichComplicationRectangularView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = NCALRichComplicationRectangularView;
  v5 = [(NCALRichComplicationRectangularView *)&v29 init];
  if (v5)
  {
    v6 = [[NCALRichComplicationContentView alloc] initForDevice:deviceCopy];
    contentView = v5->_contentView;
    v5->_contentView = v6;

    [(NCALRichComplicationContentView *)v5->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NCALRichComplicationRectangularView *)v5 addSubview:v5->_contentView];
    centerYAnchor = [(NCALRichComplicationContentView *)v5->_contentView centerYAnchor];
    centerYAnchor2 = [(NCALRichComplicationRectangularView *)v5 centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v32[0] = v8;
    centerXAnchor = [(NCALRichComplicationContentView *)v5->_contentView centerXAnchor];
    centerXAnchor2 = [(NCALRichComplicationRectangularView *)v5 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v32[1] = v11;
    widthAnchor = [(NCALRichComplicationContentView *)v5->_contentView widthAnchor];
    [(NCALRichComplicationRectangularView *)v5 widthAnchor];
    v13 = v28 = deviceCopy;
    v14 = [widthAnchor constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [NSArray arrayWithObjects:v32 count:3];
    [NSLayoutConstraint activateConstraints:v15];

    headerLabel = [(NCALRichComplicationContentView *)v5->_contentView headerLabel];
    v31 = headerLabel;
    v17 = [NSArray arrayWithObjects:&v31 count:1];
    accentViews = v5->_accentViews;
    v5->_accentViews = v17;

    bodyLabel = [(NCALRichComplicationContentView *)v5->_contentView bodyLabel];
    v30[0] = bodyLabel;
    body2Label = [(NCALRichComplicationContentView *)v5->_contentView body2Label];
    v30[1] = body2Label;
    verticalPill = [(NCALRichComplicationContentView *)v5->_contentView verticalPill];
    v30[2] = verticalPill;
    verticalPill2 = [(NCALRichComplicationContentView *)v5->_contentView verticalPill2];
    v30[3] = verticalPill2;
    v23 = [NSArray arrayWithObjects:v30 count:4];
    desaturateViews = v5->_desaturateViews;
    v5->_desaturateViews = v23;

    deviceCopy = v28;
  }

  return v5;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v5 = [metadata objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularEventColorsKey"];
  firstObject = [v5 firstObject];
  [(NCALRichComplicationContentView *)self->_contentView setFirstEventColor:firstObject];

  v7 = [v5 count];
  v8 = v7;
  if (v7 >= 2)
  {
    v9 = [v5 subarrayWithRange:{1, v7 - 1}];
    [(NCALRichComplicationContentView *)self->_contentView setOtherEventColors:v9];
  }

  [(NCALRichComplicationContentView *)self->_contentView setEventCount:v8];
  [(NCALRichComplicationContentView *)self->_contentView setHasConflicts:v8 > 1];
  headerLabel = [(NCALRichComplicationContentView *)self->_contentView headerLabel];
  v11 = [metadata objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewFirstTextKey"];
  [headerLabel setTextProvider:v11];

  bodyLabel = [(NCALRichComplicationContentView *)self->_contentView bodyLabel];
  v13 = [metadata objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewSecondTextKey"];
  [bodyLabel setTextProvider:v13];

  body2Label = [(NCALRichComplicationContentView *)self->_contentView body2Label];
  v15 = [metadata objectForKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewThirdTextKey"];
  [body2Label setTextProvider:v15];

  [(NCALRichComplicationContentView *)self->_contentView updateLayout];
  [(NCALRichComplicationRectangularView *)self setNeedsLayout];
}

- (void)_updateFiltersShouldUseFraction:(BOOL)fraction fraction:(double)a4
{
  fractionCopy = fraction;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v8 = WeakRetained;
  if (fractionCopy)
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

- (void)updateMonochromeFiltersWithAccentFilters:(id)filters desaturatedFilters:(id)desaturatedFilters
{
  accentViews = self->_accentViews;
  desaturatedFiltersCopy = desaturatedFilters;
  [(NCALRichComplicationRectangularView *)self _updateViews:accentViews withFilters:filters];
  [(NCALRichComplicationRectangularView *)self _updateViews:self->_desaturateViews withFilters:desaturatedFiltersCopy];
}

- (void)_updateViews:(id)views withFilters:(id)filters
{
  viewsCopy = views;
  filtersCopy = filters;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        layer = [*(*(&v12 + 1) + 8 * v10) layer];
        [layer setFilters:filtersCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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