@interface BKUbiquityMetadataHelper
+ (id)sharedInstance;
- (BOOL)setUbiquityMetadataForURL:(id)l withLibraryAsset:(id)asset;
- (id)ubiquityMetadataForURL:(id)l options:(unint64_t)options;
- (void)_removeExtendedAttributeNamed:(id)named forUrl:(id)url;
- (void)_setThumbnailInMutableDictionary:(id)dictionary forKey:(id)key fromUrl:(id)url;
- (void)_setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url;
- (void)setUbiquityMetadataIsSupplemental:(BOOL)supplemental playlistID:(id)d storeID:(id)iD forURL:(id)l;
- (void)setUbiquityMetadataTitle:(id)title forURL:(id)l;
@end

@implementation BKUbiquityMetadataHelper

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015D6A0;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF7760 != -1)
  {
    dispatch_once(&qword_100AF7760, block);
  }

  v2 = qword_100AF7758;

  return v2;
}

- (id)ubiquityMetadataForURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  v7 = objc_opt_new();
  v8 = objc_autoreleasePoolPush();
  v9 = _CFURLPromiseCopyPhysicalURL();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = lCopy;
  }

  v12 = v11;

  if (optionsCopy)
  {
    [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrAssetID withValueForExtendedAttributeNamed:BCMetadataXattrAssetID fromUrl:v12];
    if ((optionsCopy & 2) == 0)
    {
LABEL_6:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_6;
  }

  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrTitle withValueForExtendedAttributeNamed:BCMetadataXattrTitle fromUrl:v12];
  if ((optionsCopy & 4) == 0)
  {
LABEL_7:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrSortTitle withValueForExtendedAttributeNamed:BCMetadataXattrSortTitle fromUrl:v12];
  if ((optionsCopy & 8) == 0)
  {
LABEL_8:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrAuthor withValueForExtendedAttributeNamed:BCMetadataXattrAuthor fromUrl:v12];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_9:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrSortAuthor withValueForExtendedAttributeNamed:BCMetadataXattrSortAuthor fromUrl:v12];
  if ((optionsCopy & 0x20) == 0)
  {
LABEL_10:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrGenre withValueForExtendedAttributeNamed:BCMetadataXattrGenre fromUrl:v12];
  if ((optionsCopy & 0x40) == 0)
  {
LABEL_11:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrComments withValueForExtendedAttributeNamed:BCMetadataXattrComments fromUrl:v12];
  if ((optionsCopy & 0x80) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrBookDescription withValueForExtendedAttributeNamed:BCMetadataXattrBookDescription fromUrl:v12];
  if ((optionsCopy & 0x100) == 0)
  {
LABEL_13:
    if ((optionsCopy & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrYear withValueForExtendedAttributeNamed:BCMetadataXattrYear fromUrl:v12];
  if ((optionsCopy & 0x200) == 0)
  {
LABEL_14:
    if ((optionsCopy & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrExplicit withValueForExtendedAttributeNamed:BCMetadataXattrExplicit fromUrl:v12];
  if ((optionsCopy & 0x400) == 0)
  {
LABEL_15:
    if ((optionsCopy & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrLastOpened withValueForExtendedAttributeNamed:BCMetadataXattrLastOpened fromUrl:v12];
  if ((optionsCopy & 0x800) == 0)
  {
LABEL_16:
    if ((optionsCopy & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrFirstOpened withValueForExtendedAttributeNamed:BCMetadataXattrFirstOpened fromUrl:v12];
  if ((optionsCopy & 0x2000) == 0)
  {
LABEL_17:
    if ((optionsCopy & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrRating withValueForExtendedAttributeNamed:BCMetadataXattrRating fromUrl:v12];
  if ((optionsCopy & 0x10000) == 0)
  {
LABEL_18:
    if ((optionsCopy & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrGeneration withValueForExtendedAttributeNamed:BCMetadataXattrGeneration fromUrl:v12];
  if ((optionsCopy & 0x40000) == 0)
  {
LABEL_19:
    if ((optionsCopy & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  [(BKUbiquityMetadataHelper *)self _setThumbnailInMutableDictionary:v7 forKey:BCMetadataXattrThumbnail fromUrl:v12];
  if ((optionsCopy & 0x80000) == 0)
  {
LABEL_20:
    if ((optionsCopy & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrIsSupplementalContent withValueForExtendedAttributeNamed:BCMetadataXattrIsSupplementalContent fromUrl:v12];
  if ((optionsCopy & 0x100000) == 0)
  {
LABEL_21:
    if ((optionsCopy & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrStoreID withValueForExtendedAttributeNamed:BCMetadataXattrStoreID fromUrl:v12];
  if ((optionsCopy & 0x200000) != 0)
  {
LABEL_22:
    [(BKUbiquityMetadataHelper *)self _setValueInMutableDictionary:v7 forKey:BCMetadataXattrStorePlaylistID withValueForExtendedAttributeNamed:BCMetadataXattrStorePlaylistID fromUrl:v12];
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
  if ([v7 count])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)_setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v10 = [url bu_extendedAttributeNamed:named iCloudSyncable:1];
  if (v10)
  {
    [dictionaryCopy setObject:v10 forKey:keyCopy];
  }
}

- (void)_setThumbnailInMutableDictionary:(id)dictionary forKey:(id)key fromUrl:(id)url
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  urlCopy = url;
  v10 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:urlCopy size:6 scale:1024.0 representationTypes:{1024.0, 1.0}];
  v11 = +[QLThumbnailGenerator sharedGenerator];
  v12 = dispatch_semaphore_create(0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10015DC90;
  v19[3] = &unk_100A08B98;
  v13 = urlCopy;
  v20 = v13;
  v21 = dictionaryCopy;
  v22 = keyCopy;
  v14 = v12;
  v23 = v14;
  v15 = keyCopy;
  v16 = dictionaryCopy;
  [v11 generateBestRepresentationForRequest:v10 completionHandler:v19];
  v17 = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v14, v17))
  {
    v18 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100791358();
    }
  }
}

- (BOOL)setUbiquityMetadataForURL:(id)l withLibraryAsset:(id)asset
{
  lCopy = l;
  assetCopy = asset;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v7 = lCopy;
  assetID = [assetCopy assetID];
  title = [assetCopy title];
  v10 = v7;
  if (!v7)
  {
    path = [assetCopy path];
    if ([path length])
    {
      v10 = [[NSURL alloc] initFileURLWithPath:path];
    }

    else
    {
      v10 = 0;
    }

    v12 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 141558274;
      v28 = 1752392040;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[iCloudSync] Warning: setUbiquityMetadataForURL:withLibraryAsset: came without a URL.  Using the libraryAsset url: %{mask.hash}@", buf, 0x16u);
    }
  }

  if (v10 && assetID && title)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10015E0C0;
    v17[3] = &unk_100A08BE8;
    v21 = &v23;
    v22 = 0;
    v18 = assetID;
    v19 = title;
    v20 = assetCopy;
    [NSURL coordinateWritingItemAtURL:v10 options:16 error:&v22 byAccessor:v17];
    v13 = v22;
    if (v13)
    {
      v14 = BCUbiquityMetadataHelperLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10079147C();
      }
    }
  }

  else
  {
    v13 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10079143C();
    }
  }

  v15 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return v15 & 1;
}

- (void)setUbiquityMetadataTitle:(id)title forURL:(id)l
{
  titleCopy = title;
  lCopy = l;
  v7 = BCUbiquityMetadataHelperLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = titleCopy;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[iCloudSync] setUbiquityMetadataTitle title:%@ url:%@", buf, 0x16u);
  }

  if (lCopy)
  {
    v12 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10015E674;
    v10[3] = &unk_100A08C10;
    v11 = titleCopy;
    [NSURL coordinateWritingItemAtURL:lCopy options:16 error:&v12 byAccessor:v10];
    v8 = v12;
    if (v8)
    {
      v9 = BCUbiquityMetadataHelperLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10079147C();
      }
    }
  }

  else
  {
    v8 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10079143C();
    }
  }
}

- (void)setUbiquityMetadataIsSupplemental:(BOOL)supplemental playlistID:(id)d storeID:(id)iD forURL:(id)l
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  if (lCopy)
  {
    v18 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10015E944;
    v14[3] = &unk_100A08C38;
    supplementalCopy = supplemental;
    v15 = dCopy;
    v16 = iDCopy;
    [NSURL coordinateWritingItemAtURL:lCopy options:16 error:&v18 byAccessor:v14];
    v12 = v18;
    if (v12)
    {
      v13 = BCUbiquityMetadataHelperLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558530;
        v20 = 1752392040;
        v21 = 2112;
        v22 = lCopy;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[iCloudSync] Error coordinateWritingItemAtURL:, URL: %{mask.hash}@, Error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[iCloudSync] Unable to write metadata because asset had no url was provided", buf, 2u);
    }
  }
}

- (void)_removeExtendedAttributeNamed:(id)named forUrl:(id)url
{
  namedCopy = named;
  urlCopy = url;
  if (([urlCopy bu_removeExtendedAttributeNamed:namedCopy iCloudSyncable:1] & 1) == 0)
  {
    v7 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007914EC(namedCopy, urlCopy, v7);
    }
  }
}

@end