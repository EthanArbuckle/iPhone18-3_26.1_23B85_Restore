@interface EKAvailabilitySpan
- (EKAvailabilitySpan)init;
- (EKAvailabilitySpan)initWithStartDate:(id)date endDate:(id)endDate type:(int64_t)type;
- (NSString)description;
@end

@implementation EKAvailabilitySpan

- (EKAvailabilitySpan)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Please use the appropriate designated initializer for this class." userInfo:0];
  objc_exception_throw(v2);
}

- (EKAvailabilitySpan)initWithStartDate:(id)date endDate:(id)endDate type:(int64_t)type
{
  dateCopy = date;
  endDateCopy = endDate;
  v12 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
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
  if ([dateCopy compare:v12] == 1)
  {
    [EKAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
  }

  v16.receiver = self;
  v16.super_class = EKAvailabilitySpan;
  v13 = [(EKAvailabilitySpan *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_startDate, date);
    objc_storeStrong(&v14->_endDate, endDate);
    v14->_type = type;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = EKAvailabilitySpan;
  v4 = [(EKAvailabilitySpan *)&v14 description];
  startDate = [(EKAvailabilitySpan *)self startDate];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [startDate descriptionWithLocale:currentLocale];
  endDate = [(EKAvailabilitySpan *)self endDate];
  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [endDate descriptionWithLocale:currentLocale2];
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