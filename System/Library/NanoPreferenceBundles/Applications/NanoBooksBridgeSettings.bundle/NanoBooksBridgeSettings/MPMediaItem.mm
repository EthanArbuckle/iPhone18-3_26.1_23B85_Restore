@interface MPMediaItem
- (id)bk_effectiveAuthor;
- (id)bk_effectiveTitle;
- (id)bk_storeID;
- (id)description;
@end

@implementation MPMediaItem

- (id)bk_effectiveTitle
{
  v3 = [(MPMediaItem *)self albumTitle];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(MPMediaItem *)self title];
  }

  v5 = v4;

  return v5;
}

- (id)bk_effectiveAuthor
{
  v3 = [(MPMediaItem *)self albumArtist];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(MPMediaItem *)self artist];
  }

  v5 = v4;

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
  v5 = [(MPMediaItem *)self title];
  v6 = [(MPMediaItem *)self artist];
  v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreID];
  v8 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStorePlaylistID];
  v9 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPurchaseHistoryID];
  v10 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreRedownloadParameters];
  v11 = [NSString stringWithFormat:@"<%@(%p) title:%@ author:%@ storeItemAdamID:%@ storePlaylistAdamID:%@ purchaseHistoryID:%@ params:%@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end