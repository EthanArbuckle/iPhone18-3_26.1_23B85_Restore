@interface FMCongestionArea
- (NSArray)badCells;
- (NSArray)goodCells;
- (id)description;
- (id)init:(id)init prevCells:(id)cells;
- (void)addBadCell:(id)cell;
- (void)addGoodCell:(id)cell;
- (void)exitedAt:(id)at;
- (void)finalize;
- (void)invalidate;
@end

@implementation FMCongestionArea

- (id)init:(id)init prevCells:(id)cells
{
  initCopy = init;
  cellsCopy = cells;
  v17.receiver = self;
  v17.super_class = FMCongestionArea;
  v9 = [(FMCongestionArea *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_curState = 0;
    objc_storeStrong(&v9->_startTimestamp, init);
    objc_storeStrong(&v10->_prevCells, cells);
    v11 = objc_alloc_init(NSMutableArray);
    badCells = v10->_badCells;
    v10->_badCells = v11;

    endTimestamp = v10->_endTimestamp;
    v10->_endTimestamp = 0;

    goodCells = v10->_goodCells;
    v10->_goodCells = 0;

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100208508();
    }

    v15 = v10;
  }

  return v10;
}

- (void)exitedAt:(id)at
{
  atCopy = at;
  if (![(FMCongestionArea *)self curState])
  {
    self->_curState = 1;
    objc_storeStrong(&self->_endTimestamp, at);
    v6 = objc_alloc_init(NSMutableArray);
    goodCells = self->_goodCells;
    self->_goodCells = v6;

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100208570();
    }
  }
}

- (void)addBadCell:(id)cell
{
  cellCopy = cell;
  if (![(FMCongestionArea *)self curState])
  {
    congestionMetric = [cellCopy congestionMetric];

    if (congestionMetric)
    {
      [(NSMutableArray *)self->_badCells addObject:cellCopy];
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1002085D8();
      }
    }

    else
    {
      self->_curState = 3;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100208640();
      }
    }
  }
}

- (void)addGoodCell:(id)cell
{
  cellCopy = cell;
  if ([(FMCongestionArea *)self curState]== 1)
  {
    [(NSMutableArray *)self->_goodCells addObject:cellCopy];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002086B4();
    }

    if ([(NSMutableArray *)self->_badCells containsObject:cellCopy])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_10020871C();
      }

      [(NSMutableArray *)self->_badCells removeObject:cellCopy];
    }
  }
}

- (void)invalidate
{
  if (![(FMCongestionArea *)self curState]|| [(FMCongestionArea *)self curState]== 1)
  {
    self->_curState = 3;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100208784();
    }
  }
}

- (void)finalize
{
  if ([(FMCongestionArea *)self curState]== 1)
  {
    self->_curState = 2;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002087EC();
    }
  }
}

- (NSArray)badCells
{
  v2 = [(NSMutableArray *)self->_badCells copy];

  return v2;
}

- (NSArray)goodCells
{
  v2 = [(NSMutableArray *)self->_goodCells copy];

  return v2;
}

- (id)description
{
  curState = [(FMCongestionArea *)self curState];
  startTimestamp = [(FMCongestionArea *)self startTimestamp];
  prevCells = [(FMCongestionArea *)self prevCells];
  endTimestamp = [(FMCongestionArea *)self endTimestamp];
  badCells = [(FMCongestionArea *)self badCells];
  goodCells = [(FMCongestionArea *)self goodCells];
  v9 = [NSString stringWithFormat:@"curState %u, startTimestamp %@, prevCells %@, endTimestamp %@, badCells %@, goodCells %@", curState, startTimestamp, prevCells, endTimestamp, badCells, goodCells];

  return v9;
}

@end