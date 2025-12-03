@interface AEAssetTextActivityItemProvider
+ (id)textItemWithPropertySource:(id)source;
- (AEAssetTextActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source;
- (id)item;
@end

@implementation AEAssetTextActivityItemProvider

+ (id)textItemWithPropertySource:(id)source
{
  sourceCopy = source;
  v4 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];

  v5 = _generateText(v4);

  return v5;
}

- (AEAssetTextActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source
{
  sourceCopy = source;
  delegateCopy = delegate;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v12.receiver = self;
  v12.super_class = AEAssetTextActivityItemProvider;
  v10 = [(AEAssetBaseActivityItemProvider *)&v12 initWithDelegate:delegateCopy placeholderItem:v9 propertySource:sourceCopy];

  return v10;
}

- (id)item
{
  activityType = [(AEAssetTextActivityItemProvider *)self activityType];
  propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  [propertyProvider setActivityType:activityType];

  activityType2 = [(AEAssetTextActivityItemProvider *)self activityType];
  if ([(AEAssetBaseActivityItemProvider *)self shouldShareActivityType:activityType2])
  {
    propertyProvider2 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    v7 = _generateText(propertyProvider2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end