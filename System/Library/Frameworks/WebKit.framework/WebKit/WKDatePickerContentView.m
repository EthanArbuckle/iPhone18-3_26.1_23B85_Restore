@interface WKDatePickerContentView
- (CGSize)estimatedMaximumPopoverSize;
- (WKDatePickerContentView)initWithCalendarView:(id)a3 selectionWeekOfYear:(id)a4;
- (WKDatePickerContentView)initWithDatePicker:(id)a3;
- (double)bottomMarginForToolbar;
- (id).cxx_construct;
- (void)adjustLayoutIfNeeded;
- (void)setupView:(id)a3 toolbarBottomMargin:(double)a4;
@end

@implementation WKDatePickerContentView

- (void)adjustLayoutIfNeeded
{
  if (_UISolariumEnabled())
  {
    [(NSLayoutConstraint *)self->_toolbarLeadingConstraint.m_ptr setConstant:10.0];
    [(NSLayoutConstraint *)self->_toolbarTrailingConstraint.m_ptr setConstant:-10.0];
    m_ptr = self->_toolbarBottomConstraint.m_ptr;

    [(NSLayoutConstraint *)m_ptr setConstant:-12.0];
  }
}

- (void)setupView:(id)a3 toolbarBottomMargin:(double)a4
{
  v49[11] = *MEMORY[0x1E69E9840];
  [(WKDatePickerContentView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [a3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WKDatePickerContentView *)self addSubview:a3];
  v7 = objc_opt_new();
  m_ptr = self->_accessoryView.m_ptr;
  self->_accessoryView.m_ptr = v7;
  if (m_ptr)
  {

    v7 = self->_accessoryView.m_ptr;
  }

  [(UIToolbar *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WKDatePickerContentView *)self addSubview:self->_accessoryView.m_ptr];
  [a3 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [a3 sizeToFit];
  v9 = self->_accessoryView.m_ptr;
  v10 = objc_opt_new();
  [v10 setBackgroundEffect:0];
  if (v10)
  {
    v11 = v10;
  }

  [(UIToolbar *)v9 setStandardAppearance:v10];
  [(UIToolbar *)self->_accessoryView.m_ptr sizeToFit];
  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = [(UIToolbar *)self->_accessoryView.m_ptr bounds];
  v19 = v18;
  if (v13 >= v17)
  {
    v20 = v13;
  }

  else
  {
    v20 = v17;
  }

  self->_contentSize.width = v20 + 32.0;
  self->_contentSize.height = a4 + 32.0 + v15 + v18;
  IsVision = PAL::currentUserInterfaceIdiomIsVision(v16);
  v22 = [(UIToolbar *)self->_accessoryView.m_ptr leadingAnchor];
  v23 = [(WKDatePickerContentView *)self leadingAnchor];
  v24 = 0.0;
  if (IsVision)
  {
    v24 = 16.0;
  }

  v25 = [v22 constraintEqualToAnchor:v23 constant:v24];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  v28 = self->_toolbarLeadingConstraint.m_ptr;
  self->_toolbarLeadingConstraint.m_ptr = v26;
  if (v28)
  {
  }

  v29 = [(UIToolbar *)self->_accessoryView.m_ptr trailingAnchor];
  v30 = [(WKDatePickerContentView *)self trailingAnchor];
  v31 = 0.0;
  if (IsVision)
  {
    v31 = -16.0;
  }

  v32 = [v29 constraintEqualToAnchor:v30 constant:v31];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  v35 = self->_toolbarTrailingConstraint.m_ptr;
  self->_toolbarTrailingConstraint.m_ptr = v33;
  if (v35)
  {
  }

  v36 = [-[UIToolbar heightAnchor](self->_accessoryView.m_ptr "heightAnchor")];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  v39 = self->_toolbarHeightConstraint.m_ptr;
  self->_toolbarHeightConstraint.m_ptr = v37;
  if (v39)
  {
  }

  v40 = [-[UIToolbar bottomAnchor](self->_accessoryView.m_ptr "bottomAnchor")];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  v43 = self->_toolbarBottomConstraint.m_ptr;
  self->_toolbarBottomConstraint.m_ptr = v41;
  if (v43)
  {
  }

  v44 = MEMORY[0x1E696ACD8];
  v49[1] = [-[WKDatePickerContentView heightAnchor](self heightAnchor];
  v49[2] = [objc_msgSend(a3 "heightAnchor")];
  v49[3] = [objc_msgSend(a3 "topAnchor")];
  v45 = [objc_msgSend(a3 "bottomAnchor")];
  v46 = self->_toolbarLeadingConstraint.m_ptr;
  v47 = self->_toolbarTrailingConstraint.m_ptr;
  v48 = self->_toolbarHeightConstraint.m_ptr;
  v49[4] = v45;
  v49[5] = v46;
  v49[6] = v47;
  v49[7] = v48;
  v49[8] = self->_toolbarBottomConstraint.m_ptr;
  v49[9] = [objc_msgSend(a3 "leadingAnchor")];
  v49[10] = [objc_msgSend(a3 "trailingAnchor")];
  [v44 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v49, 11)}];
  [(WKDatePickerContentView *)self adjustLayoutIfNeeded];
}

- (double)bottomMarginForToolbar
{
  v2 = [objc_loadWeak(&self->_datePicker) datePickerMode];
  result = 2.0;
  if (v2 == 2)
  {
    return 8.0;
  }

  return result;
}

- (WKDatePickerContentView)initWithCalendarView:(id)a3 selectionWeekOfYear:(id)a4
{
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v13.receiver = self;
  v13.super_class = WKDatePickerContentView;
  v10 = [(WKDatePickerContentView *)&v13 initWithFrame:v6, v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_calendarView, a3);
    [objc_loadWeak(&v11->_calendarView) setCalendar:{objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D868])}];
    [objc_loadWeak(&v11->_calendarView) setSelectionBehavior:a4];
    [(WKDatePickerContentView *)v11 setupView:a3 toolbarBottomMargin:2.0];
  }

  return v11;
}

- (WKDatePickerContentView)initWithDatePicker:(id)a3
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v11.receiver = self;
  v11.super_class = WKDatePickerContentView;
  v8 = [(WKDatePickerContentView *)&v11 initWithFrame:v4, v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_datePicker, a3);
    [(WKDatePickerContentView *)v9 bottomMarginForToolbar];
    [(WKDatePickerContentView *)v9 setupView:a3 toolbarBottomMargin:?];
  }

  return v9;
}

- (CGSize)estimatedMaximumPopoverSize
{
  [(WKDatePickerContentView *)self bottomMarginForToolbar];
  v4 = v3 + 80.0;
  width = self->_contentSize.width;
  v6 = v4 + self->_contentSize.height;
  result.height = v6;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 53) = 0;
  *(self + 54) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 60) = 0;
  return self;
}

@end