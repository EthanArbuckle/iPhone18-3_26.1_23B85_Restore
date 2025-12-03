@interface UISheetPresentationController
- (NSArray)_maps_effectiveDetentValues;
@end

@implementation UISheetPresentationController

- (NSArray)_maps_effectiveDetentValues
{
  _detentValues = [(UISheetPresentationController *)self _detentValues];
  v3 = sub_100021DB0(_detentValues, &stru_101623BD8);

  return v3;
}

@end