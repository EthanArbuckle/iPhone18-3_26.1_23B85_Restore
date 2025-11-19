@interface FMCongestionArea
- (NSArray)badCells;
- (NSArray)goodCells;
- (id)description;
- (id)init:(id)a3 prevCells:(id)a4;
- (void)addBadCell:(id)a3;
- (void)addGoodCell:(id)a3;
- (void)exitedAt:(id)a3;
- (void)finalize;
- (void)invalidate;
@end

@implementation FMCongestionArea

- (id)init:(id)a3 prevCells:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = FMCongestionArea;
  v9 = [(FMCongestionArea *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_curState = 0;
    objc_storeStrong(&v9->_startTimestamp, a3);
    objc_storeStrong(&v10->_prevCells, a4);
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

- (void)exitedAt:(id)a3
{
  v5 = a3;
  if (![(FMCongestionArea *)self curState])
  {
    self->_curState = 1;
    objc_storeStrong(&self->_endTimestamp, a3);
    v6 = objc_alloc_init(NSMutableArray);
    goodCells = self->_goodCells;
    self->_goodCells = v6;

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100208570();
    }
  }
}

- (void)addBadCell:(id)a3
{
  v4 = a3;
  if (![(FMCongestionArea *)self curState])
  {
    v5 = [v4 congestionMetric];

    if (v5)
    {
      [(NSMutableArray *)self->_badCells addObject:v4];
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

- (void)addGoodCell:(id)a3
{
  v4 = a3;
  if ([(FMCongestionArea *)self curState]== 1)
  {
    [(NSMutableArray *)self->_goodCells addObject:v4];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002086B4();
    }

    if ([(NSMutableArray *)self->_badCells containsObject:v4])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_10020871C();
      }

      [(NSMutableArray *)self->_badCells removeObject:v4];
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
  v3 = [(FMCongestionArea *)self curState];
  v4 = [(FMCongestionArea *)self startTimestamp];
  v5 = [(FMCongestionArea *)self prevCells];
  v6 = [(FMCongestionArea *)self endTimestamp];
  v7 = [(FMCongestionArea *)self badCells];
  v8 = [(FMCongestionArea *)self goodCells];
  v9 = [NSString stringWithFormat:@"curState %u, startTimestamp %@, prevCells %@, endTimestamp %@, badCells %@, goodCells %@", v3, v4, v5, v6, v7, v8];

  return v9;
}

@end