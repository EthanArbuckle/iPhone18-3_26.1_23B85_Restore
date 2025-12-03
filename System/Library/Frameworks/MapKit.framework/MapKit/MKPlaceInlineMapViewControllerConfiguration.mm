@interface MKPlaceInlineMapViewControllerConfiguration
+ (id)configurationForPlaceViewControllerOptions:(unint64_t)options;
@end

@implementation MKPlaceInlineMapViewControllerConfiguration

+ (id)configurationForPlaceViewControllerOptions:(unint64_t)options
{
  v4 = objc_alloc_init(MKPlaceInlineMapViewControllerConfiguration);
  [(MKPlaceInlineMapViewControllerConfiguration *)v4 setUseWindowTraitCollectionForUserInterfaceStyle:(options >> 27) & 1];

  return v4;
}

@end