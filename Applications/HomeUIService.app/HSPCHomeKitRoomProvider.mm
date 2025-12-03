@interface HSPCHomeKitRoomProvider
- (HSPCHomeKitRoomProvider)initWithCoordinator:(id)coordinator configuration:(id)configuration;
- (id)_generateRoomSuggestionsWithLimit:(int64_t)limit existingRooms:(id)rooms;
- (id)loadData;
- (id)userFacingStringForItem:(id)item;
- (unint64_t)initialRowIndex;
@end

@implementation HSPCHomeKitRoomProvider

- (HSPCHomeKitRoomProvider)initWithCoordinator:(id)coordinator configuration:(id)configuration
{
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = HSPCHomeKitRoomProvider;
  v8 = [(HSPCDataProvider *)&v22 initWithCoordinator:coordinatorCopy configuration:configurationCopy];
  if (v8)
  {
    home = [configurationCopy home];
    hf_dashboardSectionReorderableHomeKitObjectComparator = [home hf_dashboardSectionReorderableHomeKitObjectComparator];

    home2 = [configurationCopy home];
    rooms = [home2 rooms];
    v13 = hf_dashboardSectionReorderableHomeKitObjectComparator;
    if (!hf_dashboardSectionReorderableHomeKitObjectComparator)
    {
      v13 = +[HFItemSection defaultItemComparator];
    }

    v14 = [rooms sortedArrayUsingComparator:v13];
    existingRooms = v8->_existingRooms;
    v8->_existingRooms = v14;

    if (!hf_dashboardSectionReorderableHomeKitObjectComparator)
    {
    }

    v16 = v8->_existingRooms;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005E10C;
    v20[3] = &unk_1000C69E0;
    v21 = coordinatorCopy;
    v17 = [(NSArray *)v16 na_firstObjectPassingTest:v20];
    suggestedRoom = v8->_suggestedRoom;
    v8->_suggestedRoom = v17;
  }

  return v8;
}

- (id)loadData
{
  existingRooms = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v4 = [(HSPCHomeKitRoomProvider *)self _generateRoomSuggestionsWithLimit:10 existingRooms:existingRooms];

  existingRooms2 = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v6 = [existingRooms2 count];
  v7 = &v6[[v4 count]];

  v8 = +[NSMutableArray array];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      existingRooms3 = [(HSPCHomeKitRoomProvider *)self existingRooms];
      v11 = [existingRooms3 count];

      existingRooms4 = [(HSPCHomeKitRoomProvider *)self existingRooms];
      v13 = existingRooms4;
      if (i >= v11)
      {
        v14 = (i - [existingRooms4 count]);
        existingRooms4 = v4;
      }

      else
      {
        v14 = i;
      }

      v15 = [existingRooms4 objectAtIndexedSubscript:v14];

      name = [v15 name];
      [v8 addObject:name];
    }
  }

  v17 = [v8 copy];
  [(HSPCDataProvider *)self setItems:v17];

  [(HSPCDataProvider *)self setLoaded:1];
  v18 = +[NAFuture futureWithNoResult];

  return v18;
}

- (id)userFacingStringForItem:(id)item
{
  itemCopy = item;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  existingRooms = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v6 = [existingRooms countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(existingRooms);
        }

        name = [*(*(&v14 + 1) + 8 * i) name];
        v11 = [name isEqualToString:itemCopy];

        if (v11)
        {
          v12 = itemCopy;

          goto LABEL_11;
        }
      }

      v7 = [existingRooms countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = HFLocalizedStringWithFormat();
LABEL_11:

  return v12;
}

- (unint64_t)initialRowIndex
{
  existingRooms = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v4 = [existingRooms count];

  if (!v4)
  {
    items = [(HSPCDataProvider *)self items];
    goto LABEL_6;
  }

  suggestedRoom = [(HSPCHomeKitRoomProvider *)self suggestedRoom];

  if (!suggestedRoom || (-[HSPCHomeKitRoomProvider existingRooms](self, "existingRooms"), v6 = objc_claimAutoreleasedReturnValue(), -[HSPCHomeKitRoomProvider suggestedRoom](self, "suggestedRoom"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 indexOfObject:v7], v7, v6, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    items = [(HSPCHomeKitRoomProvider *)self existingRooms];
LABEL_6:
    v10 = items;
    v8 = ([items count] >> 1);
  }

  return v8;
}

- (id)_generateRoomSuggestionsWithLimit:(int64_t)limit existingRooms:(id)rooms
{
  v5 = [rooms na_map:&stru_1000C7E38];
  v6 = [NSSet setWithArray:v5];

  v7 = +[HFDefaultRoomSuggestionVendor homeAppSuggestionVendor];
  roomSuggestions = [v7 roomSuggestions];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005E6C4;
  v18[3] = &unk_1000C7E60;
  v19 = v6;
  v9 = v6;
  v10 = [roomSuggestions na_filter:v18];

  v11 = [v9 count];
  v12 = (limit - v11) & ~((limit - v11) >> 63);
  allObjects = [v10 allObjects];
  v14 = +[HFRoomSuggestion priorityComparator];
  v15 = [allObjects sortedArrayUsingComparator:v14];
  v16 = [v15 subarrayWithRange:{0, v12}];

  return v16;
}

@end