@interface BKDebugViewCellModel
+ (id)modelWithAccessoryType:(int64_t)type;
+ (id)modelWithAccessoryView:(id)view;
+ (id)modelWithDetailLineBreakMode:(int64_t)mode detailTextBlock:(id)block;
@end

@implementation BKDebugViewCellModel

+ (id)modelWithAccessoryView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v4 setAccessoryView:viewCopy];

  return v4;
}

+ (id)modelWithAccessoryType:(int64_t)type
{
  v4 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v4 setAccessoryType:type];

  return v4;
}

+ (id)modelWithDetailLineBreakMode:(int64_t)mode detailTextBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v6 setDetailLineBreakMode:mode];
  [(BKDebugViewCellModel *)v6 setDetailTextBlock:blockCopy];

  return v6;
}

@end