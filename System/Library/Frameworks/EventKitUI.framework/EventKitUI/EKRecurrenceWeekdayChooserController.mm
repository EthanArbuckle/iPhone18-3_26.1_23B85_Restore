@interface EKRecurrenceWeekdayChooserController
- (EKRecurrenceWeekdayChooserController)initWithDate:(id)date;
- (id)cellForRow:(int64_t)row;
- (int)_dayMask;
- (int)dayOfWeekForRow:(int64_t)row;
- (void)_setCell:(id)cell selected:(BOOL)selected;
- (void)rowTapped:(int64_t)tapped;
- (void)setDaysOfTheWeek:(id)week;
- (void)updateFromRecurrenceRule:(id)rule;
- (void)updateRecurrenceRuleBuilder:(id)builder;
@end

@implementation EKRecurrenceWeekdayChooserController

- (EKRecurrenceWeekdayChooserController)initWithDate:(id)date
{
  v15.receiver = self;
  v15.super_class = EKRecurrenceWeekdayChooserController;
  v3 = [(EKRecurrenceChooserController *)&v15 initWithDate:date];
  v4 = v3;
  if (v3)
  {
    [(EKRecurrenceWeekdayChooserController *)v3 setDaysOfTheWeek:MEMORY[0x1E695E0F0]];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    selectedDays = v4->_selectedDays;
    v4->_selectedDays = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    cells = v4->_cells;
    v4->_cells = v7;

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v10;
      [(EKRecurrenceWeekdayChooserController *)v4 dayOfWeekForRow:v9];
      v10 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

      v12 = CUIKStringForDayOfWeek();
      textLabel = [(EKUITableViewCell *)v10 textLabel];
      [textLabel setText:v12];

      [(NSMutableArray *)v4->_cells addObject:v10];
      ++v9;
    }

    while (v9 != 7);
  }

  return v4;
}

- (void)setDaysOfTheWeek:(id)week
{
  v18 = *MEMORY[0x1E69E9840];
  weekCopy = week;
  if (self->_daysOfTheWeek != weekCopy)
  {
    objc_storeStrong(&self->_daysOfTheWeek, week);
    [(NSMutableArray *)self->_selectedDays removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = weekCopy;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          selectedDays = self->_selectedDays;
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * v10), "dayOfTheWeek", v13) - 1}];
          [(NSMutableArray *)selectedDays addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (int)dayOfWeekForRow:(int64_t)row
{
  v3 = CUIKZeroIndexedWeekStart() + row;
  if (v3 <= 6)
  {
    return v3;
  }

  else
  {
    return v3 - 7;
  }
}

- (id)cellForRow:(int64_t)row
{
  v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:?];
  v6 = [(EKRecurrenceWeekdayChooserController *)self dayOfWeekForRow:row];
  selectedDays = self->_selectedDays;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [(EKRecurrenceWeekdayChooserController *)self _setCell:v5 selected:[(NSMutableArray *)selectedDays containsObject:v8]];

  return v5;
}

- (void)rowTapped:(int64_t)tapped
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(EKRecurrenceWeekdayChooserController *)self dayOfWeekForRow:?];
  selectedDays = self->_selectedDays;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v8 = [(NSMutableArray *)selectedDays containsObject:v7];

  if ([(NSMutableArray *)self->_selectedDays count]!= 1 || (v8 & 1) == 0)
  {
    v9 = self->_selectedDays;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    if (v8)
    {
      [(NSMutableArray *)v9 removeObject:v10];
    }

    else
    {
      [(NSMutableArray *)v9 addObject:v10];
    }

    v11 = [(EKRecurrenceWeekdayChooserController *)self cellForRow:tapped];
    [(EKRecurrenceWeekdayChooserController *)self _setCell:v11 selected:v8 ^ 1u];

    v12 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_selectedDays;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x1E6966AB0] dayOfWeek:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "integerValue", v19) + 1}];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [(EKRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:v12];
    [(EKRecurrenceChooserController *)self notifyDelegate];
  }
}

- (void)updateRecurrenceRuleBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy setDays:{-[EKRecurrenceWeekdayChooserController _dayMask](self, "_dayMask")}];
}

- (void)updateFromRecurrenceRule:(id)rule
{
  v9[1] = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  daysOfTheWeek = [ruleCopy daysOfTheWeek];

  if (daysOfTheWeek)
  {
    daysOfTheWeek2 = [ruleCopy daysOfTheWeek];
    [(EKRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:daysOfTheWeek2];
  }

  else
  {
    daysOfTheWeek2 = [(EKRecurrenceChooserController *)self startDateComponents:512];
    v7 = [MEMORY[0x1E6966AB0] dayOfWeek:{objc_msgSend(daysOfTheWeek2, "weekday")}];
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(EKRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:v8];
  }
}

- (void)_setCell:(id)cell selected:(BOOL)selected
{
  if (selected)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [cell setAccessoryType:v5];
}

- (int)_dayMask
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  daysOfTheWeek = [(EKRecurrenceWeekdayChooserController *)self daysOfTheWeek];
  v3 = [daysOfTheWeek countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(daysOfTheWeek);
        }

        v5 |= +[EKRecurrenceChooserController dayFromNumber:](EKRecurrenceChooserController, "dayFromNumber:", [*(*(&v9 + 1) + 8 * i) dayOfTheWeek]);
      }

      v4 = [daysOfTheWeek countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end