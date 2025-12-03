@interface FMCellChange
- (FMCellChange)initWithTime:(id)time andTimestamp:(unint64_t)timestamp andCell:(id)cell;
@end

@implementation FMCellChange

- (FMCellChange)initWithTime:(id)time andTimestamp:(unint64_t)timestamp andCell:(id)cell
{
  timeCopy = time;
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = FMCellChange;
  v11 = [(FMCellChange *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_time, time);
    v12->_timestamp = timestamp;
    objc_storeStrong(&v12->_toCell, cell);
    v13 = v12;
  }

  return v12;
}

@end