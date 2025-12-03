@interface BKDebugViewEntry
+ (id)entryWithTitle:(id)title model:(id)model action:(id)action;
@end

@implementation BKDebugViewEntry

+ (id)entryWithTitle:(id)title model:(id)model action:(id)action
{
  actionCopy = action;
  modelCopy = model;
  titleCopy = title;
  v10 = objc_alloc_init(BKDebugViewEntry);
  [(BKDebugViewEntry *)v10 setTitle:titleCopy];

  [(BKDebugViewEntry *)v10 setModel:modelCopy];
  [(BKDebugViewEntry *)v10 setAction:actionCopy];

  return v10;
}

@end