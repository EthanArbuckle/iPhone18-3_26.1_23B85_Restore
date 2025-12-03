@interface BCUbiquityMetadataHelper
+ (BOOL)replaceFileAndUpdateMetadata:(id)metadata metadata:(id)a4 error:(id *)error fileWritingBlock:(id)block;
+ (BOOL)setExtendedAttributeNamed:(id)named toValue:(id)value forUrl:(id)url;
+ (id)_ubiquityCoordinatedReadMetadataForURL:(id)l options:(unint64_t)options;
+ (id)_ubiquityMetadataForURL:(id)l options:(unint64_t)options;
+ (id)dateFormatter;
+ (id)metadataDateFromString:(id)string;
+ (id)ubiquityMetadataForURL:(id)l options:(unint64_t)options needsCoordination:(BOOL)coordination;
+ (id)xattrAssetIDForURL:(id)l;
+ (unint64_t)_generationForURL:(id)l;
+ (void)_setThumbnailInMutableDictionary:(id)dictionary forKey:(id)key fromUrl:(id)url;
+ (void)setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url;
@end

@implementation BCUbiquityMetadataHelper

+ (id)xattrAssetIDForURL:(id)l
{
  if (l)
  {
    v3 = [self ubiquityMetadataForURL:l options:1 needsCoordination:1];
    if ([v3 count])
    {
      objc_opt_class();
      v4 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.assetID"];
      v5 = BUDynamicCast();
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

  return v5;
}

+ (id)ubiquityMetadataForURL:(id)l options:(unint64_t)options needsCoordination:(BOOL)coordination
{
  if (coordination)
  {
    [self _ubiquityCoordinatedReadMetadataForURL:l options:options];
  }

  else
  {
    [self _ubiquityMetadataForURL:l options:options];
  }
  v5 = ;

  return v5;
}

+ (id)_ubiquityCoordinatedReadMetadataForURL:(id)l options:(unint64_t)options
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_14AF18;
  v16 = sub_14AF28;
  v17 = 0;
  v10[6] = options;
  v11 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14AF30;
  v10[3] = &unk_2CE238;
  v10[4] = &v12;
  v10[5] = self;
  [NSURL coordinateReadingItemAtURL:lCopy options:4 error:&v11 byAccessor:v10];
  v7 = v11;
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (id)_ubiquityMetadataForURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  v7 = objc_opt_new();
  v8 = objc_autoreleasePoolPush();
  if (optionsCopy)
  {
    [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.assetID" withValueForExtendedAttributeNamed:@"com.apple.iBooks.assetID" fromUrl:lCopy];
    if ((optionsCopy & 2) == 0)
    {
LABEL_3:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.title" withValueForExtendedAttributeNamed:@"com.apple.iBooks.title" fromUrl:lCopy];
  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.sortTitle" withValueForExtendedAttributeNamed:@"com.apple.iBooks.sortTitle" fromUrl:lCopy];
  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.author" withValueForExtendedAttributeNamed:@"com.apple.iBooks.author" fromUrl:lCopy];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.sortAuthor" withValueForExtendedAttributeNamed:@"com.apple.iBooks.sortAuthor" fromUrl:lCopy];
  if ((optionsCopy & 0x20) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.genre" withValueForExtendedAttributeNamed:@"com.apple.iBooks.genre" fromUrl:lCopy];
  if ((optionsCopy & 0x40) == 0)
  {
LABEL_8:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.comments" withValueForExtendedAttributeNamed:@"com.apple.iBooks.comments" fromUrl:lCopy];
  if ((optionsCopy & 0x80) == 0)
  {
LABEL_9:
    if ((optionsCopy & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.bookDescription" withValueForExtendedAttributeNamed:@"com.apple.iBooks.bookDescription" fromUrl:lCopy];
  if ((optionsCopy & 0x100) == 0)
  {
LABEL_10:
    if ((optionsCopy & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.year" withValueForExtendedAttributeNamed:@"com.apple.iBooks.year" fromUrl:lCopy];
  if ((optionsCopy & 0x200) == 0)
  {
LABEL_11:
    if ((optionsCopy & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.explicit" withValueForExtendedAttributeNamed:@"com.apple.iBooks.explicit" fromUrl:lCopy];
  if ((optionsCopy & 0x400) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.lastOpened" withValueForExtendedAttributeNamed:@"com.apple.iBooks.lastOpened" fromUrl:lCopy];
  if ((optionsCopy & 0x800) == 0)
  {
LABEL_13:
    if ((optionsCopy & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.firstOpened" withValueForExtendedAttributeNamed:@"com.apple.iBooks.firstOpened" fromUrl:lCopy];
  if ((optionsCopy & 0x2000) == 0)
  {
LABEL_14:
    if ((optionsCopy & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.rating" withValueForExtendedAttributeNamed:@"com.apple.iBooks.rating" fromUrl:lCopy];
  if ((optionsCopy & 0x4000) == 0)
  {
LABEL_15:
    if ((optionsCopy & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.readingLocation" withValueForExtendedAttributeNamed:@"com.apple.iBooks.readingLocation" fromUrl:lCopy];
  if ((optionsCopy & 0x8000) == 0)
  {
LABEL_16:
    if ((optionsCopy & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.highWaterMark" withValueForExtendedAttributeNamed:@"com.apple.iBooks.highWaterMark" fromUrl:lCopy];
  if ((optionsCopy & 0x10000) == 0)
  {
LABEL_17:
    if ((optionsCopy & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.generation" withValueForExtendedAttributeNamed:@"com.apple.iBooks.generation" fromUrl:lCopy];
  if ((optionsCopy & 0x20000) == 0)
  {
LABEL_18:
    if ((optionsCopy & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.optionFlags" withValueForExtendedAttributeNamed:@"com.apple.iBooks.optionFlags" fromUrl:lCopy];
  if ((optionsCopy & 0x40000) == 0)
  {
LABEL_19:
    if ((optionsCopy & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  [self _setThumbnailInMutableDictionary:v7 forKey:@"com.apple.iBooks.thumbnail" fromUrl:lCopy];
  if ((optionsCopy & 0x80000) == 0)
  {
LABEL_20:
    if ((optionsCopy & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.isSupplementalContent" withValueForExtendedAttributeNamed:@"com.apple.iBooks.isSupplementalContent" fromUrl:lCopy];
  if ((optionsCopy & 0x100000) == 0)
  {
LABEL_21:
    if ((optionsCopy & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_46:
  [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.storeID" withValueForExtendedAttributeNamed:@"com.apple.iBooks.storeID" fromUrl:lCopy];
  if ((optionsCopy & 0x200000) != 0)
  {
LABEL_22:
    [self setValueInMutableDictionary:v7 forKey:@"com.apple.iBooks.storePlaylistID" withValueForExtendedAttributeNamed:@"com.apple.iBooks.storePlaylistID" fromUrl:lCopy];
  }

LABEL_23:
  objc_autoreleasePoolPop(v8);
  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (void)setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v10 = [url bu_extendedAttributeNamed:named iCloudSyncable:1];
  if (v10)
  {
    [dictionaryCopy setObject:v10 forKey:keyCopy];
  }
}

+ (BOOL)setExtendedAttributeNamed:(id)named toValue:(id)value forUrl:(id)url
{
  namedCopy = named;
  valueCopy = value;
  urlCopy = url;
  if ([valueCopy length])
  {
    v10 = [urlCopy bu_setExtendedAttributeNamed:namedCopy value:valueCopy iCloudSyncable:1];
    v11 = BCUbiquityMetadataHelperLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138544386;
        v15 = namedCopy;
        v16 = 2160;
        v17 = 1752392040;
        v18 = 2112;
        v19 = valueCopy;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2112;
        v23 = urlCopy;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Successfully set extended attribute: [%{public}@ | %{mask.hash}@] for URL %{mask.hash}@", &v14, 0x34u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138544386;
      v15 = namedCopy;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = valueCopy;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2112;
      v23 = urlCopy;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to set extended attribute: [%{public}@ | %{mask.hash}@]  for URL %{mask.hash}@", &v14, 0x34u);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_setThumbnailInMutableDictionary:(id)dictionary forKey:(id)key fromUrl:(id)url
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  urlCopy = url;
  v10 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:urlCopy size:6 scale:1024.0 representationTypes:{1024.0, 1.0}];
  v11 = +[QLThumbnailGenerator sharedGenerator];
  v12 = dispatch_semaphore_create(0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_14B778;
  v19[3] = &unk_2CE260;
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
      sub_1EB7E4(v13, v18);
    }
  }
}

+ (unint64_t)_generationForURL:(id)l
{
  v3 = [self _ubiquityCoordinatedReadMetadataForURL:l options:0x10000];
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.generation"];
  v5 = BUDynamicCast();

  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v5 length])
  {
    longLongValue = [v5 longLongValue];
    if (longLongValue)
    {
      v6 = longLongValue;
    }
  }

  return v6;
}

+ (id)dateFormatter
{
  if (qword_345F60 != -1)
  {
    sub_1EB8E8();
  }

  v3 = qword_345F58;

  return v3;
}

+ (id)metadataDateFromString:(id)string
{
  stringCopy = string;
  dateFormatter = [self dateFormatter];
  v6 = [dateFormatter dateFromString:stringCopy];

  return v6;
}

+ (BOOL)replaceFileAndUpdateMetadata:(id)metadata metadata:(id)a4 error:(id *)error fileWritingBlock:(id)block
{
  metadataCopy = metadata;
  v11 = a4;
  blockCopy = block;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  if (v11)
  {
    v13 = [v11 mutableCopy];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = [self _generationForURL:metadataCopy];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = [NSNumber numberWithLongLong:v16];
  stringValue = [v17 stringValue];
  [v14 setObject:stringValue forKeyedSubscript:@"com.apple.iBooks.generation"];

  v41[0] = @"BCUbiqityFileChangedKeyURL";
  v41[1] = @"BCUbiqityFileChangedKeyGeneration";
  v42[0] = metadataCopy;
  v19 = [NSNumber numberWithUnsignedLongLong:v16];
  v42[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 postNotificationName:@"BCUbiqityFileGenerationDidChangeNotification" object:self userInfo:v20];

  v22 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_14BDCC;
  v28[3] = &unk_2CE2D0;
  v32 = &v35;
  v23 = blockCopy;
  v31 = v23;
  v33 = v39;
  v24 = v14;
  v29 = v24;
  selfCopy = self;
  v25 = metadataCopy;
  v30 = v25;
  [v22 coordinateWritingItemAtURL:v25 options:0 error:error byAccessor:v28];
  if (*(v36 + 24) == 1)
  {
    v26 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1EB8FC();
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);

  return error == 0;
}

@end