@interface SALocalSearchMapItemSnippet
- (BOOL)usesFixedLocation;
- (SALocalSearchMapItem)selectedMapItem;
- (id)urlForMapItemsWithLaunchOptions:(id)a3;
- (unint64_t)selectedItemIndex;
- (void)setSelectedItemIndex:(unint64_t)a3;
@end

@implementation SALocalSearchMapItemSnippet

- (BOOL)usesFixedLocation
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SALocalSearchMapItemSnippet *)self items];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) distance];

        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)setSelectedItemIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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
  v3 = [(SALocalSearchMapItemSnippet *)self selectedItemIndex];
  v4 = [(SALocalSearchMapItemSnippet *)self items];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(SALocalSearchMapItemSnippet *)self items];
    v7 = [v6 objectAtIndexedSubscript:v3];
  }

  return v7;
}

- (id)urlForMapItemsWithLaunchOptions:(id)a3
{
  v4 = a3;
  v5 = [(SALocalSearchMapItemSnippet *)self items];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  if (v4)
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:v4];
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
  v9 = [(SALocalSearchMapItemSnippet *)self items];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [MKMapItem mapItemWithLocalSearchMapItem:*(*(&v21 + 1) + 8 * i)];
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [(SALocalSearchMapItemSnippet *)self selectedItemIndex];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [NSNumber numberWithUnsignedInteger:v15];
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