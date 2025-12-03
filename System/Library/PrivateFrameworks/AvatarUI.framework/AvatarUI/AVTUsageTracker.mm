@interface AVTUsageTracker
+ (id)currentSession;
+ (void)trackCountOfMemojiInStore:(id)store;
+ (void)trackCountOfMemojiInStore:(id)store withCoreAnalyticsClient:(id)client;
+ (void)trackStickerSentFromHostBundleIdentifier:(id)identifier;
+ (void)trackStickerSentFromHostBundleIdentifier:(id)identifier withCoreAnalyticsClient:(id)client;
@end

@implementation AVTUsageTracker

+ (id)currentSession
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  usageTrackingSession = [v2 usageTrackingSession];

  return usageTrackingSession;
}

+ (void)trackStickerSentFromHostBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(AVTCoreAnalyticsClient);
  [self trackStickerSentFromHostBundleIdentifier:identifierCopy withCoreAnalyticsClient:v5];
}

+ (void)trackStickerSentFromHostBundleIdentifier:(id)identifier withCoreAnalyticsClient:(id)client
{
  v10[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v6 = [AVTUsageTrackingSession allowListAppNameFromBundleID:identifier];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@StickerSentInApp", @"com.apple.Animoji.Analytics.StickersApp."];
  v9 = @"appName";
  v10[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [clientCopy sendEventForKey:v7 payload:v8];
}

+ (void)trackCountOfMemojiInStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(AVTCoreAnalyticsClient);
  [self trackCountOfMemojiInStore:storeCopy withCoreAnalyticsClient:v5];
}

+ (void)trackCountOfMemojiInStore:(id)store withCoreAnalyticsClient:(id)client
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698E310];
  clientCopy = client;
  storeCopy = store;
  requestForCustomAvatars = [v5 requestForCustomAvatars];
  v9 = [storeCopy avatarsForFetchRequest:requestForCustomAvatars error:0];

  v10 = [v9 count];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@FeatureAdoption", @"com.apple.Memoji.Analytics."];
  v14 = @"memojiCount";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [clientCopy sendEventForKey:v11 payload:v13];
}

@end