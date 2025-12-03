@interface SFReaderTextSizeStepperController
- (SFReaderTextSizeStepperController)initWithReaderContext:(id)context;
- (void)_updateStepperControls:(id)controls;
- (void)decrementValue:(id)value;
- (void)incrementValue:(id)value;
- (void)prepareStepper:(id)stepper;
@end

@implementation SFReaderTextSizeStepperController

- (SFReaderTextSizeStepperController)initWithReaderContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = SFReaderTextSizeStepperController;
  v6 = [(SFReaderTextSizeStepperController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readerContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)prepareStepper:(id)stepper
{
  v4 = MEMORY[0x1E69DCAB8];
  stepperCopy = stepper;
  v5 = [v4 systemImageNamed:@"textformat.size.smaller"];
  [stepperCopy setImage:v5 forButton:1];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size.larger"];
  [stepperCopy setImage:v6 forButton:0];

  [(SFReaderTextSizeStepperController *)self _updateStepperControls:stepperCopy];
}

- (void)incrementValue:(id)value
{
  readerContext = self->_readerContext;
  valueCopy = value;
  [(SFReaderContext *)readerContext increaseReaderTextSize];
  [(SFReaderTextSizeStepperController *)self _updateStepperControls:valueCopy];
}

- (void)decrementValue:(id)value
{
  readerContext = self->_readerContext;
  valueCopy = value;
  [(SFReaderContext *)readerContext decreaseReaderTextSize];
  [(SFReaderTextSizeStepperController *)self _updateStepperControls:valueCopy];
}

- (void)_updateStepperControls:(id)controls
{
  readerContext = self->_readerContext;
  controlsCopy = controls;
  [controlsCopy setEnabled:-[SFReaderContext canDecreaseReaderTextSize](readerContext forButton:{"canDecreaseReaderTextSize"), 1}];
  [controlsCopy setEnabled:-[SFReaderContext canIncreaseReaderTextSize](self->_readerContext forButton:{"canIncreaseReaderTextSize"), 0}];
}

@end