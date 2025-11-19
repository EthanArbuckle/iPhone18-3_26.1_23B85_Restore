@interface TUIElementConfigurationSection
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementConfigurationSection

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:137 node:var0];
  [v8 setName:v9];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 finalizeConfiguration];
  v8 = [v10 name];
  if (v8 && v7)
  {
    v9 = [v10 name];
    [v6 addConfigurationData:v7 withKey:v9];
  }
}

@end