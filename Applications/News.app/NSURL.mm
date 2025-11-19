@interface NSURL
+ (BOOL)fr_canHandleNavigationAction:(id)a3;
+ (id)_urlForTagID:(id)a3 internal:(BOOL)a4;
+ (id)fr_NewsURLForNotificationsWithTagID:(id)a3;
+ (id)fr_NewsURLForTagID:(id)a3 title:(id)a4;
+ (id)fr_createArticleLinkWithArticleID:(id)a3 url:(id)a4;
+ (id)fr_sanitizedURLForWebView:(id)a3 navigationAction:(id)a4;
- (BOOL)_caseInsensitiveCompareWithFirstPathComponent:(id)a3;
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
- (BOOL)fr_isFromSafariSearchWithSourceApplication:(id)a3;
- (BOOL)fr_isHTTPScheme;
- (BOOL)fr_isOpenedFromExploreTab;
- (BOOL)fr_isPreviewURL;
- (BOOL)fr_isStoreURL;
- (BOOL)fr_isSubcriptionURL;
- (BOOL)fr_isSubscriptionURLForWebOptIn;
- (BOOL)fr_isUserSegmentationURL;
- (BOOL)fr_isWebArchiveURL;
- (BOOL)fr_isiAdOriginatedURL;
- (id)_fr_representationWithScheme:(id)a3;
- (id)fr_accessTokenFromAuthenticationCallback;
- (id)fr_campaignType;
- (id)fr_creativeID;
- (id)fr_deepLinkURL;
- (id)fr_iAdPreviewId;
- (id)fr_notificationsURLTagID;
- (id)fr_storeURLRepresentation;
- (id)fr_subscriptionURLTagID;
- (id)fr_userActionDate;
- (id)fr_valueForQueryItemWithName:(id)a3;
- (id)fr_widgetEngagementFileURL;
- (id)fr_widgetModeGroupID;
- (id)fr_widgetReferralItemWithQueryItemName:(id)a3;
- (int64_t)_articleOpenedFromQueryValue:(id)a3;
- (int64_t)fr_articleOpenedFrom;
- (int64_t)fr_iAdPreviewLimit;
- (void)fr_feldsparArticleIDWithAssetManager:(id)a3 completion:(id)a4;
- (void)fr_getOverrideSegmentSetIDs:(id *)a3 additionalSegmentSetIDs:(id *)a4 disableABTesting:(BOOL *)a5;
- (void)fr_getPreviewChannelIdentifier:(id *)a3 articleIdentifier:(id *)a4;
- (void)fr_openedFromEditorialArticleURLQueryParametersWithCompletion:(id)a3;
- (void)fr_subscriptionURLQueryParametersWithCompletion:(id)a3;
@end

@implementation NSURL

- (id)_fr_representationWithScheme:(id)a3
{
  v4 = a3;
  v5 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v5 setScheme:v4];

  v6 = [v5 URL];

  return v6;
}

- (void)fr_feldsparArticleIDWithAssetManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v61 = 0;
  LOBYTE(a4) = [(NSURL *)self fc_isHardPaywallNewsArticleURL:&v61];
  v8 = v61;
  if ((a4 & 1) == 0)
  {
    v9 = [(NSURL *)self fc_NewsArticleID];

    v8 = v9;
  }

  v10 = [(NSURL *)self query];
  v11 = [v10 componentsSeparatedByString:@"&"];

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
    if (!v7)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v14 = v13;
  v43 = self;
  v44 = v8;
  v50 = 0;
  obj = v12;
  v45 = v7;
  v46 = v6;
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

      v19 = [*(*(&v57 + 1) + 8 * i) componentsSeparatedByString:{@"=", v43}];
      v20 = [v19 firstObject];
      v21 = [v20 stringByRemovingPercentEncoding];

      v22 = [v19 lastObject];
      v23 = [v22 stringByRemovingPercentEncoding];

      if ([v21 isEqualToString:v17])
      {
        v24 = v52;
        v25 = v15;
        v52 = v23;
      }

      else if ([v21 isEqualToString:v49])
      {
        v24 = v50;
        v25 = v15;
        v50 = v23;
      }

      else
      {
        v24 = v15;
        v25 = v23;
        if (![v21 isEqualToString:v48])
        {
          goto LABEL_14;
        }
      }

      v26 = v23;

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
    v7 = v45;
    v6 = v46;
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

    v28 = [(NSURL *)v43 _articleOpenedFromQueryValue:v15];
    goto LABEL_32;
  }

  v28 = [(NSURL *)v43 fr_articleOpenedFrom];
  v7 = v45;
  v6 = v46;
  v8 = v44;
  v29 = v47;
  v30 = v52;
  if (v28 != 2)
  {
LABEL_32:
    v42 = v28;
    if (!v30)
    {
LABEL_39:
      v32 = 0;
      v34 = 0;
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_35:
    v34 = [v30 componentsSeparatedByString:{@", "}];
    v32 = 0;
    v42 = 1;
    if (!v7)
    {
      goto LABEL_37;
    }

LABEL_36:
    v7[2](v7, v8, v34, v29, v42);
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
        v41 = [v40 articleID];
        [v34 addObject:v41];
        [v47 setObject:v40 forKeyedSubscript:v41];
      }

      v37 = [v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v37);
  }

  v42 = 2;
  v7 = v45;
  v6 = v46;
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
  v2 = [(NSURL *)self query];
  v3 = [v2 componentsSeparatedByString:@"&"];

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
        v12 = [v11 firstObject];
        v13 = [v12 stringByRemovingPercentEncoding];

        v14 = [v11 lastObject];
        v15 = [v14 stringByRemovingPercentEncoding];

        if (![v13 caseInsensitiveCompare:v8])
        {
          v16 = v15;

          v6 = v16;
        }

        if (![v13 caseInsensitiveCompare:v9])
        {
          v17 = v15;

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

  v18 = [(NSURL *)self nss_campaignID];
  if ([v18 isEqualToString:NSSNewsWidgetNewsModeCampaignID])
  {
    v19 = 2;
    v20 = v26;
  }

  else
  {
    v20 = v26;
    if (v26 && [(NSURL *)self _articleOpenedFromQueryValue:v6]== 8)
    {
      v21 = self;
      v22 = v26;
    }

    else
    {
      v21 = self;
      v22 = v6;
    }

    v19 = [(NSURL *)v21 _articleOpenedFromQueryValue:v22];
  }

  return v19;
}

- (int64_t)_articleOpenedFromQueryValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"newsletter"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"editorpicks"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"editorialarticle"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"following"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"endofarticle"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"article"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"morefrompublisher"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"related"])
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

- (id)fr_widgetReferralItemWithQueryItemName:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D5B4();
  }

  v5 = [(NSURL *)self query];
  v6 = [v5 componentsSeparatedByString:@"&"];

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
        v13 = [v12 firstObject];
        v14 = [v13 stringByRemovingPercentEncoding];

        v15 = [v12 lastObject];
        v16 = [v15 stringByRemovingPercentEncoding];

        if ([v14 isEqualToString:v4])
        {
          v17 = v16;

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

- (BOOL)fr_isFromSafariSearchWithSourceApplication:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self fr_campaignID];
  if ([v5 isEqualToString:NSSSafariSearchCampaignID])
  {
    v6 = [v4 isEqualToString:@"com.apple.mobilesafari"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fr_valueForQueryItemWithName:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D678();
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100009B78;
  v17 = sub_100009F10;
  v18 = 0;
  v5 = [(NSURL *)self query];
  v6 = [v5 componentsSeparatedByString:@"&"];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BF4C;
  v10[3] = &unk_1000C3808;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)fr_NewsURLForTagID:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [a1 _urlForTagID:a3 internal:0];
  [v7 _setTitle:v6];

  return v7;
}

+ (id)_urlForTagID:(id)a3 internal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D740();
  }

  if (![v6 length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D804();
  }

  if ([v6 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D8C8();
  }

  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [a1 nss_NewsURLWithPathComponents:v7 internal:v4];

  return v8;
}

- (BOOL)fr_isFeldsparForYouURL
{
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v12 = [v11 firstObject];
        v13 = [v11 lastObject];
        if ([v12 isEqualToString:v9] && objc_msgSend(v13, "isEqualToString:", @"editorialarticle"))
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
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSURL *)self _caseInsensitiveCompareWithFirstPathComponent:@"segmentation-settings"];
  }

  return v4;
}

- (BOOL)_caseInsensitiveCompareWithFirstPathComponent:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self pathComponents];
  v6 = [v5 count];

  if (v6 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D99C();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DA70();
  }

LABEL_6:
  v7 = [(NSURL *)self pathComponents];
  v8 = [v7 objectAtIndex:1];

  if ([v8 length])
  {
    v9 = [v8 caseInsensitiveCompare:v4] == 0;
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
    v4 = [v3 scheme];
    v5 = [v4 hasPrefix:@"http"];

    if (v5)
    {
      v6 = [v3 scheme];
      v7 = [v6 stringByReplacingOccurrencesOfString:@"http" withString:@"itms"];
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
  v3 = [(NSURL *)self scheme];
  if ([v3 hasPrefix:@"itms"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSURL *)self host];
    if ([v5 isEqualToString:@"itunes.apple.com"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NSURL *)self host];
      if ([v6 isEqualToString:@"buy.itunes.apple.com"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NSURL *)self host];
        v4 = [v7 isEqualToString:@"storepreview.apple.com"];
      }
    }
  }

  return v4;
}

- (BOOL)fr_isBundleSubcriptionURL
{
  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = [(NSURL *)self pathComponents];
    v5 = [v4 objectAtIndex:1];
    v6 = [v5 isEqualToString:@"subscription"];
  }

  return [(NSURL *)self nss_isNewsURL]& v6;
}

- (BOOL)fr_isSubcriptionURL
{
  v3 = [(NSURL *)self fr_isSubscriptionURLForWebOptIn];
  v4 = [(NSURL *)self pathComponents];
  if ([v4 count] == 3)
  {
    v5 = [(NSURL *)self path];
    v6 = [v5 lastPathComponent];
    v7 = [v6 isEqualToString:@"subscription"];

    v3 |= v7;
  }

  if (![(NSURL *)self nss_isNewsURL]|| (v3 & 1) == 0)
  {
    return 0;
  }

  v8 = [(NSURL *)self pathComponents];
  v9 = [v8 objectAtIndex:1];

  LOBYTE(v8) = [v9 fc_isValidTagID];
  return v8;
}

- (id)fr_subscriptionURLTagID
{
  if ([(NSURL *)self fr_isSubcriptionURL])
  {
    v3 = [(NSURL *)self pathComponents];
    v4 = [v3 objectAtIndex:1];

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

  v3 = [(NSURL *)self pathComponents];
  if ([v3 count] != 4)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v4 = [(NSURL *)self path];
  v5 = [v4 lastPathComponent];
  if (([v5 isEqualToString:@"weboptin"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [(NSURL *)self pathComponents];
  v7 = [v6 objectAtIndexedSubscript:2];
  v8 = [v7 isEqualToString:@"subscription"];

  if (v8)
  {
    v9 = [(NSURL *)self pathComponents];
    v3 = [v9 objectAtIndex:1];

    v10 = [v3 fc_isValidTagID];
LABEL_9:

    return v10;
  }

  return 0;
}

- (void)fr_subscriptionURLQueryParametersWithCompletion:(id)a3
{
  v22 = a3;
  v4 = [(NSURL *)self query];
  v5 = [v4 stringByRemovingPercentEncoding];
  v6 = [v5 componentsSeparatedByString:@"&"];

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
      v14 = [v13 firstObject];
      v15 = [v13 lastObject];
      if ([v14 caseInsensitiveCompare:@"qtoken"])
      {
        if ([v14 caseInsensitiveCompare:@"campaignId"])
        {
          if ([v14 caseInsensitiveCompare:@"presentedContext"])
          {
            if ([v14 caseInsensitiveCompare:@"feedId"])
            {
              v16 = v9;
              v17 = v15;
              if ([v14 caseInsensitiveCompare:@"articleId"])
              {
                goto LABEL_17;
              }
            }

            else
            {
              v16 = v23;
              v17 = v9;
              v23 = v15;
            }
          }

          else
          {
            v16 = v24;
            v24 = v15;
            v17 = v9;
          }
        }

        else
        {
          v16 = v25;
          v17 = v9;
          v25 = v15;
        }
      }

      else
      {
        v16 = v10;
        v17 = v9;
        v10 = v15;
      }

      v18 = v15;

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
  if (v22)
  {
    v22[2](v22, v10, v25, v23, v9, v19, v20, v21);
  }
}

- (id)fr_creativeID
{
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"creative_id"])
        {
          v13 = v12;

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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"campaign_type"])
        {
          v13 = v12;

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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v12 = [v11 firstObject];
        v13 = [v11 lastObject];
        if ([v12 isEqualToString:v9])
        {
          v14 = v13;

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
  v2 = [v15 queryItems];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          v12 = [v9 value];
          v13 = [NSDate fc_dateFromStringWithISO8601Format:v12];

          v5 = v13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"access_token"])
        {
          v13 = v12;

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

+ (id)fr_NewsURLForNotificationsWithTagID:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DB34();
  }

  if (![v4 length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DBF8();
  }

  v8[0] = v4;
  v8[1] = NSSNewsNotificationsPathComponent;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [a1 nss_NewsURLWithPathComponents:v5 internal:0];

  return v6;
}

- (id)fr_notificationsURLTagID
{
  v3 = [(NSURL *)self pathComponents];
  v4 = [v3 count];

  if (v4 == 3)
  {
    v5 = [(NSURL *)self pathComponents];
    v6 = [v5 objectAtIndex:1];

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

- (void)fr_openedFromEditorialArticleURLQueryParametersWithCompletion:(id)a3
{
  v16 = a3;
  v4 = [(NSURL *)self query];
  v5 = [v4 stringByRemovingPercentEncoding];
  v6 = [v5 componentsSeparatedByString:@"&"];

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
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"componentId"])
        {
          v13 = v12;

          v22 = v13;
        }

        if ([v11 isEqualToString:@"articleId"])
        {
          v14 = v12;

          v21 = v14;
        }

        if ([v11 isEqualToString:@"articleVersion"])
        {
          v15 = v12;

          v20 = v15;
        }

        if ([v11 isEqualToString:@"showingBadge"])
        {
          v17 = [v12 intValue] == 1;
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

  if (v16)
  {
    (v16)[2](v16, v22, v21, v20, v17);
  }
}

- (BOOL)fr_isPreviewURL
{
  v3 = [(NSURL *)self host];
  if ([v3 isEqualToString:@"preview"])
  {
    v4 = [(NSURL *)self pathComponents];
    v5 = [v4 count] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fr_getPreviewChannelIdentifier:(id *)a3 articleIdentifier:(id *)a4
{
  v11 = [(NSURL *)self lastPathComponent];
  v7 = [(NSURL *)self URLByDeletingLastPathComponent];
  v8 = [v7 lastPathComponent];
  v9 = v8;
  if (a3)
  {
    v10 = v8;
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v11;
  }
}

- (void)fr_getOverrideSegmentSetIDs:(id *)a3 additionalSegmentSetIDs:(id *)a4 disableABTesting:(BOOL *)a5
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v5 = [(NSURL *)self query];
  v6 = [v5 componentsSeparatedByString:@"&"];

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
        v12 = [v11 firstObject];
        v13 = [v12 stringByRemovingPercentEncoding];

        v14 = [v11 lastObject];
        v15 = [v14 stringByRemovingPercentEncoding];

        if ([v13 isEqualToString:@"overrideSSIDs"])
        {
          *a3 = [v15 copy];
        }

        if ([v13 isEqualToString:@"additionalSSIDs"])
        {
          *a4 = [v15 copy];
        }

        if ([v13 isEqualToString:@"disableABTesting"])
        {
          *a5 = [v15 isEqualToString:@"1"];
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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v12 = [v11 firstObject];
        v8 |= [v12 isEqualToString:@"adpreviewid"];
        v7 |= [v12 isEqualToString:@"adpreviewlimit"];
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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

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
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"adpreviewid"])
        {
          v13 = v12;

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
  v2 = [(NSURL *)self query];
  v3 = [v2 stringByRemovingPercentEncoding];
  v4 = [v3 componentsSeparatedByString:@"&"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
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
        v12 = [v11 firstObject];
        v13 = [v11 lastObject];
        if ([v12 isEqualToString:@"adpreviewlimit"])
        {
          v8 = [v13 integerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fr_isFeldsparOpenInNewsErrorURL
{
  v2 = [(NSURL *)self path];
  if ([v2 length])
  {
    v3 = [v2 rangeOfString:@"openinnewserror" options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)fr_createArticleLinkWithArticleID:(id)a3 url:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = [NSString stringWithFormat:@"https://apple.news/%@", a3];
    v8 = [NSURLComponents componentsWithString:v7];
    v9 = [NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:0];

    v10 = [v9 queryItems];
    [v8 setQueryItems:v10];

    v4 = [v8 URL];
  }

  return v4;
}

+ (BOOL)fr_canHandleNavigationAction:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v3 targetFrame];

  v6 = [v5 isMainFrame];
  LOBYTE(v6) = [WebView _canHandleRequest:v4 forMainFrame:v6];

  return v6;
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
    v8 = [v7 localizedName];
    v9 = [v8 length];

    if (v9)
    {
      self = v4;
    }
  }

  v10 = self;

  return self;
}

+ (id)fr_sanitizedURLForWebView:(id)a3 navigationAction:(id)a4
{
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 URL];

  v8 = v7;
  v9 = [v5 targetFrame];
  if ([v9 isMainFrame])
  {
  }

  else
  {
    v10 = [v5 navigationType];

    v11 = v8;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [v8 fr_deepLinkURL];

LABEL_5:
  if (![v11 isEqual:v8])
  {
    v14 = v11;
    goto LABEL_15;
  }

  if (([a1 fr_canHandleNavigationAction:v5] & 1) != 0 || !objc_msgSend(v8, "isSpringboardHandledURL"))
  {
    goto LABEL_14;
  }

  v12 = [v8 scheme];
  if ((+[NSURL isDefaultCallingAppScheme:](NSURL, "isDefaultCallingAppScheme:", v12) & 1) == 0 && ([v8 isFaceTimeURL] & 1) == 0)
  {
    v15 = [v8 isFaceTimeAudioURL];

    if (v15)
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
  v3 = [(NSURL *)self scheme];
  if ([(NSURL *)self fr_isStoreURL])
  {
    goto LABEL_2;
  }

  if ([(NSURL *)self fr_isHTTPScheme])
  {
    v5 = 0;
    goto LABEL_11;
  }

  v6 = [(NSURL *)self absoluteString];
  v7 = [v6 isEqualToString:@"about:blank"];

  v5 = 0;
  if ((v7 & 1) == 0 && v3)
  {
    if ([(NSURL *)self nss_isNewsURL])
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 delegate];
      v20 = UIApplicationOpenURLOptionsSourceApplicationKey;
      v10 = +[NSBundle mainBundle];
      v11 = [v10 bundleIdentifier];
      v21 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v5 = [v9 application:v8 openURL:self options:v12];
    }

    else
    {
      if (([NSURL isDefaultCallingAppScheme:v3]& 1) != 0 || ([(NSURL *)self isFaceTimeAudioURL]& 1) != 0 || [(NSURL *)self isFaceTimeURL])
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

      v9 = [v8 objectAtIndex:0];
      v15 = [v9 localizedName];
      v16 = [v15 length];
      v5 = v16 != 0;

      if (v16)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002EBA0;
        block[3] = &unk_1000C1920;
        v18 = v9;
        v19 = self;
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
  v3 = [(NSURL *)self scheme];
  v4 = [(NSURL *)self pathExtension];
  if ([v3 isEqualToString:@"file"])
  {
    v5 = [v4 isEqualToString:@"webarchive"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fr_isHTTPScheme
{
  v3 = [(NSURL *)self scheme];
  if ([v3 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"https"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSURL *)self fr_isWebArchiveURL];
  }

  return v4;
}

@end