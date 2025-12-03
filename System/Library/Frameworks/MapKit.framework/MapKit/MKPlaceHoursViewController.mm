@interface MKPlaceHoursViewController
+ (id)placeHoursWithMapItem:(id)item;
- (BOOL)_shouldOnlyShowExpanded;
- (MKPlaceHoursViewController)initWithMapItem:(id)item;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (id)hoursBuilderWithHours:(id)hours;
- (id)infoCardChildPossibleActions;
- (void)_setExpanded:(BOOL)expanded;
- (void)_toggleShowAllHours;
- (void)_updateHoursAnimated:(BOOL)animated;
- (void)infoCardThemeChanged;
- (void)setMapItem:(id)item;
- (void)setResizableViewsDisabled:(BOOL)disabled;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MKPlaceHoursViewController

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(MKPlaceSectionHeaderView *)self->_headerView showSeeMoreButton])
  {
    if (self->_isExpanded)
    {
      v4 = 6011;
    }

    else
    {
      v4 = 6012;
    }

    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    [array addObject:v5];
  }

  return array;
}

- (void)infoCardThemeChanged
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MKPlaceHoursViewController;
  [(UIViewController *)&v15 infoCardThemeChanged];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  rowViews = [sectionView rowViews];

  v5 = [rowViews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(rowViews);
        }

        hoursView = [*(*(&v11 + 1) + 8 * v8) hoursView];
        hoursBuilder = [hoursView hoursBuilder];
        [hoursBuilder updateHoursLabelColor];

        ++v8;
      }

      while (v6 != v8);
      v6 = [rowViews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateHoursAnimated:(BOOL)animated
{
  v44 = *MEMORY[0x1E69E9840];
  if (animated)
  {
    view = [(MKPlaceHoursViewController *)self view];
    window = [view window];
    v32 = window != 0;
  }

  else
  {
    v32 = 0;
  }

  v6 = objc_opt_new();
  v33 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  businessHours = [(MKPlaceHoursViewController *)self businessHours];
  v8 = [businessHours countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(businessHours);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [MKPlaceHoursDayRow alloc];
        view2 = [(MKPlaceHoursViewController *)self view];
        [view2 bounds];
        v15 = [(MKPlaceHoursDayRow *)v13 initWithBusinessHours:v12 frame:?];

        v16 = [(MKPlaceHoursViewController *)self hoursBuilderWithHours:v12];
        hoursView = [(MKPlaceHoursDayRow *)v15 hoursView];
        [hoursView setHoursBuilder:v16];

        [(MKViewWithHairline *)v15 setBottomHairlineHidden:1];
        [v6 addObject:v15];
        hoursView2 = [(MKPlaceHoursDayRow *)v15 hoursView];
        [v33 addObject:hoursView2];

        ++v11;
      }

      while (v9 != v11);
      v9 = [businessHours countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  businessHours2 = [(MKPlaceHoursViewController *)self businessHours];
  [MKPlaceHoursViewHelper determineExtraRulesForPlaceHoursViews:v33 withBusinessHours:businessHours2];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        isExpanded = self->_isExpanded;
        hoursView3 = [*(*(&v34 + 1) + 8 * v24) hoursView];
        placeHoursViewOptions = [hoursView3 placeHoursViewOptions];
        if (isExpanded)
        {
          v28 = 8;
        }

        else
        {
          v28 = 1;
        }

        [hoursView3 setPlaceHoursViewOptions:placeHoursViewOptions | v28];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v22);
  }

  lastObject = [v20 lastObject];
  [lastObject setBottomHairlineHidden:1];

  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  v31 = [v20 copy];
  [sectionView setRowViews:v31 animated:v32 isNeedLayout:0];
}

- (void)_toggleShowAllHours
{
  [(MKPlaceHoursViewController *)self _setExpanded:!self->_isExpanded];
  analyticsDelegate = [(MKPlaceHoursViewController *)self analyticsDelegate];

  if (analyticsDelegate)
  {
    isExpanded = self->_isExpanded;
    analyticsDelegate2 = [(MKPlaceHoursViewController *)self analyticsDelegate];
    v6 = analyticsDelegate2;
    if (isExpanded)
    {
      v7 = 6012;
    }

    else
    {
      v7 = 6011;
    }

    [analyticsDelegate2 infoCardAnalyticsDidSelectAction:v7 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

  [(UIView *)self->_headerView _mapkit_layoutIfNeeded];

  [(MKPlaceHoursViewController *)self _updateHoursAnimated:1];
}

- (void)_setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  self->_isExpanded = expanded;
  if ([(MKPlaceHoursViewController *)self _shouldOnlyShowExpanded])
  {
    self->_isExpanded = 1;
    headerView = self->_headerView;

    [(MKPlaceSectionHeaderView *)headerView setShowSeeMoreButton:0];
  }

  else
  {
    [(MKPlaceSectionHeaderView *)self->_headerView setShowSeeMoreButton:1];
    if (expandedCopy)
    {
      v6 = @"Placecard Show operating hours today";
    }

    else
    {
      v6 = @"Placecard Show all operating hours";
    }

    v7 = _MKLocalizedStringFromThisBundle(v6);
    [(MKPlaceSectionHeaderView *)self->_headerView setSeeMoreButtonText:v7];
  }
}

- (BOOL)_shouldOnlyShowExpanded
{
  businessHours = [(MKPlaceHoursViewController *)self businessHours];
  v4 = [businessHours count];

  if (v4)
  {
    businessHours2 = [(MKPlaceHoursViewController *)self businessHours];
    v6 = [businessHours2 count];

    businessHours3 = [(MKPlaceHoursViewController *)self businessHours];
    v8 = [businessHours3 objectAtIndexedSubscript:0];
    placeDailyHours = [v8 placeDailyHours];
    v10 = [placeDailyHours count];

    businessHours4 = [(MKPlaceHoursViewController *)self businessHours];
    v12 = [businessHours4 objectAtIndex:0];
    hoursType = [v12 hoursType];

    v16 = (v10 == 1 || hoursType == 4) && v6 == 1;
  }

  else
  {
    v16 = 0;
  }

  return self->_resizableViewsDisabled || v16;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_mapItem != itemCopy)
  {
    businessHours = self->_businessHours;
    self->_businessHours = 0;
    v9 = itemCopy;

    objc_storeStrong(&self->_mapItem, item);
    isViewLoaded = [(MKPlaceHoursViewController *)self isViewLoaded];
    v6 = v9;
    if (isViewLoaded)
    {
      [(MKPlaceHoursViewController *)self _setExpanded:[(MKPlaceHoursViewController *)self _shouldOnlyShowExpanded]];
      [(MKPlaceHoursViewController *)self _updateHoursAnimated:0];
      v6 = v9;
    }
  }
}

- (id)hoursBuilderWithHours:(id)hours
{
  hoursCopy = hours;
  v5 = [_MKLocalizedHoursBuilder alloc];
  timeZone = [(MKPlaceHoursViewController *)self timeZone];
  v7 = [(_MKLocalizedHoursBuilder *)v5 initWithBusinessHours:hoursCopy timeZone:timeZone localizedHoursStringOptions:0 conciseStyle:0 openAt:0];

  return v7;
}

- (void)setResizableViewsDisabled:(BOOL)disabled
{
  if (self->_resizableViewsDisabled != disabled)
  {
    self->_resizableViewsDisabled = disabled;
    if (disabled)
    {
      [(MKPlaceHoursViewController *)self _setExpanded:1];
      if ([(MKPlaceHoursViewController *)self isViewLoaded])
      {

        [(MKPlaceHoursViewController *)self _updateHoursAnimated:0];
      }
    }

    else
    {
      isExpanded = self->_isExpanded;

      [(MKPlaceHoursViewController *)self _setExpanded:isExpanded];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MKPlaceHoursViewController;
  [(MKPlaceHoursViewController *)&v7 viewWillAppear:appear];
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  rowViews = [sectionView rowViews];
  v6 = [rowViews count];

  if (!v6)
  {
    [(MKPlaceHoursViewController *)self _updateHoursAnimated:0];
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MKPlaceHoursViewController;
  [(MKPlaceHoursViewController *)&v11 viewDidLoad];
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setPreservesSuperviewLayoutMargins:1];

  v4 = [MKPlaceSectionHeaderView alloc];
  v5 = [(MKPlaceSectionHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  [(MKPlaceSectionHeaderView *)self->_headerView setShowSeeMoreButton:1];
  [(MKViewWithHairline *)self->_headerView setBottomHairlineHidden:1];
  titleString = [(MKPlaceHoursViewController *)self titleString];
  [(MKPlaceSectionHeaderView *)self->_headerView setTitle:titleString];

  [(MKPlaceSectionHeaderView *)self->_headerView setTarget:self action:sel__toggleShowAllHours];
  v8 = self->_headerView;
  sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView2 setHeaderView:v8];

  [(MKPlaceHoursViewController *)self _setExpanded:self->_isExpanded];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MKPlaceHoursViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = MKPlaceHoursViewController;
  v5 = [(MKPlaceHoursViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MKPlaceHoursViewController *)v5 setMapItem:itemCopy];
  }

  return v6;
}

+ (id)placeHoursWithMapItem:(id)item
{
  itemCopy = item;
  if (([itemCopy _isMapItemTypeBrand] & 1) != 0 || (objc_msgSend(itemCopy, "_businessHours"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, !v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [[MKPlaceHoursViewController alloc] initWithMapItem:itemCopy];
  }

  return v6;
}

@end