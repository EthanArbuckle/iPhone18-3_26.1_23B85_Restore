@interface HKMedicalDate
+ (HKMedicalDate)medicalDateWithYear:(int64_t)year error:(id *)error;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day error:(id *)error;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second nanosecond:(int64_t)nanosecond originalTimeZoneString:(id)self0 error:(id *)self1;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second originalTimeZoneString:(id)string error:(id *)self0;
+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month error:(id *)error;
+ (id)_adjustDate:(id)date calendar:(id)calendar form:(int64_t)form;
+ (id)_descriptionForForm:(int64_t)form;
+ (id)_medicalDateWithForm:(int64_t)form underlyingDate:(id)date originalTimeZoneString:(id)string;
+ (id)medicalDateFromComponents:(id)components originalTimeZoneString:(id)string form:(int64_t)form error:(id *)error;
+ (id)medicalDateFromDate:(id)date originalTimeZone:(id)zone;
+ (unint64_t)_calendarUnitForForm:(int64_t)form;
- (BOOL)isEqual:(id)equal;
- (HKMedicalDate)initWithCoder:(id)coder;
- (id)_initWithForm:(int64_t)form underlyingDate:(id)date originalTimeZoneString:(id)string;
- (id)adjustedDateForCalendar:(id)calendar;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalDate

+ (id)medicalDateFromComponents:(id)components originalTimeZoneString:(id)string form:(int64_t)form error:(id *)error
{
  componentsCopy = components;
  stringCopy = string;
  if ([componentsCopy isValidDate])
  {
    referenceCalendar = [self referenceCalendar];
    v13 = [referenceCalendar dateFromComponents:componentsCopy];

    v14 = [[HKMedicalDate alloc] _initWithForm:form underlyingDate:v13 originalTimeZoneString:stringCopy];
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v13 = [HKMedicalDate _descriptionForForm:form];
    [v15 hk_assignError:error code:3 format:{@"%@: Invalid date components for form: %@", v16, v13}];
    v14 = 0;
  }

  return v14;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)year error:(id *)error
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  referenceCalendar = [self referenceCalendar];
  [v7 setCalendar:referenceCalendar];

  [v7 setYear:year];
  v9 = [self medicalDateFromComponents:v7 originalTimeZoneString:0 form:3 error:error];

  return v9;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  referenceCalendar = [self referenceCalendar];
  [v9 setCalendar:referenceCalendar];

  [v9 setYear:year];
  [v9 setMonth:month];
  v11 = [self medicalDateFromComponents:v9 originalTimeZoneString:0 form:2 error:error];

  return v11;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day error:(id *)error
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  referenceCalendar = [self referenceCalendar];
  [v11 setCalendar:referenceCalendar];

  [v11 setYear:year];
  [v11 setMonth:month];
  [v11 setDay:day];
  v13 = [self medicalDateFromComponents:v11 originalTimeZoneString:0 form:1 error:error];

  return v13;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second originalTimeZoneString:(id)string error:(id *)self0
{
  v17 = MEMORY[0x1E695DF10];
  stringCopy = string;
  v19 = objc_alloc_init(v17);
  referenceCalendar = [self referenceCalendar];
  [v19 setCalendar:referenceCalendar];

  [v19 setYear:year];
  [v19 setMonth:month];
  [v19 setDay:day];
  [v19 setHour:hour];
  [v19 setMinute:minute];
  [v19 setSecond:second];
  v21 = [self medicalDateFromComponents:v19 originalTimeZoneString:stringCopy form:0 error:error];

  return v21;
}

+ (HKMedicalDate)medicalDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second nanosecond:(int64_t)nanosecond originalTimeZoneString:(id)self0 error:(id *)self1
{
  v17 = MEMORY[0x1E695DF10];
  stringCopy = string;
  v19 = objc_alloc_init(v17);
  referenceCalendar = [self referenceCalendar];
  [v19 setCalendar:referenceCalendar];

  [v19 setYear:year];
  [v19 setMonth:month];
  [v19 setDay:day];
  [v19 setHour:hour];
  [v19 setMinute:minute];
  [v19 setSecond:second];
  [v19 setNanosecond:nanosecond];
  v21 = [self medicalDateFromComponents:v19 originalTimeZoneString:stringCopy form:0 error:error];

  return v21;
}

+ (id)medicalDateFromDate:(id)date originalTimeZone:(id)zone
{
  v5 = MEMORY[0x1E695DF00];
  zoneCopy = zone;
  [date timeIntervalSince1970];
  v8 = [v5 dateWithTimeIntervalSince1970:trunc(v7)];
  v9 = [HKMedicalDate alloc];
  name = [zoneCopy name];

  v11 = [(HKMedicalDate *)v9 _initWithForm:0 underlyingDate:v8 originalTimeZoneString:name];

  return v11;
}

- (id)adjustedDateForCalendar:(id)calendar
{
  underlyingDate = self->_underlyingDate;
  calendarCopy = calendar;
  v6 = [HKMedicalDate _adjustDate:underlyingDate calendar:calendarCopy form:[(HKMedicalDate *)self form]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [HKMedicalDate _descriptionForForm:[(HKMedicalDate *)self form]];
  underlyingDate = [(HKMedicalDate *)self underlyingDate];
  originalTimeZoneString = [(HKMedicalDate *)self originalTimeZoneString];
  v8 = [v3 stringWithFormat:@"%@: form: %@, underlyingDate: %@, originalTimeZoneString: %@", v4, v5, underlyingDate, originalTimeZoneString];

  return v8;
}

+ (id)_medicalDateWithForm:(int64_t)form underlyingDate:(id)date originalTimeZoneString:(id)string
{
  stringCopy = string;
  dateCopy = date;
  v9 = [[HKMedicalDate alloc] _initWithForm:form underlyingDate:dateCopy originalTimeZoneString:stringCopy];

  return v9;
}

+ (id)_adjustDate:(id)date calendar:(id)calendar form:(int64_t)form
{
  dateCopy = date;
  calendarCopy = calendar;
  referenceCalendar = [self referenceCalendar];
  if ([calendarCopy isEqual:referenceCalendar])
  {
    v11 = dateCopy;
  }

  else
  {
    v12 = [referenceCalendar components:+[HKMedicalDate _calendarUnitForForm:](HKMedicalDate fromDate:{"_calendarUnitForForm:", form), dateCopy}];
    v11 = [calendarCopy dateFromComponents:v12];
  }

  return v11;
}

- (id)_initWithForm:(int64_t)form underlyingDate:(id)date originalTimeZoneString:(id)string
{
  dateCopy = date;
  stringCopy = string;
  if (!dateCopy)
  {
    [HKMedicalDate _initWithForm:a2 underlyingDate:self originalTimeZoneString:?];
  }

  v18.receiver = self;
  v18.super_class = HKMedicalDate;
  v11 = [(HKMedicalDate *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_form = form;
    v13 = [dateCopy copy];
    underlyingDate = v12->_underlyingDate;
    v12->_underlyingDate = v13;

    v15 = [stringCopy copy];
    originalTimeZoneString = v12->_originalTimeZoneString;
    v12->_originalTimeZoneString = v15;
  }

  return v12;
}

+ (unint64_t)_calendarUnitForForm:(int64_t)form
{
  if (form > 2)
  {
    return 6;
  }

  else
  {
    return qword_191DCD160[form];
  }
}

+ (id)_descriptionForForm:(int64_t)form
{
  if (form >= 4)
  {
    form = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid HKMedicalDateForm: %ld", form];
  }

  else
  {
    form = off_1E7380E40[form];
  }

  return form;
}

- (HKMedicalDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKMedicalDate;
  v5 = [(HKMedicalDate *)&v11 init];
  if (v5)
  {
    v5->_form = [coderCopy decodeIntegerForKey:@"form"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingDate"];
    underlyingDate = v5->_underlyingDate;
    v5->_underlyingDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalTimezoneString"];
    originalTimeZoneString = v5->_originalTimeZoneString;
    v5->_originalTimeZoneString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HKMedicalDate form](self forKey:{"form"), @"form"}];
  underlyingDate = [(HKMedicalDate *)self underlyingDate];
  [coderCopy encodeObject:underlyingDate forKey:@"underlyingDate"];

  originalTimeZoneString = [(HKMedicalDate *)self originalTimeZoneString];
  [coderCopy encodeObject:originalTimeZoneString forKey:@"originalTimezoneString"];
}

- (unint64_t)hash
{
  form = [(HKMedicalDate *)self form];
  underlyingDate = [(HKMedicalDate *)self underlyingDate];
  v5 = [underlyingDate hash] ^ form;
  originalTimeZoneString = [(HKMedicalDate *)self originalTimeZoneString];
  v7 = [originalTimeZoneString hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      form = [(HKMedicalDate *)self form];
      if (form != [(HKMedicalDate *)v5 form])
      {
        goto LABEL_16;
      }

      underlyingDate = [(HKMedicalDate *)self underlyingDate];
      underlyingDate2 = [(HKMedicalDate *)v5 underlyingDate];
      v9 = underlyingDate2;
      if (underlyingDate == underlyingDate2)
      {
      }

      else
      {
        underlyingDate3 = [(HKMedicalDate *)v5 underlyingDate];
        if (!underlyingDate3)
        {
          goto LABEL_15;
        }

        v11 = underlyingDate3;
        underlyingDate4 = [(HKMedicalDate *)self underlyingDate];
        underlyingDate5 = [(HKMedicalDate *)v5 underlyingDate];
        v14 = [underlyingDate4 isEqualToDate:underlyingDate5];

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      underlyingDate = [(HKMedicalDate *)self originalTimeZoneString];
      originalTimeZoneString = [(HKMedicalDate *)v5 originalTimeZoneString];
      v9 = originalTimeZoneString;
      if (underlyingDate == originalTimeZoneString)
      {

LABEL_20:
        v15 = 1;
        goto LABEL_17;
      }

      originalTimeZoneString2 = [(HKMedicalDate *)v5 originalTimeZoneString];
      if (originalTimeZoneString2)
      {
        v18 = originalTimeZoneString2;
        originalTimeZoneString3 = [(HKMedicalDate *)self originalTimeZoneString];
        originalTimeZoneString4 = [(HKMedicalDate *)v5 originalTimeZoneString];
        v21 = [originalTimeZoneString3 isEqualToString:originalTimeZoneString4];

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