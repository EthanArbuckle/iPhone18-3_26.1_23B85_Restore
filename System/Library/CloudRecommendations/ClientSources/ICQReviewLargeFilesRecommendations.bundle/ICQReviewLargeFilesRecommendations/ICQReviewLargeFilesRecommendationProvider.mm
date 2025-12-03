@interface ICQReviewLargeFilesRecommendationProvider
- (void)recommendationsForThresholds:(id)thresholds afterTimestamp:(id)timestamp completion:(id)completion;
@end

@implementation ICQReviewLargeFilesRecommendationProvider

- (void)recommendationsForThresholds:(id)thresholds afterTimestamp:(id)timestamp completion:(id)completion
{
  thresholdsCopy = thresholds;
  timestampCopy = timestamp;
  completionCopy = completion;
  isFeatureFlagEnabled = [(ICQReviewLargeFilesRecommendationProvider *)self isFeatureFlagEnabled];
  v12 = _ICQGetLogSystem();
  v13 = v12;
  if (isFeatureFlagEnabled)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = timestampCopy;
      v18 = 2112;
      v19 = thresholdsCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "We're being asked for Review Large Files recommendations with timestamp: %@, thresholds: %@", buf, 0x16u);
    }

    [ICQUICoreSpotlightQueryHelper updateThresholdsForLargeFilesWithDictionary:thresholdsCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_E24;
    v14[3] = &unk_4148;
    v14[4] = self;
    v15 = completionCopy;
    [ICQUICoreSpotlightQueryHelper fetchiCloudDriveItemsUsingThresholds:thresholdsCopy shouldCheckTrash:1 completion:v14];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_131C(v13);
    }

    (*(completionCopy + 2))(completionCopy, &__NSArray0__struct, 0);
  }
}

@end