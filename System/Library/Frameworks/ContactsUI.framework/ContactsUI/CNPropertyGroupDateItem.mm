@interface CNPropertyGroupDateItem
+ (BOOL)isEmptyDateComponents:(id)a3;
+ (id)dateDisplayStringFromComponents:(id)a3;
+ (id)emptyValueForLabel:(id)a3;
+ (id)initialValueForLabel:(id)a3 group:(id)a4;
+ (id)localeAndCalendarPairFromDateComponents:(id)a3;
+ (id)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5;
+ (void)initialize;
- (BOOL)isEmpty;
- (BOOL)isEquivalentToItem:(id)a3;
- (BOOL)isValidValue:(id)a3;
- (id)bestValue:(id)a3;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)a3;
- (id)normalizedValue;
- (id)placeholderString;
- (id)valueForDisplayString:(id)a3;
@end

@implementation CNPropertyGroupDateItem

+ (id)dateDisplayStringFromComponents:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isEmptyDateComponents:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [objc_opt_class() localeAndCalendarPairFromDateComponents:v3];
    v6 = [v5 first];
    v7 = [v5 second];
    v8 = [MEMORY[0x1E6996B48] dateFromComponents:v3 destinationCalendar:v7];
    if ([MEMORY[0x1E6996B48] isYearlessComponents:v3])
    {
      v9 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMd" options:0 locale:v6];
      v10 = &yearlessFormatter;
      [yearlessFormatter setDateFormat:v9];
    }

    else
    {
      v10 = &fullFormatter;
    }

    v11 = *v10;
    [v11 setLocale:v6];
    [v11 setCalendar:v7];
    v4 = [v11 stringFromDate:v8];
  }

  return v4;
}

+ (id)localeAndCalendarPairFromDateComponents:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v3 calendar];

  if (v5)
  {
    v6 = [v3 calendar];
    v7 = [v6 calendarIdentifier];
    v8 = *MEMORY[0x1E695D850];
    v9 = [v7 isEqualToString:*MEMORY[0x1E695D850]];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      if ([MEMORY[0x1E69966A8] isGregorianDerivedCalendar:v10])
      {
        v11 = v10;
      }

      else
      {
        v11 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v8];
      }

      v5 = v11;
    }

    else
    {
      v5 = [v3 calendar];
    }

    v12 = MEMORY[0x1E69AAE08];
    v13 = [v5 calendarIdentifier];
    v14 = [v12 localeForCalendarID:v13];

    v4 = v14;
  }

  v15 = [MEMORY[0x1E69967A8] pairWithFirst:v4 second:v5];

  return v15;
}

+ (id)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isSuggested] && (objc_msgSend(v9, "property"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695C1F0]), v11, (v12 & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___CNPropertyGroupDateItem;
    v13 = objc_msgSendSuper2(&v15, sel_propertyGroupItemWithLabeledValue_group_contact_, v8, v9, v10);
  }

  return v13;
}

+ (BOOL)isEmptyDateComponents:(id)a3
{
  v3 = a3;
  v4 = [v3 month] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v3, "day") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)initialValueForLabel:(id)a3 group:(id)a4
{
  v4 = MEMORY[0x1E6996B48];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 dateByNormalizingToGMT:v5];

  v7 = [MEMORY[0x1E6996B48] yearlessGregorianComponentsFromGMTDate:v6];

  return v7;
}

+ (id)emptyValueForLabel:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 calendarForLabel:v5];

  [v6 setCalendar:v7];

  return v6;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_31759);
  }
}

void __37__CNPropertyGroupDateItem_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = fullFormatter;
  fullFormatter = v0;

  [fullFormatter setTimeStyle:0];
  [fullFormatter setDateStyle:3];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [fullFormatter setTimeZone:v2];

  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = yearlessFormatter;
  yearlessFormatter = v3;

  [yearlessFormatter setTimeStyle:0];
  [yearlessFormatter setDateStyle:3];
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [yearlessFormatter setTimeZone:v5];
}

- (id)valueForDisplayString:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];

  v7 = [(CNPropertyGroupDateItem *)self displayStringForValue:v6];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v9 = [(CNPropertyGroupItem *)self labeledValue];
    v10 = [v9 value];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69966A0]);
    v11 = [objc_opt_class() localeAndCalendarPairFromDateComponents:v6];
    v12 = [v11 first];

    [v9 setLocale:v12];
    v24 = 0;
    v25 = 0;
    v13 = [v9 getObjectValue:&v25 forString:v4 errorDescription:&v24];
    v14 = v25;
    v15 = v24;
    if (v13)
    {
      v16 = [v6 calendar];
      v17 = [v16 calendarIdentifier];
      v18 = [v17 isEqualToString:*MEMORY[0x1E695D850]];

      if (v18)
      {
        v19 = [MEMORY[0x1E69966A8] gregorianDateComponentsFromDateComponents:v14];

        v14 = v19;
      }

      v10 = v14;
      v14 = v10;
    }

    else
    {
      v20 = objc_opt_class();
      v21 = [(CNPropertyGroupItem *)self labeledValue];
      v22 = [v21 label];
      v10 = [v20 emptyValueForLabel:v22];
    }
  }

  return v10;
}

- (id)placeholderString
{
  v3 = objc_alloc_init(MEMORY[0x1E69966A0]);
  v4 = objc_opt_class();
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];
  v7 = [v4 localeAndCalendarPairFromDateComponents:v6];
  v8 = [v7 first];

  [v3 setLocale:v8];
  v9 = [v3 dateFormatPlaceholderString];

  return v9;
}

- (id)displayStringForValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() dateDisplayStringFromComponents:v3];

  return v4;
}

- (id)bestValue:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];

  v7 = [v4 labeledValue];

  v8 = [v7 value];

  if ([MEMORY[0x1E6996B48] isYearlessComponents:v6])
  {
    [v6 setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([MEMORY[0x1E6996B48] isYearlessComponents:v8])
  {
    [v8 setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([v8 year] == 0x7FFFFFFFFFFFFFFFLL || (v9 = v8, objc_msgSend(v6, "year") != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (BOOL)isEquivalentToItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];

  v7 = [v4 labeledValue];
  v8 = [v7 value];

  v9 = [v6 day];
  if (v9 == [v8 day] && (v10 = objc_msgSend(v6, "month"), v10 == objc_msgSend(v8, "month")))
  {
    v11 = [(CNPropertyGroupItem *)self contact];
    v12 = [v4 contact];
    v13 = v11 != v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)defaultActionURL
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 value];

  v6 = [v5 calendar];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:{objc_msgSend(v5, "month")}];
  [v7 setLeapMonth:{objc_msgSend(v5, "isLeapMonth")}];
  [v7 setDay:{objc_msgSend(v5, "day")}];
  [v7 setHour:12];
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 nextDateAfterDate:v3 matchingHour:0 minute:0 second:0 options:6];

  v10 = [v6 nextDateAfterDate:v9 matchingComponents:v7 options:256];
  v11 = MEMORY[0x1E695DFF8];
  v12 = MEMORY[0x1E696AEC0];
  [v10 timeIntervalSinceReferenceDate];
  v14 = [v12 stringWithFormat:@"calshow:%d", v13];
  v15 = [v11 URLWithString:v14];

  return v15;
}

- (id)normalizedValue
{
  v2 = MEMORY[0x1E6996B48];
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  v5 = [v2 dateFromComponents:v4 destinationCalendar:0];
  v6 = [v2 dateByNormalizingToGMT:v5];

  return v6;
}

- (BOOL)isValidValue:(id)a3
{
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];

  v5 = v4 && [v4 month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "day") != 0x7FFFFFFFFFFFFFFFLL;
  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  v4 = [objc_opt_class() isEmptyDateComponents:v3];
  return v4;
}

@end