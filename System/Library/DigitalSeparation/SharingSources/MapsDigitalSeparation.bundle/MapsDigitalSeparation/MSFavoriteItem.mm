@interface MSFavoriteItem
- (NSArray)participants;
- (NSString)displayName;
- (void)_ds_stopSharing;
- (void)_ds_stopSharingWithParticipant:(id)participant;
@end

@implementation MSFavoriteItem

- (NSString)displayName
{
  customName = [(MSFavoriteItem *)self customName];

  if (customName)
  {
    customName2 = [(MSFavoriteItem *)self customName];
  }

  else
  {
    mapItemStorage = [(MSFavoriteItem *)self mapItemStorage];
    name = [mapItemStorage name];
    v7 = name;
    if (name)
    {
      shortAddress = name;
    }

    else
    {
      mapItemStorage2 = [(MSFavoriteItem *)self mapItemStorage];
      shortAddress = [mapItemStorage2 shortAddress];
    }

    type = [(MSFavoriteItem *)self type];
    v11 = 0;
    if (type <= 5 && ((1 << type) & 0x2C) != 0)
    {
      [(MSFavoriteItem *)self type];
      v11 = MapsSuggestionsLocalizedTitleForShortcutType();
    }

    if ([v11 length] && objc_msgSend(shortAddress, "length"))
    {
      v12 = [NSBundle bundleWithIdentifier:@"com.apple.Maps.DigitalSeparation"];
      v13 = [v12 localizedStringForKey:@"[Digital Separation] Shortcut Name and Place for Maps Favorite" value:@"localized string not found" table:0];
      customName2 = [NSString localizedStringWithFormat:v13, v11, shortAddress];
    }

    else
    {
      customName2 = shortAddress;
    }
  }

  return customName2;
}

- (NSArray)participants
{
  fetchContactHandles = [(MSFavoriteItem *)self fetchContactHandles];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(fetchContactHandles, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = fetchContactHandles;
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
  fetchContactHandles = [(MSFavoriteItem *)self fetchContactHandles];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [fetchContactHandles countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(fetchContactHandles);
        }

        [(MSFavoriteItem *)self removeContactHandle:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [fetchContactHandles countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_ds_stopSharingWithParticipant:(id)participant
{
  participantCopy = participant;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [participantCopy stringValue];
    [(MSFavoriteItem *)self removeContactHandle:stringValue];
  }
}

@end