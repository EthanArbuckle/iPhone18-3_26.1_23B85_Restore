@interface CNPropertyGroupBirthdayItem
+ (id)_dateForGroup:(id)a3;
+ (id)initialValueForLabel:(id)a3 group:(id)a4;
- (id)displayLabel;
- (id)labeledValueToCurateFromSuggestion;
- (void)updateLabeledValueWithLabel:(id)a3;
@end

@implementation CNPropertyGroupBirthdayItem

- (id)labeledValueToCurateFromSuggestion
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  v4 = [objc_opt_class() calendarForLabel:@"_systemCalendar"];
  [v3 setCalendar:v4];

  v5 = [MEMORY[0x1E695CEE0] entryWithIdentifier:@"_systemCalendar" label:@"_systemCalendar" value:v3];

  return v5;
}

- (void)updateLabeledValueWithLabel:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNPropertyGroupBirthdayItem;
  [(CNPropertyGroupItem *)&v17 updateLabeledValueWithLabel:v4];
  if ([(CNPropertyGroupItem *)self modified])
  {
    v5 = [(CNPropertyGroupItem *)self property];
    v6 = [v5 isEqualToString:@"birthdays"];

    if (v6)
    {
      v7 = [(CNPropertyGroupItem *)self labeledValue];
      v8 = [v7 value];

      if ([v8 month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v8, "day") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [objc_opt_class() emptyValueForLabel:v4];
      }

      else
      {
        v10 = [objc_opt_class() calendarForLabel:v4];
        v11 = [v10 copy];
        v12 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
        [v11 setTimeZone:v12];

        v13 = [MEMORY[0x1E6996B48] isYearlessComponents:v8];
        v14 = MEMORY[0x1E6996B48];
        if (v13)
        {
          v15 = [MEMORY[0x1E695DF00] date];
          v9 = [v14 yearlessComponentsFromDate:v15 calendar:v10];

          [v9 setCalendar:v11];
        }

        else
        {
          v16 = [MEMORY[0x1E6996B48] dateFromComponents:v8 destinationCalendar:v10];
          v9 = [MEMORY[0x1E6996B48] componentsFromDate:v16 sourceCalendar:v11 destinationCalendar:v11];
        }

        v8 = v10;
      }

      [(CNPropertyGroupItem *)self updateLabeledValueWithValue:v9];
    }
  }
}

- (id)displayLabel
{
  v3 = [(CNPropertyGroupItem *)self property];
  v4 = [v3 isEqualToString:@"birthdays"];

  if (v4)
  {
    v5 = [(CNPropertyGroupItem *)self labeledValue];
    v6 = [v5 value];

    v7 = [v6 calendar];
    if (v7 && (-[CNPropertyGroupItem labeledValue](self, "labeledValue"), v8 = objc_claimAutoreleasedReturnValue(), [v8 label], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", @"_systemCalendar"), v9, v8, !v10))
    {
      v12 = CNContactsUIBundle();
      v13 = MEMORY[0x1E696AEC0];
      v14 = [v6 calendar];
      v15 = [v14 calendarIdentifier];
      v16 = [v13 stringWithFormat:@"BIRTHDAY_LABEL_FORMAT-%@", v15];
      v11 = [v12 localizedStringForKey:v16 value:&stru_1F0CE7398 table:@"Localized"];
    }

    else
    {
      v11 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695C1D0]];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CNPropertyGroupBirthdayItem;
    v11 = [(CNPropertyGroupItem *)&v18 displayLabel];
  }

  return v11;
}

+ (id)_dateForGroup:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 editingItems];
    v6 = [v5 firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 labeledValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "value"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      v9 = [v4 propertyItems];
      v10 = [v9 firstObject];

      v6 = v10;
    }

    v11 = [v6 labeledValue];
    v12 = [v11 value];
    v13 = [v12 copy];

    v14 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v13 setTimeZone:v14];

    v15 = 0;
    if (([MEMORY[0x1E6996B48] isYearlessComponents:v13] & 1) == 0)
    {
      v15 = [v13 date];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)initialValueForLabel:(id)a3 group:(id)a4
{
  v6 = a4;
  v7 = [a1 calendarForLabel:a3];
  v8 = [v7 copy];
  v9 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v8 setTimeZone:v9];

  v10 = [a1 _dateForGroup:v6];

  if (v10)
  {
    v11 = [MEMORY[0x1E6996B48] componentsFromDate:v10 sourceCalendar:v8 destinationCalendar:v8];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [MEMORY[0x1E6996B48] yearlessComponentsFromDate:v10 calendar:v7];
    [v11 setCalendar:v8];
  }

  return v11;
}

@end