@interface TUIElementConfigurationData
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementConfigurationData

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a3;
  v8 = a5;
  v9 = [v8 stringForAttribute:137 node:a4.var0];
  v10 = [v8 objectForAttribute:217 node:a4.var0];

  if (v9 && v10)
  {
    [v11 addConfigurationData:v10 withKey:v9];
  }
}

@end