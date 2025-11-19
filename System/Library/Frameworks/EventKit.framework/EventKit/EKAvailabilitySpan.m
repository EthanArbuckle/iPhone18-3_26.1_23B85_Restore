@interface EKAvailabilitySpan
- (EKAvailabilitySpan)init;
- (EKAvailabilitySpan)initWithStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5;
- (NSString)description;
@end

@implementation EKAvailabilitySpan

- (EKAvailabilitySpan)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Please use the appropriate designated initializer for this class." userInfo:0];
  objc_exception_throw(v2);
}

- (EKAvailabilitySpan)initWithStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [EKAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [EKAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
LABEL_3:
  if ([v10 compare:v12] == 1)
  {
    [EKAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
  }

  v16.receiver = self;
  v16.super_class = EKAvailabilitySpan;
  v13 = [(EKAvailabilitySpan *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_startDate, a3);
    objc_storeStrong(&v14->_endDate, a4);
    v14->_type = a5;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = EKAvailabilitySpan;
  v4 = [(EKAvailabilitySpan *)&v14 description];
  v5 = [(EKAvailabilitySpan *)self startDate];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 descriptionWithLocale:v6];
  v8 = [(EKAvailabilitySpan *)self endDate];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v8 descriptionWithLocale:v9];
  v11 = EKAvailabilitySpanTypeAsString([(EKAvailabilitySpan *)self type]);
  v12 = [v3 stringWithFormat:@"[%@] startDate: [%@] endDate: [%@] type: [%@]", v4, v7, v10, v11];

  return v12;
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAvailabilitySpan.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"startDate != nil"}];
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAvailabilitySpan.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"endDate != nil"}];
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAvailabilitySpan.m" lineNumber:23 description:@"'startDate' must not be after 'endDate'"];
}

@end