@interface HDActivityDemoDataStore
+ (BOOL)shouldShowActivityDemoData;
+ (id)demoStatisticsDataForTypeIdentifier:(id)identifier;
+ (id)demoValueForKey:(id)key withDataTypeIdentifier:(id)identifier;
@end

@implementation HDActivityDemoDataStore

+ (BOOL)shouldShowActivityDemoData
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"showDemoActivityData"];

  return v3;
}

+ (id)demoValueForKey:(id)key withDataTypeIdentifier:(id)identifier
{
  keyCopy = key;
  v7 = sub_3CFC(self, identifier);
  v8 = [v7 stringByAppendingString:keyCopy];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 valueForKey:v8];

  return v10;
}

+ (id)demoStatisticsDataForTypeIdentifier:(id)identifier
{
  v3 = sub_3CFC(self, identifier);
  v4 = [v3 stringByAppendingString:@".array"];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

@end