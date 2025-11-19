@interface VOTCustomActionCategory
- (VOTCustomActionCategory)init;
@end

@implementation VOTCustomActionCategory

- (VOTCustomActionCategory)init
{
  v6.receiver = self;
  v6.super_class = VOTCustomActionCategory;
  v2 = [(VOTCustomActionCategory *)&v6 init];
  v3 = +[NSMutableArray array];
  actions = v2->_actions;
  v2->_actions = v3;

  return v2;
}

@end