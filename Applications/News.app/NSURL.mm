@interface NSURL
+ (BOOL)fr_canHandleNavigationAction:(id)action;
+ (id)_urlForTagID:(id)d internal:(BOOL)internal;
+ (id)fr_NewsURLForNotificationsWithTagID:(id)d;
+ (id)fr_NewsURLForTagID:(id)d title:(id)title;
+ (id)fr_createArticleLinkWithArticleID:(id)d url:(id)url;
+ (id)fr_sanitizedURLForWebView:(id)view navigationAction:(id)action;
- (BOOL)_caseInsensitiveCompareWithFirstPathComponent:(id)component;
- (BOOL)fr_handleExternalURLWithPrompt;
- (BOOL)fr_isBundleSubcriptionURL;
- (BOOL)fr_isFeldsparFavoritesPickerURL;
- (BOOL)fr_isFeldsparFollowingURL;
- (BOOL)fr_isFeldsparForYouURL;
- (BOOL)fr_isFeldsparHistoryURL;
- (BOOL)fr_isFeldsparOpenInNewsErrorURL;
- (BOOL)fr_isFeldsparReferableURL;
- (BOOL)fr_isFeldsparSavedURL;
- (BOOL)fr_isFeldsparSpotlightURL;
- (BOOL)fr_isFeldsparTabURL;
- (BOOL)fr_isFromSafariSearchWithSourceApplication:(id)application;
- (BOOL)fr_isHTTPScheme;
- (BOOL)fr_isOpenedFromExploreTab;
- (BOOL)fr_isPreviewURL;
- (BOOL)fr_isStoreURL;
- (BOOL)fr_isSubcriptionURL;
- (BOOL)fr_isSubscriptionURLForWebOptIn;
- (BOOL)fr_isUserSegmentationURL;
- (BOOL)fr_isWebArchiveURL;
- (BOOL)fr_isiAdOriginatedURL;
- (id)_fr_representationWithScheme:(id)scheme;
- (id)fr_accessTokenFromAuthenticationCallback;
- (id)fr_campaignType;
- (id)fr_creativeID;
- (id)fr_deepLinkURL;
- (id)fr_iAdPreviewId;
- (id)fr_notificationsURLTagID;
- (id)fr_storeURLRepresentation;
- (id)fr_subscriptionURLTagID;
- (id)fr_userActionDate;
- (id)fr_valueForQueryItemWithName:(id)name;
- (id)fr_widgetEngagementFileURL;
- (id)fr_widgetModeGroupID;
- (id)fr_widgetReferralItemWithQueryItemName:(id)name;
- (int64_t)_articleOpenedFromQueryValue:(id)value;
- (int64_t)fr_articleOpenedFrom;
- (int64_t)fr_iAdPreviewLimit;
- (void)fr_feldsparArticleIDWithAssetManager:(id)manager completion:(id)completion;
- (void)fr_getOverrideSegmentSetIDs:(id *)ds additionalSegmentSetIDs:(id *)iDs disableABTesting:(BOOL *)testing;
- (void)fr_getPreviewChannelIdentifier:(id *)identifier articleIdentifier:(id *)articleIdentifier;
- (void)fr_openedFromEditorialArticleURLQueryParametersWithCompletion:(id)completion;
- (void)fr_subscriptionURLQueryParametersWithCompletion:(id)completion;
@end

@implementation NSURL

- (id)_fr_representationWithScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v5 setScheme:schemeCopy];

  v6 = [v5 URL];

  return v6;
}

- (void)fr_feldsparArticleIDWithAssetManager:(id)manager completion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  v61 = 0;
  LOBYTE(completion) = [(NSURL *)self fc_isHardPaywallNewsArticleURL:&v61];
  v8 = v61;
  if ((completion & 1) == 0)
  {
    fc_NewsArticleID = [(NSURL *)self fc_NewsArticleID];

    v8 = fc_NewsArticleID;
  }

  query = [(NSURL *)self query];
  v11 = [query componentsSeparatedByString:@"&"];

  v47 = +[NSMutableDictionary dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (!v13)
  {

    v32 = 0;
    v15 = 0;
    v27 = 0;
    v30 = 0;
    v34 = 0;
    v42 = 1;
    v29 = v47;
    if (!completionCopy)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v14 = v13;
  selfCopy = self;
  v44 = v8;
  v50 = 0;
  obj = v12;
  v45 = completionCopy;
  v46 = managerCopy;
  v15 = 0;
  v52 = 0;
  v16 = *v58;
  v17 = FCArticleListPathComponent;
  v49 = FCWidgetArticleListReferralItemQueryItemName;
  v48 = NSSOpenedFromPathComponent;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v58 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = [*(*(&v57 + 1) + 8 * i) componentsSeparatedByString:{@"=", selfCopy}];
      firstObject = [v19 firstObject];
      stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

      lastObject = [v19 lastObject];
      stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

      if ([stringByRemovingPercentEncoding isEqualToString:v17])
      {
        v24 = v52;
        v25 = v15;
        v52 = stringByRemovingPercentEncoding2;
      }

      else if ([stringByRemovingPercentEncoding isEqualToString:v49])
      {
        v24 = v50;
        v25 = v15;
        v50 = stringByRemovingPercentEncoding2;
      }

      else
      {
        v24 = v15;
        v25 = stringByRemovingPercentEncoding2;
        if (![stringByRemovingPercentEncoding isEqualToString:v48])
        {
          goto LABEL_14;
        }
      }

      v26 = stringByRemovingPercentEncoding2;

      v15 = v25;
LABEL_14:
    }

    v14 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  }

  while (v14);
  v12 = obj;

  v27 = v50;
  if (!v50)
  {
    completionCopy = v45;
    managerCopy = v46;
    v8 = v44;
    v29 = v47;
    v30 = v52;
    if (!v15)
    {
      v42 = 1;
      if (!v52)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    fr_articleOpenedFrom = [(NSURL *)selfCopy _articleOpenedFromQueryValue:v15];
    goto LABEL_32;
  }

  fr_articleOpenedFrom = [(NSURL *)selfCopy fr_articleOpenedFrom];
  completionCopy = v45;
  managerCopy = v46;
  v8 = v44;
  v29 = v47;
  v30 = v52;
  if (fr_articleOpenedFrom != 2)
  {
LABEL_32:
    v42 = fr_articleOpenedFrom;
    if (!v30)
    {
LABEL_39:
      v32 = 0;
      v34 = 0;
      if (!completionCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_35:
    v34 = [v30 componentsSeparatedByString:{@", "}];
    v32 = 0;
    v42 = 1;
    if (!completionCopy)
    {
      goto LABEL_37;
    }

LABEL_36:
    completionCopy[2](completionCopy, v8, v34, v29, v42);
    goto LABEL_37;
  }

  v31 = [[FRNewsReferralItemDecoder alloc] initWithAssetManager:v46];
  v32 = [(FRNewsReferralItemDecoder *)v31 destructivelyDecodeReferraltemOfClass:objc_opt_class() withQueryValue:v50 error:0];

  if (!v32)
  {
    v42 = 2;
    if (!v52)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v33 = [v32 referredArticlesWithAssetManager:v46];
  v34 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v33;
  v36 = [v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v53 + 1) + 8 * j);
        articleID = [v40 articleID];
        [v34 addObject:articleID];
        [v47 setObject:v40 forKeyedSubscript:articleID];
      }

      v37 = [v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v37);
  }

  v42 = 2;
  completionCopy = v45;
  managerCopy = v46;
  v8 = v44;
  v27 = v50;
  v12 = obj;
  v30 = v52;
  if (v45)
  {
    goto LABEL_36;
  }

LABEL_37:
}

- (int64_t)fr_articleOpenedFrom
{
  query = [(NSURL *)self query];
  v3 = [query componentsSeparatedByString:@"&"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = 0;
    v6 = 0;
    v7 = *v28;
    v8 = NSSOpenedFromPathComponent;
    v9 = NSSSectionPathComponent;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v27 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v11 firstObject];
        stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

        lastObject = [v11 lastObject];
        stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

        if (![stringByRemovingPercentEncoding caseInsensitiveCompare:v8])
        {
          v16 = stringByRemovingPercentEncoding2;

          v6 = v16;
        }

        if (![stringByRemovingPercentEncoding caseInsensitiveCompare:v9])
        {
          v17 = stringByRemovingPercentEncoding2;

          v26 = v17;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  nss_campaignID = [(NSURL *)self nss_campaignID];
  if ([nss_campaignID isEqualToString:NSSNewsWidgetNewsModeCampaignID])
  {
    v19 = 2;
    v20 = v26;
  }

  else
  {
    v20 = v26;
    if (v26 && [(NSURL *)self _articleOpenedFromQueryValue:v6]== 8)
    {
      selfCopy2 = self;
      v22 = v26;
    }

    else
    {
      selfCopy2 = self;
      v22 = v6;
    }

    v19 = [(NSURL *)selfCopy2 _articleOpenedFromQueryValue:v22];
  }

  return v19;
}

- (int64_t)_articleOpenedFromQueryValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"newsletter"])
  {
    v4 = 4;
  }

  else if ([valueCopy isEqualToString:@"editorpicks"])
  {
    v4 = 5;
  }

  else if ([valueCopy isEqualToString:@"editorialarticle"])
  {
    v4 = 6;
  }

  else if ([valueCopy isEqualToString:@"following"])
  {
    v4 = 9;
  }

  else if ([valueCopy isEqualToString:@"endofarticle"])
  {
    v4 = 8;
  }

  else if ([valueCopy isEqualToString:@"article"])
  {
    v4 = 7;
  }

  else if ([valueCopy isEqualToString:@"morefrompublisher"])
  {
    v4 = 10;
  }

  else if ([valueCopy isEqualToString:@"related"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fr_widgetEngagementFileURL
{
  v2 = [(NSURL *)self fr_widgetReferralItemWithQueryItemName:FCWidgetEngagementFilePathQueryItemName];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fr_widgetReferralItemWithQueryItemName:(id)name
{
  nameCopy = name;
  if (!nameCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D5B4();
  }

  query = [(NSURL *)self query];
  v6 = [query componentsSeparatedByString:@"&"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v12 firstObject];
        stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

        lastObject = [v12 lastObject];
        stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

        if ([stringByRemovingPercentEncoding isEqualToString:nameCopy])
        {
          v17 = stringByRemovingPercentEncoding2;

          v9 = v17;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)fr_isFromSafariSearchWithSourceApplication:(id)application
{
  applicationCopy = application;
  fr_campaignID = [(NSURL *)self fr_campaignID];
  if ([fr_campaignID isEqualToString:NSSSafariSearchCampaignID])
  {
    v6 = [applicationCopy isEqualToString:@"com.apple.mobilesafari"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fr_valueForQueryItemWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D678();
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100009B78;
  v17 = sub_100009F10;
  v18 = 0;
  query = [(NSURL *)self query];
  v6 = [query componentsSeparatedByString:@"&"];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BF4C;
  v10[3] = &unk_1000C3808;
  v7 = nameCopy;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)fr_NewsURLForTagID:(id)d title:(id)title
{
  titleCopy = title;
  v7 = [self _urlForTagID:d internal:0];
  [v7 _setTitle:titleCopy];

  return v7;
}

+ (id)_urlForTagID:(id)d internal:(BOOL)internal
{
  internalCopy = internal;
  dCopy = d;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D740();
  }

  if (![dCopy length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D804();
  }

  if ([dCopy rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D8C8();
  }

  v10 = dCopy;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [self nss_NewsURLWithPathComponents:v7 internal:internalCopy];

  return v8;
}

- (BOOL)fr_isFeldsparForYouURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:NSSNewsForYouPathComponent];
  }

  return v4;
}

- (BOOL)fr_isFeldsparFollowingURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:@"following"];
  }

  return v4;
}

- (BOOL)fr_isFeldsparSpotlightURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:@"spotlight"];
  }

  return v4;
}

- (BOOL)fr_isFeldsparSavedURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:NSSNewsSavedComponent];
  }

  return v4;
}

- (BOOL)fr_isFeldsparHistoryURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:NSSNewsHistoryComponent];
  }

  return v4;
}

- (BOOL)fr_isFeldsparFavoritesPickerURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:NSSNewsFavoritePickerComponent];
  }

  return v4;
}

- (BOOL)fr_isFeldsparTabURL
{
  if ([(NSURL *)self fr_isFeldsparForYouURL]|| [(NSURL *)self fr_isFeldsparSavedURL]|| [(NSURL *)self fr_isFeldsparHistoryURL]|| [(NSURL *)self fr_isFeldsparSpotlightURL])
  {
    return 1;
  }

  return [(NSURL *)self fr_isFeldsparFollowingURL];
}

- (BOOL)fr_isFeldsparReferableURL
{
  if ([(NSURL *)self fr_isFeldsparTabURL]|| [(NSURL *)self fr_isFeldsparFavoritesPickerURL]|| ([(NSURL *)self fc_isNewsTagURL]& 1) != 0 || ([(NSURL *)self fc_isNewsArticleURL]& 1) != 0 || ([(NSURL *)self fc_isHardPaywallNewsArticleURL:0]& 1) != 0 || [(NSURL *)self fr_isSubcriptionURL])
  {
    return 1;
  }

  return [(NSURL *)self fr_isBundleSubcriptionURL];
}

- (BOOL)fr_isOpenedFromExploreTab
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = NSSOpenedFromPathComponent;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:{@"=", v16}];
        firstObject = [v11 firstObject];
        lastObject = [v11 lastObject];
        if ([firstObject isEqualToString:v9] && objc_msgSend(lastObject, "isEqualToString:", @"editorialarticle"))
        {

          v14 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)fr_isUserSegmentationURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:@"segmentation-settings"];
  }

  return v4;
}

- (BOOL)_caseInsensitiveCompareWithFirstPathComponent:(id)component
{
  componentCopy = component;
  pathComponents = [(NSURL *)self pathComponents];
  v6 = [pathComponents count];

  if (v6 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D99C();
    if (componentCopy)
    {
      goto LABEL_6;
    }
  }

  else if (componentCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DA70();
  }

LABEL_6:
  pathComponents2 = [(NSURL *)self pathComponents];
  v8 = [pathComponents2 objectAtIndex:1];

  if ([v8 length])
  {
    v9 = [v8 caseInsensitiveCompare:componentCopy] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fr_storeURLRepresentation
{
  if ([(NSURL *)self fr_isStoreURL])
  {
    v3 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
    scheme = [v3 scheme];
    v5 = [scheme hasPrefix:@"http"];

    if (v5)
    {
      scheme2 = [v3 scheme];
      v7 = [scheme2 stringByReplacingOccurrencesOfString:@"http" withString:@"itms"];
      [v3 setScheme:v7];
    }

    v8 = [v3 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fr_isStoreURL
{
  scheme = [(NSURL *)self scheme];
  if ([scheme hasPrefix:@"itms"])
  {
    v4 = 1;
  }

  else
  {
    host = [(NSURL *)self host];
    if ([host isEqualToString:@"itunes.apple.com"])
    {
      v4 = 1;
    }

    else
    {
      host2 = [(NSURL *)self host];
      if ([host2 isEqualToString:@"buy.itunes.apple.com"])
      {
        v4 = 1;
      }

      else
      {
        host3 = [(NSURL *)self host];
        v4 = [host3 isEqualToString:@"storepreview.apple.com"];
      }
    }
  }

  return v4;
}

- (BOOL)fr_isBundleSubcriptionURL
{
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] < 2)
  {
    v6 = 0;
  }

  else
  {
    pathComponents2 = [(NSURL *)self pathComponents];
    v5 = [pathComponents2 objectAtIndex:1];
    v6 = [v5 isEqualToString:@"subscription"];
  }

  return [(NSURL *)self nss_isNewsURL]& v6;
}

- (BOOL)fr_isSubcriptionURL
{
  fr_isSubscriptionURLForWebOptIn = [(NSURL *)self fr_isSubscriptionURLForWebOptIn];
  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] == 3)
  {
    path = [(NSURL *)self path];
    lastPathComponent = [path lastPathComponent];
    v7 = [lastPathComponent isEqualToString:@"subscription"];

    fr_isSubscriptionURLForWebOptIn |= v7;
  }

  if (![(NSURL *)self nss_isNewsURL]|| (fr_isSubscriptionURLForWebOptIn & 1) == 0)
  {
    return 0;
  }

  pathComponents2 = [(NSURL *)self pathComponents];
  v9 = [pathComponents2 objectAtIndex:1];

  LOBYTE(pathComponents2) = [v9 fc_isValidTagID];
  return pathComponents2;
}

- (id)fr_subscriptionURLTagID
{
  if ([(NSURL *)self fr_isSubcriptionURL])
  {
    pathComponents = [(NSURL *)self pathComponents];
    v4 = [pathComponents objectAtIndex:1];

    if ([v4 fc_isValidTagID])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)fr_isSubscriptionURLForWebOptIn
{
  if (![(NSURL *)self nss_isNewsURL])
  {
    return 0;
  }

  pathComponents = [(NSURL *)self pathComponents];
  if ([pathComponents count] != 4)
  {
LABEL_8:
    fc_isValidTagID = 0;
    goto LABEL_9;
  }

  path = [(NSURL *)self path];
  lastPathComponent = [path lastPathComponent];
  if (([lastPathComponent isEqualToString:@"weboptin"] & 1) == 0)
  {

    goto LABEL_8;
  }

  pathComponents2 = [(NSURL *)self pathComponents];
  v7 = [pathComponents2 objectAtIndexedSubscript:2];
  v8 = [v7 isEqualToString:@"subscription"];

  if (v8)
  {
    pathComponents3 = [(NSURL *)self pathComponents];
    pathComponents = [pathComponents3 objectAtIndex:1];

    fc_isValidTagID = [pathComponents fc_isValidTagID];
LABEL_9:

    return fc_isValidTagID;
  }

  return 0;
}

- (void)fr_subscriptionURLQueryParametersWithCompletion:(id)completion
{
  completionCopy = completion;
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v6 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
    v23 = 0;
    v24 = 0;
    v9 = 0;
    v10 = 0;
    v25 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v23 = 0;
  v24 = 0;
  v9 = 0;
  v10 = 0;
  v25 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [*(*(&v27 + 1) + 8 * i) componentsSeparatedByString:@"="];
      firstObject = [v13 firstObject];
      lastObject = [v13 lastObject];
      if ([firstObject caseInsensitiveCompare:@"qtoken"])
      {
        if ([firstObject caseInsensitiveCompare:@"campaignId"])
        {
          if ([firstObject caseInsensitiveCompare:@"presentedContext"])
          {
            if ([firstObject caseInsensitiveCompare:@"feedId"])
            {
              v16 = v9;
              v17 = lastObject;
              if ([firstObject caseInsensitiveCompare:@"articleId"])
              {
                goto LABEL_17;
              }
            }

            else
            {
              v16 = v23;
              v17 = v9;
              v23 = lastObject;
            }
          }

          else
          {
            v16 = v24;
            v24 = lastObject;
            v17 = v9;
          }
        }

        else
        {
          v16 = v25;
          v17 = v9;
          v25 = lastObject;
        }
      }

      else
      {
        v16 = v10;
        v17 = v9;
        v10 = lastObject;
      }

      v18 = lastObject;

      v9 = v17;
LABEL_17:
    }

    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
LABEL_21:

  v19 = [v24 isEqualToString:@"feed"];
  v20 = [v24 isEqualToString:@"article"];
  v21 = [v24 isEqualToString:@"betweenArticle"];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, v25, v23, v9, v19, v20, v21);
  }
}

- (id)fr_creativeID
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"creative_id"])
        {
          v13 = lastObject;

          v7 = v13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fr_campaignType
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"campaign_type"])
        {
          v13 = lastObject;

          v7 = v13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fr_widgetModeGroupID
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v9 = FCWidgetModeGroupIDPathComponent;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v11 firstObject];
        lastObject = [v11 lastObject];
        if ([firstObject isEqualToString:v9])
        {
          v14 = lastObject;

          v7 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fr_userActionDate
{
  [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v19 = 0u;
  queryItems = [v15 queryItems];
  v3 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    v7 = FCUserActionDatePathComponent;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(queryItems);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:v7];

        if (v11)
        {
          value = [v9 value];
          v13 = [NSDate fc_dateFromStringWithISO8601Format:value];

          v5 = v13;
        }
      }

      v4 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fr_accessTokenFromAuthenticationCallback
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"access_token"])
        {
          v13 = lastObject;

          v7 = v13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fr_NewsURLForNotificationsWithTagID:(id)d
{
  dCopy = d;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DB34();
  }

  if (![dCopy length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DBF8();
  }

  v8[0] = dCopy;
  v8[1] = NSSNewsNotificationsPathComponent;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [self nss_NewsURLWithPathComponents:v5 internal:0];

  return v6;
}

- (id)fr_notificationsURLTagID
{
  pathComponents = [(NSURL *)self pathComponents];
  v4 = [pathComponents count];

  if (v4 == 3)
  {
    pathComponents2 = [(NSURL *)self pathComponents];
    v6 = [pathComponents2 objectAtIndex:1];

    if ([v6 fc_isValidTagID])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)fr_openedFromEditorialArticleURLQueryParametersWithCompletion:(id)completion
{
  completionCopy = completion;
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v6 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"componentId"])
        {
          v13 = lastObject;

          v22 = v13;
        }

        if ([firstObject isEqualToString:@"articleId"])
        {
          v14 = lastObject;

          v21 = v14;
        }

        if ([firstObject isEqualToString:@"articleVersion"])
        {
          v15 = lastObject;

          v20 = v15;
        }

        if ([firstObject isEqualToString:@"showingBadge"])
        {
          v17 = [lastObject intValue] == 1;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v22, v21, v20, v17);
  }
}

- (BOOL)fr_isPreviewURL
{
  host = [(NSURL *)self host];
  if ([host isEqualToString:@"preview"])
  {
    pathComponents = [(NSURL *)self pathComponents];
    v5 = [pathComponents count] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fr_getPreviewChannelIdentifier:(id *)identifier articleIdentifier:(id *)articleIdentifier
{
  lastPathComponent = [(NSURL *)self lastPathComponent];
  uRLByDeletingLastPathComponent = [(NSURL *)self URLByDeletingLastPathComponent];
  lastPathComponent2 = [uRLByDeletingLastPathComponent lastPathComponent];
  v9 = lastPathComponent2;
  if (identifier)
  {
    v10 = lastPathComponent2;
    *identifier = v9;
  }

  if (articleIdentifier)
  {
    *articleIdentifier = lastPathComponent;
  }
}

- (void)fr_getOverrideSegmentSetIDs:(id *)ds additionalSegmentSetIDs:(id *)iDs disableABTesting:(BOOL *)testing
{
  *ds = 0;
  *iDs = 0;
  *testing = 0;
  query = [(NSURL *)self query];
  v6 = [query componentsSeparatedByString:@"&"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) componentsSeparatedByString:@"="];
        firstObject = [v11 firstObject];
        stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

        lastObject = [v11 lastObject];
        stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

        if ([stringByRemovingPercentEncoding isEqualToString:@"overrideSSIDs"])
        {
          *ds = [stringByRemovingPercentEncoding2 copy];
        }

        if ([stringByRemovingPercentEncoding isEqualToString:@"additionalSSIDs"])
        {
          *iDs = [stringByRemovingPercentEncoding2 copy];
        }

        if ([stringByRemovingPercentEncoding isEqualToString:@"disableABTesting"])
        {
          *testing = [stringByRemovingPercentEncoding2 isEqualToString:@"1"];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (BOOL)fr_isiAdOriginatedURL
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v11 firstObject];
        v8 |= [firstObject isEqualToString:@"adpreviewid"];
        v7 |= [firstObject isEqualToString:@"adpreviewlimit"];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    v13 = v8 & v7;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)fr_iAdPreviewId
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"adpreviewid"])
        {
          v13 = lastObject;

          v7 = v13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)fr_iAdPreviewLimit
{
  query = [(NSURL *)self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v4 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    integerValue = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:{@"=", v15}];
        firstObject = [v11 firstObject];
        lastObject = [v11 lastObject];
        if ([firstObject isEqualToString:@"adpreviewlimit"])
        {
          integerValue = [lastObject integerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)fr_isFeldsparOpenInNewsErrorURL
{
  path = [(NSURL *)self path];
  if ([path length])
  {
    v3 = [path rangeOfString:@"openinnewserror" options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)fr_createArticleLinkWithArticleID:(id)d url:(id)url
{
  v4 = 0;
  if (d && url)
  {
    urlCopy = url;
    v7 = [NSString stringWithFormat:@"https://apple.news/%@", d];
    v8 = [NSURLComponents componentsWithString:v7];
    v9 = [NSURLComponents componentsWithURL:urlCopy resolvingAgainstBaseURL:0];

    queryItems = [v9 queryItems];
    [v8 setQueryItems:queryItems];

    v4 = [v8 URL];
  }

  return v4;
}

+ (BOOL)fr_canHandleNavigationAction:(id)action
{
  actionCopy = action;
  request = [actionCopy request];
  targetFrame = [actionCopy targetFrame];

  isMainFrame = [targetFrame isMainFrame];
  LOBYTE(isMainFrame) = [WebView _canHandleRequest:request forMainFrame:isMainFrame];

  return isMainFrame;
}

- (id)fr_deepLinkURL
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 URLOverrideForURL:self];

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = [v5 applicationsAvailableForOpeningURL:v4];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    localizedName = [v7 localizedName];
    v9 = [localizedName length];

    if (v9)
    {
      self = v4;
    }
  }

  selfCopy = self;

  return self;
}

+ (id)fr_sanitizedURLForWebView:(id)view navigationAction:(id)action
{
  actionCopy = action;
  request = [actionCopy request];
  v7 = [request URL];

  v8 = v7;
  targetFrame = [actionCopy targetFrame];
  if ([targetFrame isMainFrame])
  {
  }

  else
  {
    navigationType = [actionCopy navigationType];

    fr_deepLinkURL = v8;
    if (navigationType)
    {
      goto LABEL_5;
    }
  }

  fr_deepLinkURL = [v8 fr_deepLinkURL];

LABEL_5:
  if (![fr_deepLinkURL isEqual:v8])
  {
    v14 = fr_deepLinkURL;
    goto LABEL_15;
  }

  if (([self fr_canHandleNavigationAction:actionCopy] & 1) != 0 || !objc_msgSend(v8, "isSpringboardHandledURL"))
  {
    goto LABEL_14;
  }

  scheme = [v8 scheme];
  if ((+[NSURL isDefaultCallingAppScheme:](NSURL, "isDefaultCallingAppScheme:", scheme) & 1) == 0 && ([v8 isFaceTimeURL] & 1) == 0)
  {
    isFaceTimeAudioURL = [v8 isFaceTimeAudioURL];

    if (isFaceTimeAudioURL)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = v8;
    goto LABEL_15;
  }

LABEL_11:
  v13 = [[TUDialRequest alloc] initWithURL:v8];
  [v13 setShowUIPrompt:1];
  v14 = [v13 URL];

  v8 = v14;
LABEL_15:
  v16 = v14;

  return v14;
}

- (BOOL)fr_handleExternalURLWithPrompt
{
  scheme = [(NSURL *)self scheme];
  if ([(NSURL *)self fr_isStoreURL])
  {
    goto LABEL_2;
  }

  if ([(NSURL *)self fr_isHTTPScheme])
  {
    v5 = 0;
    goto LABEL_11;
  }

  absoluteString = [(NSURL *)self absoluteString];
  v7 = [absoluteString isEqualToString:@"about:blank"];

  v5 = 0;
  if ((v7 & 1) == 0 && scheme)
  {
    if ([(NSURL *)self nss_isNewsURL])
    {
      v8 = +[UIApplication sharedApplication];
      delegate = [v8 delegate];
      v20 = UIApplicationOpenURLOptionsSourceApplicationKey;
      v10 = +[NSBundle mainBundle];
      bundleIdentifier = [v10 bundleIdentifier];
      v21 = bundleIdentifier;
      v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v5 = [delegate application:v8 openURL:self options:v12];
    }

    else
    {
      if (([NSURL isDefaultCallingAppScheme:scheme]& 1) != 0 || ([(NSURL *)self isFaceTimeAudioURL]& 1) != 0 || [(NSURL *)self isFaceTimeURL])
      {
LABEL_2:
        v4 = +[UIApplication sharedApplication];
        [v4 openURL:self options:&__NSDictionary0__struct completionHandler:0];

        v5 = 1;
        goto LABEL_11;
      }

      v14 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = [v14 applicationsAvailableForOpeningURL:self];

      if (![v8 count])
      {
        v5 = 0;
        goto LABEL_10;
      }

      delegate = [v8 objectAtIndex:0];
      localizedName = [delegate localizedName];
      v16 = [localizedName length];
      v5 = v16 != 0;

      if (v16)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002EBA0;
        block[3] = &unk_1000C1920;
        v18 = delegate;
        selfCopy = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

LABEL_10:
  }

LABEL_11:

  return v5;
}

- (BOOL)fr_isWebArchiveURL
{
  scheme = [(NSURL *)self scheme];
  pathExtension = [(NSURL *)self pathExtension];
  if ([scheme isEqualToString:@"file"])
  {
    v5 = [pathExtension isEqualToString:@"webarchive"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fr_isHTTPScheme
{
  scheme = [(NSURL *)self scheme];
  if ([scheme isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"https"))
  {
    fr_isWebArchiveURL = 1;
  }

  else
  {
    fr_isWebArchiveURL = [(NSURL *)self fr_isWebArchiveURL];
  }

  return fr_isWebArchiveURL;
}

@end