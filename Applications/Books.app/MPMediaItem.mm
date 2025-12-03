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
  title = [(MPMediaItem *)self title];
  albumTitle = [(MPMediaItem *)self albumTitle];
  artist = [(MPMediaItem *)self artist];
  albumArtist = [(MPMediaItem *)self albumArtist];
  v12 = [NSString stringWithFormat:@"<%@(%p) storeItemAdamID:%@ storePlaylistAdamID:%@ params:%@ title:'%@' albumTitle:'%@' artist:'%@' albumArtist:'%@'>", v4, self, v5, v6, v7, title, albumTitle, artist, albumArtist];

  return v12;
}

@end