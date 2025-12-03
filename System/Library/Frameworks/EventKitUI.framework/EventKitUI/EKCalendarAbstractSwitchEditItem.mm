@interface EKCalendarAbstractSwitchEditItem
- (BOOL)saveStateToCalendar:(id)calendar;
- (NSMutableArray)cells;
- (id)cell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (unint64_t)numberOfSubitems;
- (void)_switchStateChanged:(id)changed;
- (void)reset;
- (void)setCalendar:(id)calendar store:(id)store;
@end

@implementation EKCalendarAbstractSwitchEditItem

- (void)setCalendar:(id)calendar store:(id)store
{
  v5.receiver = self;
  v5.super_class = EKCalendarAbstractSwitchEditItem;
  [(EKCalendarEditItem *)&v5 setCalendar:calendar store:store];
  [(EKCalendarAbstractSwitchEditItem *)self setCells:0];
}

- (void)reset
{
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = 0;

  cells = self->_cells;
  self->_cells = 0;
}

- (void)_switchStateChanged:(id)changed
{
  -[EKCalendarAbstractSwitchEditItem setSwitchState:](self, "setSwitchState:", [changed isOn]);
  delegate = [(EKCalendarEditItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKCalendarEditItem *)self delegate];
    [delegate2 calendarItemStartedEditing:self];
  }
}

- (id)cell
{
  [(EKCalendarAbstractSwitchEditItem *)self setSwitchState:[(EKCalendarAbstractSwitchEditItem *)self underlyingCalendarState]];
  v3 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v4 = MEMORY[0x1E696AEC0];
  cellAccessibilityIdentifierText = [(EKCalendarAbstractSwitchEditItem *)self cellAccessibilityIdentifierText];
  v6 = [v4 stringWithFormat:@"calendar-switch-cell:%@", cellAccessibilityIdentifierText];
  [(EKUITableViewCell *)v3 setAccessibilityIdentifier:v6];

  LODWORD(v6) = [(EKCalendarAbstractSwitchEditItem *)self cellWrapsLongText];
  cellText = [(EKCalendarAbstractSwitchEditItem *)self cellText];
  textLabel = [(EKUITableViewCell *)v3 textLabel];
  [textLabel setText:cellText];

  textLabel2 = [(EKUITableViewCell *)v3 textLabel];
  [textLabel2 setNumberOfLines:v6 ^ 1];

  [(EKUITableViewCell *)v3 setSelectionStyle:0];
  if (![(EKCalendarAbstractSwitchEditItem *)self shouldHideSwitch])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v10 addTarget:self action:sel__switchStateChanged_ forControlEvents:4096];
    [v10 setOn:-[EKCalendarAbstractSwitchEditItem switchState](self animated:{"switchState"), 0}];
    v11 = MEMORY[0x1E696AEC0];
    cellAccessibilityIdentifierText2 = [(EKCalendarAbstractSwitchEditItem *)self cellAccessibilityIdentifierText];
    v13 = [v11 stringWithFormat:@"calendar-switch:%@", cellAccessibilityIdentifierText2];
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
    cell = [(EKCalendarAbstractSwitchEditItem *)self cell];
    [(NSMutableArray *)v6 addObject:cell];

    cells = self->_cells;
  }

  return cells;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cells = [(EKCalendarAbstractSwitchEditItem *)self cells];
  v5 = [cells objectAtIndex:index];

  return v5;
}

- (unint64_t)numberOfSubitems
{
  cells = [(EKCalendarAbstractSwitchEditItem *)self cells];
  v3 = [cells count];

  return v3;
}

- (BOOL)saveStateToCalendar:(id)calendar
{
  switchState = [(EKCalendarAbstractSwitchEditItem *)self switchState];
  v5 = switchState ^ [(EKCalendarAbstractSwitchEditItem *)self underlyingCalendarState];
  if (v5)
  {
    [(EKCalendarAbstractSwitchEditItem *)self setUnderlyingCalendarState:switchState];
  }

  return v5;
}

@end