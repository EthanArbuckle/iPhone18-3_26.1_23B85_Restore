@interface LPPresentationSpecializations
+ (BOOL)isAppStoreStoryURL:(id)a3;
+ (BOOL)isAppleBookSeriesURL:(id)a3;
+ (BOOL)isAppleFitnessURL:(id)a3;
+ (BOOL)isAppleGamesActivityURL:(id)a3;
+ (BOOL)isAppleHealthURL:(id)a3;
+ (BOOL)isAppleMapsCollectionURL:(id)a3;
+ (BOOL)isAppleMapsURL:(id)a3;
+ (BOOL)isAppleMusicClassicalURL:(id)a3;
+ (BOOL)isAppleNewsURL:(id)a3;
+ (BOOL)isApplePhotosSharedLibraryInvitationURL:(id)a3;
+ (BOOL)isAppleSportsURL:(id)a3;
+ (BOOL)isAppleTVURL:(id)a3;
+ (BOOL)isArticle:(id)a3;
+ (BOOL)isArticleWithActivityPub:(id)a3;
+ (BOOL)isBlueskyURL:(id)a3;
+ (BOOL)isFacebookURL:(id)a3;
+ (BOOL)isGoogleMapsURL:(id)a3;
+ (BOOL)isGoogleSearchURL:(id)a3;
+ (BOOL)isGoogleURL:(id)a3;
+ (BOOL)isInstagramURL:(id)a3;
+ (BOOL)isKnownBlankImageURL:(id)a3;
+ (BOOL)isMicroblogPost:(id)a3;
+ (BOOL)isMuninURL:(id)a3;
+ (BOOL)isRedditStaticImage:(id)a3;
+ (BOOL)isRedditURL:(id)a3;
+ (BOOL)isSharedPasswordsInviteURL:(id)a3;
+ (BOOL)isSinaWeiboURL:(id)a3;
+ (BOOL)isStockSymbolURL:(id)a3;
+ (BOOL)isStocksNewsURL:(id)a3;
+ (BOOL)isTikTokURL:(id)a3;
+ (BOOL)isTweetURL:(id)a3;
+ (BOOL)isTwitterProfileImageURL:(id)a3;
+ (BOOL)isTwitterShortenerURL:(id)a3;
+ (BOOL)isTwitterSummaryCardMetadata:(id)a3;
+ (BOOL)isTwitterSummaryLargeImageCardMetadata:(id)a3;
+ (BOOL)isWebexSiteURL:(id)a3;
+ (BOOL)isWikipediaURL:(id)a3;
+ (BOOL)isYouTubeEmbedURL:(id)a3;
+ (BOOL)isYouTubeURL:(id)a3;
+ (BOOL)isiCloudPhotoShareURL:(id)a3;
+ (BOOL)isiCloudSharingURL:(id)a3;
+ (BOOL)isiCloudURL:(id)a3;
+ (BOOL)isiTunesStoreOrAdjacentURL:(id)a3;
+ (BOOL)isiTunesStoreURLThatUsesWebMetadata:(id)a3;
+ (BOOL)shouldAllowHoistingContentImagesForURL:(id)a3;
+ (BOOL)shouldLoadInsteadOfUsingExistingWebViewForURL:(id)a3;
+ (id)URLToOpenForURL:(id)a3;
+ (id)businessChatURLToOpenForURL:(id)a3;
+ (id)canonicalMetadataURLForURL:(id)a3;
+ (id)destinationForGoogleRedirectURL:(id)a3;
+ (id)nonDirectURLForImgurURL:(id)a3;
+ (id)nonMobileRedditURLForRedditURL:(id)a3;
+ (id)nonMobileTweetURLForTweetURL:(id)a3;
+ (id)nonMobileYouTubeURLForURL:(id)a3;
+ (id)searchQueryForURL:(id)a3;
+ (id)simplifiedTitleFromTitle:(id)a3 forMetadata:(id)a4;
+ (id)titleSimplifiedByDeduplicatingHostname:(id)a3 forMetadata:(id)a4;
+ (id)titleSimplifiedByDeduplicatingMicroblogUsernameComponents:(id)a3 forMetadata:(id)a4;
+ (id)userAgentForURL:(id)a3;
+ (id)youTubeVideoComponentsForEmbedURL:(id)a3;
+ (id)youTubeVideoComponentsForVideoURL:(id)a3;
+ (id)youTubeVideoURLForEmbedURL:(id)a3;
@end

@implementation LPPresentationSpecializations

+ (BOOL)isGoogleURL:(id)a3
{
  v3 = a3;
  v4 = googleSuffixChecker();
  v5 = [v3 host];
  v6 = [v4 hasSuffix:v5];

  return v6;
}

+ (BOOL)isGoogleSearchURL:(id)a3
{
  v3 = a3;
  v4 = googleSuffixChecker();
  v5 = [v3 host];
  v12 = 0;
  v6 = [v4 hasSuffix:v5 remainingPrefix:&v12];
  v7 = v12;

  if ((v6 & 1) != 0 && (![v7 length] || objc_msgSend(v7, "_lp_isEqualIgnoringCase:", @"www.")))
  {
    v8 = [v3 pathComponents];
    if ([v8 count] < 2)
    {
      v10 = 1;
    }

    else
    {
      v9 = [v3 _lp_pathComponentAtIndex:1];
      v10 = [v9 _lp_isEqualToAnyIgnoringCase:&unk_1F24839B0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (BOOL)isGoogleMapsURL:(id)a3
{
  v3 = a3;
  v4 = googleSuffixChecker();
  v5 = [v3 host];
  v12 = 0;
  v6 = [v4 hasSuffix:v5 remainingPrefix:&v12];
  v7 = v12;

  if (v6)
  {
    if ([v7 _lp_isEqualIgnoringCase:@"maps."])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v3 pathComponents];
      if ([v9 count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v10 = [v3 _lp_pathComponentAtIndex:1];
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

+ (id)searchQueryForURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v6 = [v4 host];
  if ([a1 isGoogleSearchURL:v5])
  {
    v7 = v5;
    v8 = [v7 _lp_valueForQueryKey:@"q"];
    if (!v8)
    {
      v9 = [v7 _lp_components];
      v10 = [v9 fragment];
      [v9 setQuery:v10];

      v11 = [v9 URL];
      v8 = [v11 _lp_valueForQueryKey:@"q"];
    }

    v12 = [v8 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (yahooSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([yahooSuffixChecker_checker hasSuffix:v6])
  {
    v14 = v5;
    v15 = [v14 _lp_pathComponentAtIndex:1];
    v16 = [v15 _lp_isEqualToAnyIgnoringCase:&unk_1F24839F8];

    if ((v16 & 1) == 0)
    {
      v8 = [v14 pathComponents];
      if ([v8 count] < 2)
      {
        v13 = 0;
        goto LABEL_23;
      }

      v24 = [v8 objectAtIndexedSubscript:1];
      v25 = [v24 _lp_hasCaseInsensitivePrefix:@"search;"];

      if ((v25 & 1) == 0)
      {
LABEL_31:
        v13 = 0;
        goto LABEL_24;
      }
    }

    v8 = [v14 _lp_valueForQueryKey:@"p"];
    v12 = [v8 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
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

  if ([yandexSuffixChecker_checker hasSuffix:v6])
  {
    v17 = v5;
    v18 = [v17 _lp_pathComponentAtIndex:1];
    v19 = [v18 _lp_isEqualToAnyIgnoringCase:&unk_1F2483A28];

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    v8 = [v17 _lp_valueForQueryKey:@"text"];
    v12 = [v8 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (bingSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([bingSuffixChecker_checker hasSuffix:v6])
  {
    v20 = v5;
    v21 = [v20 _lp_pathComponentAtIndex:1];
    v22 = [v21 _lp_isEqualToAnyIgnoringCase:&unk_1F2483A58];

    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }

    v8 = [v20 _lp_valueForQueryKey:@"q"];
    v12 = [v8 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    goto LABEL_22;
  }

  if (duckDuckGoSuffixChecker_onceToken != -1)
  {
    +[LPPresentationSpecializations(Search) searchQueryForURL:];
  }

  if ([duckDuckGoSuffixChecker_checker hasSuffix:v6])
  {
    v26 = searchQueryForDuckDuckGoURL(v5);
  }

  else
  {
    v27 = baiduSuffixChecker();
    v28 = [v27 hasSuffix:v6];

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

+ (BOOL)isArticleWithActivityPub:(id)a3
{
  v4 = a3;
  if ([a1 isArticle:v4])
  {
    v5 = [v4 usesActivityPub];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isMicroblogPost:(id)a3
{
  v4 = a3;
  if (([a1 isTwitterSummaryCardMetadata:v4] & 1) != 0 || objc_msgSend(a1, "isTwitterSummaryLargeImageCardMetadata:", v4))
  {
    v5 = [a1 isArticleWithActivityPub:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 URL];
  if ([a1 isTweetURL:v6])
  {
    goto LABEL_8;
  }

  v7 = [v4 URL];
  if ([a1 isSinaWeiboURL:v7])
  {

LABEL_8:
    goto LABEL_9;
  }

  v12 = [v4 URL];
  v13 = [a1 isTikTokURL:v12] | v5;

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v8 = [v4 summary];
  if (v8)
  {
    v9 = [v4 summary];
    v10 = [v9 length];

    if (v10 >= 3)
    {
      v8 = [v4 selectedText];
      v11 = [v8 length];

      LOBYTE(v8) = v11 == 0;
      goto LABEL_14;
    }

LABEL_13:
    LOBYTE(v8) = 0;
  }

LABEL_14:

  return v8;
}

+ (BOOL)isTweetURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483AD0];

  if (v5)
  {
    v6 = [v3 _lp_pathComponentAtIndex:2];
    v7 = [v6 _lp_isEqualIgnoringCase:@"status"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isSinaWeiboURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483AE8];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      v9 = [v8 invertedSet];
      v10 = [v7 rangeOfCharacterFromSet:v9] == 0x7FFFFFFFFFFFFFFFLL;
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

+ (BOOL)isTwitterProfileImageURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualIgnoringCase:@"pbs.twimg.com"];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 3)
    {
      v8 = [v3 _lp_pathComponentAtIndex:1];
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

+ (BOOL)isTwitterSummaryCardMetadata:(id)a3
{
  v3 = [a3 twitterCard];
  v4 = [v3 _lp_isEqualIgnoringCase:@"summary"];

  return v4;
}

+ (BOOL)isTwitterSummaryLargeImageCardMetadata:(id)a3
{
  v3 = [a3 twitterCard];
  v4 = [v3 _lp_isEqualIgnoringCase:@"summary_large_image"];

  return v4;
}

+ (BOOL)isArticle:(id)a3
{
  v3 = [a3 itemType];
  v4 = [v3 _lp_isEqualIgnoringCase:@"article"];

  return v4;
}

+ (BOOL)isRedditURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"reddit.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".reddit.com"];
  }

  return v5;
}

+ (BOOL)isRedditStaticImage:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B00];

  return v4;
}

+ (BOOL)isTwitterShortenerURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualIgnoringCase:@"t.co"];

  return v4;
}

+ (BOOL)isTikTokURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"tiktok.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".tiktok.com"];
  }

  return v5;
}

+ (BOOL)isInstagramURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"instagram.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".instagram.com"];
  }

  return v5;
}

+ (BOOL)isFacebookURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"facebook.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".facebook.com"];
  }

  return v5;
}

+ (BOOL)isBlueskyURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"bsky.app"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".bsky.app"];
  }

  return v5;
}

+ (BOOL)isAppleSportsURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualIgnoringCase:@"sports.apple.com"];

  return v4;
}

+ (BOOL)isMuninURL:(id)a3
{
  v4 = a3;
  if ([a1 isAppleMapsURL:v4])
  {
    v5 = [v4 _lp_components];
    v6 = [v5 queryItems];

    if (v6 && [v6 indexOfObjectPassingTest:&__block_literal_global_23] != 0x7FFFFFFFFFFFFFFFLL)
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
      v10 = [v8 modernManager];
      v7 = [v10 isMuninEnabled];
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

uint64_t __44__LPPresentationSpecializations_isMuninURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B18];

  return v3;
}

+ (id)nonMobileTweetURLForTweetURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v5 _lp_isEqualIgnoringCase:@"mobile.twitter.com"];

  if ((v6 & 1) != 0 && [a1 isTweetURL:v4])
  {
    v7 = [v4 _lp_components];
    [v7 setHost:@"twitter.com"];
    v8 = [v7 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)nonMobileRedditURLForRedditURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualIgnoringCase:@"m.reddit.com"];

  if (v5)
  {
    v6 = [v3 _lp_components];
    [v6 setHost:@"reddit.com"];
    v7 = [v6 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)youTubeVideoComponentsForVideoURL:(id)a3
{
  v4 = a3;
  if ([a1 isYouTubeURL:v4])
  {
    v5 = objc_alloc_init(LPYouTubeURLComponents);
    v6 = [v4 _lp_valueForQueryKey:@"v"];
    [(LPYouTubeURLComponents *)v5 setVideoID:v6];

    v10 = 0.0;
    v7 = [v4 _lp_valueForQueryKey:@"t"];
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

+ (id)youTubeVideoComponentsForEmbedURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B30];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 3 && (objc_msgSend(v3, "_lp_pathComponentAtIndex:", 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_lp_isEqualIgnoringCase:", @"embed"), v7, (v8 & 1) != 0))
    {
      v9 = objc_alloc_init(LPYouTubeURLComponents);
      v10 = [v6 objectAtIndexedSubscript:2];
      [(LPYouTubeURLComponents *)v9 setVideoID:v10];

      v11 = [v3 _lp_valueForQueryKey:@"start"];
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

+ (BOOL)isYouTubeEmbedURL:(id)a3
{
  v3 = [a1 youTubeVideoComponentsForEmbedURL:a3];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isYouTubeURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B48];

  return v4;
}

+ (BOOL)isAppleTVURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualIgnoringCase:@"tv.apple.com"];

  return v4;
}

+ (BOOL)isAppleNewsURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualIgnoringCase:@"apple.news"];

  return v4;
}

+ (BOOL)isiCloudSharingURL:(id)a3
{
  v3 = a3;
  if ([LPPresentationSpecializations isiCloudURL:v3])
  {
    v4 = [v3 pathComponents];
    if ([v4 count] >= 2)
    {
      v6 = [v4 objectAtIndexedSubscript:1];
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

+ (BOOL)isiCloudURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualToAnyIgnoringCase:&unk_1F2483B78];

  return v4;
}

+ (BOOL)isiCloudPhotoShareURL:(id)a3
{
  v3 = a3;
  if ([v3 _lp_isHTTPFamilyURL] & 1) != 0 && (objc_msgSend(v3, "host"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"share.icloud.com"), v4, (v5))
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 2)
    {
      v8 = [v6 objectAtIndexedSubscript:1];
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

+ (BOOL)isApplePhotosSharedLibraryInvitationURL:(id)a3
{
  v3 = a3;
  if ([v3 _lp_isHTTPFamilyURL] & 1) != 0 && (objc_msgSend(v3, "host"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_lp_isEqualToAnyIgnoringCase:", &unk_1F2483B90), v4, (v5))
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 2)
    {
      v8 = [v6 objectAtIndexedSubscript:1];
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

+ (BOOL)isSharedPasswordsInviteURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isiCloudURL:v3])
  {
    v4 = [v3 _lp_pathComponentAtIndex:1];
    v5 = [v4 isEqualToString:@"unavailable_shared_passwords"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isStockSymbolURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualIgnoringCase:@"stocks.apple.com"];

  if ((v5 & 1) != 0 && ([v3 pathComponents], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 >= 3))
  {
    v9 = [v3 _lp_pathComponentAtIndex:1];
    v8 = [v9 _lp_isEqualIgnoringCase:@"symbol"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isStocksNewsURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  if ([v5 _lp_isEqualIgnoringCase:@"stocks.apple.com"])
  {
    v6 = [a1 isStockSymbolURL:v4] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isiTunesStoreOrAdjacentURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BC0];

  return v4;
}

+ (BOOL)isAppleBookSeriesURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BD8];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 3)
    {
      v8 = [v3 _lp_pathComponentAtIndex:2];
      if ([v8 _lp_isEqualToAnyIgnoringCase:&unk_1F2483BF0])
      {
        v7 = 1;
      }

      else
      {
        v9 = [v3 _lp_pathComponentAtIndex:1];
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

+ (BOOL)isAppleGamesActivityURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483C08];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 3)
    {
      v8 = [v3 _lp_pathComponentAtIndex:2];
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

+ (BOOL)isAppleMusicClassicalURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 _lp_isEqualIgnoringCase:@"classical.music.apple.com"];

  return v4;
}

+ (BOOL)isAppStoreStoryURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483C20];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 3)
    {
      v8 = [v3 _lp_pathComponentAtIndex:2];
      if ([v8 _lp_isEqualIgnoringCase:@"story"])
      {
        v7 = 1;
      }

      else
      {
        v9 = [v3 _lp_pathComponentAtIndex:1];
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

+ (BOOL)isiTunesStoreURLThatUsesWebMetadata:(id)a3
{
  v4 = a3;
  if ([a1 isAppStoreStoryURL:v4] & 1) != 0 || (objc_msgSend(a1, "isAppleTVURL:", v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isAppleBookSeriesURL:v4];
  }

  return v5;
}

+ (BOOL)isAppleMapsURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 _lp_isEqualIgnoringCase:@"maps"];

  if (v5)
  {
    v6 = 1;
  }

  else if ([v3 _lp_isHTTPFamilyURL])
  {
    v7 = [v3 host];
    v6 = [v7 _lp_isEqualToAnyIgnoringCase:&unk_1F2483C38];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAppleFitnessURL:(id)a3
{
  v3 = a3;
  if ([v3 _lp_isHTTPFamilyURL])
  {
    v4 = [v3 host];
    v5 = [v4 _lp_isEqualIgnoringCase:@"fitness.apple.com"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAppleMapsCollectionURL:(id)a3
{
  v3 = a3;
  if ([v3 _lp_isHTTPFamilyURL])
  {
    v4 = [v3 host];
    v5 = [v4 _lp_isEqualToAnyIgnoringCase:&unk_1F2483C50];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAppleHealthURL:(id)a3
{
  v3 = a3;
  if ([v3 _lp_isHTTPFamilyURL])
  {
    v4 = [v3 host];
    v5 = [v4 _lp_isEqualIgnoringCase:@"health.apple.com"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isWikipediaURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"wikipedia.org"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 host];
    v5 = [v6 _lp_hasCaseInsensitiveSuffix:@".wikipedia.org"];
  }

  return v5;
}

+ (BOOL)isWebexSiteURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_hasCaseInsensitiveSuffix:@".webex.com"];

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [v3 host];
  if ([v6 _lp_isEqualIgnoringCase:@"www.webex.com"])
  {
    goto LABEL_3;
  }

  v7 = [v3 host];
  v8 = [v7 _lp_hasCaseInsensitiveSuffix:@".www.webex.com"];

  if (v8)
  {
    goto LABEL_5;
  }

  v6 = [v3 host];
  if ([v6 _lp_isEqualIgnoringCase:@"help.webex.com"])
  {
LABEL_3:
  }

  else
  {
    v11 = [v3 host];
    v12 = [v11 _lp_hasCaseInsensitiveSuffix:@".help.webex.com"];

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

+ (id)nonMobileYouTubeURLForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualIgnoringCase:@"m.youtube.com"];

  if (v5)
  {
    v6 = [v3 _lp_components];
    [v6 setHost:@"youtube.com"];
    v7 = [v6 fragment];
    v8 = [v7 hasPrefix:@"/"];

    if (v8)
    {
      v9 = [v6 fragment];
      v10 = [v9 rangeOfString:@"?"];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [v9 substringToIndex:v10];
        [v6 setPath:v11];

        if ([v9 length] > (v10 + 1))
        {
          v12 = [v9 substringFromIndex:?];
          [v6 setQuery:v12];
        }

        [v6 setFragment:0];
      }
    }

    v13 = [v6 URL];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)youTubeVideoURLForEmbedURL:(id)a3
{
  v4 = a3;
  v5 = [a1 youTubeVideoComponentsForEmbedURL:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v7 = [v4 scheme];
    [v6 setScheme:v7];

    [v6 setHost:@"youtube.com"];
    [v6 setPath:@"/watch"];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc(MEMORY[0x1E696AF60]);
    v10 = [v5 videoID];
    v11 = [v9 initWithName:@"v" value:v10];
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

+ (id)nonDirectURLForImgurURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 _lp_isEqualIgnoringCase:@"i.imgur.com"];

  if (v5)
  {
    v6 = [v3 _lp_components];
    [v6 setHost:@"imgur.com"];
    v7 = [v6 path];
    v8 = [v7 stringByDeletingPathExtension];
    [v6 setPath:v8];

    v9 = [v6 URL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)destinationForGoogleRedirectURL:(id)a3
{
  v4 = a3;
  if ([a1 isGoogleURL:v4] & 1) != 0 && (objc_msgSend(v4, "_lp_pathComponentAtIndex:", 1), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_lp_isEqualIgnoringCase:", @"url"), v5, (v6))
  {
    v7 = [v4 _lp_valueForQueryKey:@"url"];
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

+ (id)canonicalMetadataURLForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 nonMobileTweetURLForTweetURL:v4];
    if (!v5)
    {
      v5 = [a1 nonMobileRedditURLForRedditURL:v4];
      if (!v5)
      {
        v5 = [a1 nonDirectURLForImgurURL:v4];
        if (!v5)
        {
          v5 = [a1 nonMobileYouTubeURLForURL:v4];
          if (!v5)
          {
            v5 = [a1 youTubeVideoURLForEmbedURL:v4];
            if (!v5)
            {
              v5 = [a1 destinationForGoogleRedirectURL:v4];
              if (!v5)
              {
                v5 = v4;
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

+ (BOOL)shouldLoadInsteadOfUsingExistingWebViewForURL:(id)a3
{
  v4 = a3;
  if ([a1 isYouTubeURL:v4] & 1) != 0 || (objc_msgSend(a1, "isTweetURL:", v4) & 1) != 0 || (objc_msgSend(a1, "isTikTokURL:", v4) & 1) != 0 || (objc_msgSend(a1, "isGoogleMapsURL:", v4) & 1) != 0 || (objc_msgSend(a1, "isBlueskyURL:", v4))
  {
    v5 = 1;
  }

  else
  {
    v7 = [a1 canonicalMetadataURLForURL:v4];
    v8 = v7;
    v5 = v7 && ([v7 isEqual:v4] & 1) == 0;
  }

  return v5;
}

+ (BOOL)shouldAllowHoistingContentImagesForURL:(id)a3
{
  v4 = a3;
  if ([a1 isRedditURL:v4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [a1 isFacebookURL:v4] ^ 1;
  }

  return v5;
}

+ (BOOL)isKnownBlankImageURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 _lp_isEqualIgnoringCase:@"s0.wp.com"])
  {
    v5 = [v3 path];
    v6 = [v5 _lp_isEqualIgnoringCase:@"/i/blank.jpg"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)userAgentForURL:(id)a3
{
  v4 = a3;
  if ([a1 isTwitterShortenerURL:v4])
  {
    v5 = @"curl/7.54.0";
  }

  else if ([a1 isTikTokURL:v4])
  {
    v5 = @"facebookexternalhit/1.1";
  }

  else if ([a1 isInstagramURL:v4])
  {
    v5 = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4";
  }

  else
  {
    v5 = +[LPMetadataProvider _defaultUserAgent];
  }

  return v5;
}

+ (id)simplifiedTitleFromTitle:(id)a3 forMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 titleSimplifiedByDeduplicatingMicroblogUsernameComponents:v6 forMetadata:v7];

  v9 = [a1 titleSimplifiedByDeduplicatingHostname:v8 forMetadata:v7];

  return v9;
}

+ (id)titleSimplifiedByDeduplicatingMicroblogUsernameComponents:(id)a3 forMetadata:(id)a4
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![LPPresentationSpecializations isMicroblogPost:v6])
  {
    v25 = v5;
    goto LABEL_16;
  }

  v7 = [v6 originalURL];
  v28 = [v7 host];
  v8 = [v7 _lp_highLevelDomain];
  v9 = v8;
  if (!v8)
  {
    v9 = [v7 _lp_simplifiedStringForDisplayOnly:0];
  }

  v10 = [v9 lowercaseString];
  if (!v8)
  {
  }

  v27 = [v10 _lp_hostByStrippingTopLevelDomain];
  v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+?)\\s*\\(@([^@]*)@([^@]*)\\)$" options:8 error:0];
  v12 = [v11 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  if ([v12 numberOfRanges] == 4)
  {
    v13 = [v12 rangeAtIndex:3];
    v15 = [v5 substringWithRange:{v13, v14}];
    v29[0] = v28;
    v29[1] = v10;
    v29[2] = v27;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    v17 = [v15 _lp_isEqualToAnyIgnoringCase:v16];

    if (v17)
    {
      v18 = [v12 rangeAtIndex:1];
      v20 = [v5 substringWithRange:{v18, v19}];
      v21 = [v12 rangeAtIndex:2];
      v23 = [v5 substringWithRange:{v21, v22}];
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

  v25 = v5;
LABEL_15:

LABEL_16:

  return v25;
}

+ (id)titleSimplifiedByDeduplicatingHostname:(id)a3 forMetadata:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v34 = a4;
  v35 = [v34 originalURL];
  v5 = [v35 _lp_highLevelDomain];
  v6 = v5;
  if (!v5)
  {
    v6 = [v35 _lp_simplifiedStringForDisplayOnly:0];
  }

  v38 = [v6 lowercaseString];
  if (!v5)
  {
  }

  v36 = [v38 _lp_hostByStrippingTopLevelDomain];
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

      v12 = [v37 componentsSeparatedByString:*(*(&v39 + 1) + 8 * i)];
      if ([v12 count] == 2)
      {
        v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v14 = [v12 objectAtIndexedSubscript:0];
        v15 = [v14 stringByTrimmingCharactersInSet:v13];

        v16 = [v12 objectAtIndexedSubscript:1];
        v17 = [v16 stringByTrimmingCharactersInSet:v13];

        v18 = [v15 lowercaseString];
        v19 = [v17 lowercaseString];
        [v18 _lp_similarityToString:v38];
        v21 = v20;
        [v18 _lp_similarityToString:v36];
        if (v21 >= v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        [v19 _lp_similarityToString:v38];
        v25 = v24;
        [v19 _lp_similarityToString:v36];
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
    v31 = [v7 _lp_stringByTrimmingWhitespace];
  }

  else
  {
LABEL_31:
    v31 = v37;
  }

  v32 = v31;

  return v32;
}

+ (id)businessChatURLToOpenForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 pathComponents];
  if ([v4 count] >= 2)
  {
    v6 = [v3 _lp_components];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [MEMORY[0x1E696AF20] componentsWithString:@"messages://open"];
      v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
      [v7 addObject:v9];
      v10 = [v4 objectAtIndexedSubscript:1];
      v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v10];
      [v7 addObject:v11];
      v12 = [v6 queryItems];
      [v7 addObjectsFromArray:v12];

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

+ (id)URLToOpenForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v5 _lp_isEqualIgnoringCase:@"bcrw.apple.com"];

  v7 = v4;
  if (v6)
  {
    v8 = [a1 businessChatURLToOpenForURL:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v7 = v10;
  }

  v11 = urlByRemovingTrackingInformation(v7);

  return v11;
}

@end