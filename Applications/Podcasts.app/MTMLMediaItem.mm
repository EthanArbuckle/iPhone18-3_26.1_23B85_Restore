@interface MTMLMediaItem
+ (BOOL)isMediaItemSyncedFromiTunes:(id)tunes;
+ (BOOL)isMissingAssetForItem:(id)item;
+ (BOOL)isMissingFilePathForItem:(id)item;
+ (id)itemWithMPMediaItem:(id)item isRestoreDownloadCandidate:(BOOL)candidate;
+ (id)propertiesForMediaItem;
- (id)description;
@end

@implementation MTMLMediaItem

+ (id)itemWithMPMediaItem:(id)item isRestoreDownloadCandidate:(BOOL)candidate
{
  itemCopy = item;
  if (itemCopy)
  {
    v7 = objc_opt_new();
    propertiesForMediaItem = [self propertiesForMediaItem];
    v9 = [NSSet setWithArray:propertiesForMediaItem];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D3D44;
    v16[3] = &unk_1004D9F90;
    v10 = v7;
    v17 = v10;
    [itemCopy enumerateValuesForProperties:v9 usingBlock:v16];

    [v10 setIsFromITunesSync:{objc_msgSend(self, "isMediaItemSyncedFromiTunes:", itemCopy)}];
    v11 = [MTMLMediaItem isMissingFilePathForItem:itemCopy]|| [MTMLMediaItem isMissingAssetForItem:itemCopy];
    [v10 setIsMissingAsset:v11];
    if ([v10 isMissingAsset] && !candidate)
    {
      [v10 setAssetUrl:0];
      v12 = +[MTMediaLibraryTransactionManager sharedInstance];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000D4170;
      v14[3] = &unk_1004DB5C8;
      v15 = itemCopy;
      [v12 requestMediaLibraryWriteTransaction:v14];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isMissingFilePathForItem:(id)item
{
  v3 = [item valueForProperty:MPMediaItemPropertyFilePath];
  v4 = [v3 length] == 0;

  return v4;
}

+ (BOOL)isMissingAssetForItem:(id)item
{
  v3 = [item valueForProperty:MPMediaItemPropertyFilePath];
  if ([v3 length])
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  persistentId = [(MTMLMediaItem *)self persistentId];
  title = [(MTMLMediaItem *)self title];
  guid = [(MTMLMediaItem *)self guid];
  v6 = [NSString stringWithFormat:@"[%@] %@ %@", persistentId, title, guid];

  return v6;
}

+ (id)propertiesForMediaItem
{
  v4[0] = MPMediaItemPropertyPodcastURL;
  v4[1] = MPMediaItemPropertyPodcastTitle;
  v4[2] = MPMediaItemPropertyIsITunesU;
  v4[3] = MPMediaItemPropertyArtist;
  v4[4] = MPMediaItemPropertyPersistentID;
  v4[5] = MPMediaItemPropertyPodcastPersistentID;
  v4[6] = MPMediaItemPropertyFileSize;
  v4[7] = MPMediaItemPropertyGenre;
  v4[8] = MPMediaItemPropertyPlaybackDuration;
  v4[9] = MPMediaItemPropertyTitle;
  v4[10] = MPMediaItemPropertyMediaType;
  v4[11] = MPMediaItemPropertyReleaseDate;
  v4[12] = MPMediaItemPropertyBookmarkTime;
  v4[13] = MPMediaItemPropertyHasBeenPlayed;
  v4[14] = MPMediaItemPropertyPlayCount;
  v4[15] = MPMediaItemPropertyDownloadIdentifier;
  v4[16] = MPMediaItemPropertyRestricted;
  v4[17] = MPMediaItemPropertyStoreID;
  v4[18] = MPMediaItemPropertyStorePlaylistID;
  v4[19] = MPMediaItemPropertyLastPlayedDate;
  v4[20] = MPMediaItemPropertyPodcastGUID;
  v4[21] = MPMediaItemPropertyFilePath;
  v4[22] = MPMediaItemPropertyFilePath;
  v2 = [NSArray arrayWithObjects:v4 count:23];

  return v2;
}

+ (BOOL)isMediaItemSyncedFromiTunes:(id)tunes
{
  v3 = [tunes valueForProperty:MPMediaItemPropertyFilePath];
  v4 = [v3 containsStringInsensitive:@"/var/mobile/Media/iTunes_Control/"];

  return v4;
}

@end