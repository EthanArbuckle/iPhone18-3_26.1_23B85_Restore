@interface EKUIRecurrenceRuleBuilder
- (EKUIRecurrenceRuleBuilder)init;
- (id)daysOfTheWeekWithWeek:(int64_t)week;
- (id)description;
- (id)recurrenceRule;
- (id)setPositions;
- (int64_t)_frequencyToUse;
@end

@implementation EKUIRecurrenceRuleBuilder

- (EKUIRecurrenceRuleBuilder)init
{
  v5.receiver = self;
  v5.super_class = EKUIRecurrenceRuleBuilder;
  v2 = [(EKUIRecurrenceRuleBuilder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EKUIRecurrenceRuleBuilder *)v2 _setDefaultValues];
  }

  return v3;
}

- (id)recurrenceRule
{
  _frequencyToUse = [(EKUIRecurrenceRuleBuilder *)self _frequencyToUse];
  v4 = [MEMORY[0x1E6966AD0] recurrenceRuleWithType:_frequencyToUse interval:-[EKUIRecurrenceRuleBuilder interval](self end:{"interval"), 0}];
  if ([(EKUIRecurrenceRuleBuilder *)self count])
  {
    v5 = [MEMORY[0x1E6966AB8] recurrenceEndWithOccurrenceCount:{-[EKUIRecurrenceRuleBuilder count](self, "count")}];
    [v4 setRecurrenceEnd:v5];
  }

  dayNumbers = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
  if ([dayNumbers count] || -[EKUIRecurrenceRuleBuilder days](self, "days") || -[EKUIRecurrenceRuleBuilder ordinalValue](self, "ordinalValue"))
  {
  }

  else
  {
    monthNumbers = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
    v22 = [monthNumbers count];

    v20 = v4;
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  if (_frequencyToUse == 3)
  {
    monthNumbers2 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
    [v4 setMonthsOfTheYear:monthNumbers2];

    setPositions = [(EKUIRecurrenceRuleBuilder *)self setPositions];
    lastObject = [setPositions lastObject];
    integerValue = [lastObject integerValue];

    if (integerValue && [(EKUIRecurrenceRuleBuilder *)self days])
    {
      daysOfTheWeek = [(EKUIRecurrenceRuleBuilder *)self daysOfTheWeekWithWeek:integerValue];
LABEL_31:
      dayNumbers4 = daysOfTheWeek;
      [v4 setDaysOfTheWeek:daysOfTheWeek];
      goto LABEL_32;
    }

    if ([(EKUIRecurrenceRuleBuilder *)self days])
    {
      v20 = 0;
    }

    else
    {
      v20 = v4;
    }
  }

  else
  {
    if (_frequencyToUse == 2)
    {
      monthNumbers3 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
      [v4 setMonthsOfTheYear:monthNumbers3];

      if ([(EKUIRecurrenceRuleBuilder *)self ordinalValue])
      {
        if ([(EKUIRecurrenceRuleBuilder *)self days])
        {
          dayNumbers2 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
          v11 = [dayNumbers2 count];

          if (!v11)
          {
            setPositions2 = [(EKUIRecurrenceRuleBuilder *)self setPositions];
            [v4 setSetPositions:setPositions2];

LABEL_30:
            daysOfTheWeek = [(EKUIRecurrenceRuleBuilder *)self daysOfTheWeek];
            goto LABEL_31;
          }
        }
      }

      dayNumbers3 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
      if ([dayNumbers3 count])
      {
        days = [(EKUIRecurrenceRuleBuilder *)self days];

        if (!days)
        {
          dayNumbers4 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
          [v4 setDaysOfTheMonth:dayNumbers4];
LABEL_32:

          v20 = v4;
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else if (_frequencyToUse == 1)
    {
      if ([(EKUIRecurrenceRuleBuilder *)self days])
      {
        dayNumbers5 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
        v8 = [dayNumbers5 count];

        if (!v8)
        {
          goto LABEL_30;
        }
      }
    }

    v20 = 0;
  }

LABEL_33:
  v24 = v20;

  return v20;
}

- (int64_t)_frequencyToUse
{
  result = [(EKUIRecurrenceRuleBuilder *)self frequency];
  if (result == 3)
  {
    if ([(EKUIRecurrenceRuleBuilder *)self days]== 127 || [(EKUIRecurrenceRuleBuilder *)self days]== 62 || [(EKUIRecurrenceRuleBuilder *)self days]== 65)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (id)daysOfTheWeekWithWeek:(int64_t)week
{
  v5 = objc_opt_new();
  if (([(EKUIRecurrenceRuleBuilder *)self days]& 1) != 0)
  {
    v6 = [MEMORY[0x1E6966AB0] dayOfWeek:1 weekNumber:week];
    [v5 addObject:v6];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 2) != 0)
  {
    v7 = [MEMORY[0x1E6966AB0] dayOfWeek:2 weekNumber:week];
    [v5 addObject:v7];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 4) != 0)
  {
    v8 = [MEMORY[0x1E6966AB0] dayOfWeek:3 weekNumber:week];
    [v5 addObject:v8];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 8) != 0)
  {
    v9 = [MEMORY[0x1E6966AB0] dayOfWeek:4 weekNumber:week];
    [v5 addObject:v9];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x10) != 0)
  {
    v10 = [MEMORY[0x1E6966AB0] dayOfWeek:5 weekNumber:week];
    [v5 addObject:v10];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x20) != 0)
  {
    v11 = [MEMORY[0x1E6966AB0] dayOfWeek:6 weekNumber:week];
    [v5 addObject:v11];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x40) != 0)
  {
    v12 = [MEMORY[0x1E6966AB0] dayOfWeek:7 weekNumber:week];
    [v5 addObject:v12];
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)setPositions
{
  v2 = [(EKUIRecurrenceRuleBuilder *)self ordinalValue]- 1;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E8441138[v2];
  }
}

- (id)description
{
  recurrenceRule = [(EKUIRecurrenceRuleBuilder *)self recurrenceRule];
  v16 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  frequency = [(EKUIRecurrenceRuleBuilder *)self frequency];
  interval = [(EKUIRecurrenceRuleBuilder *)self interval];
  v7 = [(EKUIRecurrenceRuleBuilder *)self count];
  dayNumbers = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
  days = [(EKUIRecurrenceRuleBuilder *)self days];
  ordinalValue = [(EKUIRecurrenceRuleBuilder *)self ordinalValue];
  monthNumbers = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
  v12 = monthNumbers;
  v13 = @"NO VALID RULE";
  if (recurrenceRule)
  {
    v13 = recurrenceRule;
  }

  v14 = [v16 stringWithFormat:@"<%@: %p> {\n\tFrequency: %ld\n\tInterval: %ld\n\tCount: %tu\n\tDay Number: %@\n\tDays: %d\n\tOrdinal: %d\n\tMonth Numbers: %@\n\tCurrent Rule: %@\n}", v4, self, frequency, interval, v7, dayNumbers, days, ordinalValue, monthNumbers, v13];

  return v14;
}

@end