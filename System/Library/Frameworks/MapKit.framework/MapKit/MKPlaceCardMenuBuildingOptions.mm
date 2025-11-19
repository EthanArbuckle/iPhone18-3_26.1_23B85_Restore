@interface MKPlaceCardMenuBuildingOptions
- (MKPlaceCardMenuBuildingOptions)initWithRequestedActionTypes:(id)a3;
@end

@implementation MKPlaceCardMenuBuildingOptions

- (MKPlaceCardMenuBuildingOptions)initWithRequestedActionTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKPlaceCardMenuBuildingOptions;
  v5 = [(MKPlaceCardMenuBuildingOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestedActionTypes = v5->_requestedActionTypes;
    v5->_requestedActionTypes = v6;

    v5->_addMismatchedItems = 1;
  }

  return v5;
}

@end