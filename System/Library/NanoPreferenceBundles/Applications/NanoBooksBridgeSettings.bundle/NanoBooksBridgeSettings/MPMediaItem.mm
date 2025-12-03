@interface MPMediaItem
- (id)bk_effectiveAuthor;
- (id)bk_effectiveTitle;
- (id)bk_storeID;
- (id)description;
@end

@implementation MPMediaItem

- (id)bk_effectiveTitle
{
  albumTitle = [(MPMediaItem *)self albumTitle];
  if ([albumTitle length])
  {
    title = albumTitle;
  }

  else
  {
    title = [(MPMediaItem *)self title];
  }

  v5 = title;

  return v5;
}

- (id)bk_effectiveAuthor
{
  albumArtist = [(MPMediaItem *)self albumArtist];
  if ([albumArtist length])
  {
    artist = albumArtist;
  }

  else
  {
    artist = [(MPMediaItem *)self artist];
  }

  v5 = artist;

  return v5;
}

- (id)bk_storeID
{
  objc_opt_class();
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreID];
  v4 = BUDynamicCast();

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(MPMediaItem *)self title];
  artist = [(MPMediaItem *)self artist];
  v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreID];
  v8 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStorePlaylistID];
  v9 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPurchaseHistoryID];
  v10 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreRedownloadParameters];
  v11 = [NSString stringWithFormat:@"<%@(%p) title:%@ author:%@ storeItemAdamID:%@ storePlaylistAdamID:%@ purchaseHistoryID:%@ params:%@>", v4, self, title, artist, v7, v8, v9, v10];

  return v11;
}

@end