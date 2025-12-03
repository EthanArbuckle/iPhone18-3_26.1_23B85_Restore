@interface CNPropertyGroupBirthdayItem
+ (id)_dateForGroup:(id)group;
+ (id)initialValueForLabel:(id)label group:(id)group;
- (id)displayLabel;
- (id)labeledValueToCurateFromSuggestion;
- (void)updateLabeledValueWithLabel:(id)label;
@end

@implementation CNPropertyGroupBirthdayItem

- (id)labeledValueToCurateFromSuggestion
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  v4 = [objc_opt_class() calendarForLabel:@"_systemCalendar"];
  [value setCalendar:v4];

  v5 = [MEMORY[0x1E695CEE0] entryWithIdentifier:@"_systemCalendar" label:@"_systemCalendar" value:value];

  return v5;
}

- (void)updateLabeledValueWithLabel:(id)label
{
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = CNPropertyGroupBirthdayItem;
  [(CNPropertyGroupItem *)&v17 updateLabeledValueWithLabel:labelCopy];
  if ([(CNPropertyGroupItem *)self modified])
  {
    property = [(CNPropertyGroupItem *)self property];
    v6 = [property isEqualToString:@"birthdays"];

    if (v6)
    {
      labeledValue = [(CNPropertyGroupItem *)self labeledValue];
      value = [labeledValue value];

      if ([value month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(value, "day") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [objc_opt_class() emptyValueForLabel:labelCopy];
      }

      else
      {
        v10 = [objc_opt_class() calendarForLabel:labelCopy];
        v11 = [v10 copy];
        v12 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
        [v11 setTimeZone:v12];

        v13 = [MEMORY[0x1E6996B48] isYearlessComponents:value];
        v14 = MEMORY[0x1E6996B48];
        if (v13)
        {
          date = [MEMORY[0x1E695DF00] date];
          v9 = [v14 yearlessComponentsFromDate:date calendar:v10];

          [v9 setCalendar:v11];
        }

        else
        {
          v16 = [MEMORY[0x1E6996B48] dateFromComponents:value destinationCalendar:v10];
          v9 = [MEMORY[0x1E6996B48] componentsFromDate:v16 sourceCalendar:v11 destinationCalendar:v11];
        }

        value = v10;
      }

      [(CNPropertyGroupItem *)self updateLabeledValueWithValue:v9];
    }
  }
}

- (id)displayLabel
{
  property = [(CNPropertyGroupItem *)self property];
  v4 = [property isEqualToString:@"birthdays"];

  if (v4)
  {
    labeledValue = [(CNPropertyGroupItem *)self labeledValue];
    value = [labeledValue value];

    calendar = [value calendar];
    if (calendar && (-[CNPropertyGroupItem labeledValue](self, "labeledValue"), v8 = objc_claimAutoreleasedReturnValue(), [v8 label], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", @"_systemCalendar"), v9, v8, !v10))
    {
      v12 = CNContactsUIBundle();
      v13 = MEMORY[0x1E696AEC0];
      calendar2 = [value calendar];
      calendarIdentifier = [calendar2 calendarIdentifier];
      v16 = [v13 stringWithFormat:@"BIRTHDAY_LABEL_FORMAT-%@", calendarIdentifier];
      displayLabel = [v12 localizedStringForKey:v16 value:&stru_1F0CE7398 table:@"Localized"];
    }

    else
    {
      displayLabel = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695C1D0]];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CNPropertyGroupBirthdayItem;
    displayLabel = [(CNPropertyGroupItem *)&v18 displayLabel];
  }

  return displayLabel;
}

+ (id)_dateForGroup:(id)group
{
  groupCopy = group;
  v4 = groupCopy;
  if (groupCopy)
  {
    editingItems = [groupCopy editingItems];
    firstObject = [editingItems firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([firstObject labeledValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "value"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      propertyItems = [v4 propertyItems];
      firstObject2 = [propertyItems firstObject];

      firstObject = firstObject2;
    }

    labeledValue = [firstObject labeledValue];
    value = [labeledValue value];
    v13 = [value copy];

    v14 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v13 setTimeZone:v14];

    date = 0;
    if (([MEMORY[0x1E6996B48] isYearlessComponents:v13] & 1) == 0)
    {
      date = [v13 date];
    }
  }

  else
  {
    date = 0;
  }

  return date;
}

+ (id)initialValueForLabel:(id)label group:(id)group
{
  groupCopy = group;
  v7 = [self calendarForLabel:label];
  v8 = [v7 copy];
  v9 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v8 setTimeZone:v9];

  date = [self _dateForGroup:groupCopy];

  if (date)
  {
    v11 = [MEMORY[0x1E6996B48] componentsFromDate:date sourceCalendar:v8 destinationCalendar:v8];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v11 = [MEMORY[0x1E6996B48] yearlessComponentsFromDate:date calendar:v7];
    [v11 setCalendar:v8];
  }

  return v11;
}

@end