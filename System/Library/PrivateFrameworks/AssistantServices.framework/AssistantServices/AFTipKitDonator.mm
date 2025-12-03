@interface AFTipKitDonator
+ (void)_donateToTipsWithIdentifier:(id)identifier bundleID:(id)d context:(id)context userInfo:(id)info;
+ (void)donateAnnounceNotificationsInCarPlaySettingsChange:(int64_t)change;
@end

@implementation AFTipKitDonator

+ (void)donateAnnounceNotificationsInCarPlaySettingsChange:(int64_t)change
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"AFSiriCarPlayAnnounceEnablementType";
  if (change > 4)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E7347FB8[change];
  }

  v5 = v4;
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [self _donateToTipsWithIdentifier:@"com.apple.siri.announce.carplay.settings.changed" bundleID:@"com.apple.siri" context:0 userInfo:v6];

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_donateToTipsWithIdentifier:(id)identifier bundleID:(id)d context:(id)context userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  infoCopy = info;
  if (_AFTipKitDonatorQueue_onceToken != -1)
  {
    dispatch_once(&_AFTipKitDonatorQueue_onceToken, &__block_literal_global_1956);
  }

  v13 = _AFTipKitDonatorQueue_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__AFTipKitDonator__donateToTipsWithIdentifier_bundleID_context_userInfo___block_invoke;
  v18[3] = &unk_1E7349398;
  v19 = identifierCopy;
  v20 = dCopy;
  v21 = contextCopy;
  v22 = infoCopy;
  v14 = infoCopy;
  v15 = contextCopy;
  v16 = dCopy;
  v17 = identifierCopy;
  dispatch_async(v13, v18);
}

void __73__AFTipKitDonator__donateToTipsWithIdentifier_bundleID_context_userInfo___block_invoke(void *a1)
{
  v3 = [objc_alloc(getBMDiscoverabilitySignalEventClass()) initWithIdentifier:a1[4] bundleID:a1[5] context:a1[6] userInfo:a1[7]];
  v1 = [getBMStreamsClass() discoverabilitySignal];
  v2 = [v1 source];
  [v2 sendEvent:v3];
}

@end