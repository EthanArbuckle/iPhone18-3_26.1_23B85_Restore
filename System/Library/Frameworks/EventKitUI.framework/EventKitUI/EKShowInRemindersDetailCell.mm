@interface EKShowInRemindersDetailCell
- (EKShowInRemindersDetailCell)initWithEvent:(id)event editable:(BOOL)editable;
- (void)didTap;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation EKShowInRemindersDetailCell

- (EKShowInRemindersDetailCell)initWithEvent:(id)event editable:(BOOL)editable
{
  v34[5] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = EKShowInRemindersDetailCell;
  v4 = [(EKEventDetailCell *)&v33 initWithEvent:event editable:editable];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"Show in Reminders" value:&stru_1F4EF6790 table:0];
    [(UILabel *)v4->_titleLabel setText:v8];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v4->_titleLabel setFont:v9];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    contentView = [(EKShowInRemindersDetailCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v11 = MEMORY[0x1E696ACD8];
    v29 = MEMORY[0x1E696ACD8];
    v12 = v4->_titleLabel;
    contentView2 = [(EKShowInRemindersDetailCell *)v4 contentView];
    v31 = [v11 constraintWithItem:v12 attribute:9 relatedBy:0 toItem:contentView2 attribute:9 multiplier:1.0 constant:0.0];
    v34[0] = v31;
    v13 = MEMORY[0x1E696ACD8];
    v14 = v4->_titleLabel;
    contentView3 = [(EKShowInRemindersDetailCell *)v4 contentView];
    v15 = [v13 constraintWithItem:v14 attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];
    v34[1] = v15;
    v16 = MEMORY[0x1E696ACD8];
    v17 = v4->_titleLabel;
    contentView4 = [(EKShowInRemindersDetailCell *)v4 contentView];
    v19 = [v16 constraintWithItem:v17 attribute:5 relatedBy:0 toItem:contentView4 attribute:5 multiplier:1.0 constant:0.0];
    v34[2] = v19;
    v20 = MEMORY[0x1E696ACD8];
    v21 = v4->_titleLabel;
    contentView5 = [(EKShowInRemindersDetailCell *)v4 contentView];
    v23 = [v20 constraintWithItem:v21 attribute:3 relatedBy:0 toItem:contentView5 attribute:3 multiplier:1.0 constant:0.0];
    v34[3] = v23;
    v24 = MEMORY[0x1E696ACD8];
    contentView6 = [(EKShowInRemindersDetailCell *)v4 contentView];
    v26 = [v24 constraintWithItem:contentView6 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    v34[4] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
    [v29 activateConstraints:v27];
  }

  return v4;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = EKShowInRemindersDetailCell;
  [(EKShowInRemindersDetailCell *)&v3 setSeparatorStyle:0];
}

- (void)didTap
{
  event = self->super._event;
  if (event)
  {
    v3 = MEMORY[0x1E695DFF8];
    uniqueID = [(EKEvent *)event uniqueID];
    v6 = [v3 URLWithString:uniqueID];

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openURL:v6 configuration:0 completionHandler:&__block_literal_global_51];
  }
}

void __37__EKShowInRemindersDetailCell_didTap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when Open in Reminders tapped: %@", &v7, 0xCu);
    }
  }
}

@end