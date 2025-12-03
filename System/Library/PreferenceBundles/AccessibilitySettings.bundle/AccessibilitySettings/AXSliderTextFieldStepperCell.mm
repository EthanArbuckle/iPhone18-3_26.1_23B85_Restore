@interface AXSliderTextFieldStepperCell
- (void)_didUpdateSlider:(id)slider;
- (void)initializeView;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)updateWithValue:(double)value shouldUpdateTextField:(BOOL)field;
@end

@implementation AXSliderTextFieldStepperCell

- (void)initializeView
{
  v8.receiver = self;
  v8.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v8 initializeView];
  slider = [(AXSliderTextFieldStepperCell *)self slider];

  if (!slider)
  {
    v4 = objc_opt_new();
    [(AXSliderTextFieldStepperCell *)self setSlider:v4];

    slider2 = [(AXSliderTextFieldStepperCell *)self slider];
    [slider2 addTarget:self action:"_didUpdateSlider:" forControlEvents:4096];

    contentView = [(AXSliderTextFieldStepperCell *)self contentView];
    slider3 = [(AXSliderTextFieldStepperCell *)self slider];
    [contentView addSubview:slider3];
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v53 layoutSubviews];
  nameTextField = [(AXSliderTextFieldStepperCell *)self nameTextField];
  [nameTextField frame];
  rect = v4;
  rect_16 = v6;
  rect_24 = v5;

  stepper = [(AXSliderTextFieldStepperCell *)self stepper];
  [stepper frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  rect_8 = v14;

  contentView = [(AXSliderTextFieldStepperCell *)self contentView];
  [contentView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  contentView2 = [(AXSliderTextFieldStepperCell *)self contentView];
  [contentView2 layoutMargins];
  v26 = v17 + v25;
  v28 = v19 + v27;
  v30 = v21 - (v25 + v29);
  v32 = v23 - (v27 + v31);

  v33 = +[UIFontMetrics defaultMetrics];
  [v33 scaledValueForValue:40.0];
  v35 = v34;

  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  v37 = v9;
  v38 = v11;
  v39 = v13;
  v40 = rect_8;
  if (userInterfaceLayoutDirection == &dword_0 + 1)
  {
    v41 = CGRectGetMaxX(*&v37) + 0.0;
    v54.origin.x = v41;
    v42 = rect_16;
    v54.origin.y = rect_24;
    v54.size.width = v35;
    v54.size.height = rect_16;
    v43 = CGRectGetMaxX(v54) + 20.0;
    v55.origin.x = v26;
    v55.origin.y = v28;
    v55.size.width = v30;
    v55.size.height = v32;
    v44 = CGRectGetMaxX(v55) - v43;
  }

  else
  {
    MinX = CGRectGetMinX(*&v37);
    v56.origin.x = rect;
    v42 = rect_16;
    v56.origin.y = rect_24;
    v56.size.width = v35;
    v56.size.height = rect_16;
    v46 = MinX - CGRectGetWidth(v56) + -20.0;
    v57.origin.x = v26;
    v57.origin.y = v28;
    v57.size.width = v30;
    v57.size.height = v32;
    v44 = v46 - CGRectGetMinX(v57);
    v58.origin.x = v26;
    v58.origin.y = v28;
    v58.size.width = v44;
    v58.size.height = v32;
    v41 = CGRectGetMaxX(v58) + 20.0;
    v43 = v26;
  }

  nameTextField2 = [(AXSliderTextFieldStepperCell *)self nameTextField];
  [nameTextField2 setFrame:{v41, rect_24, v35, v42}];

  slider = [(AXSliderTextFieldStepperCell *)self slider];
  [slider setFrame:{v43, v28, v44, v32}];
}

- (void)setDelegate:(id)delegate
{
  v19.receiver = self;
  v19.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v19 setDelegate:delegate];
  stepper = [(AXSliderTextFieldStepperCell *)self stepper];
  [stepper minimumValue];
  v6 = v5;
  slider = [(AXSliderTextFieldStepperCell *)self slider];
  *&v8 = v6;
  [slider setMinimumValue:v8];

  stepper2 = [(AXSliderTextFieldStepperCell *)self stepper];
  [stepper2 maximumValue];
  v11 = v10;
  slider2 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v13 = v11;
  [slider2 setMaximumValue:v13];

  stepper3 = [(AXSliderTextFieldStepperCell *)self stepper];
  [stepper3 value];
  v16 = v15;
  slider3 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v18 = v16;
  [slider3 setValue:v18];
}

- (void)updateWithValue:(double)value shouldUpdateTextField:(BOOL)field
{
  v10.receiver = self;
  v10.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v10 updateWithValue:field shouldUpdateTextField:value];
  stepper = [(AXSliderTextFieldStepperCell *)self stepper];
  [stepper value];
  v7 = v6;
  slider = [(AXSliderTextFieldStepperCell *)self slider];
  *&v9 = v7;
  [slider setValue:v9];
}

- (void)_didUpdateSlider:(id)slider
{
  [slider value];
  v5 = roundf(v4);

  [(AXSliderTextFieldStepperCell *)self updateWithValue:1 shouldUpdateTextField:v5];
}

@end