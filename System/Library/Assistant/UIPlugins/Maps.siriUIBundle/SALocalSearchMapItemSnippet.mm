@interface SALocalSearchMapItemSnippet
- (BOOL)usesFixedLocation;
- (SALocalSearchMapItem)selectedMapItem;
- (id)urlForMapItemsWithLaunchOptions:(id)options;
- (unint64_t)selectedItemIndex;
- (void)setSelectedItemIndex:(unint64_t)index;
@end

@implementation SALocalSearchMapItemSnippet

- (BOOL)usesFixedLocation
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  items = [(SALocalSearchMapItemSnippet *)self items];
  v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(items);
        }

        distance = [*(*(&v8 + 1) + 8 * i) distance];

        if (distance)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)selectedItemIndex
{
  v2 = objc_getAssociatedObject(self, "selectedItemIndex");
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (void)setSelectedItemIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithUnsignedInteger:?];
  }

  v5 = v4;
  objc_setAssociatedObject(self, "selectedItemIndex", v4, &dword_0 + 3);
}

- (SALocalSearchMapItem)selectedMapItem
{
  selectedItemIndex = [(SALocalSearchMapItemSnippet *)self selectedItemIndex];
  items = [(SALocalSearchMapItemSnippet *)self items];
  v5 = [items count];

  if (selectedItemIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    items2 = [(SALocalSearchMapItemSnippet *)self items];
    v7 = [items2 objectAtIndexedSubscript:selectedItemIndex];
  }

  return v7;
}

- (id)urlForMapItemsWithLaunchOptions:(id)options
{
  optionsCopy = options;
  items = [(SALocalSearchMapItemSnippet *)self items];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);

  if (optionsCopy)
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  items2 = [(SALocalSearchMapItemSnippet *)self items];
  v10 = [items2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(items2);
        }

        v14 = [MKMapItem mapItemWithLocalSearchMapItem:*(*(&v21 + 1) + 8 * i)];
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v11 = [items2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  selectedItemIndex = [(SALocalSearchMapItemSnippet *)self selectedItemIndex];
  if (selectedItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [NSNumber numberWithUnsignedInteger:selectedItemIndex];
    [v8 setObject:v16 forKeyedSubscript:MKLaunchOptionsSelectedIndexKey];
  }

  if ([(SALocalSearchMapItemSnippet *)self searchAlongRoute]& 1) != 0 || (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
  {
    IsEnabled_Maps182 = 1;
  }

  else
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
  }

  v18 = [NSNumber numberWithBool:IsEnabled_Maps182];
  [v8 setObject:v18 forKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];

  v19 = [MKMapItem urlForMapItems:v6 options:v8];

  return v19;
}

@end