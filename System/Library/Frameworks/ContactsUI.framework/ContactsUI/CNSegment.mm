@interface CNSegment
- (BOOL)isValid;
- (CNSegment)initWithStart:(int64_t)start end:(int64_t)end;
- (unint64_t)count;
- (unint64_t)indexOffsetFrom:(unint64_t)from;
@end

@implementation CNSegment

- (unint64_t)indexOffsetFrom:(unint64_t)from
{
  start = [(CNSegment *)self start];
  unsignedIntegerValue = [start unsignedIntegerValue] + from;

  v7 = [(CNSegment *)self end];
  if (unsignedIntegerValue > [v7 unsignedIntegerValue])
  {
    v8 = [(CNSegment *)self end];
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (unint64_t)count
{
  v3 = [(CNSegment *)self end];
  unsignedIntegerValue = [v3 unsignedIntegerValue];
  start = [(CNSegment *)self start];
  v6 = unsignedIntegerValue - [start unsignedIntegerValue];

  return v6 + 1;
}

- (BOOL)isValid
{
  start = [(CNSegment *)self start];
  if ([start integerValue] < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(CNSegment *)self end];
    v5 = [v4 integerValue] >= 0;
  }

  return v5;
}

- (CNSegment)initWithStart:(int64_t)start end:(int64_t)end
{
  v13.receiver = self;
  v13.super_class = CNSegment;
  v6 = [(CNSegment *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:start];
    start = v6->_start;
    v6->_start = v7;

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:end];
    end = v6->_end;
    v6->_end = v9;

    v11 = v6;
  }

  return v6;
}

@end