@interface AXSliderTextFieldStepperCell
- (void)_didUpdateSlider:(id)a3;
- (void)initializeView;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)updateWithValue:(double)a3 shouldUpdateTextField:(BOOL)a4;
@end

@implementation AXSliderTextFieldStepperCell

- (void)initializeView
{
  v8.receiver = self;
  v8.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v8 initializeView];
  v3 = [(AXSliderTextFieldStepperCell *)self slider];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(AXSliderTextFieldStepperCell *)self setSlider:v4];

    v5 = [(AXSliderTextFieldStepperCell *)self slider];
    [v5 addTarget:self action:"_didUpdateSlider:" forControlEvents:4096];

    v6 = [(AXSliderTextFieldStepperCell *)self contentView];
    v7 = [(AXSliderTextFieldStepperCell *)self slider];
    [v6 addSubview:v7];
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v53 layoutSubviews];
  v3 = [(AXSliderTextFieldStepperCell *)self nameTextField];
  [v3 frame];
  rect = v4;
  rect_16 = v6;
  rect_24 = v5;

  v7 = [(AXSliderTextFieldStepperCell *)self stepper];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  rect_8 = v14;

  v15 = [(AXSliderTextFieldStepperCell *)self contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(AXSliderTextFieldStepperCell *)self contentView];
  [v24 layoutMargins];
  v26 = v17 + v25;
  v28 = v19 + v27;
  v30 = v21 - (v25 + v29);
  v32 = v23 - (v27 + v31);

  v33 = +[UIFontMetrics defaultMetrics];
  [v33 scaledValueForValue:40.0];
  v35 = v34;

  v36 = [UIApp userInterfaceLayoutDirection];
  v37 = v9;
  v38 = v11;
  v39 = v13;
  v40 = rect_8;
  if (v36 == &dword_0 + 1)
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

  v47 = [(AXSliderTextFieldStepperCell *)self nameTextField];
  [v47 setFrame:{v41, rect_24, v35, v42}];

  v48 = [(AXSliderTextFieldStepperCell *)self slider];
  [v48 setFrame:{v43, v28, v44, v32}];
}

- (void)setDelegate:(id)a3
{
  v19.receiver = self;
  v19.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v19 setDelegate:a3];
  v4 = [(AXSliderTextFieldStepperCell *)self stepper];
  [v4 minimumValue];
  v6 = v5;
  v7 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v8 = v6;
  [v7 setMinimumValue:v8];

  v9 = [(AXSliderTextFieldStepperCell *)self stepper];
  [v9 maximumValue];
  v11 = v10;
  v12 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v13 = v11;
  [v12 setMaximumValue:v13];

  v14 = [(AXSliderTextFieldStepperCell *)self stepper];
  [v14 value];
  v16 = v15;
  v17 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v18 = v16;
  [v17 setValue:v18];
}

- (void)updateWithValue:(double)a3 shouldUpdateTextField:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = AXSliderTextFieldStepperCell;
  [(AXSliderTextFieldStepperCell *)&v10 updateWithValue:a4 shouldUpdateTextField:a3];
  v5 = [(AXSliderTextFieldStepperCell *)self stepper];
  [v5 value];
  v7 = v6;
  v8 = [(AXSliderTextFieldStepperCell *)self slider];
  *&v9 = v7;
  [v8 setValue:v9];
}

- (void)_didUpdateSlider:(id)a3
{
  [a3 value];
  v5 = roundf(v4);

  [(AXSliderTextFieldStepperCell *)self updateWithValue:1 shouldUpdateTextField:v5];
}

@end