@interface MPMediaQuery
+ (id)bk_queryWithStoreID:(id)d albumTitle:(id)title isCloudItem:(BOOL)item;
@end

@implementation MPMediaQuery

+ (id)bk_queryWithStoreID:(id)d albumTitle:(id)title isCloudItem:(BOOL)item
{
  itemCopy = item;
  dCopy = d;
  titleCopy = title;
  if ([titleCopy length])
  {
    v9 = BUStoreIdFromObject();
    v10 = +[BLMediaQuery audiobooksQuery];
    v11 = [MPMediaPropertyPredicate predicateWithValue:titleCopy forProperty:MPMediaItemPropertyAlbumTitle];
    [v10 addFilterPredicate:v11];

    if (v9)
    {
      v12 = &MPMediaItemPropertyStoreID;
      if (!itemCopy)
      {
        v12 = &MPMediaItemPropertyStorePlaylistID;
      }

      v13 = *v12;
      v14 = [NSNumber numberWithUnsignedLongLong:v9];
      v15 = [MPMediaPropertyPredicate predicateWithValue:v14 forProperty:v13];
      [v10 addFilterPredicate:v15];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end