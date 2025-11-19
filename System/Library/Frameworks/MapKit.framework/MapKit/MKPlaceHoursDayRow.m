@interface MKPlaceHoursDayRow
- (MKPlaceHoursDayRow)initWithBusinessHours:(id)a3 frame:(CGRect)a4;
- (void)_setUpConstraints;
- (void)_setUpViewsForPlaceHoursDayRow;
- (void)hoursViewDidUpdate:(id)a3;
@end

@implementation MKPlaceHoursDayRow

- (void)hoursViewDidUpdate:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*&self->super._selected == a3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v18[0] = self->_hoursView;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v4 deactivateConstraints:v5];

    v6 = [*&self->super._selected topLabel];
    v7 = [v6 font];
    [v7 _mapkit_scaledValueForValue:8.0];
    v9 = v8;

    v10 = [(MKPlaceHoursDayRow *)self topAnchor];
    v11 = [*&self->super._selected topLabel];
    v12 = [v11 firstBaselineAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-v9];
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
  v3 = [*&self->super._selected topLabel];
  v4 = [v3 font];
  [v4 _mapkit_scaledValueForValue:8.0];
  v6 = v5;

  v7 = [(MKPlaceHoursDayRow *)self topAnchor];
  v8 = [*&self->super._selected topLabel];
  v9 = [v8 firstBaselineAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:-v6];
  hoursView = self->_hoursView;
  self->_hoursView = v10;

  [v21 addObject:self->_hoursView];
  v12 = [(MKPlaceHoursDayRow *)self bottomAnchor];
  v13 = [*&self->super._selected bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
  [v21 addObject:v14];

  v15 = [(MKPlaceHoursDayRow *)self leftAnchor];
  v16 = [*&self->super._selected leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
  [v21 addObject:v17];

  v18 = [(MKPlaceHoursDayRow *)self rightAnchor];
  v19 = [*&self->super._selected rightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
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

- (MKPlaceHoursDayRow)initWithBusinessHours:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MKPlaceHoursDayRow;
  v10 = [(MKPlaceSectionItemView *)&v14 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [[MKPlaceHoursView alloc] initWithBusinessHours:v9];
    v12 = *(v10 + 57);
    *(v10 + 57) = v11;

    [*(v10 + 57) setHoursDelegate:v10];
    [v10 _setUpViewsForPlaceHoursDayRow];
  }

  return v10;
}

@end