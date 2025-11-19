@interface ATXHomeScreenLogWidgetAddedFeatures
- (ATXHomeScreenLogWidgetAddedFeatures)initWithHSEvent:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5;
- (id)_key:(id)a3 byAppendingStringIndicatingIfWidgetWasAdded:(BOOL)a4;
- (id)_pickIndexForNegativeExampleFromGalleryItems;
- (void)_pickIndexForNegativeExampleFromGalleryItems;
- (void)_populateFeaturesForAddedWidget;
- (void)_populateFeaturesForNegativeExample;
- (void)_sendToCoreAnalytics;
- (void)logWidgetAddedFeaturesInCoreAnalytics;
@end

@implementation ATXHomeScreenLogWidgetAddedFeatures

- (ATXHomeScreenLogWidgetAddedFeatures)initWithHSEvent:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ATXHomeScreenLogWidgetAddedFeatures;
  v11 = [(ATXHomeScreenLogWidgetAddedFeatures *)&v15 init];
  if (v11)
  {
    v12 = objc_opt_new();
    widgetAddedFeatures = v11->_widgetAddedFeatures;
    v11->_widgetAddedFeatures = v12;

    objc_storeStrong(&v11->_hsEvent, a3);
    v11->_rankOfWidgetInGallery = a4;
    objc_storeStrong(&v11->_galleryItems, a5);
  }

  return v11;
}

- (void)_sendToCoreAnalytics
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    widgetAddedFeatures = self->_widgetAddedFeatures;
    v7 = 138412290;
    v8 = widgetAddedFeatures;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXHomeScreenLogWidgetAddedFeatures: Widget added features: %@", &v7, 0xCu);
  }

  v5 = self->_widgetAddedFeatures;
  AnalyticsSendEvent();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_populateFeaturesForAddedWidget
{
  v3 = MEMORY[0x277CEB9B0];
  v4 = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
  v5 = [(ATXHomeScreenEvent *)self->_hsEvent widgetKind];
  v6 = [v3 stringRepresentationForExtensionBundleId:v4 kind:v5];
  widgetAddedFeatures = self->_widgetAddedFeatures;
  v8 = 1;
  v9 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetBundleIdAndKindFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)widgetAddedFeatures setObject:v6 forKeyedSubscript:v9];

  [(ATXHomeScreenEvent *)self->_hsEvent widgetSize];
  v10 = ATXCAStringForStackLayoutSize();
  v11 = self->_widgetAddedFeatures;
  v12 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetSizeFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  [(ATXHomeScreenEvent *)self->_hsEvent stackKind];
  v13 = ATXStringForStackKind();
  [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v13 forKeyedSubscript:@"stackKindForAddedWidget"];

  [(ATXHomeScreenEvent *)self->_hsEvent stackLocation];
  v14 = ATXCAStringForStackLocation();
  [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v14 forKeyedSubscript:@"stackLocationForAddedWidget"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_rankOfWidgetInGallery];
  v16 = self->_widgetAddedFeatures;
  v17 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"rankInGalleryFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

  rankOfWidgetInGallery = self->_rankOfWidgetInGallery;
  if (rankOfWidgetInGallery)
  {
    v27 = [(NSArray *)self->_galleryItems objectAtIndexedSubscript:rankOfWidgetInGallery - 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v27)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v27, "rankType")}];
        v8 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v27 = 0;
  v19 = &unk_283A56030;
LABEL_7:
  v20 = self->_widgetAddedFeatures;
  v21 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"galleryRankTypeFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

  if (v8)
  {
    [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:&unk_283A56030 forKeyedSubscript:@"suggestedSizeInGalleryIsSameForAddedWidget"];
  }

  else
  {

    v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v27, "suggestedSize") == -[ATXHomeScreenEvent widgetSize](self->_hsEvent, "widgetSize")}];
    [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v22 forKeyedSubscript:@"suggestedSizeInGalleryIsSameForAddedWidget"];
  }

  v23 = [(ATXHomeScreenEvent *)self->_hsEvent appBundleId];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateParentAppFeaturesForParentAppBundleId:v23 widgetWasAdded:1];

  v24 = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
  v25 = [(ATXHomeScreenEvent *)self->_hsEvent widgetKind];
  v26 = [(ATXHomeScreenEvent *)self->_hsEvent appBundleId];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateHomeScreenConfigFeaturesForWidgetBundleId:v24 widgetKind:v25 parentAppBundleId:v26 widgetWasAdded:1];
}

- (void)_populateFeaturesForNegativeExample
{
  v3 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _pickIndexForNegativeExampleFromGalleryItems];
  if (v3)
  {
    v27 = v3;
    v4 = -[NSArray objectAtIndexedSubscript:](self->_galleryItems, "objectAtIndexedSubscript:", [v3 unsignedIntValue]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x277CEB9B0];
      v7 = [v5 extensionBundleIdForMetrics];
      v8 = [v5 widgetKind];
      v9 = [v6 stringRepresentationForExtensionBundleId:v7 kind:v8];
      widgetAddedFeatures = self->_widgetAddedFeatures;
      v11 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetBundleIdAndKindFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)widgetAddedFeatures setObject:v9 forKeyedSubscript:v11];

      [v5 suggestedSize];
      v12 = ATXCAStringForStackLayoutSize();
      v13 = self->_widgetAddedFeatures;
      v14 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetSizeFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v27, "unsignedIntValue") + 1}];
      v16 = self->_widgetAddedFeatures;
      v17 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"rankInGalleryFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "rankType")}];
      v19 = self->_widgetAddedFeatures;
      v20 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"galleryRankTypeFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

      v21 = [v5 appBundleId];
      [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateParentAppFeaturesForParentAppBundleId:v21 widgetWasAdded:0];

      v22 = [v5 avocadoDescriptor];
      v23 = [v22 extensionBundleIdentifier];
      v24 = [v5 avocadoDescriptor];
      v25 = [v24 kind];
      v26 = [v5 appBundleId];
      [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateHomeScreenConfigFeaturesForWidgetBundleId:v23 widgetKind:v25 parentAppBundleId:v26 widgetWasAdded:0];
    }

    else
    {
      v5 = 0;
    }

    v3 = v27;
  }
}

void __134__ATXHomeScreenLogWidgetAddedFeatures__populateHomeScreenConfigFeaturesForWidgetBundleId_widgetKind_parentAppBundleId_widgetWasAdded___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ATXStackLocationForPageAndIndex();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = [v3 stacks];
  v37 = v3;
  v5 = [v3 panels];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  obj = v6;
  v40 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v40)
  {
    v39 = *v47;
    do
    {
      v7 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v7;
        v8 = *(*(&v46 + 1) + 8 * v7);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v9 = [v8 widgets];
        v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v43;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v42 + 1) + 8 * i);
              v15 = [v14 widgetUniqueId];
              v16 = [*(*(a1 + 32) + 16) widgetUniqueId];
              v17 = [v15 isEqualToString:v16];

              if ((v17 & 1) == 0)
              {
                if ([v14 isSameWidgetAsWidgetBundleId:*(a1 + 40) widgetKind:*(a1 + 48)])
                {
                  IsTodayPage = ATXStackLocationIsTodayPage();
                  v18 = @"widgetIsAlreadyAddedOnTodayPageFor";
                  if ((IsTodayPage & 1) != 0 || (IsHomeScreen = ATXStackLocationIsHomeScreen(), v18 = @"widgetIsAlreadyAddedOnHomeScreenFor", IsHomeScreen))
                  {
                    v21 = *(a1 + 32);
                    v22 = v21[1];
                    v23 = [v21 _key:v18 byAppendingStringIndicatingIfWidgetWasAdded:*(a1 + 56)];
                    [v22 setObject:&unk_283A56048 forKeyedSubscript:v23];
                  }
                }

                v24 = [*(*(a1 + 32) + 16) appBundleId];
                if (v24)
                {
                  v25 = v24;
                  v26 = [v14 appBundleId];
                  if (!v26)
                  {
                    goto LABEL_22;
                  }

                  v27 = v26;
                  v28 = [*(*(a1 + 32) + 16) appBundleId];
                  v29 = [v14 appBundleId];
                  v30 = [v28 isEqualToString:v29];

                  if (v30)
                  {
                    v31 = ATXStackLocationIsTodayPage();
                    v32 = @"widgetFromParentAppBundleIdIsAlreadyAddedOnTodayPageFor";
                    if ((v31 & 1) != 0 || (v33 = ATXStackLocationIsHomeScreen(), v32 = @"widgetFromParentAppBundleIdIsAlreadyAddedOnHomeScreenFor", v33))
                    {
                      v34 = *(a1 + 32);
                      v35 = v34[1];
                      v25 = [v34 _key:v32 byAppendingStringIndicatingIfWidgetWasAdded:*(a1 + 56)];
                      [v35 setObject:&unk_283A56048 forKeyedSubscript:v25];
LABEL_22:

                      continue;
                    }
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v11);
        }

        v7 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_pickIndexForNegativeExampleFromGalleryItems
{
  v3 = [(NSArray *)self->_galleryItems count];
  if (v3)
  {
    v4 = v3;
    v5 = 20;
    do
    {
      v6 = arc4random_uniform(v4);
      v7 = [(NSArray *)self->_galleryItems objectAtIndexedSubscript:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_rankOfWidgetInGallery - 1 != v6)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];

        goto LABEL_14;
      }

      --v5;
    }

    while (v5);
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenLogWidgetAddedFeatures *)v4 _pickIndexForNegativeExampleFromGalleryItems];
    }
  }

  else
  {
    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenLogWidgetAddedFeatures *)v9 _pickIndexForNegativeExampleFromGalleryItems];
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)_key:(id)a3 byAppendingStringIndicatingIfWidgetWasAdded:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = @"NegativeExample";
  if (v4)
  {
    v8 = @"WidgetAdded";
  }

  v9 = [v7 initWithFormat:@"%@%@", v6, v8];

  return v9;
}

- (void)logWidgetAddedFeaturesInCoreAnalytics
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
    rankOfWidgetInGallery = self->_rankOfWidgetInGallery;
    v7 = 138412546;
    v8 = v4;
    v9 = 2048;
    v10 = rankOfWidgetInGallery;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogWidgetAddedFeatures: logging new widget added: %@, rank in gallery: %lu", &v7, 0x16u);
  }

  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateFeaturesForAddedWidget];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateFeaturesForNegativeExample];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _sendToCoreAnalytics];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_pickIndexForNegativeExampleFromGalleryItems
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenLogWidgetAddedFeatures: Unable to find a negative example with negExampleIndexUpperBound: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end