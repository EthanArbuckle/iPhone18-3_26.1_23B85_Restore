@interface UGCRatingsSectionController
- (NSArray)rowItems;
- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate;
- (UGCRatingsSectionController)initWithRatingsForm:(id)form mapItem:(id)item analyticsDelegate:(id)delegate isInlineMode:(BOOL)mode;
- (UGCSectionControllerDelegate)delegate;
- (id)_mapItemAppleRatings;
- (id)_ratingKeyForAppleRating:(id)rating;
- (id)_ratingKeyForCategory:(id)category;
- (int64_t)_countAdjustmentForCategory:(id)category;
- (void)_updateCategoryViewModels;
- (void)handleSuccessfulSubmission;
- (void)rateThisPlaceCellWasTapped:(id)tapped;
- (void)ratingCategoryCell:(id)cell presentInformedConsentIfNeededWithCompletion:(id)completion;
- (void)ratingCategoryCellChangedState:(int64_t)state forKey:(id)key;
- (void)setFormInteractionEnabled:(BOOL)enabled;
@end

@implementation UGCRatingsSectionController

- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (UGCSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)rateThisPlaceCellWasTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&OBJC_PROTOCOL___UGCRatingsSectionControllerDelegate])
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 ratingsSectionControllerPresentPOIEnrichment:self];
}

- (void)setFormInteractionEnabled:(BOOL)enabled
{
  if (self->_formInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_formInteractionEnabled = enabled;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSDictionary *)self->_ratingCells allValues];
    v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * v8) setEnabled:enabledCopy];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)_mapItemAppleRatings
{
  if (!MapsFeature_IsEnabled_SydneyARP())
  {
    goto LABEL_4;
  }

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  if ([_geoMapItem _hasUserRatingScore])
  {
    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    _hasAppleRatings = [_geoMapItem2 _hasAppleRatings];

    if (!_hasAppleRatings)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _geoMapItem3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  _appleRatings = [_geoMapItem3 _appleRatings];

  v10 = [_appleRatings countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(_appleRatings);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(UGCRatingsSectionController *)self _ratingKeyForAppleRating:v14];
        if (v15)
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v11 = [_appleRatings countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v6 = [v7 copy];
LABEL_16:

  return v6;
}

- (int64_t)_countAdjustmentForCategory:(id)category
{
  categoryCopy = category;
  initialState = [categoryCopy initialState];
  currentState = [categoryCopy currentState];

  if (currentState)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (initialState)
  {
    return v6;
  }

  else
  {
    return currentState != 0;
  }
}

- (id)_ratingKeyForAppleRating:(id)rating
{
  ratingCopy = rating;
  if ([ratingCopy ratingType])
  {
    localizedTitle = [ratingCopy localizedTitle];
  }

  else
  {
    localizedTitle = &stru_1016631F0;
  }

  return localizedTitle;
}

- (id)_ratingKeyForCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy ratingType] == 1)
  {
    localizedTitle = &stru_1016631F0;
  }

  else
  {
    localizedTitle = [categoryCopy localizedTitle];
  }

  return localizedTitle;
}

- (void)_updateCategoryViewModels
{
  if (self->_ratingCells)
  {
    _mapItemAppleRatings = [(UGCRatingsSectionController *)self _mapItemAppleRatings];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
    v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = v4;
    v6 = *v23;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(UGCRatingsSectionController *)self _ratingKeyForCategory:v8];
        v10 = [(UGCRatingsSectionController *)self _countAdjustmentForCategory:v8];
        if (_mapItemAppleRatings)
        {
          v11 = v10;
          if (v9)
          {
            v12 = [_mapItemAppleRatings objectForKeyedSubscript:v9];
            if (v12)
            {
              v13 = v12;
              v14 = [[MUAppleCategoryRatingViewModel alloc] initWithAppleRating:v12 clientCountAdjustment:v11];

              if (v14)
              {
                goto LABEL_14;
              }
            }
          }

          v15 = [MUUnratedCategoryRatingViewModel alloc];
          localizedTitle = [v8 localizedTitle];
          v17 = [v15 initWithCategoryTitle:localizedTitle clientCountAdjustment:v11];
        }

        else
        {
          v18 = [MUTitleOnlyCategoryRatingViewModel alloc];
          localizedTitle = [v8 localizedTitle];
          v17 = [v18 initWithCategoryTitle:localizedTitle];
        }

        v14 = v17;

LABEL_14:
        v19 = [(NSDictionary *)self->_ratingCells objectForKeyedSubscript:v9];

        if (v19)
        {
          v20 = [(NSDictionary *)self->_ratingCells objectForKeyedSubscript:v9];
          [v20 setAppleRatingViewModel:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v5)
      {
LABEL_18:

        return;
      }
    }
  }
}

- (NSArray)rowItems
{
  rowItems = self->_rowItems;
  if (!rowItems)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v26 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
    v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = [(UGCRatingsSectionController *)self _ratingKeyForCategory:v9];
          v11 = -[UGCRatingCategoryCell initWithCurrentState:isInlineMode:]([UGCRatingCategoryCell alloc], "initWithCurrentState:isInlineMode:", [v9 currentState], self->_isInlineMode);
          [(UGCRatingCategoryCell *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
          v12 = [v9 key];
          [(UGCRatingCategoryCell *)v11 setKey:v12];

          [(UGCRatingCategoryCell *)v11 setDelegate:self];
          [(UGCRatingCategoryCell *)v11 setEnabled:self->_formInteractionEnabled];
          allRatingCategories = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
          lastObject = [allRatingCategories lastObject];
          v15 = v9 != lastObject && !self->_isInlineMode;
          [(UGCPOIEnrichmentEditorCell *)v11 setShowBottomHairline:v15];

          [v4 setObject:v11 forKeyedSubscript:v10];
          v16 = [UGCPOIEnrichmentRowItem rowItemWithView:v11 bottomSpacing:0.0];
          [v26 addObject:v16];
        }

        v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    if (self->_isInlineMode)
    {
      v17 = [[UGCRateThisPlaceCell alloc] initWithDelegate:self];
      [(UGCRateThisPlaceCell *)v17 setClipsToBounds:1];
      v18 = [UGCPOIEnrichmentRowItem rowItemWithView:v17 bottomSpacing:16.0];
      [v26 addObject:v18];
    }

    v19 = [v4 copy];
    ratingCells = self->_ratingCells;
    self->_ratingCells = v19;

    [(UGCRatingsSectionController *)self _updateCategoryViewModels];
    v21 = [UGCPOIEnrichmentGroupedSectionView groupedSectionRowItemWithRowItems:v26 bottomSpacing:self->_isInlineMode isInlineMode:16.0];
    v31 = v21;
    v22 = [NSArray arrayWithObjects:&v31 count:1];
    v23 = self->_rowItems;
    self->_rowItems = v22;

    rowItems = self->_rowItems;
  }

  return rowItems;
}

- (void)handleSuccessfulSubmission
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allRatingCategories = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
  v4 = [allRatingCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allRatingCategories);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isEdited] && objc_msgSend(v8, "currentState"))
        {
          currentState = [v8 currentState];
          if (currentState == 2)
          {
            v10 = 2144;
          }

          else
          {
            v10 = 17099;
          }

          if (currentState == 1)
          {
            v11 = 2143;
          }

          else
          {
            v11 = v10;
          }

          analyticsDelegate = [(UGCRatingsSectionController *)self analyticsDelegate];
          localizedTitle = [v8 localizedTitle];
          [analyticsDelegate captureUserAction:v11 withValue:localizedTitle];
        }
      }

      v5 = [allRatingCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)ratingCategoryCellChangedState:(int64_t)state forKey:(id)key
{
  v10 = [(UGCRatingsForm *)self->_ratingsForm categoryForKey:key];
  [v10 setCurrentState:state];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&OBJC_PROTOCOL___UGCRatingsSectionControllerDelegate])
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  localizedTitle = [v10 localizedTitle];
  [v8 ratingsSectionController:self userActionCapturedForRatingCategoryState:state value:localizedTitle];
}

- (void)ratingCategoryCell:(id)cell presentInformedConsentIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&OBJC_PROTOCOL___UGCRatingsSectionControllerDelegate])
  {
    v6 = WeakRetained;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 ratingsSectionController:self presentInformedConsentIfNeededWithCompletion:completionCopy];
}

- (UGCRatingsSectionController)initWithRatingsForm:(id)form mapItem:(id)item analyticsDelegate:(id)delegate isInlineMode:(BOOL)mode
{
  formCopy = form;
  itemCopy = item;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = UGCRatingsSectionController;
  v14 = [(UGCRatingsSectionController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_ratingsForm, form);
    objc_storeStrong(&v15->_mapItem, item);
    objc_storeWeak(&v15->_analyticsDelegate, delegateCopy);
    v15->_isInlineMode = mode;
    [(UGCForm *)v15->_ratingsForm addObserver:v15];
  }

  return v15;
}

@end