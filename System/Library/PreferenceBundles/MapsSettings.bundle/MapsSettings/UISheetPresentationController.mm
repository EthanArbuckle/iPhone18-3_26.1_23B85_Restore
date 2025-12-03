@interface UISheetPresentationController
- (NSArray)_maps_effectiveDetentValues;
@end

@implementation UISheetPresentationController

- (NSArray)_maps_effectiveDetentValues
{
  _detentValues = [(UISheetPresentationController *)self _detentValues];
  v3 = MapsMap(_detentValues, &stru_7FC70);

  return v3;
}

@end