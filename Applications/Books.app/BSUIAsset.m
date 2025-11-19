@interface BSUIAsset
+ (id)propertiesNeededFromBKLibraryAsset;
- (BSUIAsset)initWithLibraryAsset:(id)a3;
@end

@implementation BSUIAsset

- (BSUIAsset)initWithLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 displayAuthor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  [v5 setObject:v9 forKey:BSUIAssetKeyAuthor];
  v10 = [v4 title];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  [v5 setObject:v13 forKey:BSUIAssetKeyTitle];
  v14 = [v4 sortTitle];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  [v5 setObject:v17 forKey:BSUIAssetKeySortTitle];
  v18 = [v4 isExplicit];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  [v5 setObject:v21 forKey:BSUIAssetKeyIsExplicit];
  v22 = [v4 storeID];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  [v5 setObject:v25 forKey:BSUIAssetKeyStoreID];
  v26 = [v4 readingProgress];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = +[NSNull null];
  }

  v29 = v28;

  [v5 setObject:v29 forKey:BSUIAssetKeyReadingProgress];
  v30 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v4 contentType]);
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
  v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isFinished]);
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
  v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isNew]);
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
  v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isSample]);
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
  v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isNonLocalSample]);
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
  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isInSamples]);
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
  v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isInSamples]);
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
  v58 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLocal]);
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
  v62 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isSupplementalContent]);
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
  v66 = [v4 seriesID];
  v67 = v66;
  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = +[NSNull null];
  }

  v69 = v68;

  [v5 setObject:v69 forKey:BSUIAssetKeySeriesID];
  v70 = [v4 lastEngagedDate];
  v71 = v70;
  if (v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = +[NSNull null];
  }

  v73 = v72;

  [v5 setObject:v73 forKey:BSUIAssetKeyLastEngagedDate];
  v74 = [v4 lastOpenDate];
  v75 = v74;
  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = +[NSNull null];
  }

  v77 = v76;

  [v5 setObject:v77 forKey:BSUIAssetKeyLastOpenDate];
  v78 = [v4 pageProgressionDirection];
  v79 = v78;
  if (v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = +[NSNull null];
  }

  v81 = v80;

  [v5 setObject:v81 forKey:BSUIAssetKeyPageProgressionDirection];
  v82 = [v4 dateFinished];
  v83 = v82;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = +[NSNull null];
  }

  v85 = v84;

  [v5 setObject:v85 forKey:BSUIAssetKeyDateFinished];
  v86 = [v4 hasRACSupport];
  v87 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v86 BOOLValue]);
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
  v91 = [v4 cloudAssetType];
  v92 = v91;
  if (v91)
  {
    v93 = v91;
  }

  else
  {
    v93 = +[NSNull null];
  }

  v94 = v93;

  [v5 setObject:v94 forKey:BSUIAssetKeyCloudAssetType];
  v95 = [v4 purchaseDate];
  v96 = v95;
  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = +[NSNull null];
  }

  v98 = v97;

  [v5 setObject:v98 forKey:BSUIAssetKeyPurchasedDate];
  if ([v4 contentType] == 5)
  {
    v99 = [v4 seriesBooks];
    v100 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v99 count]);
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
    v104 = [v4 seriesBooks];
    v105 = [v104 count];

    if (v105)
    {
      objc_opt_class();
      v106 = [v4 seriesBooks];
      v107 = [v106 allObjects];
      v108 = [v107 objectAtIndexedSubscript:0];
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
  v116 = [v115 permanentOrTemporaryAssetID];
  v117 = v116;
  if (v116)
  {
    v118 = v116;
  }

  else
  {
    v118 = +[NSNull null];
  }

  v119 = v118;

  [v5 setObject:v119 forKey:BSUIAssetKeyAssetID];
  if (([v4 isStore] & 1) == 0 && (objc_msgSend(v4, "isManagedBook") & 1) == 0)
  {
    v120 = [v4 path];
    if ([v120 length])
    {
      v121 = [NSURL fileURLWithPath:v120];
      v122 = [v121 standardizedURL];

      v123 = [v122 absoluteString];
      v124 = v123;
      if (v123)
      {
        v125 = v123;
      }

      else
      {
        v125 = +[NSNull null];
      }

      v126 = v125;

      [v5 setObject:v126 forKey:BSUIAssetKeyFileURL];
    }

    v127 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 fileSize]);
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

  v131 = [v4 coverURL];
  v132 = v131;
  if (v131)
  {
    v133 = v131;
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