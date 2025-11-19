@interface EKUIRecurrenceRuleBuilder
- (EKUIRecurrenceRuleBuilder)init;
- (id)daysOfTheWeekWithWeek:(int64_t)a3;
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
  v3 = [(EKUIRecurrenceRuleBuilder *)self _frequencyToUse];
  v4 = [MEMORY[0x1E6966AD0] recurrenceRuleWithType:v3 interval:-[EKUIRecurrenceRuleBuilder interval](self end:{"interval"), 0}];
  if ([(EKUIRecurrenceRuleBuilder *)self count])
  {
    v5 = [MEMORY[0x1E6966AB8] recurrenceEndWithOccurrenceCount:{-[EKUIRecurrenceRuleBuilder count](self, "count")}];
    [v4 setRecurrenceEnd:v5];
  }

  v6 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
  if ([v6 count] || -[EKUIRecurrenceRuleBuilder days](self, "days") || -[EKUIRecurrenceRuleBuilder ordinalValue](self, "ordinalValue"))
  {
  }

  else
  {
    v21 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
    v22 = [v21 count];

    v20 = v4;
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  if (v3 == 3)
  {
    v15 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
    [v4 setMonthsOfTheYear:v15];

    v16 = [(EKUIRecurrenceRuleBuilder *)self setPositions];
    v17 = [v16 lastObject];
    v18 = [v17 integerValue];

    if (v18 && [(EKUIRecurrenceRuleBuilder *)self days])
    {
      v19 = [(EKUIRecurrenceRuleBuilder *)self daysOfTheWeekWithWeek:v18];
LABEL_31:
      v14 = v19;
      [v4 setDaysOfTheWeek:v19];
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
    if (v3 == 2)
    {
      v9 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
      [v4 setMonthsOfTheYear:v9];

      if ([(EKUIRecurrenceRuleBuilder *)self ordinalValue])
      {
        if ([(EKUIRecurrenceRuleBuilder *)self days])
        {
          v10 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
          v11 = [v10 count];

          if (!v11)
          {
            v23 = [(EKUIRecurrenceRuleBuilder *)self setPositions];
            [v4 setSetPositions:v23];

LABEL_30:
            v19 = [(EKUIRecurrenceRuleBuilder *)self daysOfTheWeek];
            goto LABEL_31;
          }
        }
      }

      v12 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
      if ([v12 count])
      {
        v13 = [(EKUIRecurrenceRuleBuilder *)self days];

        if (!v13)
        {
          v14 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
          [v4 setDaysOfTheMonth:v14];
LABEL_32:

          v20 = v4;
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else if (v3 == 1)
    {
      if ([(EKUIRecurrenceRuleBuilder *)self days])
      {
        v7 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
        v8 = [v7 count];

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

- (id)daysOfTheWeekWithWeek:(int64_t)a3
{
  v5 = objc_opt_new();
  if (([(EKUIRecurrenceRuleBuilder *)self days]& 1) != 0)
  {
    v6 = [MEMORY[0x1E6966AB0] dayOfWeek:1 weekNumber:a3];
    [v5 addObject:v6];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 2) != 0)
  {
    v7 = [MEMORY[0x1E6966AB0] dayOfWeek:2 weekNumber:a3];
    [v5 addObject:v7];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 4) != 0)
  {
    v8 = [MEMORY[0x1E6966AB0] dayOfWeek:3 weekNumber:a3];
    [v5 addObject:v8];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 8) != 0)
  {
    v9 = [MEMORY[0x1E6966AB0] dayOfWeek:4 weekNumber:a3];
    [v5 addObject:v9];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x10) != 0)
  {
    v10 = [MEMORY[0x1E6966AB0] dayOfWeek:5 weekNumber:a3];
    [v5 addObject:v10];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x20) != 0)
  {
    v11 = [MEMORY[0x1E6966AB0] dayOfWeek:6 weekNumber:a3];
    [v5 addObject:v11];
  }

  if (([(EKUIRecurrenceRuleBuilder *)self days]& 0x40) != 0)
  {
    v12 = [MEMORY[0x1E6966AB0] dayOfWeek:7 weekNumber:a3];
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
  v3 = [(EKUIRecurrenceRuleBuilder *)self recurrenceRule];
  v16 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKUIRecurrenceRuleBuilder *)self frequency];
  v6 = [(EKUIRecurrenceRuleBuilder *)self interval];
  v7 = [(EKUIRecurrenceRuleBuilder *)self count];
  v8 = [(EKUIRecurrenceRuleBuilder *)self dayNumbers];
  v9 = [(EKUIRecurrenceRuleBuilder *)self days];
  v10 = [(EKUIRecurrenceRuleBuilder *)self ordinalValue];
  v11 = [(EKUIRecurrenceRuleBuilder *)self monthNumbers];
  v12 = v11;
  v13 = @"NO VALID RULE";
  if (v3)
  {
    v13 = v3;
  }

  v14 = [v16 stringWithFormat:@"<%@: %p> {\n\tFrequency: %ld\n\tInterval: %ld\n\tCount: %tu\n\tDay Number: %@\n\tDays: %d\n\tOrdinal: %d\n\tMonth Numbers: %@\n\tCurrent Rule: %@\n}", v4, self, v5, v6, v7, v8, v9, v10, v11, v13];

  return v14;
}

@end