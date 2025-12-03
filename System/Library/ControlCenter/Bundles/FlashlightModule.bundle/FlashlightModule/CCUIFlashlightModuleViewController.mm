@interface CCUIFlashlightModuleViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIFlashlightModuleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)createSliderView;
- (id)sliderView;
- (void)_sliderValueDidChange:(id)change;
- (void)_updateControls;
- (void)_updateSliderValue;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)flashlightAvailabilityDidChange:(BOOL)change;
- (void)flashlightLevelDidChange:(unint64_t)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIFlashlightModuleViewController

- (void)_updateControls
{
  isAvailable = [(SBUIFlashlightController *)self->_flashlight isAvailable];
  if ([(SBUIFlashlightController *)self->_flashlight level])
  {
    v4 = isAvailable;
  }

  else
  {
    v4 = 0;
  }

  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView setEnabled:isAvailable];

  sliderView = [(CCUIFlashlightModuleViewController *)self sliderView];
  [sliderView setEnabled:isAvailable];

  [(CCUIButtonModuleViewController *)self setSelected:v4];

  [(CCUIFlashlightModuleViewController *)self _updateSliderValue];
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = CCUIFlashlightModuleViewController;
  sliderView = [(CCUISliderModuleViewController *)&v4 sliderView];

  return sliderView;
}

- (void)_updateSliderValue
{
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    sliderView = [(CCUIFlashlightModuleViewController *)self sliderView];
    if ([(CCUIButtonModuleViewController *)self isSelected]&& [(SBUIFlashlightController *)self->_flashlight isAvailable])
    {
      level = [(SBUIFlashlightController *)self->_flashlight level];
      if ((level - 1) < 4)
      {
        v4 = level + 1;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 1;
    }

    [sliderView setStep:v4];
  }
}

- (CCUIFlashlightModuleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = CCUIFlashlightModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    if ([MEMORY[0x29EDC6D08] deviceSupportsFlashlight])
    {
      mEMORY[0x29EDC6D08] = [MEMORY[0x29EDC6D08] sharedInstance];
      flashlight = v4->_flashlight;
      v4->_flashlight = mEMORY[0x29EDC6D08];
    }

    [(SBUIFlashlightController *)v4->_flashlight addObserver:v4];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CCUIFlashlightModuleViewController;
  [(CCUISliderModuleViewController *)&v4 viewDidLoad];
  sliderView = [(CCUIFlashlightModuleViewController *)self sliderView];
  [sliderView setNumberOfSteps:5];
  [sliderView setFirstStepIsOff:1];
  [sliderView addTarget:self action:sel__sliderValueDidChange_ forControlEvents:4096];
  [(CCUIFlashlightModuleViewController *)self _updateControls];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUIFlashlightModuleViewController;
  [(CCUISliderModuleViewController *)&v3 viewWillLayoutSubviews];
  [(CCUIFlashlightModuleViewController *)self _updateSliderValue];
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  view = [(CCUIFlashlightModuleViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  return v5;
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  [(CCUIButtonModuleViewController *)self setSelected:![(CCUIButtonModuleViewController *)self isSelected]& [(SBUIFlashlightController *)self->_flashlight isAvailable:tapped]];
  isSelected = [(CCUIButtonModuleViewController *)self isSelected];
  flashlight = self->_flashlight;
  if (isSelected)
  {

    MEMORY[0x2A1C70FE8](flashlight, sel_turnFlashlightOnForReason_);
  }

  else
  {

    MEMORY[0x2A1C70FE8](flashlight, sel_turnFlashlightOffForReason_);
  }
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  isAvailable = [(SBUIFlashlightController *)self->_flashlight isAvailable];
  if (isAvailable)
  {
    LOBYTE(isAvailable) = [(SBUIFlashlightController *)self->_flashlight deviceSupportsDynamicFlashlightInterface]^ 1;
  }

  return isAvailable;
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  [(CCUIFlashlightModuleViewController *)self _updateControls];
}

- (void)flashlightAvailabilityDidChange:(BOOL)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);
  [(CCUIFlashlightModuleViewController *)self _updateControls];
  if (([(SBUIFlashlightController *)self->_flashlight isAvailable]& 1) == 0)
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView cancelTouchTracking];

    if ([(CCUIButtonModuleViewController *)self isExpanded])
    {

      MEMORY[0x2A1C70FE8](self, sel_dismissViewControllerAnimated_completion_);
    }
  }
}

- (void)_sliderValueDidChange:(id)change
{
  flashlight = self->_flashlight;
  step = [change step];
  if (step <= 4)
  {
    v5 = qword_29C97BAE8[step];
  }

  MEMORY[0x2A1C70FE8](flashlight, sel_setLevel_);
}

@end