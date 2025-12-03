@interface VenueMapSearchState
+ (id)stateWithMapSelectionState:(id)state searchFieldItem:(id)item searchInfo:(id)info;
- (VenueMapSearchState)initWithMapSelectionState:(id)state searchFieldItem:(id)item searchInfo:(id)info;
@end

@implementation VenueMapSearchState

- (VenueMapSearchState)initWithMapSelectionState:(id)state searchFieldItem:(id)item searchInfo:(id)info
{
  stateCopy = state;
  itemCopy = item;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = VenueMapSearchState;
  v12 = [(VenueMapSearchState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mapSelectionState, state);
    objc_storeStrong(&v13->_searchFieldItem, item);
    objc_storeStrong(&v13->_searchInfo, info);
  }

  return v13;
}

+ (id)stateWithMapSelectionState:(id)state searchFieldItem:(id)item searchInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  stateCopy = state;
  v11 = [[self alloc] initWithMapSelectionState:stateCopy searchFieldItem:itemCopy searchInfo:infoCopy];

  return v11;
}

@end