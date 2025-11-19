@interface WFOverlayImageEditorOptionsView
- (UIButton)cancelButton;
- (UIButton)nextButton;
- (UILabel)nextLabel;
- (UIView)topBorder;
- (WFOverlayImageEditorOptionButton)opacityButton;
- (WFOverlayImageEditorOptionButton)resetButton;
- (WFOverlayImageEditorOptionButton)rotationButton;
- (WFOverlayImageEditorOptionsView)init;
- (WFOverlayImageEditorOptionsViewDelegate)delegate;
- (void)didTapCancelButton;
- (void)didTapNextButton;
- (void)didTapOpacityButton;
- (void)didTapResetButton;
- (void)didTapRotationButton;
@end

@implementation WFOverlayImageEditorOptionsView

- (UILabel)nextLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_nextLabel);

  return WeakRetained;
}

- (UIView)topBorder
{
  WeakRetained = objc_loadWeakRetained(&self->_topBorder);

  return WeakRetained;
}

- (WFOverlayImageEditorOptionButton)opacityButton
{
  WeakRetained = objc_loadWeakRetained(&self->_opacityButton);

  return WeakRetained;
}

- (WFOverlayImageEditorOptionButton)resetButton
{
  WeakRetained = objc_loadWeakRetained(&self->_resetButton);

  return WeakRetained;
}

- (WFOverlayImageEditorOptionButton)rotationButton
{
  WeakRetained = objc_loadWeakRetained(&self->_rotationButton);

  return WeakRetained;
}

- (WFOverlayImageEditorOptionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIButton)nextButton
{
  WeakRetained = objc_loadWeakRetained(&self->_nextButton);

  return WeakRetained;
}

- (UIButton)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

- (void)didTapNextButton
{
  v3 = [(WFOverlayImageEditorOptionsView *)self nextButton];
  [v3 setEnabled:0];

  v4 = [(WFOverlayImageEditorOptionsView *)self delegate];
  [v4 finishEditingImage];
}

- (void)didTapCancelButton
{
  v2 = [(WFOverlayImageEditorOptionsView *)self delegate];
  [v2 cancelEditingImage];
}

- (void)didTapOpacityButton
{
  v3 = [(WFOverlayImageEditorOptionsView *)self opacityButton];
  v4 = [v3 isSelected];
  v5 = [(WFOverlayImageEditorOptionsView *)self opacityButton];
  [v5 setSelected:v4 ^ 1u];

  v7 = [(WFOverlayImageEditorOptionsView *)self delegate];
  v6 = [(WFOverlayImageEditorOptionsView *)self opacityButton];
  [v7 setOpacitySliderVisible:{objc_msgSend(v6, "isSelected")}];
}

- (void)didTapRotationButton
{
  v3 = [(WFOverlayImageEditorOptionsView *)self rotationButton];
  v4 = [v3 isSelected];
  v5 = [(WFOverlayImageEditorOptionsView *)self rotationButton];
  [v5 setSelected:v4 ^ 1u];

  v7 = [(WFOverlayImageEditorOptionsView *)self delegate];
  v6 = [(WFOverlayImageEditorOptionsView *)self rotationButton];
  [v7 setRotationEnabled:{objc_msgSend(v6, "isSelected") ^ 1}];
}

- (void)didTapResetButton
{
  v2 = [(WFOverlayImageEditorOptionsView *)self delegate];
  [v2 resetOverlayImageViewTransformations];
}

- (WFOverlayImageEditorOptionsView)init
{
  v71[22] = *MEMORY[0x277D85DE8];
  v70.receiver = self;
  v70.super_class = WFOverlayImageEditorOptionsView;
  v2 = [(WFOverlayImageEditorOptionsView *)&v70 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = WFLocalizedString(@"Rotation");
    [v3 setTitle:v4 forState:0];

    v5 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageRotationLockIcon"];
    v6 = [v5 UIImage];
    [v3 setImage:v6 forState:4];

    v7 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageRotationUnlockIcon"];
    v8 = [v7 UIImage];
    [v3 setImage:v8 forState:0];

    [v3 addTarget:v2 action:sel_didTapRotationButton forControlEvents:64];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v3];
    v9 = v3;
    objc_storeWeak(&v2->_rotationButton, v3);
    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = WFLocalizedString(@"Reset");
    [v10 setTitle:v11 forState:0];

    v12 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageResetIcon"];
    v13 = [v12 UIImage];
    [v10 setImage:v13 forState:0];

    [v10 addTarget:v2 action:sel_didTapResetButton forControlEvents:64];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v10];
    objc_storeWeak(&v2->_resetButton, v10);
    v14 = objc_opt_new();
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = WFLocalizedString(@"Opacity");
    [v14 setTitle:v15 forState:0];

    v16 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageOpacityIcon"];
    v17 = [v16 UIImage];
    [v14 setImage:v17 forState:0];

    v18 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageOpacityIconSelected"];
    v19 = [v18 UIImage];
    [v14 setImage:v19 forState:4];

    [v14 addTarget:v2 action:sel_didTapOpacityButton forControlEvents:64];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v14];
    objc_storeWeak(&v2->_opacityButton, v14);
    v20 = [MEMORY[0x277D75220] buttonWithType:1];
    v21 = WFLocalizedString(@"Cancel");
    [v20 setTitle:v21 forState:0];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D75348] whiteColor];
    [v20 setTitleColor:v22 forState:0];

    v23 = [v20 titleLabel];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v23 setFont:v24];

    [v20 addTarget:v2 action:sel_didTapCancelButton forControlEvents:64];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v20];
    objc_storeWeak(&v2->_cancelButton, v20);
    v25 = [MEMORY[0x277D75220] buttonWithType:1];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = WFLocalizedString(@"Next");
    [v25 setTitle:v26 forState:0];

    v27 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.756862745 blue:0.0274509804 alpha:1.0];
    [v25 setTitleColor:v27 forState:0];

    v28 = [v25 titleLabel];
    v29 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [v28 setFont:v29];

    [v25 addTarget:v2 action:sel_didTapNextButton forControlEvents:64];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v25];
    objc_storeWeak(&v2->_nextButton, v25);
    v30 = objc_alloc_init(MEMORY[0x277D75D18]);
    v31 = [MEMORY[0x277D75348] colorWithRed:0.0705882353 green:0.117647059 blue:0.141176471 alpha:1.0];
    [v30 setBackgroundColor:v31];

    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFOverlayImageEditorOptionsView *)v2 addSubview:v30];
    objc_storeWeak(&v2->_topBorder, v30);
    v32 = [(WFOverlayImageEditorOptionsView *)v2 safeAreaLayoutGuide];
    v64 = MEMORY[0x277CCAAD0];
    v66 = v30;
    v69 = [MEMORY[0x277CCAAD0] constraintWithItem:v30 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
    v71[0] = v69;
    v33 = MEMORY[0x277CCAAD0];
    v68 = [MEMORY[0x277D759A0] mainScreen];
    [v68 scale];
    v67 = [v33 constraintWithItem:v30 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v34];
    v71[1] = v67;
    v65 = [MEMORY[0x277CCAAD0] constraintWithItem:v30 attribute:1 relatedBy:0 toItem:v2 attribute:1 multiplier:1.0 constant:0.0];
    v71[2] = v65;
    v63 = [MEMORY[0x277CCAAD0] constraintWithItem:v30 attribute:2 relatedBy:0 toItem:v2 attribute:2 multiplier:1.0 constant:0.0];
    v71[3] = v63;
    v62 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:3 relatedBy:1 toItem:v2 attribute:3 multiplier:1.0 constant:7.0];
    v71[4] = v62;
    v61 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:0.0];
    v71[5] = v61;
    v35 = v9;
    v60 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:0.0];
    v71[6] = v60;
    v59 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:46.0];
    v71[7] = v59;
    v58 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:8 relatedBy:0 toItem:v14 attribute:8 multiplier:1.0 constant:0.0];
    v71[8] = v58;
    v57 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:8 relatedBy:0 toItem:v14 attribute:8 multiplier:1.0 constant:0.0];
    v71[9] = v57;
    v56 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:4 relatedBy:0 toItem:v32 attribute:4 multiplier:1.0 constant:-7.0];
    v71[10] = v56;
    v55 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    v71[11] = v55;
    v47 = v9;
    v54 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    v71[12] = v54;
    v52 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
    v71[13] = v52;
    v50 = [MEMORY[0x277CCAAD0] constraintWithItem:v25 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
    v71[14] = v50;
    v53 = v20;
    v48 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:4 relatedBy:0 toItem:v32 attribute:4 multiplier:1.0 constant:0.0];
    v71[15] = v48;
    v51 = v25;
    v36 = [MEMORY[0x277CCAAD0] constraintWithItem:v25 attribute:4 relatedBy:0 toItem:v32 attribute:4 multiplier:1.0 constant:0.0];
    v71[16] = v36;
    v49 = v32;
    v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:12.0];
    v71[17] = v37;
    v38 = [MEMORY[0x277CCAAD0] constraintWithItem:v25 attribute:6 relatedBy:0 toItem:v32 attribute:6 multiplier:1.0 constant:-12.0];
    v71[18] = v38;
    v39 = v10;
    v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
    v71[19] = v40;
    v41 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:2 relatedBy:0 toItem:v39 attribute:1 multiplier:1.0 constant:-22.0];
    v71[20] = v41;
    v42 = [MEMORY[0x277CCAAD0] constraintWithItem:v35 attribute:1 relatedBy:0 toItem:v39 attribute:2 multiplier:1.0 constant:22.0];
    v71[21] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:22];
    [v64 activateConstraints:v43];

    v44 = v2;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v2;
}

@end