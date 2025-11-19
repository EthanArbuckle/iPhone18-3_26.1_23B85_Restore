@interface ARTimeKeyedList
- (ARTimeKeyedList)init;
- (ARTimeKeyedList)initWithMaxSize:(unint64_t)a3;
- (id)description;
- (id)nearestObjectForTime:(double)a3;
- (unint64_t)insertionIndexForTime:(id)a3;
- (void)appendObject:(id)a3 forTime:(double)a4;
- (void)clear;
@end

@implementation ARTimeKeyedList

- (ARTimeKeyedList)initWithMaxSize:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = ARTimeKeyedList;
  v4 = [(ARTimeKeyedList *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxSize = a3;
    v6 = objc_opt_new();
    times = v5->_times;
    v5->_times = v6;

    v8 = objc_opt_new();
    objects = v5->_objects;
    v5->_objects = v8;
  }

  return v5;
}

- (ARTimeKeyedList)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARTimeKeyedList init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return [(ARTimeKeyedList *)self initWithMaxSize:0];
}

- (unint64_t)insertionIndexForTime:(id)a3
{
  times = self->_times;
  v4 = a3;
  v5 = [(NSMutableArray *)times indexOfObject:v4 inSortedRange:0 options:[(NSMutableArray *)times count] usingComparator:1024, &__block_literal_global_112];

  return v5;
}

- (id)nearestObjectForTime:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [(ARTimeKeyedList *)self insertionIndexForTime:v5];
  if (v6)
  {
    v7 = [(NSMutableArray *)self->_times objectAtIndexedSubscript:v6 - 1];
    [v7 doubleValue];
    v9 = v8;

    v10 = [(NSMutableArray *)self->_objects objectAtIndexedSubscript:v6 - 1];
  }

  else
  {
    v10 = 0;
    v9 = -1.79769313e308;
  }

  if (v6 < -[NSMutableArray count](self->_times, "count") && (-[NSMutableArray objectAtIndexedSubscript:](self->_times, "objectAtIndexedSubscript:", v6), v11 = objc_claimAutoreleasedReturnValue(), [v11 doubleValue], v13 = v12, v11, v13 - a3 < a3 - v9))
  {
    v14 = [(NSMutableArray *)self->_objects objectAtIndexedSubscript:v6, v13 - a3];
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

- (void)appendObject:(id)a3 forTime:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v9 = [v6 numberWithDouble:a4];
  v8 = [(ARTimeKeyedList *)self insertionIndexForTime:v9];
  [(NSMutableArray *)self->_times insertObject:v9 atIndex:v8];
  [(NSMutableArray *)self->_objects insertObject:v7 atIndex:v8];

  if ([(NSMutableArray *)self->_times count]> self->_maxSize)
  {
    [(NSMutableArray *)self->_times removeObjectAtIndex:0];
    [(NSMutableArray *)self->_objects removeObjectAtIndex:0];
  }
}

- (void)clear
{
  [(NSMutableArray *)self->_times removeAllObjects];
  objects = self->_objects;

  [(NSMutableArray *)objects removeAllObjects];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = ARTimeKeyedList;
  v4 = [(ARTimeKeyedList *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ MaxSize: %lu\n", v4, self->_maxSize];

  [v5 appendFormat:@"Times: %@\n", self->_times];
  [v5 appendFormat:@"Objects: %@\n", self->_objects];

  return v5;
}

@end