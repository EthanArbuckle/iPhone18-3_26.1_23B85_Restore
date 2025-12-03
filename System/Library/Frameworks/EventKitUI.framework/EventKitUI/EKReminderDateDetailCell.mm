@interface EKReminderDateDetailCell
- (EKReminderDateDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation EKReminderDateDetailCell

- (EKReminderDateDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable
{
  editableCopy = editable;
  v55[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  reminderCopy = reminder;
  v54.receiver = self;
  v54.super_class = EKReminderDateDetailCell;
  v10 = [(EKReminderDetailCell *)&v54 initWithEvent:eventCopy reminder:reminderCopy editable:editableCopy];
  if (v10)
  {
    v52 = reminderCopy;
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    line = v10->_line;
    v10->_line = v11;

    [(UILabel *)v10->_line setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_line setNumberOfLines:0];
    v13 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x10000];
    [(UILabel *)v10->_line setFont:v13];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10->_line setTextColor:secondaryLabelColor];

    contentView = [(EKReminderDateDetailCell *)v10 contentView];
    [contentView addSubview:v10->_line];

    v43 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v10->_line leadingAnchor];
    contentView2 = [(EKReminderDateDetailCell *)v10 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v55[0] = v47;
    trailingAnchor = [(UILabel *)v10->_line trailingAnchor];
    contentView3 = [(EKReminderDateDetailCell *)v10 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
    v55[1] = v41;
    topAnchor = [(UILabel *)v10->_line topAnchor];
    v40 = topAnchor;
    contentView4 = [(EKReminderDateDetailCell *)v10 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v19 = MEMORY[0x1D38B98D0]();
    v20 = 5.0;
    if (v19)
    {
      v20 = 18.0;
    }

    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v20];
    v55[2] = v21;
    [(UILabel *)v10->_line bottomAnchor];
    v22 = v53 = eventCopy;
    contentView5 = [(EKReminderDateDetailCell *)v10 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    v25 = MEMORY[0x1D38B98D0]();
    v26 = -15.0;
    if (v25)
    {
      v26 = -18.0;
    }

    v27 = [v22 constraintEqualToAnchor:bottomAnchor constant:v26];
    v55[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [v43 activateConstraints:v28];

    eventCopy = v53;
    v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v29 setDateStyle:4];
    if ([v53 completed])
    {
      [v29 setTimeStyle:1];
      reminderCopy = v52;
      completionDate = [v52 completionDate];
      v31 = completionDate;
      if (completionDate)
      {
        v32 = completionDate;
      }

      else
      {
        v32 = [MEMORY[0x1E695DF00] now];
      }

      startDate = v32;

      v35 = MEMORY[0x1E696AEC0];
      v34 = EventKitUIBundle();
      v36 = [v34 localizedStringForKey:@"Completed: %@" value:&stru_1F4EF6790 table:0];
      v37 = [v29 stringFromDate:startDate];
      v38 = [v35 localizedStringWithFormat:v36, v37];
      [(UILabel *)v10->_line setText:v38];
    }

    else
    {
      [v29 setTimeStyle:0];
      startDate = [v53 startDate];
      v34 = [v29 stringFromDate:startDate];
      [(UILabel *)v10->_line setText:v34];
      reminderCopy = v52;
    }
  }

  return v10;
}

- (void)setSeparatorStyle:(int64_t)style
{
  hideBottomCellSeparator = self->_hideBottomCellSeparator;
  v4.receiver = self;
  v4.super_class = EKReminderDateDetailCell;
  [(EKReminderDateDetailCell *)&v4 setSeparatorStyle:!hideBottomCellSeparator];
}

@end