@interface AEUserPublishing
+ (id)sharedInstance;
- (AEUserPublishing)init;
- (BOOL)hasRecentlyTriedToFetchShortStoreURLFromNetwork;
- (BOOL)hasRecentlyTriedToFetchStoreURLFromNetwork;
- (BOOL)p_isConnectedToInternet;
- (BOOL)p_isDownloadEnabledForStoreId:(id)id dataSource:(id)source;
- (BOOL)p_isLocalGenerationEnabledForStoreId:(id)id dataSource:(id)source;
- (id)bookInfoHTMLForStoreId:(id)id dataSource:(id)source;
- (id)p_assetAuthorForStoreId:(id)id dataSource:(id)source;
- (id)p_assetCategoryForStoreId:(id)id dataSource:(id)source;
- (id)p_assetTitleForStoreId:(id)id dataSource:(id)source;
- (id)p_downloadEmailContentForStoreId:(id)id dataSource:(id)source overrideClientVersion:(id)version;
- (id)p_downloadedStoreUrlForStoreId:(id)id keyProfile:(id)profile path:(id)path dataSource:(id)source;
- (id)p_generatedEmailBodyForStoreId:(id)id dataSource:(id)source;
- (id)p_storeShortURLForStoreId:(id)id dataSource:(id)source;
- (id)p_storeURLForStoreId:(id)id dataSource:(id)source;
- (id)storeShortURLForStoreId:(id)id dataSource:(id)source;
- (id)storeURLForStoreId:(id)id dataSource:(id)source;
- (id)wholeHTMLForStoreId:(id)id dataSource:(id)source;
- (void)profilesForStoreIDs:(id)ds keyProfile:(id)profile completion:(id)completion;
@end

@implementation AEUserPublishing

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16D5C4;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_346030 != -1)
  {
    dispatch_once(&qword_346030, block);
  }

  v2 = qword_346028;

  return v2;
}

- (AEUserPublishing)init
{
  v9.receiver = self;
  v9.super_class = AEUserPublishing;
  v2 = [(AEUserPublishing *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.iBooks.AEUserPublishing.workQueue", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v2->_timeoutInterval = 2.0;
  }

  return v2;
}

- (id)bookInfoHTMLForStoreId:(id)id dataSource:(id)source
{
  if (source)
  {
    v5 = [(AEUserPublishing *)self p_generatedEmailBodyForStoreId:id dataSource:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wholeHTMLForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if ([idCopy longLongValue])
  {
    v8 = [objc_opt_class() p_keyForPrefix:@"kWholeHTMLPrefix~" storeId:idCopy];
    cache = [(AEUserPublishing *)self cache];
    v10 = [cache objectForKey:v8];

    if (!v10)
    {
      if ([(AEUserPublishing *)self p_isConnectedToInternet])
      {
        0x4014000000000000 = [NSString stringWithFormat:@"%.1f", 0x4014000000000000];
        v10 = [(AEUserPublishing *)self p_downloadEmailContentForStoreId:idCopy dataSource:sourceCopy overrideClientVersion:0x4014000000000000];
        if ([v10 length])
        {
          cache2 = [(AEUserPublishing *)self cache];
          [cache2 setObject:v10 forKey:v8];
        }

        else
        {
          cache2 = v10;
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)storeURLForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if ([idCopy longLongValue])
  {
    v8 = [objc_opt_class() p_keyForPrefix:@"kStoreURLPrefix~" storeId:idCopy];
    cache = [(AEUserPublishing *)self cache];
    v10 = [cache objectForKey:v8];

    if (!v10)
    {
      if ([(AEUserPublishing *)self p_isConnectedToInternet]&& ![(AEUserPublishing *)self hasRecentlyTriedToFetchStoreURLFromNetwork]&& (+[NSDate now], v11 = objc_claimAutoreleasedReturnValue(), lastFetchStoreURLDate = self->lastFetchStoreURLDate, self->lastFetchStoreURLDate = v11, lastFetchStoreURLDate, [(AEUserPublishing *)self p_downloadedStoreUrlForStoreId:idCopy keyProfile:@"kAEUserPublishingLookProfileURL" path:@"url" dataSource:sourceCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v10 = v13;
        cache2 = [(AEUserPublishing *)self cache];
        [cache2 setObject:v10 forKey:v8];
      }

      else
      {
        v10 = [(AEUserPublishing *)self p_storeURLForStoreId:idCopy dataSource:sourceCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasRecentlyTriedToFetchStoreURLFromNetwork
{
  if (!self->lastFetchStoreURLDate)
  {
    return 0;
  }

  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->lastFetchStoreURLDate];
  v5 = v4;

  return v5 < 30.0;
}

- (id)storeShortURLForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if ([idCopy longLongValue])
  {
    v8 = [objc_opt_class() p_keyForPrefix:@"kStoreShortURLPrefix~" storeId:idCopy];
    cache = [(AEUserPublishing *)self cache];
    v10 = [cache objectForKey:v8];

    if (!v10)
    {
      if ([(AEUserPublishing *)self p_isConnectedToInternet]&& ![(AEUserPublishing *)self hasRecentlyTriedToFetchShortStoreURLFromNetwork]&& (+[NSDate now], v11 = objc_claimAutoreleasedReturnValue(), lastFetchShortStoreURLDate = self->lastFetchShortStoreURLDate, self->lastFetchShortStoreURLDate = v11, lastFetchShortStoreURLDate, [(AEUserPublishing *)self p_downloadedStoreUrlForStoreId:idCopy keyProfile:@"kAEUserPublishingLookProfileURL" path:@"shortUrl" dataSource:sourceCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v10 = v13;
        cache2 = [(AEUserPublishing *)self cache];
        [cache2 setObject:v10 forKey:v8];
      }

      else
      {
        v10 = [(AEUserPublishing *)self p_storeShortURLForStoreId:idCopy dataSource:sourceCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasRecentlyTriedToFetchShortStoreURLFromNetwork
{
  if (!self->lastFetchShortStoreURLDate)
  {
    return 0;
  }

  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->lastFetchShortStoreURLDate];
  v5 = v4;

  return v5 < 30.0;
}

- (void)profilesForStoreIDs:(id)ds keyProfile:(id)profile completion:(id)completion
{
  dsCopy = ds;
  profileCopy = profile;
  completionCopy = completion;
  v11 = NSClassFromString(@"AEUserPublishingLookUpRequest");
  if ([(objc_class *)v11 isEnabled])
  {
    if ([dsCopy count])
    {
      workQueue = [(AEUserPublishing *)self workQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_16DD78;
      v14[3] = &unk_2CEBD8;
      v15 = dsCopy;
      v18 = v11;
      v16 = profileCopy;
      v17 = completionCopy;
      dispatch_async(workQueue, v14);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }

  else
  {
    v13 = [NSError errorWithDomain:@"AEUserPublishingErrorDomain" code:-1000 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }
}

- (BOOL)p_isConnectedToInternet
{
  v2 = +[BKReachability sharedReachabilityForInternetConnection];
  if ([v2 currentReachabilityStatus])
  {
    v3 = [v2 connectionRequired] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)p_downloadEmailContentForStoreId:(id)id dataSource:(id)source overrideClientVersion:(id)version
{
  idCopy = id;
  sourceCopy = source;
  versionCopy = version;
  v11 = [(AEUserPublishing *)self p_downloadedStoreUrlForStoreId:idCopy keyProfile:@"kAEUserPublishingLookProfileProduct" path:@"tellAFriendMessageContentsUrl" dataSource:0];
  if (!v11)
  {
    v12 = [sourceCopy userPublishing:self tellAFriendEmailBaseURLForStoreId:idCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [NSURL URLWithString:@"https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/tellAFriendEmailBody?displayable-kind=25"];
    }

    v15 = v14;

    absoluteString = [v15 absoluteString];
    idCopy = [NSString stringWithFormat:@"%@&id=%@", absoluteString, idCopy];

    v11 = [NSURL URLWithString:idCopy];
  }

  v18 = [NSMutableURLRequest requestWithURL:v11];
  [(AEUserPublishing *)self timeoutInterval];
  [v18 setTimeoutInterval:?];
  v19 = [BCUserAgent clientUserAgentWithOverrideVersion:versionCopy];
  [v18 setValue:v19 forHTTPHeaderField:@"User-Agent"];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_16E114;
  v47 = sub_16E124;
  v48 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_16E114;
  v41[4] = sub_16E124;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_16E114;
  v39 = sub_16E124;
  v40 = 0;
  v20 = dispatch_semaphore_create(0);
  v21 = +[NSURLSession sharedSession];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_16EACC;
  v30[3] = &unk_2CEC00;
  v32 = &v35;
  v33 = v41;
  v34 = &v43;
  v22 = v20;
  v31 = v22;
  v23 = [v21 dataTaskWithRequest:v18 completionHandler:v30];
  [v23 resume];
  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  if (v36[5] && (v24 = v44[5]) != 0 && [v24 statusCode] == stru_B8.segname)
  {
    v25 = [NSString alloc];
    v26 = [v25 initWithData:v36[5] encoding:4];
    v27 = [v26 rangeOfString:@"<html"];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [v26 substringFromIndex:v27];

      v26 = v28;
    }
  }

  else
  {
    v26 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);

  return v26;
}

- (id)p_generatedEmailBodyForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if ([(AEUserPublishing *)self p_isLocalGenerationEnabledForStoreId:idCopy dataSource:sourceCopy])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:@"AEAssetInfo.html" ofType:@"tmpl"];

    if (v9)
    {
      v27 = 0;
      v10 = [NSMutableString stringWithContentsOfFile:v9 encoding:4 error:&v27];
      if (v10)
      {
        v11 = [(AEUserPublishing *)self p_assetAuthorForStoreId:idCopy dataSource:sourceCopy];
        v12 = [(AEUserPublishing *)self p_assetTitleForStoreId:idCopy dataSource:sourceCopy];
        v26 = [(AEUserPublishing *)self p_storeURLForStoreId:idCopy dataSource:sourceCopy];
        v13 = [(AEUserPublishing *)self p_assetCategoryForStoreId:idCopy dataSource:sourceCopy];
        v14 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
        if ([v11 length])
        {
          v15 = IMCommonCoreBundle();
          v16 = [v15 localizedStringForKey:@"by %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
          v17 = [NSString stringWithFormat:v16, v11];

          v14 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
          [v10 replaceOccurrencesOfString:@"<!-- %%AUTHOR%% -->" withString:v17 options:0 range:{0, objc_msgSend(v10, "length")}];
        }

        if ([v12 length])
        {
          v18 = v12;
          if (v26)
          {
            absoluteString = [v26 absoluteString];
            v20 = [NSString stringWithFormat:@"<a href=%@>%@</a>", absoluteString, v18];

            v18 = v20;
            v14 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
          }

          [v10 replaceOccurrencesOfString:@"<!-- %%TITLE%% -->" withString:v18 options:0 range:{0, objc_msgSend(v10, "length")}];
        }

        if ([v13 length])
        {
          v21 = IMCommonCoreBundle();
          v22 = [v21 localizedStringForKey:@"Category: %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
          v23 = [NSString stringWithFormat:v22, v13];

          [v10 replaceOccurrencesOfString:@"<!-- %%CATEGORY%% -->" withString:v23 options:0 range:{0, objc_msgSend(v10, "length")}];
          v14 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
        }

        else
        {
          [v10 replaceOccurrencesOfString:@"<!-- %%CATEGORY%% -->" withString:&stru_2D2930 options:0 range:{0, objc_msgSend(v10, "length")}];
        }

        v24 = [v14[120] stringWithString:v10];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)p_downloadedStoreUrlForStoreId:(id)id keyProfile:(id)profile path:(id)path dataSource:(id)source
{
  idCopy = id;
  profileCopy = profile;
  pathCopy = path;
  if ([(AEUserPublishing *)self p_isDownloadEnabledForStoreId:idCopy dataSource:source]&& (v13 = NSClassFromString(@"AEUserPublishingLookUpRequest"), [(objc_class *)v13 isEnabled]))
  {
    v14 = [v13 alloc];
    v32 = idCopy;
    v15 = [NSArray arrayWithObjects:&v32 count:1];
    v16 = [v14 initWithAdamIDs:v15 keyProfile:profileCopy];

    [(AEUserPublishing *)self timeoutInterval];
    v25 = 0;
    v17 = [v16 resultWithTimeout:&v25 Error:?];
    v18 = v25;
    if (v18)
    {
      v19 = BCIMLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v27 = "[AEUserPublishing p_downloadedStoreUrlForStoreId:keyProfile:path:dataSource:]";
        v28 = 2080;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Sharing/Annotations/Private/AEUserPublishing.m";
        v30 = 1024;
        v31 = 484;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v20 = BCIMLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "@Failed to get storeURL -- Error {%@}", buf, 0xCu);
      }

      v21 = 0;
    }

    else
    {
      v20 = [objc_opt_class() resultsDictionaryFromLookupResult:v17];
      v22 = [v20 objectForKey:idCopy];
      v23 = [v22 objectForKey:pathCopy];
      if ([v23 length])
      {
        v21 = [[NSURL alloc] initWithString:v23];
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)p_isDownloadEnabledForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self isDownloadEnabledForStoreId:idCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)p_isLocalGenerationEnabledForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self isLocalGenerationEnabledForStoreId:idCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)p_assetAuthorForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self assetAuthorForStoreId:idCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_assetTitleForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self assetTitleForStoreId:idCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_assetCategoryForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self assetCategoryForStoreId:idCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_storeURLForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self storeURLForStoreId:idCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_storeShortURLForStoreId:(id)id dataSource:(id)source
{
  idCopy = id;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [sourceCopy userPublishing:self storeShortURLForStoreId:idCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end