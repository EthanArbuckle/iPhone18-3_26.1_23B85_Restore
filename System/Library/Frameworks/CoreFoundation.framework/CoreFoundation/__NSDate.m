@interface __NSDate
- (__NSDate)initWithTimeIntervalSinceReferenceDate:(double)a3;
- (void)dealloc;
@end

@implementation __NSDate

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSDate;
  [(__NSDate *)&v3 dealloc];
  v2 = *MEMORY[0x1E69E9840];
}

- (__NSDate)initWithTimeIntervalSinceReferenceDate:(double)a3
{
  v4 = [NSDate alloc];

  return [(NSDate *)v4 initWithTimeIntervalSinceReferenceDate:a3];
}

@end