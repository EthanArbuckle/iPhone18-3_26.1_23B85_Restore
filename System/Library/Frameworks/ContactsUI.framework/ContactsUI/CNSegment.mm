@interface CNSegment
- (BOOL)isValid;
- (CNSegment)initWithStart:(int64_t)a3 end:(int64_t)a4;
- (unint64_t)count;
- (unint64_t)indexOffsetFrom:(unint64_t)a3;
@end

@implementation CNSegment

- (unint64_t)indexOffsetFrom:(unint64_t)a3
{
  v5 = [(CNSegment *)self start];
  v6 = [v5 unsignedIntegerValue] + a3;

  v7 = [(CNSegment *)self end];
  if (v6 > [v7 unsignedIntegerValue])
  {
    v8 = [(CNSegment *)self end];
    v6 = [v8 unsignedIntegerValue];
  }

  return v6;
}

- (unint64_t)count
{
  v3 = [(CNSegment *)self end];
  v4 = [v3 unsignedIntegerValue];
  v5 = [(CNSegment *)self start];
  v6 = v4 - [v5 unsignedIntegerValue];

  return v6 + 1;
}

- (BOOL)isValid
{
  v3 = [(CNSegment *)self start];
  if ([v3 integerValue] < 0)
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

- (CNSegment)initWithStart:(int64_t)a3 end:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = CNSegment;
  v6 = [(CNSegment *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    start = v6->_start;
    v6->_start = v7;

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    end = v6->_end;
    v6->_end = v9;

    v11 = v6;
  }

  return v6;
}

@end