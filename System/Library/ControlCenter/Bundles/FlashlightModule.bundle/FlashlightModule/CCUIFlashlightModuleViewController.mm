@interface CCUIFlashlightModuleViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIFlashlightModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)createSliderView;
- (id)sliderView;
- (void)_sliderValueDidChange:(id)a3;
- (void)_updateControls;
- (void)_updateSliderValue;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)flashlightAvailabilityDidChange:(BOOL)a3;
- (void)flashlightLevelDidChange:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIFlashlightModuleViewController

- (void)_updateControls
{
  v3 = [(SBUIFlashlightController *)self->_flashlight isAvailable];
  if ([(SBUIFlashlightController *)self->_flashlight level])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CCUIButtonModuleViewController *)self buttonView];
  [v5 setEnabled:v3];

  v6 = [(CCUIFlashlightModuleViewController *)self sliderView];
  [v6 setEnabled:v3];

  [(CCUIButtonModuleViewController *)self setSelected:v4];

  [(CCUIFlashlightModuleViewController *)self _updateSliderValue];
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = CCUIFlashlightModuleViewController;
  v2 = [(CCUISliderModuleViewController *)&v4 sliderView];

  return v2;
}

- (void)_updateSliderValue
{
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v5 = [(CCUIFlashlightModuleViewController *)self sliderView];
    if ([(CCUIButtonModuleViewController *)self isSelected]&& [(SBUIFlashlightController *)self->_flashlight isAvailable])
    {
      v3 = [(SBUIFlashlightController *)self->_flashlight level];
      if ((v3 - 1) < 4)
      {
        v4 = v3 + 1;
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

    [v5 setStep:v4];
  }
}

- (CCUIFlashlightModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = CCUIFlashlightModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    if ([MEMORY[0x29EDC6D08] deviceSupportsFlashlight])
    {
      v5 = [MEMORY[0x29EDC6D08] sharedInstance];
      flashlight = v4->_flashlight;
      v4->_flashlight = v5;
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
  v3 = [(CCUIFlashlightModuleViewController *)self sliderView];
  [v3 setNumberOfSteps:5];
  [v3 setFirstStepIsOff:1];
  [v3 addTarget:self action:sel__sliderValueDidChange_ forControlEvents:4096];
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
  v4 = [(CCUIFlashlightModuleViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  return v5;
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  [(CCUIButtonModuleViewController *)self setSelected:![(CCUIButtonModuleViewController *)self isSelected]& [(SBUIFlashlightController *)self->_flashlight isAvailable:a3]];
  v5 = [(CCUIButtonModuleViewController *)self isSelected];
  flashlight = self->_flashlight;
  if (v5)
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
  v3 = [(SBUIFlashlightController *)self->_flashlight isAvailable];
  if (v3)
  {
    LOBYTE(v3) = [(SBUIFlashlightController *)self->_flashlight deviceSupportsDynamicFlashlightInterface]^ 1;
  }

  return v3;
}

- (void)flashlightLevelDidChange:(unint64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  [(CCUIFlashlightModuleViewController *)self _updateControls];
}

- (void)flashlightAvailabilityDidChange:(BOOL)a3
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);
  [(CCUIFlashlightModuleViewController *)self _updateControls];
  if (([(SBUIFlashlightController *)self->_flashlight isAvailable]& 1) == 0)
  {
    v4 = [(CCUIButtonModuleViewController *)self buttonView];
    [v4 cancelTouchTracking];

    if ([(CCUIButtonModuleViewController *)self isExpanded])
    {

      MEMORY[0x2A1C70FE8](self, sel_dismissViewControllerAnimated_completion_);
    }
  }
}

- (void)_sliderValueDidChange:(id)a3
{
  flashlight = self->_flashlight;
  v4 = [a3 step];
  if (v4 <= 4)
  {
    v5 = qword_29C97BAE8[v4];
  }

  MEMORY[0x2A1C70FE8](flashlight, sel_setLevel_);
}

@end