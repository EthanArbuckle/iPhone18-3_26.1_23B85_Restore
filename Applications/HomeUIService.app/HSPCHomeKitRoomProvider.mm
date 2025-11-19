@interface HSPCHomeKitRoomProvider
- (HSPCHomeKitRoomProvider)initWithCoordinator:(id)a3 configuration:(id)a4;
- (id)_generateRoomSuggestionsWithLimit:(int64_t)a3 existingRooms:(id)a4;
- (id)loadData;
- (id)userFacingStringForItem:(id)a3;
- (unint64_t)initialRowIndex;
@end

@implementation HSPCHomeKitRoomProvider

- (HSPCHomeKitRoomProvider)initWithCoordinator:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HSPCHomeKitRoomProvider;
  v8 = [(HSPCDataProvider *)&v22 initWithCoordinator:v6 configuration:v7];
  if (v8)
  {
    v9 = [v7 home];
    v10 = [v9 hf_dashboardSectionReorderableHomeKitObjectComparator];

    v11 = [v7 home];
    v12 = [v11 rooms];
    v13 = v10;
    if (!v10)
    {
      v13 = +[HFItemSection defaultItemComparator];
    }

    v14 = [v12 sortedArrayUsingComparator:v13];
    existingRooms = v8->_existingRooms;
    v8->_existingRooms = v14;

    if (!v10)
    {
    }

    v16 = v8->_existingRooms;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005E10C;
    v20[3] = &unk_1000C69E0;
    v21 = v6;
    v17 = [(NSArray *)v16 na_firstObjectPassingTest:v20];
    suggestedRoom = v8->_suggestedRoom;
    v8->_suggestedRoom = v17;
  }

  return v8;
}

- (id)loadData
{
  v3 = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v4 = [(HSPCHomeKitRoomProvider *)self _generateRoomSuggestionsWithLimit:10 existingRooms:v3];

  v5 = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v6 = [v5 count];
  v7 = &v6[[v4 count]];

  v8 = +[NSMutableArray array];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [(HSPCHomeKitRoomProvider *)self existingRooms];
      v11 = [v10 count];

      v12 = [(HSPCHomeKitRoomProvider *)self existingRooms];
      v13 = v12;
      if (i >= v11)
      {
        v14 = (i - [v12 count]);
        v12 = v4;
      }

      else
      {
        v14 = i;
      }

      v15 = [v12 objectAtIndexedSubscript:v14];

      v16 = [v15 name];
      [v8 addObject:v16];
    }
  }

  v17 = [v8 copy];
  [(HSPCDataProvider *)self setItems:v17];

  [(HSPCDataProvider *)self setLoaded:1];
  v18 = +[NAFuture futureWithNoResult];

  return v18;
}

- (id)userFacingStringForItem:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v12 = v4;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(HSPCHomeKitRoomProvider *)self existingRooms];
  v4 = [v3 count];

  if (!v4)
  {
    v9 = [(HSPCDataProvider *)self items];
    goto LABEL_6;
  }

  v5 = [(HSPCHomeKitRoomProvider *)self suggestedRoom];

  if (!v5 || (-[HSPCHomeKitRoomProvider existingRooms](self, "existingRooms"), v6 = objc_claimAutoreleasedReturnValue(), -[HSPCHomeKitRoomProvider suggestedRoom](self, "suggestedRoom"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 indexOfObject:v7], v7, v6, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [(HSPCHomeKitRoomProvider *)self existingRooms];
LABEL_6:
    v10 = v9;
    v8 = ([v9 count] >> 1);
  }

  return v8;
}

- (id)_generateRoomSuggestionsWithLimit:(int64_t)a3 existingRooms:(id)a4
{
  v5 = [a4 na_map:&stru_1000C7E38];
  v6 = [NSSet setWithArray:v5];

  v7 = +[HFDefaultRoomSuggestionVendor homeAppSuggestionVendor];
  v8 = [v7 roomSuggestions];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005E6C4;
  v18[3] = &unk_1000C7E60;
  v19 = v6;
  v9 = v6;
  v10 = [v8 na_filter:v18];

  v11 = [v9 count];
  v12 = (a3 - v11) & ~((a3 - v11) >> 63);
  v13 = [v10 allObjects];
  v14 = +[HFRoomSuggestion priorityComparator];
  v15 = [v13 sortedArrayUsingComparator:v14];
  v16 = [v15 subarrayWithRange:{0, v12}];

  return v16;
}

@end