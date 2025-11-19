@interface BKDebugViewEntry
+ (id)entryWithTitle:(id)a3 model:(id)a4 action:(id)a5;
@end

@implementation BKDebugViewEntry

+ (id)entryWithTitle:(id)a3 model:(id)a4 action:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(BKDebugViewEntry);
  [(BKDebugViewEntry *)v10 setTitle:v9];

  [(BKDebugViewEntry *)v10 setModel:v8];
  [(BKDebugViewEntry *)v10 setAction:v7];

  return v10;
}

@end