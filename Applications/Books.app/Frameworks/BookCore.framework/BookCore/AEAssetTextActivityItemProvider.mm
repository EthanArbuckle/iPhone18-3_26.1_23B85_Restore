@interface AEAssetTextActivityItemProvider
+ (id)textItemWithPropertySource:(id)a3;
- (AEAssetTextActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4;
- (id)item;
@end

@implementation AEAssetTextActivityItemProvider

+ (id)textItemWithPropertySource:(id)a3
{
  v3 = a3;
  v4 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:v3];

  v5 = _generateText(v4);

  return v5;
}

- (AEAssetTextActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v12.receiver = self;
  v12.super_class = AEAssetTextActivityItemProvider;
  v10 = [(AEAssetBaseActivityItemProvider *)&v12 initWithDelegate:v7 placeholderItem:v9 propertySource:v6];

  return v10;
}

- (id)item
{
  v3 = [(AEAssetTextActivityItemProvider *)self activityType];
  v4 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  [v4 setActivityType:v3];

  v5 = [(AEAssetTextActivityItemProvider *)self activityType];
  if ([(AEAssetBaseActivityItemProvider *)self shouldShareActivityType:v5])
  {
    v6 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    v7 = _generateText(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end