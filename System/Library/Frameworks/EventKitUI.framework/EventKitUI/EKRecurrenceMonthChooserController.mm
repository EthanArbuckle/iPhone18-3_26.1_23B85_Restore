@interface EKRecurrenceMonthChooserController
- (EKRecurrenceMonthChooserController)initWithDate:(id)a3;
- (NSArray)monthsOfTheYear;
- (id)cellLabels;
- (id)tableViewCell;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)a3 atIndex:(int64_t)a4;
- (void)setMonthsOfTheYear:(id)a3;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3;
- (void)updateFromRecurrenceRule:(id)a3;
- (void)updateRecurrenceRuleBuilder:(id)a3;
@end

@implementation EKRecurrenceMonthChooserController

- (EKRecurrenceMonthChooserController)initWithDate:(id)a3
{
  v7.receiver = self;
  v7.super_class = EKRecurrenceMonthChooserController;
  v3 = [(EKRecurrenceChooserController *)&v7 initWithDate:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    monthsOfTheYearSet = v3->_monthsOfTheYearSet;
    v3->_monthsOfTheYearSet = v4;
  }

  return v3;
}

- (NSArray)monthsOfTheYear
{
  v2 = [(NSMutableSet *)self->_monthsOfTheYearSet allObjects];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)setMonthsOfTheYear:(id)a3
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v4 = [v6 mutableCopy];
  monthsOfTheYearSet = self->_monthsOfTheYearSet;
  self->_monthsOfTheYearSet = v4;
}

- (void)updateRecurrenceRuleBuilder:(id)a3
{
  v7 = a3;
  v4 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
  v5 = [v4 count];

  if (v5)
  {
    [v7 setFrequency:3];
    v6 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
    [v7 setMonthNumbers:v6];
  }
}

- (void)updateFromRecurrenceRule:(id)a3
{
  v6 = a3;
  v4 = [v6 monthsOfTheYear];

  if (v4)
  {
    v5 = [v6 monthsOfTheYear];
    [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v5];

    [(EKRecurrenceMonthChooserController *)self refreshCells];
  }
}

- (id)tableViewCell
{
  v4.receiver = self;
  v4.super_class = EKRecurrenceMonthChooserController;
  v2 = [(EKRecurrenceGridChooserController *)&v4 tableViewCell];
  [v2 setDrawsTopDivider:1];

  return v2;
}

- (id)cellLabels
{
  if (cellLabels_onceToken_0 != -1)
  {
    [EKRecurrenceMonthChooserController cellLabels];
  }

  v3 = cellLabels___cellLabels_0;

  return v3;
}

void __48__EKRecurrenceMonthChooserController_cellLabels__block_invoke()
{
  v0 = objc_opt_new();
  for (i = 1; i != 13; ++i)
  {
    v2 = CUIKStringAbbreviationForMonth();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = &stru_1F4EF6790;
    }

    [v0 addObject:v4];
  }

  v5 = cellLabels___cellLabels_0;
  cellLabels___cellLabels_0 = v0;
}

- (void)prepareForDisplay
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(EKRecurrenceChooserController *)self startDateComponents:8];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "month")}];
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v7];
  }
}

- (void)refreshCells
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(EKRecurrenceGridChooserController *)self allCells];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 indexOfObject:v8];
        monthsOfTheYearSet = self->_monthsOfTheYearSet;
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9 + 1];
        v12 = [(NSMutableSet *)monthsOfTheYearSet containsObject:v11];

        [v8 setSelected:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)selectCell:(id)a3 atIndex:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (-[NSMutableSet count](self->_monthsOfTheYearSet, "count") != 1 || ([v6 selected] & 1) == 0)
  {
    [v6 setSelected:{objc_msgSend(v6, "selected") ^ 1}];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4 + 1];
    if ([v6 selected] && -[EKRecurrenceMonthChooserController prohibitsMultipleMonthsInYearlyRecurrence](self, "prohibitsMultipleMonthsInYearlyRecurrence"))
    {
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v8];

      [(EKRecurrenceMonthChooserController *)self refreshCells];
    }

    else
    {
      v9 = [v6 selected];
      monthsOfTheYearSet = self->_monthsOfTheYearSet;
      if (v9)
      {
        [(NSMutableSet *)monthsOfTheYearSet addObject:v7];
      }

      else
      {
        [(NSMutableSet *)monthsOfTheYearSet removeObject:v7];
      }
    }

    [(EKRecurrenceChooserController *)self notifyDelegate];
  }
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_prohibitsMultipleMonthsInYearlyRecurrence != a3)
  {
    self->_prohibitsMultipleMonthsInYearlyRecurrence = a3;
    if (a3)
    {
      v4 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
        v7 = [v6 firstObject];
        v9[0] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
        [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v8];

        [(EKRecurrenceMonthChooserController *)self refreshCells];
      }
    }
  }
}

@end