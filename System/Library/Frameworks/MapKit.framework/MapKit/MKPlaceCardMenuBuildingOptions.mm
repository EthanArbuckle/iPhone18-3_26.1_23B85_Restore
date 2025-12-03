@interface MKPlaceCardMenuBuildingOptions
- (MKPlaceCardMenuBuildingOptions)initWithRequestedActionTypes:(id)types;
@end

@implementation MKPlaceCardMenuBuildingOptions

- (MKPlaceCardMenuBuildingOptions)initWithRequestedActionTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = MKPlaceCardMenuBuildingOptions;
  v5 = [(MKPlaceCardMenuBuildingOptions *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    requestedActionTypes = v5->_requestedActionTypes;
    v5->_requestedActionTypes = v6;

    v5->_addMismatchedItems = 1;
  }

  return v5;
}

@end