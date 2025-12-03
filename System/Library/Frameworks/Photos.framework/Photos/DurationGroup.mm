@interface DurationGroup
- (DurationGroup)initWithStart:(id)start end:(id)end;
- (id)description;
@end

@implementation DurationGroup

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  groupId = self->_groupId;
  [(NSDate *)self->_start timeIntervalSinceReferenceDate];
  v6 = v5;
  [(NSDate *)self->_end timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"id: %lu, start: %flll, stop: %flll", groupId, v6, v7];
}

- (DurationGroup)initWithStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v9 = [(DurationGroup *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_start, start);
    objc_storeStrong(&v10->_end, end);
    v11 = initWithStart_end__ident++;
    v10->_groupId = v11;
  }

  return v10;
}

@end