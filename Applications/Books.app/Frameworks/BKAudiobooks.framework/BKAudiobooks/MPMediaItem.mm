@interface MPMediaItem
+ (BOOL)bk_isItemAudibleAudiobook:(id)audiobook;
+ (int)bk_audibleDRMGroupIDForItem:(id)item;
- (BOOL)bk_isJaliscoAsset;
- (id)bk_assetID;
- (id)bk_assetURL;
- (id)bk_effectiveAuthor;
- (id)bk_effectiveTitle;
- (id)bk_localStoreBookAlbumForItem;
- (id)bk_storeDemoAssetURL;
- (id)bk_storeID;
- (id)bk_storePlaylistID;
- (id)bk_storeRedownloadParameters;
- (unint64_t)bk_albumTrackIndex;
- (void)bk_artworkImageWithCompletion:(id)completion;
@end

@implementation MPMediaItem

- (id)bk_assetURL
{
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyFilePath];
  if ([v3 length])
  {
    v4 = BKAudiobooksLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      bk_effectiveTitle = [(MPMediaItem *)self bk_effectiveTitle];
      *buf = 138412290;
      v22 = bk_effectiveTitle;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Using file path for %@.", buf, 0xCu);
    }

    v6 = [NSURL fileURLWithPath:v3];
    if (v6)
    {
      v7 = v6;
      goto LABEL_22;
    }
  }

  v8 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreID];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  stringValue = [v8 stringValue];
  v11 = [NSString stringWithFormat:@"NBAssetOverride-%@", stringValue];

  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [v12 stringForKey:v11];

  if ([v13 length])
  {
    v14 = BKAudiobooksLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Overriding the asset path for %@ to be %@.", buf, 0x16u);
    }

    v7 = [NSURL URLWithString:v13];
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_13:
    v15 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyHLSPlaylistURL];
    if (![v15 length])
    {

LABEL_19:
      v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyAssetURL];
      v18 = BKAudiobooksLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        bk_effectiveTitle2 = [(MPMediaItem *)self bk_effectiveTitle];
        *buf = 138412290;
        v22 = bk_effectiveTitle2;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "No path available for streaming or local playback. Using the assetURL for %@.", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      bk_effectiveTitle3 = [(MPMediaItem *)self bk_effectiveTitle];
      *buf = 138412290;
      v22 = bk_effectiveTitle3;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Using HLS playlist for %@.", buf, 0xCu);
    }

    v7 = [NSURL URLWithString:v15];

    if (!v7)
    {
      goto LABEL_19;
    }
  }

LABEL_22:

  return v7;
}

- (id)bk_storeDemoAssetURL
{
  bk_storeID = [(MPMediaItem *)self bk_storeID];
  if (!bk_storeID)
  {
    goto LABEL_10;
  }

  v4 = [NSString stringWithFormat:@"/var/mobile/Media/Books/%@.m4b", bk_storeID];
  bk_assetURL = [NSURL fileURLWithPath:v4];

  v6 = +[NSFileManager defaultManager];
  path = [bk_assetURL path];
  v8 = [v6 fileExistsAtPath:path];

  v9 = BKAudiobooksLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      path2 = [bk_assetURL path];
      *buf = 138412546;
      v15 = bk_storeID;
      v16 = 2112;
      v17 = path2;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Failed to override the asset path for %@ to be %@. File does not exist.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    path3 = [bk_assetURL path];
    *buf = 138412546;
    v15 = bk_storeID;
    v16 = 2112;
    v17 = path3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Overriding the asset path for %@ to be %@.", buf, 0x16u);
  }

  if (!bk_assetURL)
  {
LABEL_10:
    bk_assetURL = [(MPMediaItem *)self bk_assetURL];
  }

  return bk_assetURL;
}

- (id)bk_storeRedownloadParameters
{
  objc_opt_class();
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreRedownloadParameters];
  v4 = BUDynamicCast();

  return v4;
}

- (BOOL)bk_isJaliscoAsset
{
  v2 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPurchaseHistoryID];
  v3 = [v2 unsignedLongLongValue] != 0;

  return v3;
}

- (id)bk_storeID
{
  bk_isJaliscoAsset = [(MPMediaItem *)self bk_isJaliscoAsset];
  objc_opt_class();
  v4 = &MPMediaItemPropertyStoreID;
  if (!bk_isJaliscoAsset)
  {
    v4 = &MPMediaItemPropertyStorePlaylistID;
  }

  v5 = [(MPMediaItem *)self valueForProperty:*v4];
  v6 = BUDynamicCast();

  if ([v6 longLongValue])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)bk_storePlaylistID
{
  objc_opt_class();
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStorePlaylistID];
  v4 = BUDynamicCast();

  if ([v4 longLongValue])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)bk_assetID
{
  bk_storeID = [(MPMediaItem *)self bk_storeID];
  if (BUStoreIdFromObject())
  {
    stringValue = [bk_storeID stringValue];
    goto LABEL_9;
  }

  albumTitle = [(MPMediaItem *)self albumTitle];
  if ([albumTitle length])
  {
    v6 = [albumTitle dataUsingEncoding:4];
    bu_sha1 = [v6 bu_sha1];
    stringValue = [NSString stringWithFormat:@"sha1-%@", bu_sha1];
  }

  else
  {
    persistentID = [(MPMediaItem *)self persistentID];
    if (!persistentID)
    {
      v10 = BKAudiobooksLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22864(self, v10);
      }

      stringValue = 0;
      goto LABEL_8;
    }

    v6 = [NSNumber numberWithUnsignedLongLong:persistentID];
    stringValue = [NSString stringWithFormat:@"pid-%@", v6];
  }

LABEL_8:
LABEL_9:

  return stringValue;
}

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

- (void)bk_artworkImageWithCompletion:(id)completion
{
  completionCopy = completion;
  artworkCatalog = [(MPMediaItem *)self artworkCatalog];
  if (artworkCatalog)
  {
    v6 = +[UIScreen mainScreen];
    [v6 bounds];
    Width = CGRectGetWidth(v16);
    [v6 bounds];
    Height = CGRectGetHeight(v17);
    if (Width >= Height)
    {
      Width = Height;
    }

    [v6 scale];
    [artworkCatalog setDestinationScale:?];
    [artworkCatalog setFittingSize:{Width, Width}];
    [artworkCatalog requestImageWithCompletionHandler:completionCopy];
  }

  else
  {
    v9 = BKAudiobooksLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_228DC(v9);
    }

    representativeItem = [(MPMediaItem *)self representativeItem];
    v6 = [representativeItem valueForProperty:MPMediaItemPropertyArtwork];

    if (v6)
    {
      [v6 bounds];
      v13 = [v6 imageWithSize:{v11, v12}];
    }

    else
    {
      v14 = BKAudiobooksLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22920(v14);
      }

      v13 = 0;
    }

    v15 = objc_retainBlock(completionCopy);

    if (v15)
    {
      v15[2](v15, v13);
    }
  }
}

- (unint64_t)bk_albumTrackIndex
{
  bk_assetID = [(MPMediaItem *)self bk_assetID];
  albumTitle = [(MPMediaItem *)self albumTitle];
  v5 = [MPMediaQuery bk_queryWithStoreID:bk_assetID albumTitle:albumTitle isCloudItem:[(MPMediaItem *)self isCloudItem]];

  if (v5)
  {
    collections = [v5 collections];
    firstObject = [collections firstObject];
    items = [firstObject items];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2016C;
    v11[3] = &unk_3D2A8;
    v11[4] = self;
    v9 = [items indexOfObjectPassingTest:v11];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)bk_localStoreBookAlbumForItem
{
  v3 = MPMediaItemPropertyPurchaseHistoryID;
  v4 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPurchaseHistoryID];
  if ([v4 longLongValue])
  {
    firstObject = 0;
  }

  else
  {
    v6 = MPMediaItemPropertyStorePlaylistID;
    v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStorePlaylistID];
    if ([v7 longLongValue])
    {
      v8 = +[MPMediaQuery bk_audiobooksQuery];
      v9 = [MPMediaPropertyPredicate predicateWithValue:&off_3E180 forProperty:v3];
      [v8 addFilterPredicate:v9];

      if (v8)
      {
        [v8 setGroupingType:1];
        v10 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:v6];
        [v8 addFilterPredicate:v10];
        collections = [v8 collections];
        firstObject = [collections firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

+ (BOOL)bk_isItemAudibleAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  objc_opt_class();
  v4 = [audiobookCopy valueForProperty:MPMediaItemPropertyFilePath];

  v5 = BUDynamicCast();
  pathExtension = [v5 pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString isEqualToString:@"aa"])
  {
    v8 = 1;
  }

  else
  {
    v8 = [lowercaseString isEqualToString:@"aax"];
  }

  return v8;
}

+ (int)bk_audibleDRMGroupIDForItem:(id)item
{
  itemCopy = item;
  if (itemCopy && [self bk_isItemAudibleAudiobook:itemCopy])
  {
    objc_opt_class();
    v5 = [itemCopy valueForProperty:MPMediaItemPropertyStoreAccountID];
    v6 = BUDynamicCast();
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

@end