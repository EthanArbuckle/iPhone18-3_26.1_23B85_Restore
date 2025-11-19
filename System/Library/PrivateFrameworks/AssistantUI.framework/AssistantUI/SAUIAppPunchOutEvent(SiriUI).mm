@interface SAUIAppPunchOutEvent(SiriUI)
+ (id)afui_appPunchOutEventWithRefId:()SiriUI URL:appDisplayName:bundleId:;
@end

@implementation SAUIAppPunchOutEvent(SiriUI)

+ (id)afui_appPunchOutEventWithRefId:()SiriUI URL:appDisplayName:bundleId:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [a4 scheme];
    v14 = [v12 stringWithFormat:@"%@://%@", v13, @"#TRUNCATED"];

    a4 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  }

  v15 = objc_alloc_init(MEMORY[0x277D479F8]);
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  [v15 setAceId:v17];

  [v15 setRefId:v9];
  [v15 setPunchOutUri:a4];
  [v15 setAppDisplayName:v10];
  [v15 setBundleId:v11];

  return v15;
}

@end