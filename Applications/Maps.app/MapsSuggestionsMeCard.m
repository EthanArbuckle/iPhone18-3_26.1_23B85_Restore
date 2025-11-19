@interface MapsSuggestionsMeCard
- (BOOL)_maps_canAddShortcutForMapItem:(id)a3;
- (id)_maps_shortcutForMapItem:(id)a3;
- (id)_maps_shortcutForMapItem:(id)a3 fromShortcuts:(id)a4;
- (id)_maps_shortcutForSuggestionsEntry:(id)a3;
- (id)_maps_shortcutIncludingHiddenForMapItem:(id)a3;
- (id)_maps_shortcutOrderedEntries:(id)a3;
- (int64_t)_maps_firstValidMoveIndex;
@end

@implementation MapsSuggestionsMeCard

- (int64_t)_maps_firstValidMoveIndex
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(MapsSuggestionsMeCard *)self shortcutsForAll];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      v5 += v4;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) type];
        if (v9 > 5 || ((1 << v9) & 0x2C) == 0)
        {
          v5 = v8;
          goto LABEL_15;
        }

        ++v8;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_15:

  return v5;
}

- (BOOL)_maps_canAddShortcutForMapItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isCurrentLocation] & 1) == 0)
  {
    v7 = [(MapsSuggestionsMeCard *)self _maps_shortcutForMapItem:v5];

    v6 = v7 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_maps_shortcutOrderedEntries:(id)a3
{
  v19 = a3;
  v4 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MapsSuggestionsMeCard *)self shortcutsForAll];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * j);
              if (sub_100BB4984(v9, v15))
              {
                [v4 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];

  return v16;
}

- (id)_maps_shortcutForMapItem:(id)a3 fromShortcuts:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isCurrentLocation])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 _geoMapItem];
    if (v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v6;
      v7 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v18 = v6;
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 geoMapItem];
            if (v13)
            {
              v14 = v13;
              v15 = [v12 geoMapItem];
              IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

              if (IsEqualToMapItemForPurpose)
              {
                v7 = v12;
                goto LABEL_16;
              }
            }
          }

          v7 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v6 = v18;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_maps_shortcutIncludingHiddenForMapItem:(id)a3
{
  v4 = a3;
  v5 = [(MapsSuggestionsMeCard *)self shortcutsForAllIncludingHidden];
  v6 = [(MapsSuggestionsMeCard *)self _maps_shortcutForMapItem:v4 fromShortcuts:v5];

  return v6;
}

- (id)_maps_shortcutForMapItem:(id)a3
{
  v4 = a3;
  v5 = [(MapsSuggestionsMeCard *)self shortcutsForAll];
  v6 = [(MapsSuggestionsMeCard *)self _maps_shortcutForMapItem:v4 fromShortcuts:v5];

  return v6;
}

- (id)_maps_shortcutForSuggestionsEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 shortcutIdentifier];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(MapsSuggestionsMeCard *)self shortcutsForAll];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (sub_100BB4984(v10, v4))
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end