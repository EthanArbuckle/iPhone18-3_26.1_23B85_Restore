@interface LPPresentationSpecializations
+ (BOOL)isAppStoreStoryURL:(id)l;
+ (BOOL)isAppleBookSeriesURL:(id)l;
+ (BOOL)isAppleFitnessURL:(id)l;
+ (BOOL)isAppleGamesActivityURL:(id)l;
+ (BOOL)isAppleHealthURL:(id)l;
+ (BOOL)isAppleMapsCollectionURL:(id)l;
+ (BOOL)isAppleMapsURL:(id)l;
+ (BOOL)isAppleMusicClassicalURL:(id)l;
+ (BOOL)isAppleNewsURL:(id)l;
+ (BOOL)isApplePhotosSharedLibraryInvitationURL:(id)l;
+ (BOOL)isAppleSportsURL:(id)l;
+ (BOOL)isAppleTVURL:(id)l;
+ (BOOL)isArticle:(id)article;
+ (BOOL)isArticleWithActivityPub:(id)pub;
+ (BOOL)isBlueskyURL:(id)l;
+ (BOOL)isFacebookURL:(id)l;
+ (BOOL)isGoogleMapsURL:(id)l;
+ (BOOL)isGoogleSearchURL:(id)l;
+ (BOOL)isGoogleURL:(id)l;
+ (BOOL)isInstagramURL:(id)l;
+ (BOOL)isKnownBlankImageURL:(id)l;
+ (BOOL)isMicroblogPost:(id)post;
+ (BOOL)isMuninURL:(id)l;
+ (BOOL)isRedditStaticImage:(id)image;
+ (BOOL)isRedditURL:(id)l;
+ (BOOL)isSharedPasswordsInviteURL:(id)l;
+ (BOOL)isSinaWeiboURL:(id)l;
+ (BOOL)isStockSymbolURL:(id)l;
+ (BOOL)isStocksNewsURL:(id)l;
+ (BOOL)isTikTokURL:(id)l;
+ (BOOL)isTweetURL:(id)l;
+ (BOOL)isTwitterProfileImageURL:(id)l;
+ (BOOL)isTwitterShortenerURL:(id)l;
+ (BOOL)isTwitterSummaryCardMetadata:(id)metadata;
+ (BOOL)isTwitterSummaryLargeImageCardMetadata:(id)metadata;
+ (BOOL)isWebexSiteURL:(id)l;
+ (BOOL)isWikipediaURL:(id)l;
+ (BOOL)isYouTubeEmbedURL:(id)l;
+ (BOOL)isYouTubeURL:(id)l;
+ (BOOL)isiCloudPhotoShareURL:(id)l;
+ (BOOL)isiCloudSharingURL:(id)l;
+ (BOOL)isiCloudURL:(id)l;
+ (BOOL)isiTunesStoreOrAdjacentURL:(id)l;
+ (BOOL)isiTunesStoreURLThatUsesWebMetadata:(id)metadata;
+ (BOOL)shouldAllowHoistingContentImagesForURL:(id)l;
+ (BOOL)shouldLoadInsteadOfUsingExistingWebViewForURL:(id)l;
+ (id)URLToOpenForURL:(id)l;
+ (id)businessChatURLToOpenForURL:(id)l;
+ (id)canonicalMetadataURLForURL:(id)l;
+ (id)destinationForGoogleRedirectURL:(id)l;
+ (id)nonDirectURLForImgurURL:(id)l;
+ (id)nonMobileRedditURLForRedditURL:(id)l;
+ (id)nonMobileTweetURLForTweetURL:(id)l;
+ (id)nonMobileYouTubeURLForURL:(id)l;
+ (id)searchQueryForURL:(id)l;
+ (id)simplifiedTitleFromTitle:(id)title forMetadata:(id)metadata;
+ (id)titleSimplifiedByDeduplicatingHostname:(id)hostname forMetadata:(id)metadata;
+ (id)titleSimplifiedByDeduplicatingMicroblogUsernameComponents:(id)components forMetadata:(id)metadata;
+ (id)userAgentForURL:(id)l;
+ (id)youTubeVideoComponentsForEmbedURL:(id)l;
+ (id)youTubeVideoComponentsForVideoURL:(id)l;
+ (id)youTubeVideoURLForEmbedURL:(id)l;
@end

@implementation LPPresentationSpecializations

+ (BOOL)isGoogleURL:(id)l
{
  lCopy = l;
  v4 = googleSuffixChecker();
  host = [lCopy host];
  v6 = [v4 hasSuffix:host];

  return v6;
}

+ (BOOL)isGoogleSearchURL:(id)l
{
  lCopy = l;
  v4 = googleSuffixChecker();
  host = [lCopy host];
  v12 = 0;
  v6 = [v4 hasSuffix:host remainingPrefix:&v12];
  v7 = v12;

  if ((v6 & 1) != 0 && (![v7 length] || objc_msgSend(v7, "_lp_isEqualIgnoringCase:", @"www.")))
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] < 2)
    {
      v10 = 1;
    }

    else
    {
      v9 = [lCopy _lp_pathComponentAtIndex:1];
      v10 = [v9 _lp_isEqualToAnyIgnoringCase:&unk_1F24839B0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (BOOL)isGoogleMapsURL:(id)l
{
  lCopy = l;
  v4 = googleSuffixChecker();
  host = [lCopy host];
  v12 = 0;
  v6 = [v4 hasSuffix:host remainingPrefix:&v12];
  v7 = v12;

  if (v6)
  {
    if ([v7 _lp_isEqualIgnoringCase:@"maps."])
    {
      v8 = 1;
    }

    else
    {
      pathComponents = [lCopy pathComponents];
      if ([pathComponents count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v10 = [lCopy _lp_pathComponentAtIndex:1];
        v8 = [v10 _lp_isEqualIgnoringCase:@"maps"];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)searchQueryForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    v13 = 0;
    goto LABEL_26;
  }

  host = [lCopy host];
  if ([self isGoogleSearchURL:v5])
  {
    v7 = v5;
    pathComponents = [v7 _lp_valueForQueryKey:@"q"];
    if (!pathComponents)
    {
      _lp_components = [v7 _lp_components];
      fragment = [_lp_components fragment];
      [_lp_components setQuery:fragment];

      v11 = [_lp_components URL];
      pathComponents = [v11 _lp_valueForQueryKey:@"q"];
    }

    v12 = [pathComponents stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (yahooSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([yahooSuffixChecker_checker hasSuffix:host])
  {
    v14 = v5;
    v15 = [v14 _lp_pathComponentAtIndex:1];
    v16 = [v15 _lp_isEqualToAnyIgnoringCase:&unk_1F24839F8];

    if ((v16 & 1) == 0)
    {
      pathComponents = [v14 pathComponents];
      if ([pathComponents count] < 2)
      {
        v13 = 0;
        goto LABEL_23;
      }

      v24 = [pathComponents objectAtIndexedSubscript:1];
      v25 = [v24 _lp_hasCaseInsensitivePrefix:@"search;"];

      if ((v25 & 1) == 0)
      {
LABEL_31:
        v13 = 0;
        goto LABEL_24;
      }
    }

    pathComponents = [v14 _lp_valueForQueryKey:@"p"];
    v12 = [pathComponents stringByReplacingOccurrencesOfString:@"+" withString:@" "];
LABEL_22:
    v13 = v12;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (yandexSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([yandexSuffixChecker_checker hasSuffix:host])
  {
    v17 = v5;
    v18 = [v17 _lp_pathComponentAtIndex:1];
    v19 = [v18 _lp_isEqualToAnyIgnoringCase:&unk_1F2483A28];

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    pathComponents = [v17 _lp_valueForQueryKey:@"text"];
    v12 = [pathComponents stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (bingSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([bingSuffixChecker_checker hasSuffix:host])
  {
    v20 = v5;
    v21 = [v20 _lp_pathComponentAtIndex:1];
    v22 = [v21 _lp_isEqualToAnyIgnoringCase:&unk_1F2483A58];

    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }

    pathComponents = [v20 _lp_valueForQueryKey:@"q"];
    v12 = [pathComponents stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (duckDuckGoSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([duckDuckGoSuffixChecker_checker hasSuffix:host])
  {
    v26 = searchQueryForDuckDuckGoURL(v5);
  }

  else
  {
    v27 = baiduSuffixChecker();
    v28 = [v27 hasSuffix:host];

    if (!v28)
    {
      v13 = 0;
      goto LABEL_25;
    }

    v26 = searchQueryForBaiduURL(v5);
  }

  v13 = v26;
LABEL_25:

LABEL_26:

  return v13;
}

+ (BOOL)isArticleWithActivityPub:(id)pub
{
  pubCopy = pub;
  if ([self isArticle:pubCopy])
  {
    usesActivityPub = [pubCopy usesActivityPub];
  }

  else
  {
    usesActivityPub = 0;
  }

  return usesActivityPub;
}

+ (BOOL)isMicroblogPost:(id)post
{
  postCopy = post;
  if (([self isTwitterSummaryCardMetadata:postCopy] & 1) != 0 || objc_msgSend(self, "isTwitterSummaryLargeImageCardMetadata:", postCopy))
  {
    v5 = [self isArticleWithActivityPub:postCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [postCopy URL];
  if ([self isTweetURL:v6])
  {
    goto LABEL_8;
  }

  v7 = [postCopy URL];
  if ([self isSinaWeiboURL:v7])
  {

LABEL_8:
    goto LABEL_9;
  }

  v12 = [postCopy URL];
  v13 = [self isTikTokURL:v12] | v5;

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  summary = [postCopy summary];
  if (summary)
  {
    summary2 = [postCopy summary];
    v10 = [summary2 length];

    if (v10 >= 3)
    {
      summary = [postCopy selectedText];
      v11 = [summary length];

      LOBYTE(summary) = v11 == 0;
      goto LABEL_14;
    }

LABEL_13:
    LOBYTE(summary) = 0;
  }

LABEL_14:

  return summary;
}

+ (BOOL)isTweetURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483AD0];

  if (v5)
  {
    v6 = [lCopy _lp_pathComponentAtIndex:2];
    v7 = [v6 _lp_isEqualIgnoringCase:@"status"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isSinaWeiboURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483AE8];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] == 3)
    {
      v7 = [pathComponents objectAtIndexedSubscript:1];
      decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      invertedSet = [decimalDigitCharacterSet invertedSet];
      v10 = [v7 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isTwitterProfileImageURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualIgnoringCase:@"pbs.twimg.com"];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 3)
    {
      v8 = [lCopy _lp_pathComponentAtIndex:1];
      v7 = [v8 _lp_isEqualIgnoringCase:@"profile_images"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isTwitterSummaryCardMetadata:(id)metadata
{
  twitterCard = [metadata twitterCard];
  v4 = [twitterCard _lp_isEqualIgnoringCase:@"summary"];

  return v4;
}

+ (BOOL)isTwitterSummaryLargeImageCardMetadata:(id)metadata
{
  twitterCard = [metadata twitterCard];
  v4 = [twitterCard _lp_isEqualIgnoringCase:@"summary_large_image"];

  return v4;
}

+ (BOOL)isArticle:(id)article
{
  itemType = [article itemType];
  v4 = [itemType _lp_isEqualIgnoringCase:@"article"];

  return v4;
}

+ (BOOL)isRedditURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"reddit.com"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".reddit.com"];
  }

  return v5;
}

+ (BOOL)isRedditStaticImage:(id)image
{
  host = [image host];
  v4 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483B00];

  return v4;
}

+ (BOOL)isTwitterShortenerURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualIgnoringCase:@"t.co"];

  return v4;
}

+ (BOOL)isTikTokURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"tiktok.com"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".tiktok.com"];
  }

  return v5;
}

+ (BOOL)isInstagramURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"instagram.com"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".instagram.com"];
  }

  return v5;
}

+ (BOOL)isFacebookURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"facebook.com"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".facebook.com"];
  }

  return v5;
}

+ (BOOL)isBlueskyURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"bsky.app"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".bsky.app"];
  }

  return v5;
}

+ (BOOL)isAppleSportsURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualIgnoringCase:@"sports.apple.com"];

  return v4;
}

+ (BOOL)isMuninURL:(id)l
{
  lCopy = l;
  if ([self isAppleMapsURL:lCopy])
  {
    _lp_components = [lCopy _lp_components];
    queryItems = [_lp_components queryItems];

    if (queryItems && [queryItems indexOfObjectPassingTest:&__block_literal_global_23] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v8 = getGEOResourceManifestManagerClass_softClass;
      v16 = getGEOResourceManifestManagerClass_softClass;
      if (!getGEOResourceManifestManagerClass_softClass)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __getGEOResourceManifestManagerClass_block_invoke;
        v12[3] = &unk_1E7A35518;
        v12[4] = &v13;
        __getGEOResourceManifestManagerClass_block_invoke(v12);
        v8 = v14[3];
      }

      v9 = v8;
      _Block_object_dispose(&v13, 8);
      modernManager = [v8 modernManager];
      isMuninEnabled = [modernManager isMuninEnabled];
    }

    else
    {
      isMuninEnabled = 0;
    }
  }

  else
  {
    isMuninEnabled = 0;
  }

  return isMuninEnabled;
}

uint64_t __44__LPPresentationSpecializations_isMuninURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B18];

  return v3;
}

+ (id)nonMobileTweetURLForTweetURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [host _lp_isEqualIgnoringCase:@"mobile.twitter.com"];

  if ((v6 & 1) != 0 && [self isTweetURL:lCopy])
  {
    _lp_components = [lCopy _lp_components];
    [_lp_components setHost:@"twitter.com"];
    v8 = [_lp_components URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)nonMobileRedditURLForRedditURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualIgnoringCase:@"m.reddit.com"];

  if (v5)
  {
    _lp_components = [lCopy _lp_components];
    [_lp_components setHost:@"reddit.com"];
    v7 = [_lp_components URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)youTubeVideoComponentsForVideoURL:(id)l
{
  lCopy = l;
  if ([self isYouTubeURL:lCopy])
  {
    v5 = objc_alloc_init(LPYouTubeURLComponents);
    v6 = [lCopy _lp_valueForQueryKey:@"v"];
    [(LPYouTubeURLComponents *)v5 setVideoID:v6];

    v10 = 0.0;
    v7 = [lCopy _lp_valueForQueryKey:@"t"];
    v8 = [LPYouTubeURLComponents parseYouTubeTimeFormat:v7 outTime:&v10];

    if (v8)
    {
      [(LPYouTubeURLComponents *)v5 setStartTime:v10];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)youTubeVideoComponentsForEmbedURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483B30];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 3 && (objc_msgSend(lCopy, "_lp_pathComponentAtIndex:", 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_lp_isEqualIgnoringCase:", @"embed"), v7, (v8 & 1) != 0))
    {
      v9 = objc_alloc_init(LPYouTubeURLComponents);
      v10 = [pathComponents objectAtIndexedSubscript:2];
      [(LPYouTubeURLComponents *)v9 setVideoID:v10];

      v11 = [lCopy _lp_valueForQueryKey:@"start"];
      -[LPYouTubeURLComponents setStartTime:](v9, "setStartTime:", [v11 integerValue]);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isYouTubeEmbedURL:(id)l
{
  v3 = [self youTubeVideoComponentsForEmbedURL:l];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isYouTubeURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483B48];

  return v4;
}

+ (BOOL)isAppleTVURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualIgnoringCase:@"tv.apple.com"];

  return v4;
}

+ (BOOL)isAppleNewsURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualIgnoringCase:@"apple.news"];

  return v4;
}

+ (BOOL)isiCloudSharingURL:(id)l
{
  lCopy = l;
  if ([LPPresentationSpecializations isiCloudURL:lCopy])
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 2)
    {
      v6 = [pathComponents objectAtIndexedSubscript:1];
      v5 = [v6 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B60];
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

+ (BOOL)isiCloudURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483B78];

  return v4;
}

+ (BOOL)isiCloudPhotoShareURL:(id)l
{
  lCopy = l;
  if ([lCopy _lp_isHTTPFamilyURL] & 1) != 0 && (objc_msgSend(lCopy, "host"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"share.icloud.com"), v4, (v5))
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 2)
    {
      v8 = [pathComponents objectAtIndexedSubscript:1];
      v7 = [v8 _lp_isEqualIgnoringCase:@"photos"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isApplePhotosSharedLibraryInvitationURL:(id)l
{
  lCopy = l;
  if ([lCopy _lp_isHTTPFamilyURL] & 1) != 0 && (objc_msgSend(lCopy, "host"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_lp_isEqualToAnyIgnoringCase:", &unk_1F2483B90), v4, (v5))
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 2)
    {
      v8 = [pathComponents objectAtIndexedSubscript:1];
      v7 = [v8 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BA8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isSharedPasswordsInviteURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() isiCloudURL:lCopy])
  {
    v4 = [lCopy _lp_pathComponentAtIndex:1];
    v5 = [v4 isEqualToString:@"unavailable_shared_passwords"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isStockSymbolURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualIgnoringCase:@"stocks.apple.com"];

  if ((v5 & 1) != 0 && ([lCopy pathComponents], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 >= 3))
  {
    v9 = [lCopy _lp_pathComponentAtIndex:1];
    v8 = [v9 _lp_isEqualIgnoringCase:@"symbol"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isStocksNewsURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"stocks.apple.com"])
  {
    v6 = [self isStockSymbolURL:lCopy] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isiTunesStoreOrAdjacentURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483BC0];

  return v4;
}

+ (BOOL)isAppleBookSeriesURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483BD8];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 3)
    {
      v8 = [lCopy _lp_pathComponentAtIndex:2];
      if ([v8 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BF0])
      {
        v7 = 1;
      }

      else
      {
        v9 = [lCopy _lp_pathComponentAtIndex:1];
        v7 = [v9 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BF0];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isAppleGamesActivityURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483C08];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 3)
    {
      v8 = [lCopy _lp_pathComponentAtIndex:2];
      v7 = [v8 _lp_isEqualIgnoringCase:@"activity"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isAppleMusicClassicalURL:(id)l
{
  host = [l host];
  v4 = [host _lp_isEqualIgnoringCase:@"classical.music.apple.com"];

  return v4;
}

+ (BOOL)isAppStoreStoryURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483C20];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] >= 3)
    {
      v8 = [lCopy _lp_pathComponentAtIndex:2];
      if ([v8 _lp_isEqualIgnoringCase:@"story"])
      {
        v7 = 1;
      }

      else
      {
        v9 = [lCopy _lp_pathComponentAtIndex:1];
        v7 = [v9 _lp_isEqualIgnoringCase:@"story"];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isiTunesStoreURLThatUsesWebMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([self isAppStoreStoryURL:metadataCopy] & 1) != 0 || (objc_msgSend(self, "isAppleTVURL:", metadataCopy))
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isAppleBookSeriesURL:metadataCopy];
  }

  return v5;
}

+ (BOOL)isAppleMapsURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme _lp_isEqualIgnoringCase:@"maps"];

  if (v5)
  {
    v6 = 1;
  }

  else if ([lCopy _lp_isHTTPFamilyURL])
  {
    host = [lCopy host];
    v6 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483C38];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAppleFitnessURL:(id)l
{
  lCopy = l;
  if ([lCopy _lp_isHTTPFamilyURL])
  {
    host = [lCopy host];
    v5 = [host _lp_isEqualIgnoringCase:@"fitness.apple.com"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAppleMapsCollectionURL:(id)l
{
  lCopy = l;
  if ([lCopy _lp_isHTTPFamilyURL])
  {
    host = [lCopy host];
    v5 = [host _lp_isEqualToAnyIgnoringCase:&unk_1F2483C50];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAppleHealthURL:(id)l
{
  lCopy = l;
  if ([lCopy _lp_isHTTPFamilyURL])
  {
    host = [lCopy host];
    v5 = [host _lp_isEqualIgnoringCase:@"health.apple.com"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isWikipediaURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"wikipedia.org"])
  {
    v5 = 1;
  }

  else
  {
    host2 = [lCopy host];
    v5 = [host2 _lp_hasCaseInsensitiveSuffix:@".wikipedia.org"];
  }

  return v5;
}

+ (BOOL)isWebexSiteURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_hasCaseInsensitiveSuffix:@".webex.com"];

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  host2 = [lCopy host];
  if ([host2 _lp_isEqualIgnoringCase:@"www.webex.com"])
  {
    goto LABEL_3;
  }

  host3 = [lCopy host];
  v8 = [host3 _lp_hasCaseInsensitiveSuffix:@".www.webex.com"];

  if (v8)
  {
    goto LABEL_5;
  }

  host2 = [lCopy host];
  if ([host2 _lp_isEqualIgnoringCase:@"help.webex.com"])
  {
LABEL_3:
  }

  else
  {
    host4 = [lCopy host];
    v12 = [host4 _lp_hasCaseInsensitiveSuffix:@".help.webex.com"];

    if (!v12)
    {
      v9 = 1;
      goto LABEL_6;
    }
  }

LABEL_5:
  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)nonMobileYouTubeURLForURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualIgnoringCase:@"m.youtube.com"];

  if (v5)
  {
    _lp_components = [lCopy _lp_components];
    [_lp_components setHost:@"youtube.com"];
    fragment = [_lp_components fragment];
    v8 = [fragment hasPrefix:@"/"];

    if (v8)
    {
      fragment2 = [_lp_components fragment];
      v10 = [fragment2 rangeOfString:@"?"];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [fragment2 substringToIndex:v10];
        [_lp_components setPath:v11];

        if ([fragment2 length] > (v10 + 1))
        {
          v12 = [fragment2 substringFromIndex:?];
          [_lp_components setQuery:v12];
        }

        [_lp_components setFragment:0];
      }
    }

    v13 = [_lp_components URL];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)youTubeVideoURLForEmbedURL:(id)l
{
  lCopy = l;
  v5 = [self youTubeVideoComponentsForEmbedURL:lCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
    scheme = [lCopy scheme];
    [v6 setScheme:scheme];

    [v6 setHost:@"youtube.com"];
    [v6 setPath:@"/watch"];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc(MEMORY[0x1E696AF60]);
    videoID = [v5 videoID];
    v11 = [v9 initWithName:@"v" value:videoID];
    [v8 addObject:v11];

    [v5 startTime];
    if (v12 != 0.0)
    {
      v13 = objc_alloc(MEMORY[0x1E696AF60]);
      [v5 startTime];
      v14 = [LPYouTubeURLComponents formatAsYouTubeTime:?];
      v15 = [v13 initWithName:@"t" value:v14];
      [v8 addObject:v15];
    }

    [v6 setQueryItems:v8];
    v16 = [v6 URL];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)nonDirectURLForImgurURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host _lp_isEqualIgnoringCase:@"i.imgur.com"];

  if (v5)
  {
    _lp_components = [lCopy _lp_components];
    [_lp_components setHost:@"imgur.com"];
    path = [_lp_components path];
    stringByDeletingPathExtension = [path stringByDeletingPathExtension];
    [_lp_components setPath:stringByDeletingPathExtension];

    v9 = [_lp_components URL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)destinationForGoogleRedirectURL:(id)l
{
  lCopy = l;
  if ([self isGoogleURL:lCopy] & 1) != 0 && (objc_msgSend(lCopy, "_lp_pathComponentAtIndex:", 1), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_lp_isEqualIgnoringCase:", @"url"), v5, (v6))
  {
    v7 = [lCopy _lp_valueForQueryKey:@"url"];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)canonicalMetadataURLForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [self nonMobileTweetURLForTweetURL:lCopy];
    if (!v5)
    {
      v5 = [self nonMobileRedditURLForRedditURL:lCopy];
      if (!v5)
      {
        v5 = [self nonDirectURLForImgurURL:lCopy];
        if (!v5)
        {
          v5 = [self nonMobileYouTubeURLForURL:lCopy];
          if (!v5)
          {
            v5 = [self youTubeVideoURLForEmbedURL:lCopy];
            if (!v5)
            {
              v5 = [self destinationForGoogleRedirectURL:lCopy];
              if (!v5)
              {
                v5 = lCopy;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldLoadInsteadOfUsingExistingWebViewForURL:(id)l
{
  lCopy = l;
  if ([self isYouTubeURL:lCopy] & 1) != 0 || (objc_msgSend(self, "isTweetURL:", lCopy) & 1) != 0 || (objc_msgSend(self, "isTikTokURL:", lCopy) & 1) != 0 || (objc_msgSend(self, "isGoogleMapsURL:", lCopy) & 1) != 0 || (objc_msgSend(self, "isBlueskyURL:", lCopy))
  {
    v5 = 1;
  }

  else
  {
    v7 = [self canonicalMetadataURLForURL:lCopy];
    v8 = v7;
    v5 = v7 && ([v7 isEqual:lCopy] & 1) == 0;
  }

  return v5;
}

+ (BOOL)shouldAllowHoistingContentImagesForURL:(id)l
{
  lCopy = l;
  if ([self isRedditURL:lCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [self isFacebookURL:lCopy] ^ 1;
  }

  return v5;
}

+ (BOOL)isKnownBlankImageURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host _lp_isEqualIgnoringCase:@"s0.wp.com"])
  {
    path = [lCopy path];
    v6 = [path _lp_isEqualIgnoringCase:@"/i/blank.jpg"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)userAgentForURL:(id)l
{
  lCopy = l;
  if ([self isTwitterShortenerURL:lCopy])
  {
    v5 = @"curl/7.54.0";
  }

  else if ([self isTikTokURL:lCopy])
  {
    v5 = @"facebookexternalhit/1.1";
  }

  else if ([self isInstagramURL:lCopy])
  {
    v5 = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4";
  }

  else
  {
    v5 = +[LPMetadataProvider _defaultUserAgent];
  }

  return v5;
}

+ (id)simplifiedTitleFromTitle:(id)title forMetadata:(id)metadata
{
  titleCopy = title;
  metadataCopy = metadata;
  v8 = [self titleSimplifiedByDeduplicatingMicroblogUsernameComponents:titleCopy forMetadata:metadataCopy];

  v9 = [self titleSimplifiedByDeduplicatingHostname:v8 forMetadata:metadataCopy];

  return v9;
}

+ (id)titleSimplifiedByDeduplicatingMicroblogUsernameComponents:(id)components forMetadata:(id)metadata
{
  v29[3] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  metadataCopy = metadata;
  if (![LPPresentationSpecializations isMicroblogPost:metadataCopy])
  {
    v25 = componentsCopy;
    goto LABEL_16;
  }

  originalURL = [metadataCopy originalURL];
  host = [originalURL host];
  _lp_highLevelDomain = [originalURL _lp_highLevelDomain];
  v9 = _lp_highLevelDomain;
  if (!_lp_highLevelDomain)
  {
    v9 = [originalURL _lp_simplifiedStringForDisplayOnly:0];
  }

  lowercaseString = [v9 lowercaseString];
  if (!_lp_highLevelDomain)
  {
  }

  _lp_hostByStrippingTopLevelDomain = [lowercaseString _lp_hostByStrippingTopLevelDomain];
  v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+?)\\s*\\(@([^@]*)@([^@]*)\\)$" options:8 error:0];
  v12 = [v11 firstMatchInString:componentsCopy options:0 range:{0, objc_msgSend(componentsCopy, "length")}];
  if ([v12 numberOfRanges] == 4)
  {
    v13 = [v12 rangeAtIndex:3];
    v15 = [componentsCopy substringWithRange:{v13, v14}];
    v29[0] = host;
    v29[1] = lowercaseString;
    v29[2] = _lp_hostByStrippingTopLevelDomain;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    v17 = [v15 _lp_isEqualToAnyIgnoringCase:v16];

    if (v17)
    {
      v18 = [v12 rangeAtIndex:1];
      v20 = [componentsCopy substringWithRange:{v18, v19}];
      v21 = [v12 rangeAtIndex:2];
      v23 = [componentsCopy substringWithRange:{v21, v22}];
      if ([v20 _lp_isEqualIgnoringCase:v23])
      {
        v24 = v20;
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (@%@)", v20, v23];
      }

      v25 = v24;

      goto LABEL_15;
    }
  }

  v25 = componentsCopy;
LABEL_15:

LABEL_16:

  return v25;
}

+ (id)titleSimplifiedByDeduplicatingHostname:(id)hostname forMetadata:(id)metadata
{
  v44 = *MEMORY[0x1E69E9840];
  hostnameCopy = hostname;
  metadataCopy = metadata;
  originalURL = [metadataCopy originalURL];
  _lp_highLevelDomain = [originalURL _lp_highLevelDomain];
  v6 = _lp_highLevelDomain;
  if (!_lp_highLevelDomain)
  {
    v6 = [originalURL _lp_simplifiedStringForDisplayOnly:0];
  }

  lowercaseString = [v6 lowercaseString];
  if (!_lp_highLevelDomain)
  {
  }

  _lp_hostByStrippingTopLevelDomain = [lowercaseString _lp_hostByStrippingTopLevelDomain];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = 0;
  v8 = [&unk_1F2483C68 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = *v40;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(&unk_1F2483C68);
      }

      v12 = [hostnameCopy componentsSeparatedByString:*(*(&v39 + 1) + 8 * i)];
      if ([v12 count] == 2)
      {
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v14 = [v12 objectAtIndexedSubscript:0];
        v15 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        v16 = [v12 objectAtIndexedSubscript:1];
        v17 = [v16 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        lowercaseString2 = [v15 lowercaseString];
        lowercaseString3 = [v17 lowercaseString];
        [lowercaseString2 _lp_similarityToString:lowercaseString];
        v21 = v20;
        [lowercaseString2 _lp_similarityToString:_lp_hostByStrippingTopLevelDomain];
        if (v21 >= v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        [lowercaseString3 _lp_similarityToString:lowercaseString];
        v25 = v24;
        [lowercaseString3 _lp_similarityToString:_lp_hostByStrippingTopLevelDomain];
        if (v25 >= v26)
        {
          v26 = v25;
        }

        if (v23 >= v26)
        {
          v27 = v23;
        }

        else
        {
          v27 = v26;
        }

        if (v27 <= v10)
        {
          v27 = v10;
        }

        else
        {
          if (v23 <= v26)
          {
            v28 = v15;
          }

          else
          {
            v28 = v17;
          }

          v29 = v28;
          v30 = v7;
          v7 = v29;
        }

        v10 = v27;
      }
    }

    v8 = [&unk_1F2483C68 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v8);
  if (v7 && v10 >= 0.6)
  {
    _lp_stringByTrimmingWhitespace = [v7 _lp_stringByTrimmingWhitespace];
  }

  else
  {
LABEL_31:
    _lp_stringByTrimmingWhitespace = hostnameCopy;
  }

  v32 = _lp_stringByTrimmingWhitespace;

  return v32;
}

+ (id)businessChatURLToOpenForURL:(id)l
{
  lCopy = l;
  pathComponents = [lCopy pathComponents];
  if ([pathComponents count] >= 2)
  {
    _lp_components = [lCopy _lp_components];
    if (_lp_components)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [MEMORY[0x1E696AF20] componentsWithString:@"messages://open"];
      v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
      [v7 addObject:v9];
      v10 = [pathComponents objectAtIndexedSubscript:1];
      v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v10];
      [v7 addObject:v11];
      queryItems = [_lp_components queryItems];
      [v7 addObjectsFromArray:queryItems];

      [v8 setQueryItems:v7];
      v5 = [v8 URL];
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

+ (id)URLToOpenForURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [host _lp_isEqualIgnoringCase:@"bcrw.apple.com"];

  v7 = lCopy;
  if (v6)
  {
    v8 = [self businessChatURLToOpenForURL:lCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = lCopy;
    }

    v7 = v10;
  }

  v11 = urlByRemovingTrackingInformation(v7);

  return v11;
}

@end