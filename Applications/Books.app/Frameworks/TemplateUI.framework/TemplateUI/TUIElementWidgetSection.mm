@interface TUIElementWidgetSection
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementWidgetSection

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:137 node:var0];
  [v8 setSectionName:v9];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v9 = a4;
  v6 = a3;
  v7 = [v6 finalizeWidgetWithParent:0];
  v8 = [v6 sectionName];

  if (v8 && v7)
  {
    [v9 addWidgetData:v7 withKey:v8];
  }
}

@end