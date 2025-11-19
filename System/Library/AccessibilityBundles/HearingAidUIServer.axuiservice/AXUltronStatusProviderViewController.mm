@interface AXUltronStatusProviderViewController
- (void)updateDisplay:(id)a3 confidence:(double)a4;
- (void)viewDidLoad;
@end

@implementation AXUltronStatusProviderViewController

- (void)viewDidLoad
{
  v68.receiver = self;
  v68.super_class = AXUltronStatusProviderViewController;
  [(AXUltronStatusProviderViewController *)&v68 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x29EDBD6A0]);
  v4 = [v3 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
  clearTimer = self->_clearTimer;
  self->_clearTimer = v4;

  v6 = objc_alloc(MEMORY[0x29EDC7DA0]);
  v7 = *MEMORY[0x29EDB90E0];
  v8 = *(MEMORY[0x29EDB90E0] + 8);
  v9 = *(MEMORY[0x29EDB90E0] + 16);
  v10 = *(MEMORY[0x29EDB90E0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x29EDB90E0], v8, v9, v10}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(AXUltronStatusProviderViewController *)self view];
  [v12 addSubview:v11];

  v13 = [(AXUltronStatusProviderViewController *)self view];
  v14 = MEMORY[0x29EDBA008];
  v15 = [(AXUltronStatusProviderViewController *)self view];
  v16 = [v14 constraintWithItem:v11 attribute:7 relatedBy:0 toItem:v15 attribute:7 multiplier:0.25 constant:0.0];
  [v13 addConstraint:v16];

  v17 = [(AXUltronStatusProviderViewController *)self view];
  v18 = [MEMORY[0x29EDBA008] constraintWithItem:v11 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
  [v17 addConstraint:v18];

  v19 = [(AXUltronStatusProviderViewController *)self view];
  v20 = MEMORY[0x29EDBA008];
  v21 = [(AXUltronStatusProviderViewController *)self view];
  v22 = [v20 constraintWithItem:v11 attribute:6 relatedBy:0 toItem:v21 attribute:6 multiplier:1.0 constant:-10.0];
  [v19 addConstraint:v22];

  v23 = [(AXUltronStatusProviderViewController *)self view];
  v24 = MEMORY[0x29EDBA008];
  v25 = [(AXUltronStatusProviderViewController *)self view];
  v26 = [v24 constraintWithItem:v11 attribute:3 relatedBy:0 toItem:v25 attribute:3 multiplier:1.0 constant:10.0];
  [v23 addConstraint:v26];

  v27 = [v11 layer];
  [v27 setCornerRadius:8.0];

  v28 = [v11 layer];
  [v28 setBorderWidth:3.0];

  v29 = [MEMORY[0x29EDC7A00] blackColor];
  v30 = [v29 colorWithAlphaComponent:1.0];
  v31 = [v30 CGColor];
  v32 = [v11 layer];
  [v32 setBorderColor:v31];

  v33 = [MEMORY[0x29EDC7A00] yellowColor];
  v34 = [v33 colorWithAlphaComponent:0.85];
  [v11 setBackgroundColor:v34];

  v35 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v7, v8, v9, v10}];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v35];
  v36 = [(AXUltronStatusProviderViewController *)self view];
  v37 = [MEMORY[0x29EDBA008] constraintWithItem:v35 attribute:7 relatedBy:0 toItem:v11 attribute:7 multiplier:1.0 constant:-20.0];
  [v36 addConstraint:v37];

  v38 = [(AXUltronStatusProviderViewController *)self view];
  v39 = [MEMORY[0x29EDBA008] constraintWithItem:v35 attribute:10 relatedBy:0 toItem:v11 attribute:10 multiplier:1.0 constant:0.0];
  [v38 addConstraint:v39];

  v40 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{v7, v8, v9, v10}];
  listenType = self->_listenType;
  self->_listenType = v40;

  v42 = [MEMORY[0x29EDC76B8] preferredFontDescriptorWithTextStyle:*MEMORY[0x29EDC8110] addingSymbolicTraits:32770 options:0];
  v43 = self->_listenType;
  v44 = MEMORY[0x29EDC76B0];
  [v42 pointSize];
  v45 = [v44 fontWithDescriptor:v42 size:?];
  [(UILabel *)v43 setFont:v45];

  v46 = self->_listenType;
  v47 = [MEMORY[0x29EDC7A00] blackColor];
  [(UILabel *)v46 setTextColor:v47];

  [(UILabel *)self->_listenType setTextAlignment:0];
  [(UILabel *)self->_listenType setText:@"Sound Detections"];
  [(UILabel *)self->_listenType setClipsToBounds:0];
  [(UILabel *)self->_listenType setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:self->_listenType];
  v48 = [(AXUltronStatusProviderViewController *)self view];
  v49 = [MEMORY[0x29EDBA008] constraintWithItem:self->_listenType attribute:5 relatedBy:0 toItem:v35 attribute:5 multiplier:1.0 constant:10.0];
  [v48 addConstraint:v49];

  v50 = [(AXUltronStatusProviderViewController *)self view];
  v51 = [MEMORY[0x29EDBA008] constraintWithItem:self->_listenType attribute:10 relatedBy:0 toItem:v35 attribute:10 multiplier:1.0 constant:0.0];
  [v50 addConstraint:v51];

  v52 = objc_alloc_init(MEMORY[0x29EDC7B38]);
  confidence = self->_confidence;
  self->_confidence = v52;

  v54 = [MEMORY[0x29EDC76B8] preferredFontDescriptorWithTextStyle:*MEMORY[0x29EDC8130] addingSymbolicTraits:0x8000 options:0];

  v55 = self->_confidence;
  v56 = MEMORY[0x29EDC76B0];
  [v54 pointSize];
  v57 = [v56 fontWithDescriptor:v54 size:?];
  [(UILabel *)v55 setFont:v57];

  v58 = self->_confidence;
  v59 = [MEMORY[0x29EDC7A00] blueColor];
  [(UILabel *)v58 setTextColor:v59];

  [(UILabel *)self->_confidence setTextAlignment:0];
  [(UILabel *)self->_confidence setClipsToBounds:0];
  [(UILabel *)self->_confidence setNumberOfLines:0];
  [(UILabel *)self->_confidence setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:self->_confidence];
  v60 = [(AXUltronStatusProviderViewController *)self view];
  v61 = [MEMORY[0x29EDBA008] constraintWithItem:self->_confidence attribute:5 relatedBy:0 toItem:self->_listenType attribute:6 multiplier:1.0 constant:5.0];
  [v60 addConstraint:v61];

  v62 = [(AXUltronStatusProviderViewController *)self view];
  v63 = [MEMORY[0x29EDBA008] constraintWithItem:self->_confidence attribute:10 relatedBy:0 toItem:v35 attribute:10 multiplier:1.0 constant:0.0];
  [v62 addConstraint:v63];

  v64 = [(AXUltronStatusProviderViewController *)self view];
  v65 = [MEMORY[0x29EDBA008] constraintWithItem:v35 attribute:8 relatedBy:1 toItem:self->_listenType attribute:8 multiplier:1.0 constant:0.0];
  [v64 addConstraint:v65];

  v66 = [(AXUltronStatusProviderViewController *)self view];
  v67 = [MEMORY[0x29EDBA008] constraintWithItem:v35 attribute:8 relatedBy:1 toItem:self->_confidence attribute:8 multiplier:1.0 constant:0.0];
  [v66 addConstraint:v67];
}

- (void)updateDisplay:(id)a3 confidence:(double)a4
{
  v6 = a3;
  [(AXDispatchTimer *)self->_clearTimer cancel];
  v7 = MEMORY[0x29EDC7DA0];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke;
  v11[3] = &unk_29F2C4F68;
  v12 = v6;
  v13 = self;
  v14 = a4;
  v8 = v6;
  [v7 animateWithDuration:v11 animations:0.2];
  clearTimer = self->_clearTimer;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke_2;
  v10[3] = &unk_29F2C4F40;
  v10[4] = self;
  [(AXDispatchTimer *)clearTimer afterDelay:v10 processBlock:5.0];
}

uint64_t __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x29EDBDD60]])
  {
    v2 = *(*(a1 + 40) + 992);
    v3 = @"Baby Crying";
  }

  else
  {
    if (([*(a1 + 32) isEqualToString:*MEMORY[0x29EDBDD98]] & 1) == 0)
    {
      goto LABEL_6;
    }

    v2 = *(*(a1 + 40) + 992);
    v3 = @"Shouting";
  }

  [v2 setText:v3];
LABEL_6:
  [*(*(a1 + 40) + 992) sizeToFit];
  v4 = *(a1 + 48);
  v5 = AXFormatFloatWithPercentage();
  [*(*(a1 + 40) + 1000) setText:v5];

  v6 = *(*(a1 + 40) + 1000);

  return [v6 sizeToFit];
}

uint64_t __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke_3;
  v2[3] = &unk_29F2C4F40;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x29EDC7DA0] animateWithDuration:v2 animations:0.2];
}

uint64_t __65__AXUltronStatusProviderViewController_updateDisplay_confidence___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setText:@"Listening"];
  [*(*(a1 + 32) + 992) sizeToFit];
  v2 = *(*(a1 + 32) + 1000);

  return [v2 setText:&stru_2A21BC608];
}

@end