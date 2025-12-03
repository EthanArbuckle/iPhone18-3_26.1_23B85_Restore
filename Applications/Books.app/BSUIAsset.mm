@interface BSUIAsset
+ (id)propertiesNeededFromBKLibraryAsset;
- (BSUIAsset)initWithLibraryAsset:(id)asset;
@end

@implementation BSUIAsset

- (BSUIAsset)initWithLibraryAsset:(id)asset
{
  assetCopy = asset;
  v5 = objc_alloc_init(NSMutableDictionary);
  displayAuthor = [assetCopy displayAuthor];
  v7 = displayAuthor;
  if (displayAuthor)
  {
    v8 = displayAuthor;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  [v5 setObject:v9 forKey:BSUIAssetKeyAuthor];
  title = [assetCopy title];
  v11 = title;
  if (title)
  {
    v12 = title;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  [v5 setObject:v13 forKey:BSUIAssetKeyTitle];
  sortTitle = [assetCopy sortTitle];
  v15 = sortTitle;
  if (sortTitle)
  {
    v16 = sortTitle;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  [v5 setObject:v17 forKey:BSUIAssetKeySortTitle];
  isExplicit = [assetCopy isExplicit];
  v19 = isExplicit;
  if (isExplicit)
  {
    v20 = isExplicit;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  [v5 setObject:v21 forKey:BSUIAssetKeyIsExplicit];
  storeID = [assetCopy storeID];
  v23 = storeID;
  if (storeID)
  {
    v24 = storeID;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  [v5 setObject:v25 forKey:BSUIAssetKeyStoreID];
  readingProgress = [assetCopy readingProgress];
  v27 = readingProgress;
  if (readingProgress)
  {
    v28 = readingProgress;
  }

  else
  {
    v28 = +[NSNull null];
  }

  v29 = v28;

  [v5 setObject:v29 forKey:BSUIAssetKeyReadingProgress];
  v30 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [assetCopy contentType]);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = +[NSNull null];
  }

  v33 = v32;

  [v5 setObject:v33 forKey:BSUIAssetKeyContentType];
  v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isFinished]);
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  [v5 setObject:v37 forKey:BSUIAssetKeyIsFinished];
  v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isNew]);
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = +[NSNull null];
  }

  v41 = v40;

  [v5 setObject:v41 forKey:BSUIAssetKeyIsNew];
  v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isSample]);
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = +[NSNull null];
  }

  v45 = v44;

  [v5 setObject:v45 forKey:BSUIAssetKeyIsSample];
  v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isNonLocalSample]);
  v47 = v46;
  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = +[NSNull null];
  }

  v49 = v48;

  [v5 setObject:v49 forKey:BSUIAssetKeyIsNonLocalSample];
  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isInSamples]);
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = +[NSNull null];
  }

  v53 = v52;

  [v5 setObject:v53 forKey:BSUIAssetKeyIsInSamples];
  v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isInSamples]);
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = +[NSNull null];
  }

  v57 = v56;

  [v5 setObject:v57 forKey:BSUIAssetKeyIsMemberOfSamplesCollection];
  v58 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isLocal]);
  v59 = v58;
  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = +[NSNull null];
  }

  v61 = v60;

  [v5 setObject:v61 forKey:BSUIAssetKeyIsLocal];
  v62 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isSupplementalContent]);
  v63 = v62;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = +[NSNull null];
  }

  v65 = v64;

  [v5 setObject:v65 forKey:BSUIAssetKeyIsSupplementalContent];
  seriesID = [assetCopy seriesID];
  v67 = seriesID;
  if (seriesID)
  {
    v68 = seriesID;
  }

  else
  {
    v68 = +[NSNull null];
  }

  v69 = v68;

  [v5 setObject:v69 forKey:BSUIAssetKeySeriesID];
  lastEngagedDate = [assetCopy lastEngagedDate];
  v71 = lastEngagedDate;
  if (lastEngagedDate)
  {
    v72 = lastEngagedDate;
  }

  else
  {
    v72 = +[NSNull null];
  }

  v73 = v72;

  [v5 setObject:v73 forKey:BSUIAssetKeyLastEngagedDate];
  lastOpenDate = [assetCopy lastOpenDate];
  v75 = lastOpenDate;
  if (lastOpenDate)
  {
    v76 = lastOpenDate;
  }

  else
  {
    v76 = +[NSNull null];
  }

  v77 = v76;

  [v5 setObject:v77 forKey:BSUIAssetKeyLastOpenDate];
  pageProgressionDirection = [assetCopy pageProgressionDirection];
  v79 = pageProgressionDirection;
  if (pageProgressionDirection)
  {
    v80 = pageProgressionDirection;
  }

  else
  {
    v80 = +[NSNull null];
  }

  v81 = v80;

  [v5 setObject:v81 forKey:BSUIAssetKeyPageProgressionDirection];
  dateFinished = [assetCopy dateFinished];
  v83 = dateFinished;
  if (dateFinished)
  {
    v84 = dateFinished;
  }

  else
  {
    v84 = +[NSNull null];
  }

  v85 = v84;

  [v5 setObject:v85 forKey:BSUIAssetKeyDateFinished];
  hasRACSupport = [assetCopy hasRACSupport];
  v87 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [hasRACSupport BOOLValue]);
  v88 = v87;
  if (v87)
  {
    v89 = v87;
  }

  else
  {
    v89 = +[NSNull null];
  }

  v90 = v89;

  [v5 setObject:v90 forKey:BSUIAssetKeyHasRACSupport];
  cloudAssetType = [assetCopy cloudAssetType];
  v92 = cloudAssetType;
  if (cloudAssetType)
  {
    v93 = cloudAssetType;
  }

  else
  {
    v93 = +[NSNull null];
  }

  v94 = v93;

  [v5 setObject:v94 forKey:BSUIAssetKeyCloudAssetType];
  purchaseDate = [assetCopy purchaseDate];
  v96 = purchaseDate;
  if (purchaseDate)
  {
    v97 = purchaseDate;
  }

  else
  {
    v97 = +[NSNull null];
  }

  v98 = v97;

  [v5 setObject:v98 forKey:BSUIAssetKeyPurchasedDate];
  if ([assetCopy contentType] == 5)
  {
    seriesBooks = [assetCopy seriesBooks];
    v100 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [seriesBooks count]);
    v101 = v100;
    if (v100)
    {
      v102 = v100;
    }

    else
    {
      v102 = +[NSNull null];
    }

    v103 = v102;

    [v5 setObject:v103 forKey:BSUIAssetKeySeriesItemCount];
    seriesBooks2 = [assetCopy seriesBooks];
    v105 = [seriesBooks2 count];

    if (v105)
    {
      objc_opt_class();
      seriesBooks3 = [assetCopy seriesBooks];
      allObjects = [seriesBooks3 allObjects];
      v108 = [allObjects objectAtIndexedSubscript:0];
      v109 = BUDynamicCast();

      if ([v109 isAudiobook])
      {
        v110 = 2;
      }

      else
      {
        v110 = 1;
      }

      v111 = [NSNumber numberWithShort:v110];
      v112 = v111;
      if (v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = +[NSNull null];
      }

      v114 = v113;

      [v5 setObject:v114 forKey:BSUIAssetKeySeriesContentType];
    }
  }

  v115 = BKLibraryAssetIdentifierFromAsset();
  permanentOrTemporaryAssetID = [v115 permanentOrTemporaryAssetID];
  v117 = permanentOrTemporaryAssetID;
  if (permanentOrTemporaryAssetID)
  {
    v118 = permanentOrTemporaryAssetID;
  }

  else
  {
    v118 = +[NSNull null];
  }

  v119 = v118;

  [v5 setObject:v119 forKey:BSUIAssetKeyAssetID];
  if (([assetCopy isStore] & 1) == 0 && (objc_msgSend(assetCopy, "isManagedBook") & 1) == 0)
  {
    path = [assetCopy path];
    if ([path length])
    {
      v121 = [NSURL fileURLWithPath:path];
      standardizedURL = [v121 standardizedURL];

      absoluteString = [standardizedURL absoluteString];
      v124 = absoluteString;
      if (absoluteString)
      {
        v125 = absoluteString;
      }

      else
      {
        v125 = +[NSNull null];
      }

      v126 = v125;

      [v5 setObject:v126 forKey:BSUIAssetKeyFileURL];
    }

    v127 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy fileSize]);
    v128 = v127;
    if (v127)
    {
      v129 = v127;
    }

    else
    {
      v129 = +[NSNull null];
    }

    v130 = v129;

    [v5 setObject:v130 forKey:BSUIAssetKeyFileSize];
  }

  coverURL = [assetCopy coverURL];
  v132 = coverURL;
  if (coverURL)
  {
    v133 = coverURL;
  }

  else
  {
    v133 = +[NSNull null];
  }

  v134 = v133;

  [v5 setObject:v134 forKey:BSUIAssetKeyCoverURL];
  v135 = [(BSUIAsset *)self initWithDictionary:v5];

  return v135;
}

+ (id)propertiesNeededFromBKLibraryAsset
{
  v4[0] = @"sortAuthor";
  v4[1] = @"title";
  v4[2] = @"sortTitle";
  v4[3] = @"assetID";
  v4[4] = @"isExplicit";
  v4[5] = @"storeID";
  v4[6] = @"bookHighWaterMarkProgress";
  v4[7] = @"contentType";
  v4[8] = @"isFinished";
  v4[9] = @"isNew";
  v4[10] = @"isSample";
  v4[11] = @"isSupplementalContent";
  v4[12] = @"state";
  v4[13] = @"seriesID";
  v4[14] = @"lastEngagedDate";
  v4[15] = @"lastOpenDate";
  v4[16] = @"fileSize";
  v4[17] = @"path";
  v4[18] = @"pageProgressionDirection";
  v2 = [NSArray arrayWithObjects:v4 count:19];

  return v2;
}

@end