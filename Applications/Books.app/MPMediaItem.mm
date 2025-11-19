@interface MPMediaItem
- (id)description;
@end

@implementation MPMediaItem

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreID];
  v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStorePlaylistID];
  v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreRedownloadParameters];
  v8 = [(MPMediaItem *)self title];
  v9 = [(MPMediaItem *)self albumTitle];
  v10 = [(MPMediaItem *)self artist];
  v11 = [(MPMediaItem *)self albumArtist];
  v12 = [NSString stringWithFormat:@"<%@(%p) storeItemAdamID:%@ storePlaylistAdamID:%@ params:%@ title:'%@' albumTitle:'%@' artist:'%@' albumArtist:'%@'>", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end