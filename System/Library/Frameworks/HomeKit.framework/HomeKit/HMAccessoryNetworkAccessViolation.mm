@interface HMAccessoryNetworkAccessViolation
- (BOOL)hasCurrentViolation;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryNetworkAccessViolation)initWithCoder:(id)coder;
- (HMAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)date lastViolationResetDate:(id)resetDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryNetworkAccessViolation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMAccessoryNetworkAccessViolation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMANAV.lastOccurrenceDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMANAV.lastResetDate"];

  v7 = [(HMAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v5 lastViolationResetDate:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HMAccessoryNetworkAccessViolation *)self lastViolationDate], v7 = objc_claimAutoreleasedReturnValue(), [(HMAccessoryNetworkAccessViolation *)v6 lastViolationDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      lastResetDate = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
      lastResetDate2 = [(HMAccessoryNetworkAccessViolation *)v6 lastResetDate];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  lastViolationDate = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];
  v4 = [lastViolationDate hash];
  lastResetDate = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
  v6 = [lastResetDate hash];

  return v6 ^ v4;
}

- (BOOL)hasCurrentViolation
{
  lastViolationDate = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];

  if (!lastViolationDate)
  {
    return 0;
  }

  lastResetDate = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];

  if (!lastResetDate)
  {
    return 1;
  }

  lastViolationDate2 = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];
  lastResetDate2 = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
  v7 = [lastViolationDate2 compare:lastResetDate2] == 1;

  return v7;
}

- (HMAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)date lastViolationResetDate:(id)resetDate
{
  dateCopy = date;
  resetDateCopy = resetDate;
  v12.receiver = self;
  v12.super_class = HMAccessoryNetworkAccessViolation;
  v9 = [(HMAccessoryNetworkAccessViolation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastViolationDate, date);
    objc_storeStrong(&v10->_lastResetDate, resetDate);
  }

  return v10;
}

@end