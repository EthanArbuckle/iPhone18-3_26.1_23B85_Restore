@interface ATXHomeScreenSuggestionReceiver
- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5;
@end

@implementation ATXHomeScreenSuggestionReceiver

- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[ATXHomeScreenLogWidgetAddedFeatures alloc] initWithHSEvent:v8 rankOfWidgetInGallery:a4 galleryItems:v7];

  [(ATXHomeScreenLogWidgetAddedFeatures *)v9 logWidgetAddedFeaturesInCoreAnalytics];
}

@end