@interface HMAccessoryNetworkAccessViolation
- (BOOL)hasCurrentViolation;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryNetworkAccessViolation)initWithCoder:(id)a3;
- (HMAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)a3 lastViolationResetDate:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryNetworkAccessViolation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMAccessoryNetworkAccessViolation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMANAV.lastOccurrenceDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMANAV.lastResetDate"];

  v7 = [(HMAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v5 lastViolationResetDate:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HMAccessoryNetworkAccessViolation *)self lastViolationDate], v7 = objc_claimAutoreleasedReturnValue(), [(HMAccessoryNetworkAccessViolation *)v6 lastViolationDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      v10 = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
      v11 = [(HMAccessoryNetworkAccessViolation *)v6 lastResetDate];
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
  v3 = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];
  v4 = [v3 hash];
  v5 = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)hasCurrentViolation
{
  v3 = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];

  if (!v4)
  {
    return 1;
  }

  v5 = [(HMAccessoryNetworkAccessViolation *)self lastViolationDate];
  v6 = [(HMAccessoryNetworkAccessViolation *)self lastResetDate];
  v7 = [v5 compare:v6] == 1;

  return v7;
}

- (HMAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)a3 lastViolationResetDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMAccessoryNetworkAccessViolation;
  v9 = [(HMAccessoryNetworkAccessViolation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastViolationDate, a3);
    objc_storeStrong(&v10->_lastResetDate, a4);
  }

  return v10;
}

@end