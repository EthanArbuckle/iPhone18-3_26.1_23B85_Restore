@interface EKReminderDateDetailCell
- (EKReminderDateDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation EKReminderDateDetailCell

- (EKReminderDateDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5
{
  v5 = a5;
  v55[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v54.receiver = self;
  v54.super_class = EKReminderDateDetailCell;
  v10 = [(EKReminderDetailCell *)&v54 initWithEvent:v8 reminder:v9 editable:v5];
  if (v10)
  {
    v52 = v9;
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    line = v10->_line;
    v10->_line = v11;

    [(UILabel *)v10->_line setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_line setNumberOfLines:0];
    v13 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x10000];
    [(UILabel *)v10->_line setFont:v13];

    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10->_line setTextColor:v14];

    v15 = [(EKReminderDateDetailCell *)v10 contentView];
    [v15 addSubview:v10->_line];

    v43 = MEMORY[0x1E696ACD8];
    v50 = [(UILabel *)v10->_line leadingAnchor];
    v51 = [(EKReminderDateDetailCell *)v10 contentView];
    v49 = [v51 layoutMarginsGuide];
    v48 = [v49 leadingAnchor];
    v47 = [v50 constraintEqualToAnchor:v48 constant:6.0];
    v55[0] = v47;
    v45 = [(UILabel *)v10->_line trailingAnchor];
    v46 = [(EKReminderDateDetailCell *)v10 contentView];
    v44 = [v46 layoutMarginsGuide];
    v42 = [v44 trailingAnchor];
    v41 = [v45 constraintEqualToAnchor:v42 constant:-6.0];
    v55[1] = v41;
    v16 = [(UILabel *)v10->_line topAnchor];
    v40 = v16;
    v17 = [(EKReminderDateDetailCell *)v10 contentView];
    v18 = [v17 topAnchor];
    v19 = MEMORY[0x1D38B98D0]();
    v20 = 5.0;
    if (v19)
    {
      v20 = 18.0;
    }

    v21 = [v16 constraintEqualToAnchor:v18 constant:v20];
    v55[2] = v21;
    [(UILabel *)v10->_line bottomAnchor];
    v22 = v53 = v8;
    v23 = [(EKReminderDateDetailCell *)v10 contentView];
    v24 = [v23 bottomAnchor];
    v25 = MEMORY[0x1D38B98D0]();
    v26 = -15.0;
    if (v25)
    {
      v26 = -18.0;
    }

    v27 = [v22 constraintEqualToAnchor:v24 constant:v26];
    v55[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [v43 activateConstraints:v28];

    v8 = v53;
    v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v29 setDateStyle:4];
    if ([v53 completed])
    {
      [v29 setTimeStyle:1];
      v9 = v52;
      v30 = [v52 completionDate];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = [MEMORY[0x1E695DF00] now];
      }

      v33 = v32;

      v35 = MEMORY[0x1E696AEC0];
      v34 = EventKitUIBundle();
      v36 = [v34 localizedStringForKey:@"Completed: %@" value:&stru_1F4EF6790 table:0];
      v37 = [v29 stringFromDate:v33];
      v38 = [v35 localizedStringWithFormat:v36, v37];
      [(UILabel *)v10->_line setText:v38];
    }

    else
    {
      [v29 setTimeStyle:0];
      v33 = [v53 startDate];
      v34 = [v29 stringFromDate:v33];
      [(UILabel *)v10->_line setText:v34];
      v9 = v52;
    }
  }

  return v10;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  hideBottomCellSeparator = self->_hideBottomCellSeparator;
  v4.receiver = self;
  v4.super_class = EKReminderDateDetailCell;
  [(EKReminderDateDetailCell *)&v4 setSeparatorStyle:!hideBottomCellSeparator];
}

@end