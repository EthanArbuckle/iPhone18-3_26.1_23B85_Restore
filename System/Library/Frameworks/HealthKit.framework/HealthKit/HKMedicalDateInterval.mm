@interface HKMedicalDateInterval
+ (HKMedicalDateInterval)medicalDateIntervalWithEndDate:(id)date;
+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)date;
+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKMedicalDateInterval)initWithCoder:(id)coder;
- (id)_initWithStartDate:(id)date endDate:(id)endDate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalDateInterval

+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    +[HKMedicalDateInterval medicalDateIntervalWithStartDate:];
  }

  v4 = [[HKMedicalDateInterval alloc] _initWithStartDate:dateCopy endDate:0];

  return v4;
}

+ (HKMedicalDateInterval)medicalDateIntervalWithEndDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    +[HKMedicalDateInterval medicalDateIntervalWithEndDate:];
  }

  v4 = [[HKMedicalDateInterval alloc] _initWithStartDate:0 endDate:dateCopy];

  return v4;
}

+ (HKMedicalDateInterval)medicalDateIntervalWithStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
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
  dateForUTC = [dateCopy dateForUTC];
  dateForUTC2 = [v9 dateForUTC];
  v12 = [dateForUTC hk_isAfterDate:dateForUTC2];

  if (v12)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@: endDate must not be before startDate", objc_opt_class()}];
    v13 = 0;
  }

  else
  {
    v13 = [[HKMedicalDateInterval alloc] _initWithStartDate:dateCopy endDate:v9];
  }

  return v13;
}

- (id)_initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = HKMedicalDateInterval;
  v8 = [(HKMedicalDateInterval *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [endDateCopy copy];
    endDate = v8->_endDate;
    v8->_endDate = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  startDate = [(HKMedicalDateInterval *)self startDate];
  v6 = [startDate description];
  endDate = [(HKMedicalDateInterval *)self endDate];
  v8 = [endDate description];
  v9 = [v3 stringWithFormat:@"%@: startDate: %@, endDate: %@", v4, v6, v8];

  return v9;
}

- (HKMedicalDateInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKMedicalDateInterval;
  v5 = [(HKMedicalDateInterval *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(HKMedicalDateInterval *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  endDate = [(HKMedicalDateInterval *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
}

- (unint64_t)hash
{
  startDate = [(HKMedicalDateInterval *)self startDate];
  v4 = [startDate hash];
  endDate = [(HKMedicalDateInterval *)self endDate];
  v6 = [endDate hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startDate = [(HKMedicalDateInterval *)self startDate];
      startDate2 = [(HKMedicalDateInterval *)v5 startDate];
      v8 = startDate2;
      if (startDate == startDate2)
      {
      }

      else
      {
        startDate3 = [(HKMedicalDateInterval *)v5 startDate];
        if (!startDate3)
        {
          goto LABEL_14;
        }

        v10 = startDate3;
        startDate4 = [(HKMedicalDateInterval *)self startDate];
        startDate5 = [(HKMedicalDateInterval *)v5 startDate];
        v13 = [startDate4 isEqual:startDate5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      startDate = [(HKMedicalDateInterval *)self endDate];
      endDate = [(HKMedicalDateInterval *)v5 endDate];
      v8 = endDate;
      if (startDate == endDate)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      endDate2 = [(HKMedicalDateInterval *)v5 endDate];
      if (endDate2)
      {
        v17 = endDate2;
        endDate3 = [(HKMedicalDateInterval *)self endDate];
        endDate4 = [(HKMedicalDateInterval *)v5 endDate];
        v20 = [endDate3 isEqual:endDate4];

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