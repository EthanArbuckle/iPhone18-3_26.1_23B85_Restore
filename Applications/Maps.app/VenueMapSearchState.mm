@interface VenueMapSearchState
+ (id)stateWithMapSelectionState:(id)a3 searchFieldItem:(id)a4 searchInfo:(id)a5;
- (VenueMapSearchState)initWithMapSelectionState:(id)a3 searchFieldItem:(id)a4 searchInfo:(id)a5;
@end

@implementation VenueMapSearchState

- (VenueMapSearchState)initWithMapSelectionState:(id)a3 searchFieldItem:(id)a4 searchInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VenueMapSearchState;
  v12 = [(VenueMapSearchState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mapSelectionState, a3);
    objc_storeStrong(&v13->_searchFieldItem, a4);
    objc_storeStrong(&v13->_searchInfo, a5);
  }

  return v13;
}

+ (id)stateWithMapSelectionState:(id)a3 searchFieldItem:(id)a4 searchInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithMapSelectionState:v10 searchFieldItem:v9 searchInfo:v8];

  return v11;
}

@end