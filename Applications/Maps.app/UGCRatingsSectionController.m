@interface UGCRatingsSectionController
- (NSArray)rowItems;
- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate;
- (UGCRatingsSectionController)initWithRatingsForm:(id)a3 mapItem:(id)a4 analyticsDelegate:(id)a5 isInlineMode:(BOOL)a6;
- (UGCSectionControllerDelegate)delegate;
- (id)_mapItemAppleRatings;
- (id)_ratingKeyForAppleRating:(id)a3;
- (id)_ratingKeyForCategory:(id)a3;
- (int64_t)_countAdjustmentForCategory:(id)a3;
- (void)_updateCategoryViewModels;
- (void)handleSuccessfulSubmission;
- (void)rateThisPlaceCellWasTapped:(id)a3;
- (void)ratingCategoryCell:(id)a3 presentInformedConsentIfNeededWithCompletion:(id)a4;
- (void)ratingCategoryCellChangedState:(int64_t)a3 forKey:(id)a4;
- (void)setFormInteractionEnabled:(BOOL)a3;
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

- (void)rateThisPlaceCellWasTapped:(id)a3
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

- (void)setFormInteractionEnabled:(BOOL)a3
{
  if (self->_formInteractionEnabled != a3)
  {
    v3 = a3;
    self->_formInteractionEnabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSDictionary *)self->_ratingCells allValues];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) setEnabled:v3];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  if ([v3 _hasUserRatingScore])
  {
    v4 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v5 = [v4 _hasAppleRatings];

    if (!v5)
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
  v8 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v9 = [v8 _appleRatings];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(UGCRatingsSectionController *)self _ratingKeyForAppleRating:v14];
        if (v15)
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v6 = [v7 copy];
LABEL_16:

  return v6;
}

- (int64_t)_countAdjustmentForCategory:(id)a3
{
  v3 = a3;
  v4 = [v3 initialState];
  v5 = [v3 currentState];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v5 != 0;
  }
}

- (id)_ratingKeyForAppleRating:(id)a3
{
  v3 = a3;
  if ([v3 ratingType])
  {
    v4 = [v3 localizedTitle];
  }

  else
  {
    v4 = &stru_1016631F0;
  }

  return v4;
}

- (id)_ratingKeyForCategory:(id)a3
{
  v3 = a3;
  if ([v3 ratingType] == 1)
  {
    v4 = &stru_1016631F0;
  }

  else
  {
    v4 = [v3 localizedTitle];
  }

  return v4;
}

- (void)_updateCategoryViewModels
{
  if (self->_ratingCells)
  {
    v3 = [(UGCRatingsSectionController *)self _mapItemAppleRatings];
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
        if (v3)
        {
          v11 = v10;
          if (v9)
          {
            v12 = [v3 objectForKeyedSubscript:v9];
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
          v16 = [v8 localizedTitle];
          v17 = [v15 initWithCategoryTitle:v16 clientCountAdjustment:v11];
        }

        else
        {
          v18 = [MUTitleOnlyCategoryRatingViewModel alloc];
          v16 = [v8 localizedTitle];
          v17 = [v18 initWithCategoryTitle:v16];
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
          v13 = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
          v14 = [v13 lastObject];
          v15 = v9 != v14 && !self->_isInlineMode;
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
  v3 = [(UGCRatingsForm *)self->_ratingsForm allRatingCategories];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isEdited] && objc_msgSend(v8, "currentState"))
        {
          v9 = [v8 currentState];
          if (v9 == 2)
          {
            v10 = 2144;
          }

          else
          {
            v10 = 17099;
          }

          if (v9 == 1)
          {
            v11 = 2143;
          }

          else
          {
            v11 = v10;
          }

          v12 = [(UGCRatingsSectionController *)self analyticsDelegate];
          v13 = [v8 localizedTitle];
          [v12 captureUserAction:v11 withValue:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)ratingCategoryCellChangedState:(int64_t)a3 forKey:(id)a4
{
  v10 = [(UGCRatingsForm *)self->_ratingsForm categoryForKey:a4];
  [v10 setCurrentState:a3];
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

  v9 = [v10 localizedTitle];
  [v8 ratingsSectionController:self userActionCapturedForRatingCategoryState:a3 value:v9];
}

- (void)ratingCategoryCell:(id)a3 presentInformedConsentIfNeededWithCompletion:(id)a4
{
  v8 = a4;
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

  [v7 ratingsSectionController:self presentInformedConsentIfNeededWithCompletion:v8];
}

- (UGCRatingsSectionController)initWithRatingsForm:(id)a3 mapItem:(id)a4 analyticsDelegate:(id)a5 isInlineMode:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = UGCRatingsSectionController;
  v14 = [(UGCRatingsSectionController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_ratingsForm, a3);
    objc_storeStrong(&v15->_mapItem, a4);
    objc_storeWeak(&v15->_analyticsDelegate, v13);
    v15->_isInlineMode = a6;
    [(UGCForm *)v15->_ratingsForm addObserver:v15];
  }

  return v15;
}

@end