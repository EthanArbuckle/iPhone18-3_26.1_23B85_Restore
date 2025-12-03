@interface HSPCDataProvider
- (HSPCDataProvider)initWithCoordinator:(id)coordinator configuration:(id)configuration;
- (id)loadData;
- (id)userFacingStringForItem:(id)item;
@end

@implementation HSPCDataProvider

- (HSPCDataProvider)initWithCoordinator:(id)coordinator configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = HSPCDataProvider;
  v7 = [(HSPCDataProvider *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_config, configuration);
    items = v8->_items;
    v8->_items = &__NSArray0__struct;
  }

  return v8;
}

- (id)userFacingStringForItem:(id)item
{
  itemCopy = item;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)loadData
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

@end