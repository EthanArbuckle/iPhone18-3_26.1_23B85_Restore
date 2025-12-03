@interface EKRecurrenceMonthChooserController
- (EKRecurrenceMonthChooserController)initWithDate:(id)date;
- (NSArray)monthsOfTheYear;
- (id)cellLabels;
- (id)tableViewCell;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)cell atIndex:(int64_t)index;
- (void)setMonthsOfTheYear:(id)year;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence;
- (void)updateFromRecurrenceRule:(id)rule;
- (void)updateRecurrenceRuleBuilder:(id)builder;
@end

@implementation EKRecurrenceMonthChooserController

- (EKRecurrenceMonthChooserController)initWithDate:(id)date
{
  v7.receiver = self;
  v7.super_class = EKRecurrenceMonthChooserController;
  v3 = [(EKRecurrenceChooserController *)&v7 initWithDate:date];
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
  allObjects = [(NSMutableSet *)self->_monthsOfTheYearSet allObjects];
  v3 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)setMonthsOfTheYear:(id)year
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:year];
  v4 = [v6 mutableCopy];
  monthsOfTheYearSet = self->_monthsOfTheYearSet;
  self->_monthsOfTheYearSet = v4;
}

- (void)updateRecurrenceRuleBuilder:(id)builder
{
  builderCopy = builder;
  monthsOfTheYear = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
  v5 = [monthsOfTheYear count];

  if (v5)
  {
    [builderCopy setFrequency:3];
    monthsOfTheYear2 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
    [builderCopy setMonthNumbers:monthsOfTheYear2];
  }
}

- (void)updateFromRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  monthsOfTheYear = [ruleCopy monthsOfTheYear];

  if (monthsOfTheYear)
  {
    monthsOfTheYear2 = [ruleCopy monthsOfTheYear];
    [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:monthsOfTheYear2];

    [(EKRecurrenceMonthChooserController *)self refreshCells];
  }
}

- (id)tableViewCell
{
  v4.receiver = self;
  v4.super_class = EKRecurrenceMonthChooserController;
  tableViewCell = [(EKRecurrenceGridChooserController *)&v4 tableViewCell];
  [tableViewCell setDrawsTopDivider:1];

  return tableViewCell;
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
  monthsOfTheYear = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
  v4 = [monthsOfTheYear count];

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
  allCells = [(EKRecurrenceGridChooserController *)self allCells];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [allCells countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allCells);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [allCells indexOfObject:v8];
        monthsOfTheYearSet = self->_monthsOfTheYearSet;
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9 + 1];
        v12 = [(NSMutableSet *)monthsOfTheYearSet containsObject:v11];

        [v8 setSelected:v12];
      }

      v5 = [allCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)selectCell:(id)cell atIndex:(int64_t)index
{
  v11[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  if (-[NSMutableSet count](self->_monthsOfTheYearSet, "count") != 1 || ([cellCopy selected] & 1) == 0)
  {
    [cellCopy setSelected:{objc_msgSend(cellCopy, "selected") ^ 1}];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:index + 1];
    if ([cellCopy selected] && -[EKRecurrenceMonthChooserController prohibitsMultipleMonthsInYearlyRecurrence](self, "prohibitsMultipleMonthsInYearlyRecurrence"))
    {
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v8];

      [(EKRecurrenceMonthChooserController *)self refreshCells];
    }

    else
    {
      selected = [cellCopy selected];
      monthsOfTheYearSet = self->_monthsOfTheYearSet;
      if (selected)
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

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_prohibitsMultipleMonthsInYearlyRecurrence != recurrence)
  {
    self->_prohibitsMultipleMonthsInYearlyRecurrence = recurrence;
    if (recurrence)
    {
      monthsOfTheYear = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
      v5 = [monthsOfTheYear count];

      if (v5)
      {
        monthsOfTheYear2 = [(EKRecurrenceMonthChooserController *)self monthsOfTheYear];
        firstObject = [monthsOfTheYear2 firstObject];
        v9[0] = firstObject;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
        [(EKRecurrenceMonthChooserController *)self setMonthsOfTheYear:v8];

        [(EKRecurrenceMonthChooserController *)self refreshCells];
      }
    }
  }
}

@end