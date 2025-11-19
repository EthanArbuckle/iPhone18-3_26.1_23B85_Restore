@interface MPMediaItem
+ (BOOL)bk_isItemAudibleAudiobook:(id)a3;
+ (int)bk_audibleDRMGroupIDForItem:(id)a3;
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
- (void)bk_artworkImageWithCompletion:(id)a3;
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
      v5 = [(MPMediaItem *)self bk_effectiveTitle];
      *buf = 138412290;
      v22 = v5;
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
  v10 = [v8 stringValue];
  v11 = [NSString stringWithFormat:@"NBAssetOverride-%@", v10];

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
        v19 = [(MPMediaItem *)self bk_effectiveTitle];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "No path available for streaming or local playback. Using the assetURL for %@.", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(MPMediaItem *)self bk_effectiveTitle];
      *buf = 138412290;
      v22 = v17;
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
  v3 = [(MPMediaItem *)self bk_storeID];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [NSString stringWithFormat:@"/var/mobile/Media/Books/%@.m4b", v3];
  v5 = [NSURL fileURLWithPath:v4];

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  v9 = BKAudiobooksLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      v12 = [v5 path];
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Failed to override the asset path for %@ to be %@. File does not exist.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = [v5 path];
    *buf = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Overriding the asset path for %@ to be %@.", buf, 0x16u);
  }

  if (!v5)
  {
LABEL_10:
    v5 = [(MPMediaItem *)self bk_assetURL];
  }

  return v5;
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
  v3 = [(MPMediaItem *)self bk_isJaliscoAsset];
  objc_opt_class();
  v4 = &MPMediaItemPropertyStoreID;
  if (!v3)
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
  v3 = [(MPMediaItem *)self bk_storeID];
  if (BUStoreIdFromObject())
  {
    v4 = [v3 stringValue];
    goto LABEL_9;
  }

  v5 = [(MPMediaItem *)self albumTitle];
  if ([v5 length])
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = [v6 bu_sha1];
    v4 = [NSString stringWithFormat:@"sha1-%@", v7];
  }

  else
  {
    v8 = [(MPMediaItem *)self persistentID];
    if (!v8)
    {
      v10 = BKAudiobooksLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22864(self, v10);
      }

      v4 = 0;
      goto LABEL_8;
    }

    v6 = [NSNumber numberWithUnsignedLongLong:v8];
    v4 = [NSString stringWithFormat:@"pid-%@", v6];
  }

LABEL_8:
LABEL_9:

  return v4;
}

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

- (void)bk_artworkImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaItem *)self artworkCatalog];
  if (v5)
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
    [v5 setDestinationScale:?];
    [v5 setFittingSize:{Width, Width}];
    [v5 requestImageWithCompletionHandler:v4];
  }

  else
  {
    v9 = BKAudiobooksLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_228DC(v9);
    }

    v10 = [(MPMediaItem *)self representativeItem];
    v6 = [v10 valueForProperty:MPMediaItemPropertyArtwork];

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

    v15 = objc_retainBlock(v4);

    if (v15)
    {
      v15[2](v15, v13);
    }
  }
}

- (unint64_t)bk_albumTrackIndex
{
  v3 = [(MPMediaItem *)self bk_assetID];
  v4 = [(MPMediaItem *)self albumTitle];
  v5 = [MPMediaQuery bk_queryWithStoreID:v3 albumTitle:v4 isCloudItem:[(MPMediaItem *)self isCloudItem]];

  if (v5)
  {
    v6 = [v5 collections];
    v7 = [v6 firstObject];
    v8 = [v7 items];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2016C;
    v11[3] = &unk_3D2A8;
    v11[4] = self;
    v9 = [v8 indexOfObjectPassingTest:v11];
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
    v5 = 0;
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
        v11 = [v8 collections];
        v5 = [v11 firstObject];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)bk_isItemAudibleAudiobook:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 valueForProperty:MPMediaItemPropertyFilePath];

  v5 = BUDynamicCast();
  v6 = [v5 pathExtension];
  v7 = [v6 lowercaseString];

  if ([v7 isEqualToString:@"aa"])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 isEqualToString:@"aax"];
  }

  return v8;
}

+ (int)bk_audibleDRMGroupIDForItem:(id)a3
{
  v4 = a3;
  if (v4 && [a1 bk_isItemAudibleAudiobook:v4])
  {
    objc_opt_class();
    v5 = [v4 valueForProperty:MPMediaItemPropertyStoreAccountID];
    v6 = BUDynamicCast();
    v7 = [v6 unsignedLongLongValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end