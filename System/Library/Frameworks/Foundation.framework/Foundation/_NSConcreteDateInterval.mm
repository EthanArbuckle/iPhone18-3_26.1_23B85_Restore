@interface _NSConcreteDateInterval
- (_NSConcreteDateInterval)init;
- (_NSConcreteDateInterval)initWithStartDate:(id)date duration:(double)duration;
- (_NSConcreteDateInterval)initWithStartDate:(id)date endDate:(id)endDate;
- (id)endDate;
- (void)dealloc;
@end

@implementation _NSConcreteDateInterval

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSConcreteDateInterval;
  [(_NSConcreteDateInterval *)&v3 dealloc];
}

- (id)endDate
{
  if (self->_duration == 0.0)
  {
    v3 = self->_startDate;

    return v3;
  }

  else
  {
    startDate = self->_startDate;
    v6 = MEMORY[0x1E695DF00];

    return [v6 dateWithTimeInterval:startDate sinceDate:?];
  }
}

- (_NSConcreteDateInterval)init
{
  date = [MEMORY[0x1E695DF00] date];

  return [(_NSConcreteDateInterval *)self initWithStartDate:date duration:0.0];
}

- (_NSConcreteDateInterval)initWithStartDate:(id)date duration:(double)duration
{
  v12 = *MEMORY[0x1E69E9840];
  if (!date)
  {
    selfCopy2 = self;
    v9 = [NSString stringWithFormat:@"Start date is nil!", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  if (duration < 0.0)
  {
    selfCopy2 = self;
    v9 = [NSString stringWithFormat:@"Duration is less than 0!", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    v10 = v9;

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = _NSConcreteDateInterval;
  v6 = [(NSDateInterval *)&v11 init];
  if (v6)
  {
    v6->_startDate = [date copy];
    v6->_duration = duration;
  }

  return v6;
}

- (_NSConcreteDateInterval)initWithStartDate:(id)date endDate:(id)endDate
{
  v16 = *MEMORY[0x1E69E9840];
  if (!date)
  {
    v11 = [NSString stringWithFormat:@"Start date is nil!", _NSMethodExceptionProem(self, a2)];
LABEL_9:
    v12 = v11;

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D940];
    goto LABEL_11;
  }

  if (!endDate)
  {
    v11 = [NSString stringWithFormat:@"End date is nil!", _NSMethodExceptionProem(self, a2)];
    goto LABEL_9;
  }

  if ([date compare:endDate] == 1)
  {
    v12 = [NSString stringWithFormat:@"Start date cannot be later in time than end date!", _NSMethodExceptionProem(self, a2)];

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D920];
LABEL_11:
    objc_exception_throw([v13 exceptionWithName:*v14 reason:v12 userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = _NSConcreteDateInterval;
  v8 = [(NSDateInterval *)&v15 init];
  if (v8)
  {
    v8->_startDate = [date copy];
    [endDate timeIntervalSinceDate:date];
    v8->_duration = v9;
  }

  return v8;
}

@end