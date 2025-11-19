@interface MKPlaceInlineMapViewControllerConfiguration
+ (id)configurationForPlaceViewControllerOptions:(unint64_t)a3;
@end

@implementation MKPlaceInlineMapViewControllerConfiguration

+ (id)configurationForPlaceViewControllerOptions:(unint64_t)a3
{
  v4 = objc_alloc_init(MKPlaceInlineMapViewControllerConfiguration);
  [(MKPlaceInlineMapViewControllerConfiguration *)v4 setUseWindowTraitCollectionForUserInterfaceStyle:(a3 >> 27) & 1];

  return v4;
}

@end