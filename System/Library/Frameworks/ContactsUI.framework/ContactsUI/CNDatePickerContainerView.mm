@interface CNDatePickerContainerView
- (CNDatePickerContainerView)initWithDatePicker:(id)a3;
@end

@implementation CNDatePickerContainerView

- (CNDatePickerContainerView)initWithDatePicker:(id)a3
{
  v29[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28.receiver = self;
  v28.super_class = CNDatePickerContainerView;
  v6 = [(CNDatePickerContainerView *)&v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v27 = v5;
    objc_storeStrong(&v6->_datePicker, a3);
    [(UIDatePicker *)v7->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNDatePickerContainerView *)v7 addSubview:v7->_datePicker];
    v25 = [(UIDatePicker *)v7->_datePicker leadingAnchor];
    v26 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v29[0] = v23;
    v21 = [(UIDatePicker *)v7->_datePicker topAnchor];
    v22 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    v20 = [v22 topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v29[1] = v19;
    v8 = [(UIDatePicker *)v7->_datePicker trailingAnchor];
    v9 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    v10 = [v9 trailingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v29[2] = v11;
    v12 = [(UIDatePicker *)v7->_datePicker bottomAnchor];
    v13 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v29[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v16];
    v17 = v7;

    v5 = v27;
  }

  return v7;
}

@end