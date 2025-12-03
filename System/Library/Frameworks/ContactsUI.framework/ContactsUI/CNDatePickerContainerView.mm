@interface CNDatePickerContainerView
- (CNDatePickerContainerView)initWithDatePicker:(id)picker;
@end

@implementation CNDatePickerContainerView

- (CNDatePickerContainerView)initWithDatePicker:(id)picker
{
  v29[4] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  v28.receiver = self;
  v28.super_class = CNDatePickerContainerView;
  v6 = [(CNDatePickerContainerView *)&v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v27 = pickerCopy;
    objc_storeStrong(&v6->_datePicker, picker);
    [(UIDatePicker *)v7->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNDatePickerContainerView *)v7 addSubview:v7->_datePicker];
    leadingAnchor = [(UIDatePicker *)v7->_datePicker leadingAnchor];
    layoutMarginsGuide = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v23;
    topAnchor = [(UIDatePicker *)v7->_datePicker topAnchor];
    layoutMarginsGuide2 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[1] = v19;
    trailingAnchor = [(UIDatePicker *)v7->_datePicker trailingAnchor];
    layoutMarginsGuide3 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[2] = v11;
    bottomAnchor = [(UIDatePicker *)v7->_datePicker bottomAnchor];
    layoutMarginsGuide4 = [(CNDatePickerContainerView *)v7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v16];
    v17 = v7;

    pickerCopy = v27;
  }

  return v7;
}

@end