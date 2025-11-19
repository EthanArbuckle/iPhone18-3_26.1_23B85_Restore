@interface FMCellChange
- (FMCellChange)initWithTime:(id)a3 andTimestamp:(unint64_t)a4 andCell:(id)a5;
@end

@implementation FMCellChange

- (FMCellChange)initWithTime:(id)a3 andTimestamp:(unint64_t)a4 andCell:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMCellChange;
  v11 = [(FMCellChange *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_time, a3);
    v12->_timestamp = a4;
    objc_storeStrong(&v12->_toCell, a5);
    v13 = v12;
  }

  return v12;
}

@end