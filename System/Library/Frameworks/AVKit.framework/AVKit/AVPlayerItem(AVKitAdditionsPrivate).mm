@interface AVPlayerItem(AVKitAdditionsPrivate)
- (id)avkit_data;
- (id)avkit_dataOrNil;
- (id)avkit_valueForAVKitProperty:()AVKitAdditionsPrivate;
- (id)contentSubtitle;
- (id)contentTitle;
- (id)interstitialTimeRanges;
- (uint64_t)interstitialPolicyEnforcement;
- (uint64_t)isAVKitIntegratedTimelineDisabled;
- (void)avkit_airMessageSendExternalMetadata;
- (void)avkit_airMessageSendToAppleTV;
- (void)avkit_setValue:()AVKitAdditionsPrivate forAVKitProperty:;
- (void)disableAVKitIntegratedTimeline;
- (void)externalMetadata;
- (void)setContentSubtitle:()AVKitAdditionsPrivate;
- (void)setContentTitle:()AVKitAdditionsPrivate;
- (void)setExternalMetadata:()AVKitAdditionsPrivate;
- (void)setInterstitialTimeRanges:()AVKitAdditionsPrivate;
@end

@implementation AVPlayerItem(AVKitAdditionsPrivate)

- (void)setContentSubtitle:()AVKitAdditionsPrivate
{
  v8 = [a3 copy];
  contentSubtitle = [self contentSubtitle];
  v5 = [v8 isEqual:contentSubtitle];

  if ((v5 & 1) == 0)
  {
    avkit_data = [self avkit_data];
    customPropertyStorage = [avkit_data customPropertyStorage];
    [customPropertyStorage setObject:v8 forKeyedSubscript:@"contentSubtitle"];
  }
}

- (id)contentSubtitle
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];
  v3 = [customPropertyStorage objectForKeyedSubscript:@"contentSubtitle"];

  return v3;
}

- (void)setContentTitle:()AVKitAdditionsPrivate
{
  v8 = [a3 copy];
  contentTitle = [self contentTitle];
  v5 = [v8 isEqual:contentTitle];

  if ((v5 & 1) == 0)
  {
    avkit_data = [self avkit_data];
    customPropertyStorage = [avkit_data customPropertyStorage];
    [customPropertyStorage setObject:v8 forKeyedSubscript:@"contentTitle"];
  }
}

- (id)contentTitle
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];
  v3 = [customPropertyStorage objectForKeyedSubscript:@"contentTitle"];

  return v3;
}

- (id)avkit_data
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  if (!avkit_dataOrNil)
  {
    avkit_dataOrNil = objc_alloc_init(AVPlayerItemAVKitData);
    [self setAVKitData:avkit_dataOrNil];
  }

  aVKitData = [self AVKitData];

  return aVKitData;
}

- (id)avkit_dataOrNil
{
  aVKitData = [self AVKitData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    aVKitData2 = [self AVKitData];
  }

  else
  {
    aVKitData2 = 0;
  }

  return aVKitData2;
}

- (void)setExternalMetadata:()AVKitAdditionsPrivate
{
  v9 = [a3 copy];
  externalMetadata = [self externalMetadata];
  v5 = [v9 isEqualToArray:externalMetadata];

  if ((v5 & 1) == 0)
  {
    avkit_data = [self avkit_data];
    customPropertyStorage = [avkit_data customPropertyStorage];
    [customPropertyStorage setObject:v9 forKeyedSubscript:@"externalMetadata"];

    v8 = +[AVAirMessageDispatcher shared];
    LODWORD(customPropertyStorage) = [v8 haveAirPlayService];

    if (customPropertyStorage)
    {
      [self avkit_airMessageSendExternalMetadata];
    }
  }
}

- (void)externalMetadata
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];
  v3 = [customPropertyStorage objectForKeyedSubscript:@"externalMetadata"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)interstitialTimeRanges
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];

  v3 = [customPropertyStorage objectForKeyedSubscript:@"interstitialTimeRanges"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)disableAVKitIntegratedTimeline
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AVPlayerItem(AVKitAdditionsPrivate) disableAVKitIntegratedTimeline]";
    v7 = 1024;
    v8 = 155;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s %d", &v5, 0x12u);
  }

  avkit_data = [self avkit_data];
  customPropertyStorage = [avkit_data customPropertyStorage];
  [customPropertyStorage setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isAVKitIntegratedTimelineDisabled"];
}

- (uint64_t)isAVKitIntegratedTimelineDisabled
{
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];

  v3 = [customPropertyStorage objectForKeyedSubscript:@"isAVKitIntegratedTimelineDisabled"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setInterstitialTimeRanges:()AVKitAdditionsPrivate
{
  v8 = [a3 copy];
  interstitialTimeRanges = [self interstitialTimeRanges];
  v5 = [v8 isEqualToArray:interstitialTimeRanges];

  if ((v5 & 1) == 0)
  {
    avkit_data = [self avkit_data];
    customPropertyStorage = [avkit_data customPropertyStorage];
    [customPropertyStorage setObject:v8 forKeyedSubscript:@"interstitialTimeRanges"];
  }
}

- (uint64_t)interstitialPolicyEnforcement
{
  avkit_data = [self avkit_data];
  interstitialPolicyEnforcement = [avkit_data interstitialPolicyEnforcement];

  return interstitialPolicyEnforcement;
}

- (void)avkit_airMessageSendToAppleTV
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[AVAirMessageDispatcher shared];
  haveAirPlayService = [v2 haveAirPlayService];

  if (haveAirPlayService)
  {
    v4 = _avairlog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AVPlayerItem(AVKitAdditionsPrivate) avkit_airMessageSendToAppleTV]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Sending all available information for this player item.", &v7, 0xCu);
    }

    externalMetadata = [self externalMetadata];
    v6 = [externalMetadata count];

    if (v6)
    {
      [self avkit_airMessageSendExternalMetadata];
    }
  }
}

- (void)avkit_airMessageSendExternalMetadata
{
  v11 = *MEMORY[0x1E69E9840];
  externalMetadata = [self externalMetadata];
  avkitACMIdentifier = [self avkitACMIdentifier];
  v4 = [AVAirMessage messageWithExternalMetadata:externalMetadata itemIdentifier:avkitACMIdentifier];

  if (v4)
  {
    v5 = _avairlog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AVPlayerItem(AVKitAdditionsPrivate) avkit_airMessageSendExternalMetadata]";
      v9 = 2048;
      v10 = [externalMetadata count];
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending external metadata (%ld items)", &v7, 0x16u);
    }

    v6 = +[AVAirMessageDispatcher shared];
    [v6 sendMessage:v4 completion:&__block_literal_global_2968];
  }
}

- (id)avkit_valueForAVKitProperty:()AVKitAdditionsPrivate
{
  v4 = a3;
  avkit_dataOrNil = [self avkit_dataOrNil];
  customPropertyStorage = [avkit_dataOrNil customPropertyStorage];
  v7 = [customPropertyStorage objectForKeyedSubscript:v4];

  return v7;
}

- (void)avkit_setValue:()AVKitAdditionsPrivate forAVKitProperty:
{
  v6 = a4;
  v7 = a3;
  [self willChangeValueForKey:v6];
  avkit_data = [self avkit_data];
  customPropertyStorage = [avkit_data customPropertyStorage];
  [customPropertyStorage setObject:v7 forKeyedSubscript:v6];

  [self didChangeValueForKey:v6];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AVPlayerItemAVKitDataDidChangeNotification" object:self];
}

@end