@interface MKPlaceHoursDayRow
- (MKPlaceHoursDayRow)initWithBusinessHours:(id)hours frame:(CGRect)frame;
- (void)_setUpConstraints;
- (void)_setUpViewsForPlaceHoursDayRow;
- (void)hoursViewDidUpdate:(id)update;
@end

@implementation MKPlaceHoursDayRow

- (void)hoursViewDidUpdate:(id)update
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*&self->super._selected == update)
  {
    v4 = MEMORY[0x1E696ACD8];
    v18[0] = self->_hoursView;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v4 deactivateConstraints:v5];

    topLabel = [*&self->super._selected topLabel];
    font = [topLabel font];
    [font _mapkit_scaledValueForValue:8.0];
    v9 = v8;

    topAnchor = [(MKPlaceHoursDayRow *)self topAnchor];
    topLabel2 = [*&self->super._selected topLabel];
    firstBaselineAnchor = [topLabel2 firstBaselineAnchor];
    v13 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v9];
    hoursView = self->_hoursView;
    self->_hoursView = v13;

    v15 = MEMORY[0x1E696ACD8];
    v17 = self->_hoursView;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v15 activateConstraints:v16];
  }
}

- (void)_setUpConstraints
{
  v21 = objc_opt_new();
  topLabel = [*&self->super._selected topLabel];
  font = [topLabel font];
  [font _mapkit_scaledValueForValue:8.0];
  v6 = v5;

  topAnchor = [(MKPlaceHoursDayRow *)self topAnchor];
  topLabel2 = [*&self->super._selected topLabel];
  firstBaselineAnchor = [topLabel2 firstBaselineAnchor];
  v10 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v6];
  hoursView = self->_hoursView;
  self->_hoursView = v10;

  [v21 addObject:self->_hoursView];
  bottomAnchor = [(MKPlaceHoursDayRow *)self bottomAnchor];
  bottomAnchor2 = [*&self->super._selected bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [v21 addObject:v14];

  leftAnchor = [(MKPlaceHoursDayRow *)self leftAnchor];
  leftAnchor2 = [*&self->super._selected leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  [v21 addObject:v17];

  rightAnchor = [(MKPlaceHoursDayRow *)self rightAnchor];
  rightAnchor2 = [*&self->super._selected rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
  [v21 addObject:v20];

  [MEMORY[0x1E696ACD8] activateConstraints:v21];
}

- (void)_setUpViewsForPlaceHoursDayRow
{
  [(MKPlaceHoursDayRow *)self setPreservesSuperviewLayoutMargins:1];
  [(MKPlaceHoursDayRow *)self setClipsToBounds:0];
  [*&self->super._selected setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKPlaceHoursDayRow *)self addSubview:*&self->super._selected];

  [(MKPlaceHoursDayRow *)self _setUpConstraints];
}

- (MKPlaceHoursDayRow)initWithBusinessHours:(id)hours frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  hoursCopy = hours;
  v14.receiver = self;
  v14.super_class = MKPlaceHoursDayRow;
  height = [(MKPlaceSectionItemView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [[MKPlaceHoursView alloc] initWithBusinessHours:hoursCopy];
    v12 = *(height + 57);
    *(height + 57) = v11;

    [*(height + 57) setHoursDelegate:height];
    [height _setUpViewsForPlaceHoursDayRow];
  }

  return height;
}

@end