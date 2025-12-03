@interface SAPhoneCallEmergencySnippet
- (id)sr_sirilandShim;
@end

@implementation SAPhoneCallEmergencySnippet

- (id)sr_sirilandShim
{
  v3 = objc_alloc_init(SFCard);
  title = [(SAPhoneCallEmergencySnippet *)self title];
  [v3 setTitle:title];

  [v3 setType:1];
  selfCopy = self;
  aceId = [(SAPhoneCallEmergencySnippet *)self aceId];
  [v3 setCardId:aceId];

  [v3 setSource:2];
  v28 = objc_alloc_init(SFNullCardSection);
  v30 = v28;
  v6 = [NSArray arrayWithObjects:&v30 count:1];
  [v3 setCardSections:v6];

  v7 = [[INStartCallIntent alloc] initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:2 contacts:0 callCapability:0];
  backingStore = [v7 backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = backingStore;
    v10 = objc_alloc_init(_INPBIntentMetadata);
    [v10 setLaunchId:@"x-apple-siri-app://com.apple.InCallService"];
    [v10 setSystemExtensionBundleId:@"com.apple.InCallService.IntentsUI"];
    [v9 setIntentMetadata:v10];
    [v7 setBackingStore:v9];
  }

  v11 = [[INStartCallIntentResponse alloc] initWithCode:1 userActivity:0];
  backingStore2 = [v7 backingStore];
  data = [backingStore2 data];

  [v3 setIntentMessageData:data];
  [v3 setIntentMessageName:@"sirikit.intent.call.StartCallIntent"];
  backingStore3 = [v11 backingStore];
  data2 = [backingStore3 data];
  [v3 setIntentResponseMessageData:data2];

  [v3 setIntentResponseMessageName:@"sirikit.intent.call.StartCallIntentResponse"];
  v16 = objc_alloc_init(SACardSnippet);
  v17 = [[_SFPBCard alloc] initWithFacade:v3];
  data3 = [v17 data];
  [v16 setCardData:data3];

  v19 = objc_alloc_init(SAUISash);
  LODWORD(v17) = AFIsInternalInstall();
  v20 = sub_100078408(@"EMERGENCY_CALL_SASH_TITLE");
  v21 = v20;
  if (v17)
  {
    v22 = @"%@ (INTERNAL ONLY: LEGACY FLOW)";
  }

  else
  {
    v22 = @"%@";
  }

  v23 = [NSString stringWithFormat:v22, v20];
  [v19 setTitle:v23];

  v24 = objc_alloc_init(SAUIColor);
  [v24 setRedValue:255];
  [v24 setGreenValue:255];
  [v24 setBlueValue:255];
  [v24 setAlpha:&off_10016E4D0];
  [v19 setTextColor:v24];
  v25 = objc_alloc_init(SAUIColor);
  [v25 setRedValue:255];
  [v25 setGreenValue:0];
  [v25 setBlueValue:0];
  [v25 setAlpha:&off_10016E4D0];
  [v19 setBackgroundColor:v25];
  [v16 setSash:v19];
  [v16 sr_applySnippetProperties:selfCopy];
  v26 = +[NSNotificationCenter defaultCenter];
  [v26 postNotificationName:AFUIDidShowEmergencyCallViewNotification object:0];

  return v16;
}

@end