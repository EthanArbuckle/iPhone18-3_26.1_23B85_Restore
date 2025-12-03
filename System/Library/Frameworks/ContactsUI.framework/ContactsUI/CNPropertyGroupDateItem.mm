@interface CNPropertyGroupDateItem
+ (BOOL)isEmptyDateComponents:(id)components;
+ (id)dateDisplayStringFromComponents:(id)components;
+ (id)emptyValueForLabel:(id)label;
+ (id)initialValueForLabel:(id)label group:(id)group;
+ (id)localeAndCalendarPairFromDateComponents:(id)components;
+ (id)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact;
+ (void)initialize;
- (BOOL)isEmpty;
- (BOOL)isEquivalentToItem:(id)item;
- (BOOL)isValidValue:(id)value;
- (id)bestValue:(id)value;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)value;
- (id)normalizedValue;
- (id)placeholderString;
- (id)valueForDisplayString:(id)string;
@end

@implementation CNPropertyGroupDateItem

+ (id)dateDisplayStringFromComponents:(id)components
{
  componentsCopy = components;
  if ([objc_opt_class() isEmptyDateComponents:componentsCopy])
  {
    v4 = 0;
  }

  else
  {
    v5 = [objc_opt_class() localeAndCalendarPairFromDateComponents:componentsCopy];
    first = [v5 first];
    second = [v5 second];
    v8 = [MEMORY[0x1E6996B48] dateFromComponents:componentsCopy destinationCalendar:second];
    if ([MEMORY[0x1E6996B48] isYearlessComponents:componentsCopy])
    {
      v9 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMd" options:0 locale:first];
      v10 = &yearlessFormatter;
      [yearlessFormatter setDateFormat:v9];
    }

    else
    {
      v10 = &fullFormatter;
    }

    v11 = *v10;
    [v11 setLocale:first];
    [v11 setCalendar:second];
    v4 = [v11 stringFromDate:v8];
  }

  return v4;
}

+ (id)localeAndCalendarPairFromDateComponents:(id)components
{
  componentsCopy = components;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  calendar = [componentsCopy calendar];

  if (calendar)
  {
    calendar2 = [componentsCopy calendar];
    calendarIdentifier = [calendar2 calendarIdentifier];
    v8 = *MEMORY[0x1E695D850];
    v9 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    if (v9)
    {
      autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      if ([MEMORY[0x1E69966A8] isGregorianDerivedCalendar:autoupdatingCurrentCalendar])
      {
        v11 = autoupdatingCurrentCalendar;
      }

      else
      {
        v11 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v8];
      }

      calendar = v11;
    }

    else
    {
      calendar = [componentsCopy calendar];
    }

    v12 = MEMORY[0x1E69AAE08];
    calendarIdentifier2 = [calendar calendarIdentifier];
    v14 = [v12 localeForCalendarID:calendarIdentifier2];

    currentLocale = v14;
  }

  v15 = [MEMORY[0x1E69967A8] pairWithFirst:currentLocale second:calendar];

  return v15;
}

+ (id)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact
{
  valueCopy = value;
  groupCopy = group;
  contactCopy = contact;
  if ([valueCopy isSuggested] && (objc_msgSend(groupCopy, "property"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695C1F0]), v11, (v12 & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___CNPropertyGroupDateItem;
    v13 = objc_msgSendSuper2(&v15, sel_propertyGroupItemWithLabeledValue_group_contact_, valueCopy, groupCopy, contactCopy);
  }

  return v13;
}

+ (BOOL)isEmptyDateComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)initialValueForLabel:(id)label group:(id)group
{
  v4 = MEMORY[0x1E6996B48];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 dateByNormalizingToGMT:date];

  v7 = [MEMORY[0x1E6996B48] yearlessGregorianComponentsFromGMTDate:v6];

  return v7;
}

+ (id)emptyValueForLabel:(id)label
{
  v4 = MEMORY[0x1E695DF10];
  labelCopy = label;
  v6 = objc_alloc_init(v4);
  v7 = [self calendarForLabel:labelCopy];

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

- (id)valueForDisplayString:(id)string
{
  stringCopy = string;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  v7 = [(CNPropertyGroupDateItem *)self displayStringForValue:value];
  v8 = [v7 isEqualToString:stringCopy];

  if (v8)
  {
    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    value2 = [labeledValue2 value];
  }

  else
  {
    labeledValue2 = objc_alloc_init(MEMORY[0x1E69966A0]);
    v11 = [objc_opt_class() localeAndCalendarPairFromDateComponents:value];
    first = [v11 first];

    [labeledValue2 setLocale:first];
    v24 = 0;
    v25 = 0;
    v13 = [labeledValue2 getObjectValue:&v25 forString:stringCopy errorDescription:&v24];
    v14 = v25;
    v15 = v24;
    if (v13)
    {
      calendar = [value calendar];
      calendarIdentifier = [calendar calendarIdentifier];
      v18 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

      if (v18)
      {
        v19 = [MEMORY[0x1E69966A8] gregorianDateComponentsFromDateComponents:v14];

        v14 = v19;
      }

      value2 = v14;
      v14 = value2;
    }

    else
    {
      v20 = objc_opt_class();
      labeledValue3 = [(CNPropertyGroupItem *)self labeledValue];
      label = [labeledValue3 label];
      value2 = [v20 emptyValueForLabel:label];
    }
  }

  return value2;
}

- (id)placeholderString
{
  v3 = objc_alloc_init(MEMORY[0x1E69966A0]);
  v4 = objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v7 = [v4 localeAndCalendarPairFromDateComponents:value];
  first = [v7 first];

  [v3 setLocale:first];
  dateFormatPlaceholderString = [v3 dateFormatPlaceholderString];

  return dateFormatPlaceholderString;
}

- (id)displayStringForValue:(id)value
{
  valueCopy = value;
  v4 = [objc_opt_class() dateDisplayStringFromComponents:valueCopy];

  return v4;
}

- (id)bestValue:(id)value
{
  valueCopy = value;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  labeledValue2 = [valueCopy labeledValue];

  value2 = [labeledValue2 value];

  if ([MEMORY[0x1E6996B48] isYearlessComponents:value])
  {
    [value setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([MEMORY[0x1E6996B48] isYearlessComponents:value2])
  {
    [value2 setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([value2 year] == 0x7FFFFFFFFFFFFFFFLL || (v9 = value2, objc_msgSend(value, "year") != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = value;
  }

  v10 = v9;

  return v9;
}

- (BOOL)isEquivalentToItem:(id)item
{
  itemCopy = item;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  labeledValue2 = [itemCopy labeledValue];
  value2 = [labeledValue2 value];

  v9 = [value day];
  if (v9 == [value2 day] && (v10 = objc_msgSend(value, "month"), v10 == objc_msgSend(value2, "month")))
  {
    contact = [(CNPropertyGroupItem *)self contact];
    contact2 = [itemCopy contact];
    v13 = contact != contact2;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)defaultActionURL
{
  date = [MEMORY[0x1E695DF00] date];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  calendar = [value calendar];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:{objc_msgSend(value, "month")}];
  [v7 setLeapMonth:{objc_msgSend(value, "isLeapMonth")}];
  [v7 setDay:{objc_msgSend(value, "day")}];
  [v7 setHour:12];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar nextDateAfterDate:date matchingHour:0 minute:0 second:0 options:6];

  v10 = [calendar nextDateAfterDate:v9 matchingComponents:v7 options:256];
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
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v5 = [v2 dateFromComponents:value destinationCalendar:0];
  v6 = [v2 dateByNormalizingToGMT:v5];

  return v6;
}

- (BOOL)isValidValue:(id)value
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  v5 = value && [value month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(value, "day") != 0x7FFFFFFFFFFFFFFFLL;
  return v5;
}

- (BOOL)isEmpty
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  v4 = [objc_opt_class() isEmptyDateComponents:value];
  return v4;
}

@end