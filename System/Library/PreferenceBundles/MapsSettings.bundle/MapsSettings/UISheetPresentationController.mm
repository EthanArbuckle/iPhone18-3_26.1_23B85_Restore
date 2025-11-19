@interface UISheetPresentationController
- (NSArray)_maps_effectiveDetentValues;
@end

@implementation UISheetPresentationController

- (NSArray)_maps_effectiveDetentValues
{
  v2 = [(UISheetPresentationController *)self _detentValues];
  v3 = MapsMap(v2, &stru_7FC70);

  return v3;
}

@end