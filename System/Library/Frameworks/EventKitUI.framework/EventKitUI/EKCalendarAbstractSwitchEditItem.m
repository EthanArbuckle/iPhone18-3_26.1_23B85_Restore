@interface EKCalendarAbstractSwitchEditItem
- (BOOL)saveStateToCalendar:(id)a3;
- (NSMutableArray)cells;
- (id)cell;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (unint64_t)numberOfSubitems;
- (void)_switchStateChanged:(id)a3;
- (void)reset;
- (void)setCalendar:(id)a3 store:(id)a4;
@end

@implementation EKCalendarAbstractSwitchEditItem

- (void)setCalendar:(id)a3 store:(id)a4
{
  v5.receiver = self;
  v5.super_class = EKCalendarAbstractSwitchEditItem;
  [(EKCalendarEditItem *)&v5 setCalendar:a3 store:a4];
  [(EKCalendarAbstractSwitchEditItem *)self setCells:0];
}

- (void)reset
{
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = 0;

  cells = self->_cells;
  self->_cells = 0;
}

- (void)_switchStateChanged:(id)a3
{
  -[EKCalendarAbstractSwitchEditItem setSwitchState:](self, "setSwitchState:", [a3 isOn]);
  v4 = [(EKCalendarEditItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKCalendarEditItem *)self delegate];
    [v6 calendarItemStartedEditing:self];
  }
}

- (id)cell
{
  [(EKCalendarAbstractSwitchEditItem *)self setSwitchState:[(EKCalendarAbstractSwitchEditItem *)self underlyingCalendarState]];
  v3 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(EKCalendarAbstractSwitchEditItem *)self cellAccessibilityIdentifierText];
  v6 = [v4 stringWithFormat:@"calendar-switch-cell:%@", v5];
  [(EKUITableViewCell *)v3 setAccessibilityIdentifier:v6];

  LODWORD(v6) = [(EKCalendarAbstractSwitchEditItem *)self cellWrapsLongText];
  v7 = [(EKCalendarAbstractSwitchEditItem *)self cellText];
  v8 = [(EKUITableViewCell *)v3 textLabel];
  [v8 setText:v7];

  v9 = [(EKUITableViewCell *)v3 textLabel];
  [v9 setNumberOfLines:v6 ^ 1];

  [(EKUITableViewCell *)v3 setSelectionStyle:0];
  if (![(EKCalendarAbstractSwitchEditItem *)self shouldHideSwitch])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v10 addTarget:self action:sel__switchStateChanged_ forControlEvents:4096];
    [v10 setOn:-[EKCalendarAbstractSwitchEditItem switchState](self animated:{"switchState"), 0}];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(EKCalendarAbstractSwitchEditItem *)self cellAccessibilityIdentifierText];
    v13 = [v11 stringWithFormat:@"calendar-switch:%@", v12];
    [v10 setAccessibilityIdentifier:v13];

    [(EKUITableViewCell *)v3 setAccessoryView:v10];
  }

  return v3;
}

- (NSMutableArray)cells
{
  cells = self->_cells;
  if (!cells)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v5 = self->_cells;
    self->_cells = v4;

    v6 = self->_cells;
    v7 = [(EKCalendarAbstractSwitchEditItem *)self cell];
    [(NSMutableArray *)v6 addObject:v7];

    cells = self->_cells;
  }

  return cells;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(EKCalendarAbstractSwitchEditItem *)self cells];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (unint64_t)numberOfSubitems
{
  v2 = [(EKCalendarAbstractSwitchEditItem *)self cells];
  v3 = [v2 count];

  return v3;
}

- (BOOL)saveStateToCalendar:(id)a3
{
  v4 = [(EKCalendarAbstractSwitchEditItem *)self switchState];
  v5 = v4 ^ [(EKCalendarAbstractSwitchEditItem *)self underlyingCalendarState];
  if (v5)
  {
    [(EKCalendarAbstractSwitchEditItem *)self setUnderlyingCalendarState:v4];
  }

  return v5;
}

@end