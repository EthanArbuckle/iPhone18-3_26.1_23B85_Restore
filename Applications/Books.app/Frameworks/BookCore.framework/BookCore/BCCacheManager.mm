@interface BCCacheManager
+ (id)_cacheDirectoryPath;
+ (id)_oldCacheDirectoryPath;
+ (id)defaultClassDefinitionsWithProtocolHandler:(id)handler stackDecomposer:(id)decomposer;
+ (id)loadCacheMetaData;
+ (id)operationsFromInterestInDescribedImages:(id)images comparator:(id)comparator imageRequest:(id)request vendedImageInterest:(id)interest;
+ (id)processURLTemplate:(id)template forSize:(CGSize)size;
+ (void)clearCacheFiles;
+ (void)clearOldCacheFiles;
+ (void)initialize;
+ (void)migrateCacheAt:(id)at;
+ (void)writeCacheMetaData:(id)data;
- (BCCacheManager)initWithClassDefinitions:(id)definitions highPriorityGeneralQueue:(id)queue lowPriorityGeneralQueue:(id)generalQueue highPriorityTargetQueue:(id)targetQueue backgroundTargetQueue:(id)backgroundTargetQueue delegate:(id)delegate;
- (BCCacheManagingDelegate)delegate;
- (BOOL)_isGenericNeededForDescription:(id)description forRequest:(id)request;
- (BOOL)_isVendedInterestBlankOrOldForRequest:(id)request;
- (BOOL)canFetchCoverForURL:(id)l;
- (id)_blankCoverForDescribedImage:(id)image;
- (id)_blankLayerForDescribedImage:(id)image;
- (id)_extractImagesFromTemplate:(id)template identifier:(id)identifier initialSize:(CGSize)size;
- (id)_fetchLayerForIdentifier:(id)identifier size:(CGSize)size options:(unsigned __int16)options;
- (id)_fetchLayerForImage:(id)image;
- (id)_findInterestForIdentifier:(id)identifier;
- (id)describedImagesFromProductProfile:(id)profile;
- (id)fetchLayerForAssetID:(id)d size:(CGSize)size options:(unsigned __int16)options;
- (id)metadataForIdentifier:(id)identifier;
- (int64_t)_maxCostForMedium:(signed __int16)medium;
- (void)_addDescribedImages:(id)images;
- (void)_addInterest:(id)interest;
- (void)_checkForGenericUpgradeForInterest:(id)interest;
- (void)_checkForQualityUpgradeForInterest:(id)interest;
- (void)_checkInterestForDescribedImages:(id)images forRequest:(id)request;
- (void)_checkRestrictedContentSettings;
- (void)_checkStack:(id)stack forInterestIn:(id)in;
- (void)_fetchBestImagesForDescription:(id)description forRequest:(id)request;
- (void)_fetchGenericForDescription:(id)description forRequest:(id)request;
- (void)_fetchImage:(id)image forRequest:(id)request forInterest:(id)interest;
- (void)_fetchImagesMatchingBestDescriptions:(id)descriptions forOriginalDescription:(id)description forRequest:(id)request;
- (void)_fetchImagesMatchingDescription:(id)description forRequest:(id)request;
- (void)_fetchImagesMatchingDescription:(id)description withTimeout:(int64_t)timeout forRequest:(id)request completion:(id)completion;
- (void)_fetchImagesMatchingDescriptionWithoutPushing:(id)pushing forRequest:(id)request;
- (void)_fetchPrimaryImage:(id)image forRequest:(id)request;
- (void)_incrementVersionForIdentifiers:(id)identifiers;
- (void)_makeGenericForDescription:(id)description forRequest:(id)request;
- (void)_memoryWarning:(id)warning;
- (void)_performGenericUpgradeOfStackForRequest:(id)request;
- (void)_performOperation:(id)operation;
- (void)_preloadAdamIDs:(id)ds;
- (void)_preloadBatch:(id)batch completion:(id)completion;
- (void)_preloadCache;
- (void)_preloadOneBatch;
- (void)_pruneIfNeeded;
- (void)_pruneMediumIfNeeded:(signed __int16)needed;
- (void)_pushDescribedImages:(id)images forRequest:(id)request;
- (void)_refetchInterestsForNewVersion:(id)version;
- (void)_transformSourceDescribedImage:(id)image into:(id)into forRequest:(id)request;
- (void)_updateVendedImageInterest:(id)interest withDescribedImage:(id)image forRequest:(id)request;
- (void)addCGImage:(CGImage *)image withIdentifier:(id)identifier priority:(unint64_t)priority quality:(unsigned __int16)quality;
- (void)addDescribedImages:(id)images;
- (void)addFilePaths:(id)paths priority:(unint64_t)priority quality:(unsigned __int16)quality;
- (void)addProductProfileIDs:(id)ds priority:(unint64_t)priority;
- (void)addURLTemplate:(id)template forIdentifier:(id)identifier;
- (void)addURLs:(id)ls priority:(unint64_t)priority quality:(unsigned __int16)quality expiresAfter:(int64_t)after;
- (void)cleanCache;
- (void)dealloc;
- (void)explicitContentRestrictedChanged;
- (void)fetchCGImageFor:(id)for forRequest:(id)request timeOut:(double)out waitForNonGeneric:(BOOL)generic completion:(id)completion;
- (void)fetchCoverForURL:(id)l completion:(id)completion;
- (void)fetchCoverURLsFor:(id)for immediately:(BOOL)immediately completion:(id)completion;
- (void)fetchDescribedImageFileURLForImage:(id)image completion:(id)completion;
- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion;
- (void)imageColorForIdentifier:(id)identifier completion:(id)completion;
- (void)imageSetPersisting:(id)persisting newVersionForImageSetIdentifierss:(id)identifierss;
- (void)incrementVersionForIdentifier:(id)identifier;
- (void)incrementVersionForIdentifiers:(id)identifiers;
- (void)pruneItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium;
- (void)removeDescribedImages:(id)images;
- (void)removeURLs:(id)ls priority:(unint64_t)priority quality:(unsigned __int16)quality;
- (void)setImageColor:(id)color forIdentifier:(id)identifier;
- (void)stackRenderingResultSrc:(id)src result:(id)result forRequest:(id)request;
- (void)transformResultSrc:(id)src result:(id)result forRequest:(id)request;
@end

@implementation BCCacheManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v5 = @"BCCacheManagerNextDiskPruneDate";
    +[NSDate timeIntervalSinceReferenceDate];
    v3 = [NSNumber numberWithDouble:?];
    v6 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [v2 registerDefaults:v4];
  }
}

+ (id)_oldCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];
  v4 = [lastObject stringByAppendingPathComponent:@"BCCoverCache-1"];

  return v4;
}

+ (id)_cacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];
  v4 = [lastObject stringByAppendingPathComponent:@"BCCoverCache-1"];

  return v4;
}

+ (void)clearOldCacheFiles
{
  v11 = +[UIApplication applicationCacheDirectory];
  v3 = +[NSFileManager defaultManager];
  v4 = [v11 stringByAppendingPathComponent:@"BCCoverCache"];
  [v3 removeItemAtPath:v4 error:0];

  v5 = +[NSFileManager defaultManager];
  v6 = [v11 stringByAppendingPathComponent:@"BKCoverCache"];
  [v5 removeItemAtPath:v6 error:0];

  v7 = +[NSFileManager defaultManager];
  v8 = [v11 stringByAppendingPathComponent:@"BKMappedImageCache"];
  [v7 removeItemAtPath:v8 error:0];

  _oldCacheDirectoryPath = [self _oldCacheDirectoryPath];
  v10 = +[NSFileManager defaultManager];
  [v10 removeItemAtPath:_oldCacheDirectoryPath error:0];
}

+ (void)clearCacheFiles
{
  _cacheDirectoryPath = [self _cacheDirectoryPath];
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:_cacheDirectoryPath error:0];

  v3 = +[NSFileManager defaultManager];
  [v3 createDirectoryAtPath:_cacheDirectoryPath withIntermediateDirectories:0 attributes:0 error:0];
}

+ (id)loadCacheMetaData
{
  _cacheDirectoryPath = [self _cacheDirectoryPath];
  v3 = [_cacheDirectoryPath stringByAppendingPathComponent:@"BCCoverCache-Version"];

  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (void)writeCacheMetaData:(id)data
{
  dataCopy = data;
  _cacheDirectoryPath = [self _cacheDirectoryPath];
  v6 = [_cacheDirectoryPath stringByAppendingPathComponent:@"BCCoverCache-Version"];

  [dataCopy writeToFile:v6 atomically:0];
}

+ (void)migrateCacheAt:(id)at
{
  v4 = [at stringByAppendingPathComponent:@"BCCoverCache-Version"];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
  v6 = [v5 objectForKeyedSubscript:@"Version"];
  unsignedIntValue = [v6 unsignedIntValue];

  if (unsignedIntValue != 8)
  {
    [self clearCacheFiles];
    [self clearOldCacheFiles];
    v9 = @"Version";
    v10 = &off_2E59F0;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    [v8 writeToFile:v4 atomically:0];
    v5 = v8;
  }
}

+ (id)defaultClassDefinitionsWithProtocolHandler:(id)handler stackDecomposer:(id)decomposer
{
  decomposerCopy = decomposer;
  handlerCopy = handler;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kLevelClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL1StorgageClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL2StorgageClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL3StorgageClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL4StorgageClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kPersistingClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL1DataStoringClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL2DataStoringClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL3DataStoringClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kL4DataStoringClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kStackManagerClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kStackRendererClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kTransformerClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kTransformControllerClass];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kProfileFetchingClass];
  [v7 setObject:handlerCopy forKeyedSubscript:kURLProtocolHandlerInstance];

  [v7 setObject:decomposerCopy forKeyedSubscript:kSeriesStackDecomposingInstance];
  [v7 setObject:objc_opt_class() forKeyedSubscript:kPersistentStoreClass];

  return v7;
}

+ (id)operationsFromInterestInDescribedImages:(id)images comparator:(id)comparator imageRequest:(id)request vendedImageInterest:(id)interest
{
  imagesCopy = images;
  comparatorCopy = comparator;
  requestCopy = request;
  interestCopy = interest;
  v13 = +[NSMutableArray array];
  v14 = [imagesCopy valueForKey:@"identifier"];
  v15 = [NSSet setWithArray:v14];

  describedImageRequested = [interestCopy describedImageRequested];
  identifier = [describedImageRequested identifier];
  v59 = v15;
  v18 = [v15 containsObject:identifier];

  if (v18)
  {
    describedImageRequested2 = [interestCopy describedImageRequested];
    describedImageShown = [interestCopy describedImageShown];
    if (([interestCopy needsNewVersion] & 1) != 0 || !objc_msgSend(comparatorCopy, "isMatching:withCandidateImage:includeQuality:", describedImageRequested2, describedImageShown, 0) || objc_msgSend(describedImageShown, "quality") <= 0x65)
    {
      persistanceOptions = [requestCopy persistanceOptions];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v20 = imagesCopy;
      v21 = [v20 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (!v21)
      {
        goto LABEL_44;
      }

      v57 = v13;
      v58 = imagesCopy;
      v63 = 0;
      v66 = -1;
      v67 = *v69;
      v62 = describedImageRequested2;
      v60 = comparatorCopy;
      v61 = v20;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v69 != v67)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v68 + 1) + 8 * i);
          [BICCacheStats logOperation:BICCacheStatsOperationInterestCheck[0] forRequest:requestCopy];
          v24 = [comparatorCopy differenceFromRequest:describedImageRequested2 toCandidateImage:v23];
          if (v24 != -1)
          {
            v25 = v24;
            v26 = requestCopy;
            if ((persistanceOptions & 2) != 0)
            {
              [v23 filePath];
            }

            else
            {
              [v23 image];
            }
            v27 = ;

            v28 = [comparatorCopy isMatching:v23 withCandidateImage:describedImageShown includeQuality:0];
            v29 = 0;
            if ([describedImageShown isLowQuality])
            {
              v29 = [v23 quality] > 0x65;
            }

            if (v25)
            {
              v30 = 1;
            }

            else
            {
              v30 = v27 == 0;
            }

            if (!v30 && ([v23 isGeneric] & 1) == 0 && objc_msgSend(interestCopy, "needsNewVersion") & 1 | ((v28 & 1) == 0) | v29)
            {
              requestCopy = v26;
              [BICCacheStats logOperation:BICCacheStatsOperationImageDelivered[0] forRequest:v26];
              if ([describedImageShown isLowQuality] && objc_msgSend(v23, "quality") >= 0x66)
              {
                v34 = BCImageCacheLog();
                v35 = v57;
                imagesCopy = v58;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v73 = v23;
                  v74 = 2112;
                  v75 = v26;
                  v36 = "BCCacheManager: Performing quality upgrade on exact interest for image=%@ for request=%@";
                  goto LABEL_40;
                }
              }

              else
              {
                v34 = BCImageCacheLog();
                v35 = v57;
                imagesCopy = v58;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v73 = v23;
                  v74 = 2112;
                  v75 = v26;
                  v36 = "BCCacheManager: Found exact interest for image=%@ for request=%@";
LABEL_40:
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, v36, buf, 0x16u);
                }
              }

              comparatorCopy = v60;

              v37 = [BCCacheOperation operationWithKind:1 vendedImageInterest:interestCopy subject:v23 request:v26];
              [v35 addObject:v37];

              v38 = v23;
              v13 = v35;
              describedImageRequested2 = v62;
              if ([v38 isLowQuality])
              {
                v39 = [BCCacheOperation operationWithKind:2 vendedImageInterest:interestCopy request:requestCopy];
                [v35 addObject:v39];
              }

              [interestCopy setNeedsNewVersion:0];

              v21 = 0;
              v20 = v61;
LABEL_44:

              goto LABEL_45;
            }

            requestCopy = v26;
            if (v25 < v66)
            {
              v31 = v23;

              v66 = v25;
              v63 = v31;
            }

            comparatorCopy = v60;
            v20 = v61;
            describedImageRequested2 = v62;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      if (!v63)
      {
        v21 = 0;
        v13 = v57;
        imagesCopy = v58;
        goto LABEL_45;
      }

      v32 = BCImageCacheLog();
      v13 = v57;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v73 = v63;
        v74 = 2112;
        v75 = describedImageRequested2;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "BCCacheManager: Found inexact match for of image=%@ for request=%@", buf, 0x16u);
      }

      image = [v63 image];

      if (!v66 && (persistanceOptions & 2) != 0)
      {
        v20 = [BCCacheOperation operationWithKind:5 subject:requestCopy request:requestCopy];
        [v57 addObject:v20];
        imagesCopy = v58;
LABEL_33:
        v21 = v63;
        goto LABEL_44;
      }

      if (image)
      {
        v21 = v63;
        imagesCopy = v58;
        if ([comparatorCopy isMatching:describedImageRequested2 withGenericImage:v63])
        {
          if ([describedImageShown isGenericSeriesStack])
          {
            isSeriesStackWithGenerics = [v63 isSeriesStackWithGenerics];
          }

          else
          {
            isSeriesStackWithGenerics = 0;
          }

          if (describedImageShown && [describedImageShown quality] != 1)
          {
            if ([describedImageShown quality] == 2)
            {
              if ((([interestCopy needsNewVersion] | isSeriesStackWithGenerics) & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            else if (!isSeriesStackWithGenerics)
            {
              goto LABEL_92;
            }
          }

          [BICCacheStats incrementCounter:kBICCacheStatsCounterGenericsDelivered[0]];
          [BICCacheStats logOperation:BICCacheStatsOperationGenericImageDelivered[0] forRequest:requestCopy];
          v51 = BCImageCacheLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            bu_prettyDescription = [v20 bu_prettyDescription];
            *buf = 138412290;
            v73 = bu_prettyDescription;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "BCCacheManager: Found generic interest for images=%@", buf, 0xCu);
          }

          if (([requestCopy requestOptions] & 8) != 0 || (objc_msgSend(requestCopy, "primaryRequest"), v53 = objc_claimAutoreleasedReturnValue(), v53, v53))
          {
            [v63 setRequestOptions:{objc_msgSend(v63, "requestOptions") | 8}];
          }

          v54 = [BCCacheOperation operationWithKind:1 vendedImageInterest:interestCopy subject:v63 request:requestCopy];
          [v57 addObject:v54];

          if (([requestCopy requestOptions] & 8) == 0)
          {
            primaryRequest = [requestCopy primaryRequest];

            if (!primaryRequest)
            {
              v20 = [BCCacheOperation operationWithKind:3 vendedImageInterest:interestCopy request:requestCopy];
              [v57 addObject:v20];
              goto LABEL_33;
            }
          }

LABEL_92:
          v21 = v63;
          goto LABEL_45;
        }

        if (([requestCopy requestOptions] & 0x10) == 0 || (v44 = objc_msgSend(describedImageRequested2, "processingOptions"), v30 = v44 == objc_msgSend(v63, "processingOptions"), v21 = v63, !v30))
        {
          if (![comparatorCopy isTransformableMatch:describedImageRequested2 withCandidateImage:v21])
          {
            v20 = BCImageCacheLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v73 = v21;
              v74 = 2112;
              v75 = requestCopy;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "BCCacheManager: Not transformable image=%@ for request=%@", buf, 0x16u);
            }

            goto LABEL_44;
          }

          [v21 image];
          v49 = v48 = v21;

          if (v49)
          {
            [BICCacheStats logOperation:BICCacheStatsOperationBestMatchNeedsTransform[0] forRequest:requestCopy];
            v50 = [BCCacheOperation operationWithKind:0 subject:v48 result:describedImageRequested2 request:requestCopy];
            [v57 addObject:v50];
            v21 = v48;
            v20 = v50;
            goto LABEL_44;
          }

          v21 = v48;
LABEL_45:

          goto LABEL_46;
        }

        [BICCacheStats logOperation:BICCacheStatsOperationImageDelivered[0] forRequest:requestCopy];
        v45 = BCImageCacheLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          bu_prettyDescription2 = [v20 bu_prettyDescription];
          *buf = 138412290;
          v73 = bu_prettyDescription2;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "BCCacheManager: Found best match interest for images=%@", buf, 0xCu);
        }

        v21 = v63;
        v47 = [BCCacheOperation operationWithKind:1 vendedImageInterest:interestCopy subject:v63 request:requestCopy];
      }

      else
      {
        quality = [describedImageShown quality];
        imagesCopy = v58;
        if (quality != 1)
        {
          v43 = [v63 quality] > quality || objc_msgSend(v63, "quality") == 0;
          v56 = [describedImageShown isGenericSeriesStack] && (objc_msgSend(v63, "processingOptions") >> 5) & 1;
          if (!v43 && !v56)
          {
            goto LABEL_92;
          }
        }

        [BICCacheStats logOperation:BICCacheStatsOperationBestMatchNeedsFetch[0] forRequest:requestCopy];
        v21 = v63;
        [v63 setPriority:{objc_msgSend(describedImageRequested2, "priority")}];
        v47 = [BCCacheOperation operationWithKind:4 subject:v63 request:requestCopy];
      }

      v20 = v47;
      [v57 addObject:v47];
      goto LABEL_44;
    }

LABEL_46:
  }

  return v13;
}

- (BCCacheManager)initWithClassDefinitions:(id)definitions highPriorityGeneralQueue:(id)queue lowPriorityGeneralQueue:(id)generalQueue highPriorityTargetQueue:(id)targetQueue backgroundTargetQueue:(id)backgroundTargetQueue delegate:(id)delegate
{
  definitionsCopy = definitions;
  queueCopy = queue;
  generalQueueCopy = generalQueue;
  targetQueueCopy = targetQueue;
  backgroundTargetQueueCopy = backgroundTargetQueue;
  delegateCopy = delegate;
  v155.receiver = self;
  v155.super_class = BCCacheManager;
  v18 = [(BCCacheManager *)&v155 init];
  if (v18)
  {
    v19 = v18;
    v144 = targetQueueCopy;
    v131 = generalQueueCopy;
    v18->_accessLock._os_unfair_lock_opaque = 0;
    v20 = +[NSPointerArray weakObjectsPointerArray];
    vendedImageInterests = v19->_vendedImageInterests;
    v19->_vendedImageInterests = v20;

    v22 = +[NSMutableArray array];
    outstandingRequests = v19->_outstandingRequests;
    v19->_outstandingRequests = v22;

    v24 = +[NSMutableArray array];
    cgInterests = v19->_cgInterests;
    v19->_cgInterests = v24;

    v26 = +[NSMutableArray array];
    genericRequestsInProcess = v19->_genericRequestsInProcess;
    v19->_genericRequestsInProcess = v26;

    v28 = +[NSMutableDictionary dictionary];
    blankImages = v19->_blankImages;
    v19->_blankImages = v28;

    v30 = +[NSUserDefaults standardUserDefaults];
    v19->_debugLayout = [v30 BOOLForKey:@"BKLibraryImageCacheDebugLayout"];

    v31 = +[NSUserDefaults standardUserDefaults];
    v19->_forceStats = [v31 BOOLForKey:@"BKLibraryImageCacheGatherStats"];

    v32 = +[NSUserDefaults standardUserDefaults];
    [v32 doubleForKey:@"BCCacheManagerNextDiskPruneDate"];
    v19->_nextDiskPruneDate = v33;

    +[NSDate timeIntervalSinceReferenceDate];
    v19->_nextRamPruneDate = v34 + 2.0;
    v35 = +[NSMutableSet set];
    versionBumpedIdentifiers = v19->_versionBumpedIdentifiers;
    v19->_versionBumpedIdentifiers = v35;

    v37 = +[NSMutableSet set];
    adamIDsToPreload = v19->_adamIDsToPreload;
    v19->_adamIDsToPreload = v37;

    v39 = [BUCoalescingCallBlock alloc];
    v153[0] = _NSConcreteStackBlock;
    v153[1] = 3221225472;
    v153[2] = sub_86CFC;
    v153[3] = &unk_2C7B08;
    v40 = v19;
    v154 = v40;
    v41 = [v39 initWithNotifyBlock:v153 blockDescription:@"CoverCacheVersionBump"];
    v42 = v40[11];
    v40[11] = v41;

    [v40[11] setCoalescingDelay:3.0];
    [v40[11] setMaximumDelay:3.0];
    v43 = [BUCoalescingCallBlock alloc];
    v151[0] = _NSConcreteStackBlock;
    v151[1] = 3221225472;
    v151[2] = sub_86EF8;
    v151[3] = &unk_2C7B08;
    v44 = v40;
    v152 = v44;
    v45 = [v43 initWithNotifyBlock:v151 blockDescription:@"CoverCachePruning"];
    v46 = v44[12];
    v44[12] = v45;

    [v44[12] setCoalescingDelay:2.0];
    [v44[12] setMaximumDelay:2.0];
    v47 = [BUCoalescingCallBlock alloc];
    v149[0] = _NSConcreteStackBlock;
    v149[1] = 3221225472;
    v149[2] = sub_86F68;
    v149[3] = &unk_2C7B08;
    v48 = v44;
    v150 = v48;
    v49 = [v47 initWithNotifyBlock:v149 blockDescription:@"CoverCachePreloading"];
    v50 = v48[13];
    v48[13] = v49;

    [v48[13] setCoalescingDelay:15.0];
    objc_storeStrong(v48 + 3, queue);
    objc_storeStrong(v48 + 4, generalQueue);
    objc_storeStrong(v48 + 5, targetQueue);
    objc_storeStrong(v48 + 6, backgroundTargetQueue);
    v51 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v52 = dispatch_queue_attr_make_with_qos_class(v51, QOS_CLASS_USER_INITIATED, 0);
    v53 = dispatch_queue_create("CoverCacheGenerics", v52);
    v54 = v48[2];
    v48[2] = v53;

    v130 = delegateCopy;
    objc_storeWeak(v48 + 9, delegateCopy);
    v55 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v48[4] backgroundTargetQueue:v48[4] numConcurrentWorkItems:1];
    v56 = v48[7];
    v48[7] = v55;

    [v48[7] setIdentifier:@"CoverCacheLowPriority"];
    [v48[7] setManualCompletion:1];
    v57 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v48[2] backgroundTargetQueue:v48[4] numConcurrentWorkItems:1];
    v58 = v48[8];
    v48[8] = v57;

    [v48[8] setIdentifier:@"CoverCacheGenerics"];
    [v48[8] setManualCompletion:1];
    +[BICCacheStats prepare];
    v59 = +[BURestrictionsProvider sharedInstance];
    [v59 addObserver:v48];

    v60 = dispatch_time(0, 60000000000);
    v61 = v48[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_86FD8;
    block[3] = &unk_2C7D40;
    v62 = v48;
    v148 = v62;
    dispatch_after(v60, v61, block);
    v63 = [definitionsCopy objectForKeyedSubscript:kPersistingClass];
    v141 = [definitionsCopy objectForKeyedSubscript:kL1DataStoringClass];
    v139 = [definitionsCopy objectForKeyedSubscript:kL2DataStoringClass];
    v64 = [definitionsCopy objectForKeyedSubscript:kL3DataStoringClass];
    v138 = [definitionsCopy objectForKeyedSubscript:kL4DataStoringClass];
    v136 = [definitionsCopy objectForKeyedSubscript:kL1StorgageClass];
    v135 = [definitionsCopy objectForKeyedSubscript:kL2StorgageClass];
    v143 = [definitionsCopy objectForKeyedSubscript:kL3StorgageClass];
    v134 = [definitionsCopy objectForKeyedSubscript:kL4StorgageClass];
    v65 = [definitionsCopy objectForKeyedSubscript:kLevelClass];
    v133 = [definitionsCopy objectForKeyedSubscript:kStackRendererClass];
    v132 = [definitionsCopy objectForKeyedSubscript:kStackManagerClass];
    v66 = [definitionsCopy objectForKeyedSubscript:kTransformerClass];
    v67 = [definitionsCopy objectForKeyedSubscript:kTransformControllerClass];
    v68 = [definitionsCopy objectForKeyedSubscript:kProfileFetchingClass];
    v69 = [definitionsCopy objectForKeyedSubscript:kPersistentStoreClass];
    v70 = 0;
    if (!v69 || !v63 || !v141 || !v139 || !v64 || !v138 || !v136 || !v135 || !v143 || !v134 || !v65 || !v133 || !v132 || !v66 || !v67 || !v68)
    {
      v79 = queueCopy;
LABEL_105:

      delegateCopy = v130;
      generalQueueCopy = v131;
      targetQueueCopy = v144;
      goto LABEL_106;
    }

    v71 = v69;
    v126 = v67;
    v127 = v66;
    v72 = +[BCCacheManager _cacheDirectoryPath];
    v73 = +[NSFileManager defaultManager];
    v129 = v72;
    [v73 createDirectoryAtPath:v72 withIntermediateDirectories:1 attributes:0 error:0];

    v74 = objc_alloc_init(BICDescribedImageComparator);
    comparator = v62->_comparator;
    v62->_comparator = v74;

    if ([v63 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetPersisting])
    {
      if (v62->_useRamBasedDB)
      {
        v76 = [[BICMemoryPersistentStoring alloc] initWithURL:0];
        v77 = [objc_msgSend(v63 "alloc")];
        imageSetPersistence = v62->_imageSetPersistence;
        v62->_imageSetPersistence = v77;
      }

      else
      {
        if (v62->_clearCacheOnLaunch)
        {
          v80 = +[NSFileManager defaultManager];
          [v80 removeItemAtPath:v72 error:0];

          v81 = +[NSFileManager defaultManager];
          [v81 createDirectoryAtPath:v72 withIntermediateDirectories:0 attributes:0 error:0];
        }

        [BCCacheManager migrateCacheAt:v72];
        v82 = BCImageCacheLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v157 = v72;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "BCCacheManager: Cache is at path=%@", buf, 0xCu);
        }

        v76 = [(BCCacheManager *)v72 stringByAppendingPathComponent:@"imagesets.sqlite"];
        imageSetPersistence = [NSURL fileURLWithPath:v76];
        v83 = [objc_msgSend(v71 "alloc")];
        v84 = [objc_msgSend(v63 "alloc")];
        v85 = v62->_imageSetPersistence;
        v62->_imageSetPersistence = v84;
      }

      [(BICImageSetPersisting *)v62->_imageSetPersistence setDelegate:v62];
    }

    if ([v68 conformsToProtocol:&OBJC_PROTOCOL___BCCacheProductProfileFetching])
    {
      v86 = [objc_msgSend(v68 "alloc")];
      profileFetcher = v62->_profileFetcher;
      v62->_profileFetcher = v86;
    }

    v88 = [definitionsCopy objectForKeyedSubscript:kURLProtocolHandlerInstance];
    protocolHandler = v62->_protocolHandler;
    v62->_protocolHandler = v88;

    v90 = v65;
    if ([v141 conformsToProtocol:&OBJC_PROTOCOL___BICDataStoring])
    {
      v91 = [objc_msgSend(v141 "alloc")];
      [v91 setIdentifier:@"L1"];
      [v91 setDelegate:v62];
      v92 = v136;
      if (v62->_clearCacheOnLaunch)
      {
        [v91 _clean:&stru_2CB470];
      }
    }

    else
    {
      v91 = 0;
      v92 = v136;
    }

    if ([v139 conformsToProtocol:&OBJC_PROTOCOL___BICDataStoring])
    {
      v93 = [objc_msgSend(v139 "alloc")];
      [v93 setIdentifier:@"L2"];
      [v93 setDelegate:v62];
      v128 = v93;
      if (v62->_clearCacheOnLaunch)
      {
        [v93 _clean:&stru_2CB490];
      }
    }

    else
    {
      v128 = 0;
    }

    if ([v64 conformsToProtocol:&OBJC_PROTOCOL___BICDataStoring])
    {
      v94 = [objc_msgSend(v64 "alloc")];
      [v94 setIdentifier:@"L3"];
      [v94 setDelegate:v62];
      if (v62->_clearCacheOnLaunch)
      {
        [v94 _clean:&stru_2CB4B0];
      }
    }

    else
    {
      v94 = 0;
    }

    v142 = v94;
    if ([v138 conformsToProtocol:&OBJC_PROTOCOL___BICDataStoring])
    {
      v95 = [objc_msgSend(v138 "alloc")];
      [v95 setIdentifier:@"L4"];
      [v95 setDelegate:v62];
      v96 = v135;
      if (v62->_clearCacheOnLaunch)
      {
        [v95 _clean:&stru_2CB4D0];
      }

      v97 = v134;
    }

    else
    {
      v95 = 0;
      v97 = v134;
      v96 = v135;
    }

    if ([v92 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring_Persistence])
    {
      v98 = [objc_msgSend(v92 "alloc")];
    }

    else
    {
      if (![v92 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring])
      {
        v140 = 0;
LABEL_54:
        if ([v96 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring_Persistence])
        {
          v99 = [objc_msgSend(v96 "alloc")];
        }

        else
        {
          if (![v96 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring])
          {
            v100 = 0;
LABEL_60:
            v137 = v91;
            if ([v143 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring_Persistence])
            {
              v101 = [objc_msgSend(v143 "alloc")];
            }

            else
            {
              if (![v143 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring])
              {
                v102 = 0;
LABEL_66:
                if ([v97 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring_Persistence])
                {
                  v103 = [objc_msgSend(v97 "alloc")];
                }

                else
                {
                  if (![v97 conformsToProtocol:&OBJC_PROTOCOL___BICImageSetStoring])
                  {
                    v104 = 0;
                    goto LABEL_72;
                  }

                  v103 = [objc_msgSend(v97 "alloc")];
                }

                v104 = v103;
                [v103 setIdentifier:@"L4"];
LABEL_72:
                if ([v90 conformsToProtocol:&OBJC_PROTOCOL___BICLevelCaching])
                {
                  v105 = [objc_msgSend(v90 "alloc")];
                  level4 = v62->_level4;
                  v62->_level4 = v105;

                  v107 = [objc_msgSend(v90 "alloc")];
                  level3 = v62->_level3;
                  v62->_level3 = v107;

                  v109 = [objc_msgSend(v90 "alloc")];
                  level2 = v62->_level2;
                  v62->_level2 = v109;

                  v111 = [objc_msgSend(v90 "alloc")];
                  level1 = v62->_level1;
                  v62->_level1 = v111;
                }

                v113 = [definitionsCopy objectForKeyedSubscript:kSeriesStackDecomposingInstance];
                seriesDecomposer = v62->_seriesDecomposer;
                v62->_seriesDecomposer = v113;

                if ([v133 conformsToProtocol:&OBJC_PROTOCOL___BCStackRendering])
                {
                  v115 = [objc_msgSend(v133 "alloc")];
                  [v115 setImageRepository:v62];
                  v116 = [definitionsCopy objectForKeyedSubscript:kSeriesStackDecomposingInstance];
                  [v115 setSeriesDecomposer:v116];
                }

                else
                {
                  v115 = 0;
                }

                if ([v132 conformsToProtocol:&OBJC_PROTOCOL___BCStackManaging])
                {
                  v117 = [objc_msgSend(v132 "alloc")];
                  stackManager = v62->_stackManager;
                  v62->_stackManager = v117;

                  [(BCStackManaging *)v62->_stackManager setDelegate:v62];
                }

                if ([v127 conformsToProtocol:&OBJC_PROTOCOL___BCCacheImageTransforming])
                {
                  v119 = [objc_msgSend(v127 "alloc")];
                }

                else
                {
                  v119 = 0;
                }

                if ([v127 conformsToProtocol:&OBJC_PROTOCOL___BCCacheImageTransforming])
                {
                  v120 = [objc_msgSend(v126 "alloc")];
                  transformController = v62->_transformController;
                  v62->_transformController = v120;

                  [(BCCacheTransforming *)v62->_transformController setDelegate:v62];
                }

                if (v62->_imageSetPersistence && v137 && v128 && v142 && v95 && v140 && v100 && v102 && v104 && v62->_level1 && v62->_level2 && v62->_level3 && v62->_level4 && v115 && v62->_stackManager && v119 && v62->_transformController && v62->_profileFetcher)
                {
                  v122 = +[NSNotificationCenter defaultCenter];
                  [v122 addObserver:v62 selector:"_memoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
                }

                else
                {
                  v122 = v62;
                  v62 = 0;
                }

                v70 = v62;
                v79 = queueCopy;
                v62 = v129;
                goto LABEL_105;
              }

              v101 = [objc_msgSend(v143 "alloc")];
            }

            v102 = v101;
            [v101 setIdentifier:@"L3"];
            goto LABEL_66;
          }

          v99 = [objc_msgSend(v96 "alloc")];
        }

        v100 = v99;
        [v99 setIdentifier:@"L2"];
        goto LABEL_60;
      }

      v98 = [objc_msgSend(v92 "alloc")];
    }

    v140 = v98;
    [v98 setIdentifier:@"L1"];
    goto LABEL_54;
  }

  v70 = 0;
  v79 = queueCopy;
LABEL_106:
  v123 = +[BCCacheManager loadCacheMetaData];
  cacheMetaData = v70->_cacheMetaData;
  v70->_cacheMetaData = v123;

  return v70;
}

- (void)dealloc
{
  v3 = +[BURestrictionsProvider sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BCCacheManager;
  [(BCCacheManager *)&v4 dealloc];
}

- (void)_memoryWarning:(id)warning
{
  v4 = BCImageCacheLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E7BA4();
  }

  level1 = [(BCCacheManager *)self level1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_87140;
  v6[3] = &unk_2CB538;
  v6[4] = self;
  [level1 gatherPrunableItemsForMedium:0 withCompletion:v6];
}

- (void)_checkRestrictedContentSettings
{
  v3 = +[BURestrictionsProvider sharedInstance];
  isExplicitContentAllowed = [v3 isExplicitContentAllowed];

  cacheMetaData = [(BCCacheManager *)self cacheMetaData];
  v6 = [cacheMetaData objectForKeyedSubscript:@"BCCacheAllowRestrictedContent"];
  bOOLValue = [v6 BOOLValue];

  if (isExplicitContentAllowed != bOOLValue)
  {

    [(BCCacheManager *)self explicitContentRestrictedChanged];
  }
}

- (void)_preloadCache
{
  if (!+[BKReachability isOffline])
  {
    v3 = [BICDescribedImage describedImageWithIdentifier:@"prioritizer" size:0 processingOptions:CGSizeZero.width, CGSizeZero.height];
    [v3 setPriority:2];
    objc_initWeak(&location, self);
    lowPriorityWorkQueue = [(BCCacheManager *)self lowPriorityWorkQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_87398;
    v5[3] = &unk_2CB560;
    objc_copyWeak(&v6, &location);
    [lowPriorityWorkQueue addWorkItemWithPriority:v3 description:@"CacheManager preload" block:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_preloadAdamIDs:(id)ds
{
  dsCopy = ds;
  v5 = BCImageCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dsCopy count]);
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BCCacheManager: Preloading %@ asset IDs", buf, 0xCu);
  }

  if ([dsCopy count])
  {
    v7 = [BICDescribedImage describedImageWithIdentifier:@"prioritizer" size:0 processingOptions:CGSizeZero.width, CGSizeZero.height];
    [v7 setPriority:2];
    objc_initWeak(buf, self);
    lowPriorityWorkQueue = [(BCCacheManager *)self lowPriorityWorkQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_87708;
    v9[3] = &unk_2CB5D0;
    objc_copyWeak(&v11, buf);
    v10 = dsCopy;
    [lowPriorityWorkQueue addWorkItemWithPriority:v7 description:@"CacheManager preload adamIDs" block:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_preloadOneBatch
{
  objc_initWeak(&location, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_86E64;
  v25 = sub_86E74;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_87CF8;
  v13 = &unk_2CB5F8;
  selfCopy = self;
  v15 = &v21;
  v16 = &v17;
  v3 = v11;
  os_unfair_lock_lock(&self->_accessLock);
  v12(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  if ([v22[5] count])
  {
    v4 = BCImageCacheLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22[5] count]);
      v6 = [NSNumber numberWithInteger:v18[3]];
      *buf = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BCCacheManager: Preloading one batch of %@ asset IDs, remaining=%@", buf, 0x16u);
    }

    v7 = [BICDescribedImage describedImageWithIdentifier:@"prioritizer" size:0 processingOptions:CGSizeZero.width, CGSizeZero.height];
    [v7 setPriority:2];
    lowPriorityWorkQueue = [(BCCacheManager *)self lowPriorityWorkQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_87E00;
    v9[3] = &unk_2CB620;
    objc_copyWeak(&v10, &location);
    v9[4] = &v21;
    [lowPriorityWorkQueue addWorkItemWithPriority:v7 description:@"CacheManager preload one batch" block:v9];

    objc_destroyWeak(&v10);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  objc_destroyWeak(&location);
}

- (void)_preloadBatch:(id)batch completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  v8 = BCImageCacheLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v15 = [batchCopy count];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BCCacheManager: Pre-loading a batch of %lu identifiers", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  profileFetcher = [(BCCacheManager *)self profileFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_880BC;
  v11[3] = &unk_2CB6C8;
  objc_copyWeak(&v13, buf);
  v11[4] = self;
  v10 = completionCopy;
  v12 = v10;
  [profileFetcher batchFetchCoverURLsFor:batchCopy completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)addDescribedImages:(id)images
{
  imagesCopy = images;
  if ([imagesCopy count])
  {
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_886C0;
    v6[3] = &unk_2C7BE8;
    v6[4] = self;
    v7 = imagesCopy;
    dispatch_async(workHighPriorityTarget, v6);
  }
}

- (void)_addDescribedImages:(id)images
{
  imagesCopy = images;
  v5 = objc_autoreleasePoolPush();
  v6 = [imagesCopy count];
  if (v6 >= 0x65)
  {
    v7 = v6;
    v8 = [imagesCopy subarrayWithRange:{0, 100}];
    v9 = [imagesCopy subarrayWithRange:{100, v7 - 100}];

    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_88824;
    v16 = &unk_2C7BE8;
    selfCopy = self;
    v18 = v9;
    v11 = v9;
    dispatch_async(workHighPriorityTarget, &v13);

    imagesCopy = v8;
  }

  v12 = [imagesCopy objectAtIndexedSubscript:{0, v13, v14, v15, v16, selfCopy}];
  if (![v12 priority])
  {
    [v12 setPriority:3];
  }

  [(BCCacheManager *)self _pushDescribedImages:imagesCopy forRequest:v12];

  objc_autoreleasePoolPop(v5);
}

- (void)removeDescribedImages:(id)images
{
  imagesCopy = images;
  if ([imagesCopy count])
  {
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_888E8;
    v6[3] = &unk_2C7BE8;
    v7 = imagesCopy;
    selfCopy = self;
    dispatch_async(workHighPriorityTarget, v6);
  }
}

- (void)addProductProfileIDs:(id)ds priority:(unint64_t)priority
{
  dsCopy = ds;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88A40;
  block[3] = &unk_2C8DD0;
  selfCopy = self;
  priorityCopy = priority;
  v10 = dsCopy;
  v8 = dsCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (void)addURLs:(id)ls priority:(unint64_t)priority quality:(unsigned __int16)quality expiresAfter:(int64_t)after
{
  lsCopy = ls;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88CBC;
  block[3] = &unk_2CB710;
  afterCopy = after;
  priorityCopy = priority;
  qualityCopy = quality;
  v14 = lsCopy;
  selfCopy = self;
  v12 = lsCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (void)addURLTemplate:(id)template forIdentifier:(id)identifier
{
  if (template)
  {
    v5 = [(BCCacheManager *)self _extractImagesFromTemplate:template identifier:identifier initialSize:2048.0, 2048.0];
    if ([v5 count])
    {
      [(BCCacheManager *)self _addDescribedImages:v5];
    }
  }
}

- (void)removeURLs:(id)ls priority:(unint64_t)priority quality:(unsigned __int16)quality
{
  qualityCopy = quality;
  lsCopy = ls;
  context = objc_autoreleasePoolPush();
  v8 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [lsCopy allKeys];
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        height = [BICDescribedImage describedImageWithIdentifier:v14 size:0 processingOptions:CGSizeZero.width, height];
        v16 = [lsCopy objectForKeyedSubscript:v14];
        [height setUrlString:v16];

        [height setQuality:qualityCopy];
        [height setPriority:priority];
        [v8 addObject:height];
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    [(BCCacheManager *)self removeDescribedImages:v8];
  }

  objc_autoreleasePoolPop(context);
}

- (void)addFilePaths:(id)paths priority:(unint64_t)priority quality:(unsigned __int16)quality
{
  pathsCopy = paths;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_891E0;
  v11[3] = &unk_2CB738;
  selfCopy = self;
  priorityCopy = priority;
  qualityCopy = quality;
  v12 = pathsCopy;
  v10 = pathsCopy;
  dispatch_async(workHighPriorityTarget, v11);
}

- (void)addCGImage:(CGImage *)image withIdentifier:(id)identifier priority:(unint64_t)priority quality:(unsigned __int16)quality
{
  identifierCopy = identifier;
  CGImageRetain(image);
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8947C;
  block[3] = &unk_2CB710;
  imageCopy = image;
  priorityCopy = priority;
  qualityCopy = quality;
  v14 = identifierCopy;
  selfCopy = self;
  v12 = identifierCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (void)cleanCache
{
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_89620;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(workHighPriorityTarget, block);
}

- (id)fetchLayerForAssetID:(id)d size:(CGSize)size options:(unsigned __int16)options
{
  optionsCopy = options;
  sizeCopy = size;
  dCopy = d;
  v13 = 0;
  v8 = ClampImageSize(&sizeCopy, 0, &v13);
  v9 = v13;
  if (v8)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E7BD8(dCopy, v9, v10);
    }
  }

  v11 = [(BCCacheManager *)self _fetchLayerForIdentifier:dCopy size:optionsCopy options:sizeCopy.width, sizeCopy.height];

  return v11;
}

- (id)_fetchLayerForIdentifier:(id)identifier size:(CGSize)size options:(unsigned __int16)options
{
  optionsCopy = options;
  width = size.width;
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  v10 = CGSizeScaleToScreen(width);
  v12 = [BICDescribedImage describedImageWithIdentifier:identifierCopy size:optionsCopy processingOptions:round(v10), round(v11)];
  [v12 setPriority:5];
  [v12 setUnknownAspectRatio:1];
  v13 = [(BCCacheManager *)self _fetchLayerForImage:v12];

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (id)_fetchLayerForImage:(id)image
{
  imageCopy = image;
  v5 = BCImageCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = imageCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BCCacheManager: Fetching a layer for request=%@", &v8, 0xCu);
  }

  [BICCacheStats logOperation:BICCacheStatsOperationVendLayer[0] forRequest:imageCopy];
  v6 = [(BCCacheManager *)self _blankLayerForDescribedImage:imageCopy];
  [(BCCacheManager *)self _fetchImage:imageCopy forRequest:imageCopy forInterest:v6];
  [(BCCacheManager *)self _fetchGenericForDescription:imageCopy forRequest:imageCopy];

  return v6;
}

- (void)fetchDescribedImageFileURLForImage:(id)image completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_899D8;
  v7[3] = &unk_2CB780;
  completionCopy = completion;
  v6 = completionCopy;
  [(BCCacheManager *)self fetchCGImageFor:image forRequest:image completion:v7];
}

- (void)_fetchImage:(id)image forRequest:(id)request forInterest:(id)interest
{
  imageCopy = image;
  requestCopy = request;
  interestCopy = interest;
  if (interestCopy)
  {
    [(BCCacheManager *)self _addInterest:interestCopy];
  }

  level1 = [(BCCacheManager *)self level1];
  v12 = [level1 imageMatchingDescription:imageCopy forRequest:requestCopy];

  image = [v12 image];

  if (image)
  {
    v14 = BCImageCacheLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "BCCacheManager: Exact match from RAM of image=%@", buf, 0xCu);
    }

    v17 = v12;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [(BCCacheManager *)self _checkInterestForDescribedImages:v15 forRequest:requestCopy];
  }

  else
  {
    [BICCacheStats incrementCounter:kBICCacheStatsCounterL1Miss[0]];
    [(BCCacheManager *)self _fetchImagesMatchingDescription:imageCopy forRequest:requestCopy];
  }

  coalescingPreloading = [(BCCacheManager *)self coalescingPreloading];
  [coalescingPreloading signalWithCompletion:&stru_2CB7A0];
}

- (void)_addInterest:(id)interest
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_89CF4;
  v8 = &unk_2C7BE8;
  selfCopy = self;
  interestCopy = interest;
  v4 = interestCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_89CF4(&v5);
  os_unfair_lock_unlock(&self->_accessLock);
  [BICCacheStats incrementCounter:kBICCacheStatsCounterLayersVended[0], v5, v6];
}

- (void)_fetchBestImagesForDescription:(id)description forRequest:(id)request
{
  descriptionCopy = description;
  requestCopy = request;
  level1 = [(BCCacheManager *)self level1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_89E28;
  v11[3] = &unk_2CB7C8;
  v11[4] = self;
  v12 = descriptionCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = descriptionCopy;
  [level1 getSortedBestMatchesOf:v10 forRequest:v9 completion:v11];
}

- (void)_fetchPrimaryImage:(id)image forRequest:(id)request
{
  imageCopy = image;
  requestCopy = request;
  [BICCacheStats logOperation:BICCacheStatsOperationBeginGenericUpgradeAttempt[0] forRequest:requestCopy];
  objc_initWeak(&location, self);
  level1 = [(BCCacheManager *)self level1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8A050;
  v10[3] = &unk_2CB840;
  objc_copyWeak(&v13, &location);
  v9 = requestCopy;
  v11 = v9;
  selfCopy = self;
  [level1 getPrimaryImageForRequest:v9 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_checkStack:(id)stack forInterestIn:(id)in
{
  inCopy = in;
  stackCopy = stack;
  objc_opt_class();
  v8 = BUDynamicCast();

  if (v8)
  {
    describedImageShown = [v8 describedImageShown];
    describedImageRequested = [v8 describedImageRequested];
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8A5C0;
    block[3] = &unk_2CB890;
    v15 = describedImageRequested;
    v16 = describedImageShown;
    v17 = inCopy;
    selfCopy = self;
    v19 = v8;
    v12 = describedImageShown;
    v13 = describedImageRequested;
    dispatch_async(workHighPriorityTarget, block);
  }
}

- (void)_performGenericUpgradeOfStackForRequest:(id)request
{
  requestCopy = request;
  v5 = BCImageCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = requestCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BCCacheManager: Attempting to upgrade a generic series stack request=%@", buf, 0xCu);
  }

  [BICCacheStats logOperation:BICCacheStatsOperationBeginGenericStackUpgradeAttempt[0] forRequest:requestCopy];
  seriesDecomposer = [(BCCacheManager *)self seriesDecomposer];
  identifier = [requestCopy identifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8AD48;
  v9[3] = &unk_2CB5A8;
  v10 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  [seriesDecomposer assetIDsAndOptionsForBooksInSeries:identifier completion:v9];
}

- (void)_checkForGenericUpgradeForInterest:(id)interest
{
  interestCopy = interest;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    describedImageShown = [v5 describedImageShown];
    describedImageRequested = [v5 describedImageRequested];
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8B044;
    block[3] = &unk_2C89F8;
    v12 = describedImageRequested;
    v13 = describedImageShown;
    selfCopy = self;
    v9 = describedImageShown;
    v10 = describedImageRequested;
    dispatch_async(workHighPriorityTarget, block);
  }
}

- (void)_checkForQualityUpgradeForInterest:(id)interest
{
  interestCopy = interest;
  describedImageShown = [interestCopy describedImageShown];
  isLowQuality = [describedImageShown isLowQuality];

  if (isLowQuality)
  {
    describedImageRequested = [interestCopy describedImageRequested];
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_8B26C;
    v10[3] = &unk_2C7BE8;
    v11 = describedImageRequested;
    selfCopy = self;
    v9 = describedImageRequested;
    dispatch_async(workHighPriorityTarget, v10);
  }
}

- (void)_fetchImagesMatchingBestDescriptions:(id)descriptions forOriginalDescription:(id)description forRequest:(id)request
{
  descriptionsCopy = descriptions;
  descriptionCopy = description;
  requestCopy = request;
  if ([descriptionsCopy count] && objc_msgSend(requestCopy, "priority") != &dword_0 + 1)
  {
    objc_initWeak(&location, self);
    v11 = [descriptionsCopy objectAtIndexedSubscript:0];
    level1 = [(BCCacheManager *)self level1];
    v13 = [level1 imageMatchingDescription:v11 forRequest:requestCopy];

    if (v13)
    {
      v23 = v13;
      v14 = [NSArray arrayWithObjects:&v23 count:1];
      [(BCCacheManager *)self _checkInterestForDescribedImages:v14 forRequest:requestCopy];
    }

    else
    {
      [BICCacheStats incrementCounter:kBICCacheStatsCounterL1Miss[0]];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_8B5EC;
      v15[3] = &unk_2CB8B8;
      objc_copyWeak(&v21, &location);
      v16 = requestCopy;
      selfCopy = self;
      v18 = descriptionCopy;
      v19 = v11;
      v20 = descriptionsCopy;
      [(BCCacheManager *)self _fetchImagesMatchingDescription:v19 withTimeout:30 forRequest:v16 completion:v15];

      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(&location);
  }

  else if (([requestCopy isAlternateGeneric] & 1) == 0)
  {
    [(BCCacheManager *)self _makeGenericForDescription:descriptionCopy forRequest:requestCopy];
  }
}

- (int64_t)_maxCostForMedium:(signed __int16)medium
{
  v3 = 0x7FFFFFFFLL;
  if (medium == 1)
  {
    v3 = 1048576000;
  }

  if (medium)
  {
    return v3;
  }

  else
  {
    return 52428800;
  }
}

- (void)_pruneIfNeeded
{
  [(BCCacheManager *)self nextRamPruneDate];
  v4 = v3;
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 <= v5)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    [(BCCacheManager *)self setNextRamPruneDate:v6 + 2.0];
    [(BCCacheManager *)self _pruneMediumIfNeeded:0];
  }

  [(BCCacheManager *)self nextDiskPruneDate];
  v8 = v7;
  +[NSDate timeIntervalSinceReferenceDate];
  if (v8 <= v9)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    [(BCCacheManager *)self setNextDiskPruneDate:v10 + 604800.0];
    v11 = +[NSUserDefaults standardUserDefaults];
    [(BCCacheManager *)self nextDiskPruneDate];
    [v11 setDouble:@"BCCacheManagerNextDiskPruneDate" forKey:?];

    [(BCCacheManager *)self _pruneMediumIfNeeded:1];
  }
}

- (void)_pruneMediumIfNeeded:(signed __int16)needed
{
  lowPriorityTarget = [(BCCacheManager *)self lowPriorityTarget];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8BB14;
  v6[3] = &unk_2CB950;
  v6[4] = self;
  neededCopy = needed;
  dispatch_async(lowPriorityTarget, v6);
}

- (void)pruneItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium
{
  identifierCopy = identifier;
  lowPriorityTarget = [(BCCacheManager *)self lowPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C010;
  block[3] = &unk_2CB9C8;
  block[4] = self;
  v10 = identifierCopy;
  mediumCopy = medium;
  v8 = identifierCopy;
  dispatch_async(lowPriorityTarget, block);
}

- (void)_pushDescribedImages:(id)images forRequest:(id)request
{
  imagesCopy = images;
  requestCopy = request;
  if ([imagesCopy count])
  {
    objc_initWeak(&location, self);
    if ([imagesCopy count] == &dword_0 + 1)
    {
      v8 = BCImageCacheLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [imagesCopy objectAtIndexedSubscript:0];
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BCCacheManager: Adding 1 image to cache: %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = BCImageCacheLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imagesCopy count]);
        v11 = [imagesCopy objectAtIndexedSubscript:0];
        *buf = 138412546;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BCCacheManager: Adding %@ images to cache, e.g. %@", buf, 0x16u);
      }
    }

    if ([imagesCopy count] != &dword_0 + 1 || (objc_msgSend(imagesCopy, "objectAtIndexedSubscript:", 0), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "image"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v12, v14))
    {
      v15 = 0;
    }

    else
    {
      [(BCCacheManager *)self _checkInterestForDescribedImages:imagesCopy forRequest:requestCopy];
      v15 = 1;
    }

    level1 = [(BCCacheManager *)self level1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_8C624;
    v19[3] = &unk_2CB9F0;
    v23 = v15;
    objc_copyWeak(&v22, &location);
    v17 = imagesCopy;
    v20 = v17;
    v21 = requestCopy;
    [level1 addDescribedImages:v17 forRequest:v21 completion:v19];

    +[BICCacheStats addToCounter:amount:](BICCacheStats, "addToCounter:amount:", kBICCacheStatsCounterImagesPushed[0], [v17 count]);
    coalescingPruning = [(BCCacheManager *)self coalescingPruning];
    [coalescingPruning signalWithCompletion:&stru_2CBA10];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)_fetchImagesMatchingDescription:(id)description forRequest:(id)request
{
  descriptionCopy = description;
  requestCopy = request;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C75C;
  block[3] = &unk_2C89F8;
  v12 = requestCopy;
  selfCopy = self;
  v14 = descriptionCopy;
  v9 = descriptionCopy;
  v10 = requestCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (void)_fetchImagesMatchingDescription:(id)description withTimeout:(int64_t)timeout forRequest:(id)request completion:(id)completion
{
  descriptionCopy = description;
  requestCopy = request;
  completionCopy = completion;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  objc_initWeak(&location, descriptionCopy);
  v13 = dispatch_time(0, 1000000000 * timeout);
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8CC80;
  block[3] = &unk_2CBA60;
  block[4] = self;
  v28 = v31;
  objc_copyWeak(&v29, &location);
  v15 = completionCopy;
  v27 = v15;
  dispatch_after(v13, workHighPriorityTarget, block);

  if (([requestCopy requestOptions] & 0x10) != 0)
  {
    v16 = [descriptionCopy copy];
    [v16 setRequestOptions:2];
    level1 = [(BCCacheManager *)self level1];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_8CDEC;
    v23[3] = &unk_2CBAB0;
    v23[4] = self;
    v25 = v31;
    v24 = v15;
    [level1 fetchImagesMatchingDescription:v16 forRequest:requestCopy completion:v23];
  }

  [BICCacheStats logOperation:BICCacheStatsOperationAsyncFetchExactAttempt[0] forRequest:requestCopy];
  level12 = [(BCCacheManager *)self level1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_8CED0;
  v20[3] = &unk_2CBAB0;
  v20[4] = self;
  v22 = v31;
  v19 = v15;
  v21 = v19;
  [level12 fetchImagesMatchingDescription:descriptionCopy forRequest:requestCopy completion:v20];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  _Block_object_dispose(v31, 8);
}

- (void)_fetchImagesMatchingDescriptionWithoutPushing:(id)pushing forRequest:(id)request
{
  pushingCopy = pushing;
  requestCopy = request;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8D08C;
  block[3] = &unk_2C89F8;
  block[4] = self;
  v12 = pushingCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = pushingCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (BOOL)_isGenericNeededForDescription:(id)description forRequest:(id)request
{
  descriptionCopy = description;
  requestCopy = request;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_86E64;
  v43 = sub_86E74;
  v44 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v35 = sub_8D50C;
  v36 = &unk_2C7AE0;
  selfCopy = self;
  v38 = &v39;
  v8 = v34;
  os_unfair_lock_lock(&self->_accessLock);
  v35(v8);
  os_unfair_lock_unlock(&self->_accessLock);

  if ([requestCopy seriesStack] && (objc_msgSend(descriptionCopy, "seriesStack") & 1) == 0)
  {
    identifier = [descriptionCopy identifier];
    v29 = 1;
  }

  else
  {
    identifier = [requestCopy identifier];
    v29 = 0;
  }

  [descriptionCopy imageSize];
  v11 = v10;
  v13 = v12;
  height = CGSizeZero.height;
  if (CGSizeZero.width == v10 && height == v13)
  {
    [requestCopy imageSize];
    v11 = v16;
    v13 = v17;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v40[5];
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v45 count:16];
  if (v19)
  {
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        identifier2 = [v22 identifier];
        if ([identifier2 isEqualToString:identifier])
        {
          [v22 imageSize];
          v26 = v13 == v25 && v11 == v24;

          if (v26)
          {

            v27 = 0;
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v30 objects:v45 count:16];
    }

    while (v19);
  }

  if (v29)
  {
    v27 = 1;
  }

  else
  {
    v27 = [(BCCacheManager *)self _isVendedInterestBlankOrOldForRequest:requestCopy];
  }

LABEL_28:

  _Block_object_dispose(&v39, 8);
  return v27;
}

- (BOOL)_isVendedInterestBlankOrOldForRequest:(id)request
{
  requestCopy = request;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_86E64;
  v37 = sub_86E74;
  v38 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v29 = sub_8D864;
  v30 = &unk_2CA7A8;
  selfCopy = self;
  v32 = &v33;
  v5 = v28;
  os_unfair_lock_lock(&self->_accessLock);
  v29(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v34[5];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v39 count:16];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *v25;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      describedImageRequested = [v10 describedImageRequested];
      identifier = [describedImageRequested identifier];
      identifier2 = [requestCopy identifier];
      v14 = [identifier isEqualToString:identifier2];

      if (v14)
      {
        describedImageShown = [v10 describedImageShown];
        if ([describedImageShown quality] == 3 || objc_msgSend(v10, "needsNewVersion"))
        {
          v16 = ([describedImageShown processingOptions] >> 9) & 1;
          if (!describedImageShown)
          {
            goto LABEL_13;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
          if (!describedImageShown)
          {
            goto LABEL_13;
          }
        }

        if (!(([describedImageShown quality] == 1) | v16 & 1))
        {
LABEL_15:

          goto LABEL_16;
        }

LABEL_13:
        [requestCopy imageSize];
        v18 = v17;
        v20 = v19;
        [describedImageRequested imageSize];
        if (v18 == v22 && v20 == v21)
        {

          LOBYTE(v7) = 1;
          goto LABEL_20;
        }

        goto LABEL_15;
      }

LABEL_16:
    }

    v7 = [v6 countByEnumeratingWithState:&v24 objects:v39 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_20:

  _Block_object_dispose(&v33, 8);
  return v7;
}

- (void)_fetchGenericForDescription:(id)description forRequest:(id)request
{
  requestCopy = request;
  v6 = [requestCopy copy];
  [v6 setProcessingOptions:{objc_msgSend(v6, "processingOptions") | 0x200}];
  [v6 setRequestOptions:{objc_msgSend(v6, "requestOptions") | 8}];
  [requestCopy setAlternateRequest:v6];

  [(BCCacheManager *)self _fetchImagesMatchingDescription:v6 forRequest:v6];
}

- (void)_makeGenericForDescription:(id)description forRequest:(id)request
{
  descriptionCopy = description;
  requestCopy = request;
  v8 = BCImageCacheLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = descriptionCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BCCacheManager: Asked to make generic for image=%@", buf, 0xCu);
  }

  if ([(BCCacheManager *)self _isGenericNeededForDescription:descriptionCopy forRequest:requestCopy])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_8DD20;
    v25[3] = &unk_2C89F8;
    v9 = requestCopy;
    v26 = v9;
    v10 = descriptionCopy;
    v27 = v10;
    selfCopy = self;
    os_unfair_lock_lock(&self->_accessLock);
    sub_8DD20(v25);
    os_unfair_lock_unlock(&self->_accessLock);
    v11 = BCImageCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BCCacheManager: Making generic for image=%@", buf, 0xCu);
    }

    [BICCacheStats logOperation:BICCacheStatsOperationMakingGenericQueueStart[0] forRequest:v9];
    [v10 imageSize];
    v14 = v13;
    v15 = v12;
    height = CGSizeZero.height;
    if (CGSizeZero.width == v13 && height == v12)
    {
      [v9 imageSize];
      v14 = v17;
      v15 = v18;
    }

    if (CGSizeZero.width == v14 && height == v15)
    {
      v19 = BCImageCacheLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "BCCacheManager: _makeGenericForDescription: invalid image size", buf, 2u);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      kdebug_trace();
      highPriorityWorkQueue = [(BCCacheManager *)self highPriorityWorkQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_8DDA0;
      v21[3] = &unk_2CBB60;
      objc_copyWeak(v24, buf);
      v22 = v9;
      v23 = v10;
      v24[1] = *&v14;
      v24[2] = *&v15;
      [highPriorityWorkQueue addWorkItemWithPriority:v22 description:@"CacheManager make generic" block:v21];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [BICCacheStats incrementCounter:kBICCacheStatsCounterGenericsNotCreated[0]];
  }
}

- (void)explicitContentRestrictedChanged
{
  v3 = BCImageCacheLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BCCacheManager: Explicit content restrictions changed", buf, 2u);
  }

  delegate = [(BCCacheManager *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_8EB38;
  v11[3] = &unk_2CBB88;
  v11[4] = self;
  [delegate cacheManager:self explicitIdentifiersWithCompletion:v11];

  v5 = +[BURestrictionsProvider sharedInstance];
  isExplicitContentAllowed = [v5 isExplicitContentAllowed];

  cacheMetaData = [(BCCacheManager *)self cacheMetaData];
  v8 = [cacheMetaData mutableCopy];

  v9 = [NSNumber numberWithBool:isExplicitContentAllowed];
  [v8 setObject:v9 forKeyedSubscript:@"BCCacheAllowRestrictedContent"];

  [BCCacheManager writeCacheMetaData:v8];
  v10 = [v8 copy];
  [(BCCacheManager *)self setCacheMetaData:v10];
}

- (void)incrementVersionForIdentifiers:(id)identifiers
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_8EC10;
  v9 = &unk_2C7BE8;
  selfCopy = self;
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_8EC10(&v6);
  os_unfair_lock_unlock(&self->_accessLock);
  v5 = [(BCCacheManager *)self coalescingVersionBump:v6];
  [v5 signalWithCompletion:&stru_2CBBA8];
}

- (void)incrementVersionForIdentifier:(id)identifier
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_8ED34;
  v9 = &unk_2C7BE8;
  selfCopy = self;
  identifierCopy = identifier;
  v4 = identifierCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_8ED34(&v6);
  os_unfair_lock_unlock(&self->_accessLock);
  v5 = [(BCCacheManager *)self coalescingVersionBump:v6];
  [v5 signalWithCompletion:&stru_2CBBC8];
}

- (void)_incrementVersionForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8EE40;
  v7[3] = &unk_2C7BE8;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(workHighPriorityTarget, v7);
}

- (void)_updateVendedImageInterest:(id)interest withDescribedImage:(id)image forRequest:(id)request
{
  requestCopy = request;
  [interest setDescribedImage:image];
  alternateRequest = [requestCopy alternateRequest];
  [alternateRequest setPriority:1];

  [BICCacheStats logOperation:BICCacheStatsOperationCancelled[0] forRequest:requestCopy];
}

- (void)_checkInterestForDescribedImages:(id)images forRequest:(id)request
{
  imagesCopy = images;
  requestCopy = request;
  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8F0BC;
  block[3] = &unk_2C89F8;
  v12 = imagesCopy;
  selfCopy = self;
  v14 = requestCopy;
  v9 = requestCopy;
  v10 = imagesCopy;
  dispatch_async(workHighPriorityTarget, block);
}

- (void)_performOperation:(id)operation
{
  operationCopy = operation;
  operationKind = [operationCopy operationKind];
  if (operationKind <= 2)
  {
    if (operationKind)
    {
      if (operationKind != 1)
      {
        if (operationKind != 2)
        {
          goto LABEL_17;
        }

        vendedImageInterest = [operationCopy vendedImageInterest];
        [(BCCacheManager *)self _checkForQualityUpgradeForInterest:vendedImageInterest];
        goto LABEL_16;
      }

      vendedImageInterest = [operationCopy vendedImageInterest];
      subject = [operationCopy subject];
      request = [operationCopy request];
      [(BCCacheManager *)self _updateVendedImageInterest:vendedImageInterest withDescribedImage:subject forRequest:request];
    }

    else
    {
      vendedImageInterest = [operationCopy subject];
      subject = [operationCopy result];
      request = [operationCopy request];
      [(BCCacheManager *)self _transformSourceDescribedImage:vendedImageInterest into:subject forRequest:request];
    }

    goto LABEL_15;
  }

  if (operationKind != 3)
  {
    if (operationKind == 4)
    {
      vendedImageInterest = [operationCopy subject];
      subject = [operationCopy request];
      [(BCCacheManager *)self _fetchImagesMatchingDescription:vendedImageInterest forRequest:subject];
    }

    else
    {
      if (operationKind != 5)
      {
        goto LABEL_17;
      }

      vendedImageInterest = [operationCopy subject];
      subject = [operationCopy request];
      [(BCCacheManager *)self _fetchImagesMatchingDescriptionWithoutPushing:vendedImageInterest forRequest:subject];
    }

LABEL_15:

    goto LABEL_16;
  }

  vendedImageInterest = [operationCopy vendedImageInterest];
  [(BCCacheManager *)self _checkForGenericUpgradeForInterest:vendedImageInterest];
LABEL_16:

LABEL_17:
}

- (id)_findInterestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_86E64;
  v29 = sub_86E74;
  v30 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v21 = sub_8FBEC;
  v22 = &unk_2CA7A8;
  selfCopy = self;
  v24 = &v25;
  v5 = v20;
  os_unfair_lock_lock(&self->_accessLock);
  v21(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v26[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v31 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        describedImageRequested = [v11 describedImageRequested];
        identifier = [describedImageRequested identifier];
        v14 = [identifier isEqualToString:identifierCopy];

        if (v14)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v31 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v25, 8);

  return v6;
}

- (void)_transformSourceDescribedImage:(id)image into:(id)into forRequest:(id)request
{
  requestCopy = request;
  intoCopy = into;
  imageCopy = image;
  transformController = [(BCCacheManager *)self transformController];
  [transformController transformSource:imageCopy to:intoCopy forRequest:requestCopy];
}

- (id)_blankLayerForDescribedImage:(id)image
{
  imageCopy = image;
  v5 = [[BCCacheVendedLayer alloc] initWithDebugLayout:[(BCCacheManager *)self debugLayout]];
  [(BCCacheVendedLayer *)v5 setDescribedImageRequested:imageCopy];
  v6 = [(BCCacheManager *)self _blankCoverForDescribedImage:imageCopy];

  [(BCCacheVendedLayer *)v5 setDescribedImage:v6];

  return v5;
}

- (id)_blankCoverForDescribedImage:(id)image
{
  imageCopy = image;
  processingOptions = [imageCopy processingOptions];
  processingOptions2 = [imageCopy processingOptions];
  processingOptions3 = [imageCopy processingOptions];
  processingOptions4 = [imageCopy processingOptions];
  [imageCopy imageSize];
  v10 = v9;
  [imageCopy imageSize];
  v12 = @"Night";
  v13 = processingOptions & 0x40;
  if ((processingOptions & 0x40) == 0)
  {
    v12 = @"Day";
  }

  v14 = @"audiobookStack";
  if ((processingOptions3 & 0x800) == 0)
  {
    v14 = @"stack";
  }

  v15 = @"audio";
  if ((processingOptions4 & 8) == 0)
  {
    v15 = @"book";
  }

  v16 = processingOptions2 & 0x20;
  if ((processingOptions2 & 0x20) == 0)
  {
    v14 = v15;
  }

  [NSString stringWithFormat:@"%.0f x %.0f %@ %@", v10, v11, v12, v14];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_86E64;
  v59 = sub_86E74;
  v60 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v50 = sub_903CC;
  v51 = &unk_2C7BC0;
  v54 = &v55;
  v17 = v52 = self;
  v53 = v17;
  v18 = v49;
  os_unfair_lock_lock(&self->_accessLock);
  v50(v18);
  os_unfair_lock_unlock(&self->_accessLock);

  v19 = v56[5];
  if (v19)
  {
    v20 = [v19 copy];
    v21 = v56[5];
    v56[5] = v20;

    identifier = [imageCopy identifier];
    [v56[5] setIdentifier:identifier];
LABEL_11:

    goto LABEL_12;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    [imageCopy imageSize];
    v27 = v26;
    v28 = v16 == 0;
    if ((processingOptions3 & 0x800) == 0)
    {
      v28 = 1;
    }

    v29 = v26;
    if ((processingOptions4 & 8) == 0)
    {
      v29 = v26;
      if (v28)
      {
        [imageCopy imageSize];
        v29 = v30;
      }
    }

    v31 = CGBitmapContextCreate(0, v27, v29, 8uLL, vcvtd_n_u64_f64(v27, 2uLL), DeviceRGB, 1u);
    CGColorSpaceRelease(DeviceRGB);
    if (v31)
    {
      v32 = 0.0;
      v33 = v27;
      v34 = v29;
      if (v16)
      {
        v35 = [UIColor colorWithRed:243.0 / dbl_2A3CD0[v13 == 0] green:243.0 / dbl_2A3CD0[v13 == 0] blue:248.0 / dbl_2A3CD0[v13 == 0] alpha:1.0];
        CGContextSetFillColorWithColor(v31, [v35 CGColor]);

        CGContextSaveGState(v31);
        v33 = v27 * 0.85;
        v34 = v29 * 0.85;
        v36 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:v29 - v29 * 0.85, v27 * 0.85, v29 * 0.85, 3.0];
        CGContextAddPath(v31, [v36 CGPath]);
        CGContextFillPath(v31);
        CGContextRestoreGState(v31);
        v32 = v27 - v27 * 0.85;
      }

      v37 = 255.0;
      if (v13)
      {
        v37 = 512.0;
      }

      v38 = [UIColor colorWithRed:243.0 / v37 green:243.0 / v37 blue:248.0 / v37 alpha:1.0];
      CGContextSetFillColorWithColor(v31, [v38 CGColor]);

      CGContextSaveGState(v31);
      identifier = [UIBezierPath bezierPathWithRoundedRect:v32 cornerRadius:0.0, v33, v34, 3.0];
      CGContextAddPath(v31, [identifier CGPath]);
      CGContextFillPath(v31);
      CGContextRestoreGState(v31);
      Image = CGBitmapContextCreateImage(v31);
      CGContextRelease(v31);
      if (Image)
      {
        v40 = [imageCopy copy];
        [v40 setProcessingOptions:(v16 | v13)];
        v41 = [BICImage imageWithCGImage:Image];
        [v40 setImage:v41];

        [v40 setQuality:1];
        CGImageRelease(Image);
        objc_storeStrong(v56 + 5, v40);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v44 = sub_90438;
        v45 = &unk_2C8838;
        selfCopy = self;
        v47 = v17;
        v48 = &v55;
        v42 = v43;
        os_unfair_lock_lock(&self->_accessLock);
        v44(v42);
        os_unfair_lock_unlock(&self->_accessLock);
      }

      else
      {
        v40 = BCImageCacheLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1E7E3C();
        }
      }
    }

    else
    {
      identifier = BCImageCacheLog();
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
      {
        sub_1E7EBC();
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  [BICCacheStats logDescribedImage:v56[5] withComment:@"BlankCover"];
  v23 = v56[5];

  _Block_object_dispose(&v55, 8);

  return v23;
}

- (void)fetchCoverURLsFor:(id)for immediately:(BOOL)immediately completion:(id)completion
{
  immediatelyCopy = immediately;
  completionCopy = completion;
  forCopy = for;
  profileFetcher = [(BCCacheManager *)self profileFetcher];
  [profileFetcher fetchCoverURLsFor:forCopy immediately:immediatelyCopy completion:completionCopy];
}

+ (id)processURLTemplate:(id)template forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  templateCopy = template;
  if ([templateCopy containsString:@"{w}"] && objc_msgSend(templateCopy, "containsString:", @"{h}"))
  {
    v7 = [templateCopy mutableCopy];
    v8 = [NSNumber numberWithInteger:llround(width)];
    stringValue = [v8 stringValue];
    [v7 replaceOccurrencesOfString:@"{w}" withString:stringValue options:2 range:{0, objc_msgSend(v7, "length")}];

    v10 = [NSNumber numberWithInteger:llround(height)];
    stringValue2 = [v10 stringValue];
    [v7 replaceOccurrencesOfString:@"{h}" withString:stringValue2 options:2 range:{0, objc_msgSend(v7, "length")}];

    [v7 replaceOccurrencesOfString:@"{c}" withString:&stru_2D2930 options:2 range:{0, objc_msgSend(v7, "length")}];
    [v7 replaceOccurrencesOfString:@"{f}" withString:@"jpg" options:2 range:{0, objc_msgSend(v7, "length")}];

    templateCopy = v7;
  }

  return templateCopy;
}

- (id)_extractImagesFromTemplate:(id)template identifier:(id)identifier initialSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  templateCopy = template;
  identifierCopy = identifier;
  v10 = +[NSMutableArray array];
  v11 = 4;
  do
  {
    if (width <= 4096.0 && height <= 4096.0)
    {
      height = [BICDescribedImage describedImageWithIdentifier:identifierCopy size:0 processingOptions:width, height];
      height2 = [BCCacheManager processURLTemplate:templateCopy forSize:width, height];
      [height setUrlString:height2];

      v15 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
      [height setExpiry:v15];

      [height setQuality:203];
      [v10 addObject:height];
    }

    width = floor(width * 0.5);
    height = floor(height * 0.5);
    --v11;
  }

  while (v11);

  return v10;
}

- (id)describedImagesFromProductProfile:(id)profile
{
  profileCopy = profile;
  v5 = +[NSMutableArray array];
  v6 = [profileCopy url];

  if (v6)
  {
    width = [profileCopy width];
    height = [profileCopy height];
    height = CGSizeZero.height;
    if (CGSizeZero.width == width && height == height)
    {
      v14 = [profileCopy url];
      lastPathComponent = [v14 lastPathComponent];

      identifier2 = [lastPathComponent componentsSeparatedByString:@"x"];
      if ([identifier2 count] == &dword_0 + 2)
      {
        v16 = [identifier2 objectAtIndexedSubscript:0];
        integerValue = [v16 integerValue];

        v18 = [identifier2 objectAtIndexedSubscript:1];
        integerValue2 = [v18 integerValue];

        v15 = integerValue;
        if (integerValue > 0 && integerValue2 > 0)
        {
          height = integerValue2;
          width = integerValue;
        }
      }

      identifier = [profileCopy identifier];
      v13 = [BICDescribedImage describedImageWithIdentifier:identifier size:0 processingOptions:width, height];

      v21 = [profileCopy url];
      [v13 setUrlString:v21];

      v22 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
      [v13 setExpiry:v22];

      [v13 setQuality:203];
      [v5 addObject:v13];
    }

    else
    {
      lastPathComponent = [profileCopy url];
      identifier2 = [profileCopy identifier];
      [(BCCacheManager *)self _extractImagesFromTemplate:lastPathComponent identifier:identifier2 initialSize:width, height];
      v5 = v13 = v5;
    }
  }

  return v5;
}

- (void)fetchCoverForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  protocolHandler = [(BCCacheManager *)self protocolHandler];
  [protocolHandler fetchCoverForURL:lCopy completion:completionCopy];
}

- (BOOL)canFetchCoverForURL:(id)l
{
  lCopy = l;
  protocolHandler = [(BCCacheManager *)self protocolHandler];
  v6 = [protocolHandler canFetchCoverForURL:lCopy];

  return v6;
}

- (void)transformResultSrc:(id)src result:(id)result forRequest:(id)request
{
  resultCopy = result;
  requestCopy = request;
  resultCopy2 = result;
  v9 = [NSArray arrayWithObjects:&resultCopy count:1];

  [(BCCacheManager *)self _pushDescribedImages:v9 forRequest:requestCopy, resultCopy];
}

- (void)stackRenderingResultSrc:(id)src result:(id)result forRequest:(id)request
{
  if (result)
  {
    resultCopy = result;
    requestCopy = request;
    resultCopy2 = result;
    v9 = [NSArray arrayWithObjects:&resultCopy count:1];

    [(BCCacheManager *)self _pushDescribedImages:v9 forRequest:requestCopy, resultCopy];
  }
}

- (void)fetchCGImageFor:(id)for forRequest:(id)request timeOut:(double)out waitForNonGeneric:(BOOL)generic completion:(id)completion
{
  forCopy = for;
  requestCopy = request;
  completionCopy = completion;
  v15 = BCImageCacheLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = forCopy;
    *&buf[12] = 2112;
    *&buf[14] = requestCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "BCCacheManager: Fetching image=%@ for request=%@", buf, 0x16u);
  }

  [BICCacheStats incrementCounter:kBICCacheStatsCounterCGImagesVended[0]];
  [forCopy setUnknownAspectRatio:1];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_910A8;
  v36[3] = &unk_2C7BE8;
  v36[4] = self;
  v16 = objc_alloc_init(BCCacheCallbackInterest);
  v37 = v16;
  os_unfair_lock_lock(&self->_accessLock);
  sub_910A8(v36);
  os_unfair_lock_unlock(&self->_accessLock);
  [(BCCacheCallbackInterest *)v16 setDescribedImageRequested:forCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v16);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = sub_86E64;
  v40 = sub_86E74;
  v41 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_910FC;
  v26[3] = &unk_2CBC30;
  objc_copyWeak(&v31, &location);
  objc_copyWeak(&v32, &from);
  v17 = !generic;
  v18 = requestCopy;
  v33 = v17;
  v30 = buf;
  v27 = v18;
  selfCopy = self;
  v19 = completionCopy;
  v29 = v19;
  [(BCCacheCallbackInterest *)v16 setHandler:v26];
  [(BCCacheManager *)self _fetchImage:forCopy forRequest:v18 forInterest:v16];
  if (out > 0.0)
  {
    v20 = dispatch_time(0, (out * 1000000000.0));
    workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_91664;
    v22[3] = &unk_2C89F8;
    v23 = v16;
    selfCopy2 = self;
    v25 = v18;
    dispatch_after(v20, workHighPriorityTarget, v22);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)imageSetPersisting:(id)persisting newVersionForImageSetIdentifierss:(id)identifierss
{
  identifierssCopy = identifierss;
  v6 = BCImageCacheLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = identifierssCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BCCacheManager: New version for assetID=%@", buf, 0xCu);
  }

  workHighPriorityTarget = [(BCCacheManager *)self workHighPriorityTarget];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9180C;
  v9[3] = &unk_2C7BE8;
  v10 = identifierssCopy;
  selfCopy = self;
  v8 = identifierssCopy;
  dispatch_async(workHighPriorityTarget, v9);
}

- (void)_refetchInterestsForNewVersion:(id)version
{
  v4 = [(BCCacheManager *)self _findInterestForIdentifier:version];
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          describedImageRequested = [v10 describedImageRequested];
          [BICCacheStats logOperation:BICCacheStatsOperationNeedNewVersion[0] forRequest:describedImageRequested];
          [v10 setNeedsNewVersion:1];
          [(BCCacheManager *)self _fetchImagesMatchingDescription:describedImageRequested forRequest:describedImageRequested];
          v12 = BCImageCacheLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = describedImageRequested;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCCacheManager: Refetching New version for request=%@", buf, 0xCu);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (id)metadataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageSetPersistence = [(BCCacheManager *)self imageSetPersistence];
  v6 = [imageSetPersistence metadataForIdentifier:identifierCopy];

  return v6;
}

- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  imageSetPersistence = [(BCCacheManager *)self imageSetPersistence];
  [imageSetPersistence fetchMetadataForIdentifier:identifierCopy completion:completionCopy];
}

- (void)imageColorForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  imageSetPersistence = [(BCCacheManager *)self imageSetPersistence];
  [imageSetPersistence imageColorForIdentifier:identifierCopy completion:completionCopy];
}

- (void)setImageColor:(id)color forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  colorCopy = color;
  imageSetPersistence = [(BCCacheManager *)self imageSetPersistence];
  [imageSetPersistence setImageColor:colorCopy forIdentifier:identifierCopy];
}

- (BCCacheManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end