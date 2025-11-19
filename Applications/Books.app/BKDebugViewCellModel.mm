@interface BKDebugViewCellModel
+ (id)modelWithAccessoryType:(int64_t)a3;
+ (id)modelWithAccessoryView:(id)a3;
+ (id)modelWithDetailLineBreakMode:(int64_t)a3 detailTextBlock:(id)a4;
@end

@implementation BKDebugViewCellModel

+ (id)modelWithAccessoryView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v4 setAccessoryView:v3];

  return v4;
}

+ (id)modelWithAccessoryType:(int64_t)a3
{
  v4 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v4 setAccessoryType:a3];

  return v4;
}

+ (id)modelWithDetailLineBreakMode:(int64_t)a3 detailTextBlock:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(BKDebugViewCellModel);
  [(BKDebugViewCellModel *)v6 setDetailLineBreakMode:a3];
  [(BKDebugViewCellModel *)v6 setDetailTextBlock:v5];

  return v6;
}

@end