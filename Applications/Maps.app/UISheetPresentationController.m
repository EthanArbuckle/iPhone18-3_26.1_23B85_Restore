@interface UISheetPresentationController
- (NSArray)_maps_effectiveDetentValues;
@end

@implementation UISheetPresentationController

- (NSArray)_maps_effectiveDetentValues
{
  v2 = [(UISheetPresentationController *)self _detentValues];
  v3 = sub_100021DB0(v2, &stru_101623BD8);

  return v3;
}

@end