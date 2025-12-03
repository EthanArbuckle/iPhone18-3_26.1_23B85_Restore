@interface AXUICameraButtonPracticeCell
- (AXUICameraButtonPracticeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_updatePackageState:(unint64_t)state;
@end

@implementation AXUICameraButtonPracticeCell

- (AXUICameraButtonPracticeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v66[4] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = AXUICameraButtonPracticeCell;
  v5 = [(PSTableCell *)&v57 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"Simulator-D94" withExtension:@"ca"];

    v56 = v7;
    v8 = [objc_alloc(MEMORY[0x1E698E7D8]) initWithURL:v7];
    packageView = v5->_packageView;
    v5->_packageView = v8;

    v10 = *MEMORY[0x1E69796E8];
    layer = [(BSUICAPackageView *)v5->_packageView layer];
    [layer setCornerCurve:v10];

    layer2 = [(BSUICAPackageView *)v5->_packageView layer];
    [layer2 setCornerRadius:20.0];

    layer3 = [(BSUICAPackageView *)v5->_packageView layer];
    [layer3 setMasksToBounds:1];

    contentView = [(AXUICameraButtonPracticeCell *)v5 contentView];
    [contentView addSubview:v5->_packageView];

    [(BSUICAPackageView *)v5->_packageView setContentMode:2];
    [(BSUICAPackageView *)v5->_packageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = MEMORY[0x1E696ACD8];
    topAnchor = [(BSUICAPackageView *)v5->_packageView topAnchor];
    contentView2 = [(AXUICameraButtonPracticeCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v66[0] = v50;
    bottomAnchor = [(BSUICAPackageView *)v5->_packageView bottomAnchor];
    contentView3 = [(AXUICameraButtonPracticeCell *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v66[1] = v15;
    centerXAnchor = [(BSUICAPackageView *)v5->_packageView centerXAnchor];
    contentView4 = [(AXUICameraButtonPracticeCell *)v5 contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[2] = v19;
    widthAnchor = [(BSUICAPackageView *)v5->_packageView widthAnchor];
    v21 = [widthAnchor constraintEqualToConstant:362.0];
    v66[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
    [v47 activateConstraints:v22];

    v55 = [MEMORY[0x1E69DD630] _cameraCaptureShutterConfigurationWithOptionsProvider:0];
    v23 = [objc_alloc(MEMORY[0x1E69DD638]) initWithConfigurations:v55 delegate:v5];
    interaction = v5->_interaction;
    v5->_interaction = v23;

    [(BSUICAPackageView *)v5->_packageView addInteraction:v5->_interaction];
    array = [MEMORY[0x1E695DF70] array];
    activeStages = v5->_activeStages;
    v5->_activeStages = array;

    v27 = CFPreferencesCopyAppValue(@"systemOverlay.halfPressHapticVolume", @"com.apple.camera");
    objc_opt_class();
    v53 = v27;
    if (objc_opt_isKindOfClass())
    {
      [v27 floatValue];
      v28 = fmax(fmin(v29, 1.0), 0.0);
      v30 = v28;
    }

    else
    {
      v30 = 0.38;
    }

    v31 = MEMORY[0x1E69DD470];
    v64[0] = @"type";
    v64[1] = @"eventType";
    v65[0] = @"custom";
    v65[1] = &unk_1F4051B18;
    v64[2] = @"hapticParameters";
    v62 = @"volume";
    *&v28 = v30;
    v32 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
    v63 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v65[2] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];
    v35 = [v31 feedbackWithDictionaryRepresentation:v34];

    v36 = MEMORY[0x1E69DD470];
    v60[0] = @"type";
    v60[1] = @"eventType";
    v61[0] = @"custom";
    v61[1] = &unk_1F4051B18;
    v60[2] = @"hapticParameters";
    v58 = @"volume";
    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v30 * 0.6];
    v59 = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v61[2] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    v40 = [v36 feedbackWithDictionaryRepresentation:v39];

    defaultConfiguration = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v42 = [defaultConfiguration tweakedConfigurationForCaller:v5 usage:@"cameraOverlayHalfPress"];

    [v42 setInteractionStartedFeedback:v35];
    [v42 setInteractionEndedFeedback:v40];
    v43 = [objc_alloc(MEMORY[0x1E69DD3A0]) initWithConfiguration:v42];
    halfPressFeedbackGenerator = v5->_halfPressFeedbackGenerator;
    v5->_halfPressFeedbackGenerator = v43;

    [(_UIButtonFeedbackGenerator *)v5->_halfPressFeedbackGenerator _setOutputMode:5];
    [(AXUICameraButtonPracticeCell *)v5 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  }

  return v5;
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  actionCopy = action;
  if ([actionCopy _stagePhase])
  {
    if ([actionCopy _stagePhase] != 2)
    {
      goto LABEL_6;
    }

    activeStages = self->_activeStages;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(actionCopy, "_stage")}];
    [(NSMutableArray *)activeStages removeObject:v7];
  }

  else
  {
    v8 = self->_activeStages;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(actionCopy, "_stage")}];
    [(NSMutableArray *)v8 addObject:v7];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_activeStages count])
  {
    lastObject = [(NSMutableArray *)self->_activeStages lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  [(AXUICameraButtonPracticeCell *)self _updatePackageState:unsignedIntegerValue];
}

- (void)_updatePackageState:(unint64_t)state
{
  if (state < 2)
  {
    packageView = self->_packageView;
    v6 = @"Idle";
  }

  else
  {
    if (state - 2 < 2)
    {
      [(BSUICAPackageView *)self->_packageView setState:@"LightPress" animated:1];
      if (([(_UIButtonFeedbackGenerator *)self->_halfPressFeedbackGenerator isActive]& 1) == 0)
      {
        [(_UIButtonFeedbackGenerator *)self->_halfPressFeedbackGenerator prepare];
        halfPressFeedbackGenerator = self->_halfPressFeedbackGenerator;

        [(_UIButtonFeedbackGenerator *)halfPressFeedbackGenerator userInteractionStarted];
      }

      return;
    }

    if (state != 4)
    {
      return;
    }

    packageView = self->_packageView;
    v6 = @"Press";
  }

  [(BSUICAPackageView *)packageView setState:v6 animated:1];
  if ([(_UIButtonFeedbackGenerator *)self->_halfPressFeedbackGenerator isActive])
  {
    v7 = self->_halfPressFeedbackGenerator;

    [(_UIButtonFeedbackGenerator *)v7 userInteractionEnded];
  }
}

@end