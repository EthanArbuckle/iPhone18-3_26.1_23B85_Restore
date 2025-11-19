@interface HKMedicalDateInterval
+ (HKMedicalDateInterval)medicalDateIntervalWithEndDate:(id)a3;
+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)a3;
+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKMedicalDateInterval)initWithCoder:(id)a3;
- (id)_initWithStartDate:(id)a3 endDate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicalDateInterval

+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[HKMedicalDateInterval medicalDateIntervalWithStartDate:];
  }

  v4 = [[HKMedicalDateInterval alloc] _initWithStartDate:v3 endDate:0];

  return v4;
}

+ (HKMedicalDateInterval)medicalDateIntervalWithEndDate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[HKMedicalDateInterval medicalDateIntervalWithEndDate:];
  }

  v4 = [[HKMedicalDateInterval alloc] _initWithStartDate:0 endDate:v3];

  return v4;
}

+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HKMedicalDateInterval medicalDateIntervalWithStartDate:endDate:error:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[HKMedicalDateInterval medicalDateIntervalWithStartDate:endDate:error:];
LABEL_3:
  v10 = [v7 dateForUTC];
  v11 = [v9 dateForUTC];
  v12 = [v10 hk_isAfterDate:v11];

  if (v12)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"%@: endDate must not be before startDate", objc_opt_class()}];
    v13 = 0;
  }

  else
  {
    v13 = [[HKMedicalDateInterval alloc] _initWithStartDate:v7 endDate:v9];
  }

  return v13;
}

- (id)_initWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKMedicalDateInterval;
  v8 = [(HKMedicalDateInterval *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [v7 copy];
    endDate = v8->_endDate;
    v8->_endDate = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HKMedicalDateInterval *)self startDate];
  v6 = [v5 description];
  v7 = [(HKMedicalDateInterval *)self endDate];
  v8 = [v7 description];
  v9 = [v3 stringWithFormat:@"%@: startDate: %@, endDate: %@", v4, v6, v8];

  return v9;
}

- (HKMedicalDateInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMedicalDateInterval;
  v5 = [(HKMedicalDateInterval *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKMedicalDateInterval *)self startDate];
  [v4 encodeObject:v5 forKey:@"startDate"];

  v6 = [(HKMedicalDateInterval *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];
}

- (unint64_t)hash
{
  v3 = [(HKMedicalDateInterval *)self startDate];
  v4 = [v3 hash];
  v5 = [(HKMedicalDateInterval *)self endDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicalDateInterval *)self startDate];
      v7 = [(HKMedicalDateInterval *)v5 startDate];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKMedicalDateInterval *)v5 startDate];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKMedicalDateInterval *)self startDate];
        v12 = [(HKMedicalDateInterval *)v5 startDate];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [(HKMedicalDateInterval *)self endDate];
      v15 = [(HKMedicalDateInterval *)v5 endDate];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [(HKMedicalDateInterval *)v5 endDate];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKMedicalDateInterval *)self endDate];
        v19 = [(HKMedicalDateInterval *)v5 endDate];
        v20 = [v18 isEqual:v19];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

+ (void)medicalDateIntervalWithStartDate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"startDate != nil" object:? file:? lineNumber:? description:?];
}

+ (void)medicalDateIntervalWithEndDate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"endDate != nil" object:? file:? lineNumber:? description:?];
}

+ (void)medicalDateIntervalWithStartDate:endDate:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"startDate != nil" object:? file:? lineNumber:? description:?];
}

+ (void)medicalDateIntervalWithStartDate:endDate:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"endDate != nil" object:? file:? lineNumber:? description:?];
}

@end