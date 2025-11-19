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
  v4 = [a1 contentSubtitle];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [a1 avkit_data];
    v7 = [v6 customPropertyStorage];
    [v7 setObject:v8 forKeyedSubscript:@"contentSubtitle"];
  }
}

- (id)contentSubtitle
{
  v1 = [a1 avkit_dataOrNil];
  v2 = [v1 customPropertyStorage];
  v3 = [v2 objectForKeyedSubscript:@"contentSubtitle"];

  return v3;
}

- (void)setContentTitle:()AVKitAdditionsPrivate
{
  v8 = [a3 copy];
  v4 = [a1 contentTitle];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [a1 avkit_data];
    v7 = [v6 customPropertyStorage];
    [v7 setObject:v8 forKeyedSubscript:@"contentTitle"];
  }
}

- (id)contentTitle
{
  v1 = [a1 avkit_dataOrNil];
  v2 = [v1 customPropertyStorage];
  v3 = [v2 objectForKeyedSubscript:@"contentTitle"];

  return v3;
}

- (id)avkit_data
{
  v2 = [a1 avkit_dataOrNil];
  if (!v2)
  {
    v2 = objc_alloc_init(AVPlayerItemAVKitData);
    [a1 setAVKitData:v2];
  }

  v3 = [a1 AVKitData];

  return v3;
}

- (id)avkit_dataOrNil
{
  v2 = [a1 AVKitData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 AVKitData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setExternalMetadata:()AVKitAdditionsPrivate
{
  v9 = [a3 copy];
  v4 = [a1 externalMetadata];
  v5 = [v9 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [a1 avkit_data];
    v7 = [v6 customPropertyStorage];
    [v7 setObject:v9 forKeyedSubscript:@"externalMetadata"];

    v8 = +[AVAirMessageDispatcher shared];
    LODWORD(v7) = [v8 haveAirPlayService];

    if (v7)
    {
      [a1 avkit_airMessageSendExternalMetadata];
    }
  }
}

- (void)externalMetadata
{
  v1 = [a1 avkit_dataOrNil];
  v2 = [v1 customPropertyStorage];
  v3 = [v2 objectForKeyedSubscript:@"externalMetadata"];
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
  v1 = [a1 avkit_dataOrNil];
  v2 = [v1 customPropertyStorage];

  v3 = [v2 objectForKeyedSubscript:@"interstitialTimeRanges"];
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

  v3 = [a1 avkit_data];
  v4 = [v3 customPropertyStorage];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isAVKitIntegratedTimelineDisabled"];
}

- (uint64_t)isAVKitIntegratedTimelineDisabled
{
  v1 = [a1 avkit_dataOrNil];
  v2 = [v1 customPropertyStorage];

  v3 = [v2 objectForKeyedSubscript:@"isAVKitIntegratedTimelineDisabled"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInterstitialTimeRanges:()AVKitAdditionsPrivate
{
  v8 = [a3 copy];
  v4 = [a1 interstitialTimeRanges];
  v5 = [v8 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [a1 avkit_data];
    v7 = [v6 customPropertyStorage];
    [v7 setObject:v8 forKeyedSubscript:@"interstitialTimeRanges"];
  }
}

- (uint64_t)interstitialPolicyEnforcement
{
  v1 = [a1 avkit_data];
  v2 = [v1 interstitialPolicyEnforcement];

  return v2;
}

- (void)avkit_airMessageSendToAppleTV
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[AVAirMessageDispatcher shared];
  v3 = [v2 haveAirPlayService];

  if (v3)
  {
    v4 = _avairlog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AVPlayerItem(AVKitAdditionsPrivate) avkit_airMessageSendToAppleTV]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Sending all available information for this player item.", &v7, 0xCu);
    }

    v5 = [a1 externalMetadata];
    v6 = [v5 count];

    if (v6)
    {
      [a1 avkit_airMessageSendExternalMetadata];
    }
  }
}

- (void)avkit_airMessageSendExternalMetadata
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 externalMetadata];
  v3 = [a1 avkitACMIdentifier];
  v4 = [AVAirMessage messageWithExternalMetadata:v2 itemIdentifier:v3];

  if (v4)
  {
    v5 = _avairlog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AVPlayerItem(AVKitAdditionsPrivate) avkit_airMessageSendExternalMetadata]";
      v9 = 2048;
      v10 = [v2 count];
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending external metadata (%ld items)", &v7, 0x16u);
    }

    v6 = +[AVAirMessageDispatcher shared];
    [v6 sendMessage:v4 completion:&__block_literal_global_2968];
  }
}

- (id)avkit_valueForAVKitProperty:()AVKitAdditionsPrivate
{
  v4 = a3;
  v5 = [a1 avkit_dataOrNil];
  v6 = [v5 customPropertyStorage];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (void)avkit_setValue:()AVKitAdditionsPrivate forAVKitProperty:
{
  v6 = a4;
  v7 = a3;
  [a1 willChangeValueForKey:v6];
  v8 = [a1 avkit_data];
  v9 = [v8 customPropertyStorage];
  [v9 setObject:v7 forKeyedSubscript:v6];

  [a1 didChangeValueForKey:v6];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"AVPlayerItemAVKitDataDidChangeNotification" object:a1];
}

@end