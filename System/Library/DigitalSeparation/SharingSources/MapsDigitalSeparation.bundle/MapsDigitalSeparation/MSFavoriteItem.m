@interface MSFavoriteItem
- (NSArray)participants;
- (NSString)displayName;
- (void)_ds_stopSharing;
- (void)_ds_stopSharingWithParticipant:(id)a3;
@end

@implementation MSFavoriteItem

- (NSString)displayName
{
  v3 = [(MSFavoriteItem *)self customName];

  if (v3)
  {
    v4 = [(MSFavoriteItem *)self customName];
  }

  else
  {
    v5 = [(MSFavoriteItem *)self mapItemStorage];
    v6 = [v5 name];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [(MSFavoriteItem *)self mapItemStorage];
      v8 = [v9 shortAddress];
    }

    v10 = [(MSFavoriteItem *)self type];
    v11 = 0;
    if (v10 <= 5 && ((1 << v10) & 0x2C) != 0)
    {
      [(MSFavoriteItem *)self type];
      v11 = MapsSuggestionsLocalizedTitleForShortcutType();
    }

    if ([v11 length] && objc_msgSend(v8, "length"))
    {
      v12 = [NSBundle bundleWithIdentifier:@"com.apple.Maps.DigitalSeparation"];
      v13 = [v12 localizedStringForKey:@"[Digital Separation] Shortcut Name and Place for Maps Favorite" value:@"localized string not found" table:0];
      v4 = [NSString localizedStringWithFormat:v13, v11, v8];
    }

    else
    {
      v4 = v8;
    }
  }

  return v4;
}

- (NSArray)participants
{
  v2 = [(MSFavoriteItem *)self fetchContactHandles];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [MSPSharedTripContact alloc];
        v11 = [v10 initWithContactHandle:{v9, v13}];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_ds_stopSharing
{
  v3 = [(MSFavoriteItem *)self fetchContactHandles];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MSFavoriteItem *)self removeContactHandle:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_ds_stopSharingWithParticipant:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 stringValue];
    [(MSFavoriteItem *)self removeContactHandle:v4];
  }
}

@end