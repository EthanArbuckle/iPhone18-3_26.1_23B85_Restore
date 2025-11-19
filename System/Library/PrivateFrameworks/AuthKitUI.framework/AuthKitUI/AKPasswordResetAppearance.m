@interface AKPasswordResetAppearance
+ (id)actionButtonFont;
+ (id)closeButtonConfiguration;
+ (id)screenTitleFont;
+ (id)serviceNameFont;
@end

@implementation AKPasswordResetAppearance

+ (id)serviceNameFont
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
  v3 = [MEMORY[0x277D75520] defaultMetrics];
  v4 = [v3 scaledFontForFont:v5[0] maximumPointSize:20.0];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v5, 0);

  return v4;
}

+ (id)screenTitleFont
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277D74300] systemFontOfSize:36.0 weight:*MEMORY[0x277D743F8]];
  v3 = [MEMORY[0x277D75520] defaultMetrics];
  v4 = [v3 scaledFontForFont:v5[0] maximumPointSize:40.0];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v5, 0);

  return v4;
}

+ (id)actionButtonFont
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74420]];
  v3 = [MEMORY[0x277D75520] defaultMetrics];
  v4 = [v3 scaledFontForFont:v5[0] maximumPointSize:24.0];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v5, 0);

  return v4;
}

+ (id)closeButtonConfiguration
{
  v13[2] = a1;
  v13[1] = a2;
  v13[0] = [MEMORY[0x277D75230] tintedButtonConfiguration];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v13[0] setImage:?];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v13[0] setCornerStyle:{4, v2}];
  v9 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:2 scale:15.0];
  [v13[0] setPreferredSymbolConfigurationForImage:?];
  MEMORY[0x277D82BD8](v9);
  NSDirectionalEdgeInsetsMake_2();
  [v13[0] setContentInsets:{v3, v4, v5, v6}];
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  [v13[0] setBaseForegroundColor:?];
  v11 = [MEMORY[0x277D75348] systemGray2Color];
  [v13[0] setBaseBackgroundColor:?];
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

@end