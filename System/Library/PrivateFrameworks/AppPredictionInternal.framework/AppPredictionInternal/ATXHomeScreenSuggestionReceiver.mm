@interface ATXHomeScreenSuggestionReceiver
- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)analytics rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items;
@end

@implementation ATXHomeScreenSuggestionReceiver

- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)analytics rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items
{
  itemsCopy = items;
  analyticsCopy = analytics;
  v9 = [[ATXHomeScreenLogWidgetAddedFeatures alloc] initWithHSEvent:analyticsCopy rankOfWidgetInGallery:gallery galleryItems:itemsCopy];

  [(ATXHomeScreenLogWidgetAddedFeatures *)v9 logWidgetAddedFeaturesInCoreAnalytics];
}

@end