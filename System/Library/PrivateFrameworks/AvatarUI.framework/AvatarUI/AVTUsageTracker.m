@interface AVTUsageTracker
+ (id)currentSession;
+ (void)trackCountOfMemojiInStore:(id)a3;
+ (void)trackCountOfMemojiInStore:(id)a3 withCoreAnalyticsClient:(id)a4;
+ (void)trackStickerSentFromHostBundleIdentifier:(id)a3;
+ (void)trackStickerSentFromHostBundleIdentifier:(id)a3 withCoreAnalyticsClient:(id)a4;
@end

@implementation AVTUsageTracker

+ (id)currentSession
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  v3 = [v2 usageTrackingSession];

  return v3;
}

+ (void)trackStickerSentFromHostBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AVTCoreAnalyticsClient);
  [a1 trackStickerSentFromHostBundleIdentifier:v4 withCoreAnalyticsClient:v5];
}

+ (void)trackStickerSentFromHostBundleIdentifier:(id)a3 withCoreAnalyticsClient:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [AVTUsageTrackingSession allowListAppNameFromBundleID:a3];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@StickerSentInApp", @"com.apple.Animoji.Analytics.StickersApp."];
  v9 = @"appName";
  v10[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 sendEventForKey:v7 payload:v8];
}

+ (void)trackCountOfMemojiInStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AVTCoreAnalyticsClient);
  [a1 trackCountOfMemojiInStore:v4 withCoreAnalyticsClient:v5];
}

+ (void)trackCountOfMemojiInStore:(id)a3 withCoreAnalyticsClient:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698E310];
  v6 = a4;
  v7 = a3;
  v8 = [v5 requestForCustomAvatars];
  v9 = [v7 avatarsForFetchRequest:v8 error:0];

  v10 = [v9 count];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@FeatureAdoption", @"com.apple.Memoji.Analytics."];
  v14 = @"memojiCount";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v6 sendEventForKey:v11 payload:v13];
}

@end