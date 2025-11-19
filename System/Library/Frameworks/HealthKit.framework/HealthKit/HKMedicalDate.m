@interface HKMedicalDate
+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 error:(id *)a4;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 error:(id *)a6;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 nanosecond:(int64_t)a9 originalTimeZoneString:(id)a10 error:(id *)a11;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 originalTimeZoneString:(id)a9 error:(id *)a10;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 error:(id *)a5;
+ (id)_adjustDate:(id)a3 calendar:(id)a4 form:(int64_t)a5;
+ (id)_descriptionForForm:(int64_t)a3;
+ (id)_medicalDateWithForm:(int64_t)a3 underlyingDate:(id)a4 originalTimeZoneString:(id)a5;
+ (id)medicalDateFromComponents:(id)a3 originalTimeZoneString:(id)a4 form:(int64_t)a5 error:(id *)a6;
+ (id)medicalDateFromDate:(id)a3 originalTimeZone:(id)a4;
+ (unint64_t)_calendarUnitForForm:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKMedicalDate)initWithCoder:(id)a3;
- (id)_initWithForm:(int64_t)a3 underlyingDate:(id)a4 originalTimeZoneString:(id)a5;
- (id)adjustedDateForCalendar:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicalDate

+ (id)medicalDateFromComponents:(id)a3 originalTimeZoneString:(id)a4 form:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([v10 isValidDate])
  {
    v12 = [a1 referenceCalendar];
    v13 = [v12 dateFromComponents:v10];

    v14 = [[HKMedicalDate alloc] _initWithForm:a5 underlyingDate:v13 originalTimeZoneString:v11];
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v13 = [HKMedicalDate _descriptionForForm:a5];
    [v15 hk_assignError:a6 code:3 format:{@"%@: Invalid date components for form: %@", v16, v13}];
    v14 = 0;
  }

  return v14;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 error:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v8 = [a1 referenceCalendar];
  [v7 setCalendar:v8];

  [v7 setYear:a3];
  v9 = [a1 medicalDateFromComponents:v7 originalTimeZoneString:0 form:3 error:a4];

  return v9;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 error:(id *)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v10 = [a1 referenceCalendar];
  [v9 setCalendar:v10];

  [v9 setYear:a3];
  [v9 setMonth:a4];
  v11 = [a1 medicalDateFromComponents:v9 originalTimeZoneString:0 form:2 error:a5];

  return v11;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 error:(id *)a6
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v12 = [a1 referenceCalendar];
  [v11 setCalendar:v12];

  [v11 setYear:a3];
  [v11 setMonth:a4];
  [v11 setDay:a5];
  v13 = [a1 medicalDateFromComponents:v11 originalTimeZoneString:0 form:1 error:a6];

  return v13;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 originalTimeZoneString:(id)a9 error:(id *)a10
{
  v17 = MEMORY[0x1E695DF10];
  v18 = a9;
  v19 = objc_alloc_init(v17);
  v20 = [a1 referenceCalendar];
  [v19 setCalendar:v20];

  [v19 setYear:a3];
  [v19 setMonth:a4];
  [v19 setDay:a5];
  [v19 setHour:a6];
  [v19 setMinute:a7];
  [v19 setSecond:a8];
  v21 = [a1 medicalDateFromComponents:v19 originalTimeZoneString:v18 form:0 error:a10];

  return v21;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 nanosecond:(int64_t)a9 originalTimeZoneString:(id)a10 error:(id *)a11
{
  v17 = MEMORY[0x1E695DF10];
  v18 = a10;
  v19 = objc_alloc_init(v17);
  v20 = [a1 referenceCalendar];
  [v19 setCalendar:v20];

  [v19 setYear:a3];
  [v19 setMonth:a4];
  [v19 setDay:a5];
  [v19 setHour:a6];
  [v19 setMinute:a7];
  [v19 setSecond:a8];
  [v19 setNanosecond:a9];
  v21 = [a1 medicalDateFromComponents:v19 originalTimeZoneString:v18 form:0 error:a11];

  return v21;
}

+ (id)medicalDateFromDate:(id)a3 originalTimeZone:(id)a4
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  [a3 timeIntervalSince1970];
  v8 = [v5 dateWithTimeIntervalSince1970:trunc(v7)];
  v9 = [HKMedicalDate alloc];
  v10 = [v6 name];

  v11 = [(HKMedicalDate *)v9 _initWithForm:0 underlyingDate:v8 originalTimeZoneString:v10];

  return v11;
}

- (id)adjustedDateForCalendar:(id)a3
{
  underlyingDate = self->_underlyingDate;
  v5 = a3;
  v6 = [HKMedicalDate _adjustDate:underlyingDate calendar:v5 form:[(HKMedicalDate *)self form]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [HKMedicalDate _descriptionForForm:[(HKMedicalDate *)self form]];
  v6 = [(HKMedicalDate *)self underlyingDate];
  v7 = [(HKMedicalDate *)self originalTimeZoneString];
  v8 = [v3 stringWithFormat:@"%@: form: %@, underlyingDate: %@, originalTimeZoneString: %@", v4, v5, v6, v7];

  return v8;
}

+ (id)_medicalDateWithForm:(int64_t)a3 underlyingDate:(id)a4 originalTimeZoneString:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[HKMedicalDate alloc] _initWithForm:a3 underlyingDate:v8 originalTimeZoneString:v7];

  return v9;
}

+ (id)_adjustDate:(id)a3 calendar:(id)a4 form:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 referenceCalendar];
  if ([v9 isEqual:v10])
  {
    v11 = v8;
  }

  else
  {
    v12 = [v10 components:+[HKMedicalDate _calendarUnitForForm:](HKMedicalDate fromDate:{"_calendarUnitForForm:", a5), v8}];
    v11 = [v9 dateFromComponents:v12];
  }

  return v11;
}

- (id)_initWithForm:(int64_t)a3 underlyingDate:(id)a4 originalTimeZoneString:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    [HKMedicalDate _initWithForm:a2 underlyingDate:self originalTimeZoneString:?];
  }

  v18.receiver = self;
  v18.super_class = HKMedicalDate;
  v11 = [(HKMedicalDate *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_form = a3;
    v13 = [v9 copy];
    underlyingDate = v12->_underlyingDate;
    v12->_underlyingDate = v13;

    v15 = [v10 copy];
    originalTimeZoneString = v12->_originalTimeZoneString;
    v12->_originalTimeZoneString = v15;
  }

  return v12;
}

+ (unint64_t)_calendarUnitForForm:(int64_t)a3
{
  if (a3 > 2)
  {
    return 6;
  }

  else
  {
    return qword_191DCD160[a3];
  }
}

+ (id)_descriptionForForm:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid HKMedicalDateForm: %ld", a3];
  }

  else
  {
    v4 = off_1E7380E40[a3];
  }

  return v4;
}

- (HKMedicalDate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMedicalDate;
  v5 = [(HKMedicalDate *)&v11 init];
  if (v5)
  {
    v5->_form = [v4 decodeIntegerForKey:@"form"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingDate"];
    underlyingDate = v5->_underlyingDate;
    v5->_underlyingDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalTimezoneString"];
    originalTimeZoneString = v5->_originalTimeZoneString;
    v5->_originalTimeZoneString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HKMedicalDate form](self forKey:{"form"), @"form"}];
  v5 = [(HKMedicalDate *)self underlyingDate];
  [v4 encodeObject:v5 forKey:@"underlyingDate"];

  v6 = [(HKMedicalDate *)self originalTimeZoneString];
  [v4 encodeObject:v6 forKey:@"originalTimezoneString"];
}

- (unint64_t)hash
{
  v3 = [(HKMedicalDate *)self form];
  v4 = [(HKMedicalDate *)self underlyingDate];
  v5 = [v4 hash] ^ v3;
  v6 = [(HKMedicalDate *)self originalTimeZoneString];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicalDate *)self form];
      if (v6 != [(HKMedicalDate *)v5 form])
      {
        goto LABEL_16;
      }

      v7 = [(HKMedicalDate *)self underlyingDate];
      v8 = [(HKMedicalDate *)v5 underlyingDate];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(HKMedicalDate *)v5 underlyingDate];
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = v10;
        v12 = [(HKMedicalDate *)self underlyingDate];
        v13 = [(HKMedicalDate *)v5 underlyingDate];
        v14 = [v12 isEqualToDate:v13];

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      v7 = [(HKMedicalDate *)self originalTimeZoneString];
      v16 = [(HKMedicalDate *)v5 originalTimeZoneString];
      v9 = v16;
      if (v7 == v16)
      {

LABEL_20:
        v15 = 1;
        goto LABEL_17;
      }

      v17 = [(HKMedicalDate *)v5 originalTimeZoneString];
      if (v17)
      {
        v18 = v17;
        v19 = [(HKMedicalDate *)self originalTimeZoneString];
        v20 = [(HKMedicalDate *)v5 originalTimeZoneString];
        v21 = [v19 isEqualToString:v20];

        if (v21)
        {
          goto LABEL_20;
        }

LABEL_16:
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

LABEL_15:

      goto LABEL_16;
    }

    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (void)_initWithForm:(uint64_t)a1 underlyingDate:(uint64_t)a2 originalTimeZoneString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalDate.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"underlyingDate"}];
}

@end