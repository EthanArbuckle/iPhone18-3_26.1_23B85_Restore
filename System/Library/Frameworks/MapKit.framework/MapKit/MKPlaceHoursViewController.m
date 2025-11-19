@interface MKPlaceHoursViewController
+ (id)placeHoursWithMapItem:(id)a3;
- (BOOL)_shouldOnlyShowExpanded;
- (MKPlaceHoursViewController)initWithMapItem:(id)a3;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (id)hoursBuilderWithHours:(id)a3;
- (id)infoCardChildPossibleActions;
- (void)_setExpanded:(BOOL)a3;
- (void)_toggleShowAllHours;
- (void)_updateHoursAnimated:(BOOL)a3;
- (void)infoCardThemeChanged;
- (void)setMapItem:(id)a3;
- (void)setResizableViewsDisabled:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MKPlaceHoursViewController

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v3 = [MEMORY[0x1E695DF70] array];
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
    [v3 addObject:v5];
  }

  return v3;
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
  v3 = [(MKPlaceSectionViewController *)self sectionView];
  v4 = [v3 rowViews];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) hoursView];
        v10 = [v9 hoursBuilder];
        [v10 updateHoursLabelColor];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateHoursAnimated:(BOOL)a3
{
  v44 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(MKPlaceHoursViewController *)self view];
    v5 = [v4 window];
    v32 = v5 != 0;
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
  v7 = [(MKPlaceHoursViewController *)self businessHours];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [MKPlaceHoursDayRow alloc];
        v14 = [(MKPlaceHoursViewController *)self view];
        [v14 bounds];
        v15 = [(MKPlaceHoursDayRow *)v13 initWithBusinessHours:v12 frame:?];

        v16 = [(MKPlaceHoursViewController *)self hoursBuilderWithHours:v12];
        v17 = [(MKPlaceHoursDayRow *)v15 hoursView];
        [v17 setHoursBuilder:v16];

        [(MKViewWithHairline *)v15 setBottomHairlineHidden:1];
        [v6 addObject:v15];
        v18 = [(MKPlaceHoursDayRow *)v15 hoursView];
        [v33 addObject:v18];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v19 = [(MKPlaceHoursViewController *)self businessHours];
  [MKPlaceHoursViewHelper determineExtraRulesForPlaceHoursViews:v33 withBusinessHours:v19];

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
        v26 = [*(*(&v34 + 1) + 8 * v24) hoursView];
        v27 = [v26 placeHoursViewOptions];
        if (isExpanded)
        {
          v28 = 8;
        }

        else
        {
          v28 = 1;
        }

        [v26 setPlaceHoursViewOptions:v27 | v28];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v22);
  }

  v29 = [v20 lastObject];
  [v29 setBottomHairlineHidden:1];

  v30 = [(MKPlaceSectionViewController *)self sectionView];
  v31 = [v20 copy];
  [v30 setRowViews:v31 animated:v32 isNeedLayout:0];
}

- (void)_toggleShowAllHours
{
  [(MKPlaceHoursViewController *)self _setExpanded:!self->_isExpanded];
  v3 = [(MKPlaceHoursViewController *)self analyticsDelegate];

  if (v3)
  {
    isExpanded = self->_isExpanded;
    v5 = [(MKPlaceHoursViewController *)self analyticsDelegate];
    v6 = v5;
    if (isExpanded)
    {
      v7 = 6012;
    }

    else
    {
      v7 = 6011;
    }

    [v5 infoCardAnalyticsDidSelectAction:v7 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

  [(UIView *)self->_headerView _mapkit_layoutIfNeeded];

  [(MKPlaceHoursViewController *)self _updateHoursAnimated:1];
}

- (void)_setExpanded:(BOOL)a3
{
  v3 = a3;
  self->_isExpanded = a3;
  if ([(MKPlaceHoursViewController *)self _shouldOnlyShowExpanded])
  {
    self->_isExpanded = 1;
    headerView = self->_headerView;

    [(MKPlaceSectionHeaderView *)headerView setShowSeeMoreButton:0];
  }

  else
  {
    [(MKPlaceSectionHeaderView *)self->_headerView setShowSeeMoreButton:1];
    if (v3)
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
  v3 = [(MKPlaceHoursViewController *)self businessHours];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MKPlaceHoursViewController *)self businessHours];
    v6 = [v5 count];

    v7 = [(MKPlaceHoursViewController *)self businessHours];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 placeDailyHours];
    v10 = [v9 count];

    v11 = [(MKPlaceHoursViewController *)self businessHours];
    v12 = [v11 objectAtIndex:0];
    v13 = [v12 hoursType];

    v16 = (v10 == 1 || v13 == 4) && v6 == 1;
  }

  else
  {
    v16 = 0;
  }

  return self->_resizableViewsDisabled || v16;
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mapItem != v5)
  {
    businessHours = self->_businessHours;
    self->_businessHours = 0;
    v9 = v5;

    objc_storeStrong(&self->_mapItem, a3);
    v8 = [(MKPlaceHoursViewController *)self isViewLoaded];
    v6 = v9;
    if (v8)
    {
      [(MKPlaceHoursViewController *)self _setExpanded:[(MKPlaceHoursViewController *)self _shouldOnlyShowExpanded]];
      [(MKPlaceHoursViewController *)self _updateHoursAnimated:0];
      v6 = v9;
    }
  }
}

- (id)hoursBuilderWithHours:(id)a3
{
  v4 = a3;
  v5 = [_MKLocalizedHoursBuilder alloc];
  v6 = [(MKPlaceHoursViewController *)self timeZone];
  v7 = [(_MKLocalizedHoursBuilder *)v5 initWithBusinessHours:v4 timeZone:v6 localizedHoursStringOptions:0 conciseStyle:0 openAt:0];

  return v7;
}

- (void)setResizableViewsDisabled:(BOOL)a3
{
  if (self->_resizableViewsDisabled != a3)
  {
    self->_resizableViewsDisabled = a3;
    if (a3)
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

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MKPlaceHoursViewController;
  [(MKPlaceHoursViewController *)&v7 viewWillAppear:a3];
  v4 = [(MKPlaceSectionViewController *)self sectionView];
  v5 = [v4 rowViews];
  v6 = [v5 count];

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
  v3 = [(MKPlaceSectionViewController *)self sectionView];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [MKPlaceSectionHeaderView alloc];
  v5 = [(MKPlaceSectionHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  [(MKPlaceSectionHeaderView *)self->_headerView setShowSeeMoreButton:1];
  [(MKViewWithHairline *)self->_headerView setBottomHairlineHidden:1];
  v7 = [(MKPlaceHoursViewController *)self titleString];
  [(MKPlaceSectionHeaderView *)self->_headerView setTitle:v7];

  [(MKPlaceSectionHeaderView *)self->_headerView setTarget:self action:sel__toggleShowAllHours];
  v8 = self->_headerView;
  v9 = [(MKPlaceSectionViewController *)self sectionView];
  [v9 setHeaderView:v8];

  [(MKPlaceHoursViewController *)self _setExpanded:self->_isExpanded];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MKPlaceHoursViewController)initWithMapItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKPlaceHoursViewController;
  v5 = [(MKPlaceHoursViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MKPlaceHoursViewController *)v5 setMapItem:v4];
  }

  return v6;
}

+ (id)placeHoursWithMapItem:(id)a3
{
  v3 = a3;
  if (([v3 _isMapItemTypeBrand] & 1) != 0 || (objc_msgSend(v3, "_businessHours"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, !v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [[MKPlaceHoursViewController alloc] initWithMapItem:v3];
  }

  return v6;
}

@end