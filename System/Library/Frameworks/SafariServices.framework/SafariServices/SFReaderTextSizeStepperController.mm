@interface SFReaderTextSizeStepperController
- (SFReaderTextSizeStepperController)initWithReaderContext:(id)a3;
- (void)_updateStepperControls:(id)a3;
- (void)decrementValue:(id)a3;
- (void)incrementValue:(id)a3;
- (void)prepareStepper:(id)a3;
@end

@implementation SFReaderTextSizeStepperController

- (SFReaderTextSizeStepperController)initWithReaderContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFReaderTextSizeStepperController;
  v6 = [(SFReaderTextSizeStepperController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readerContext, a3);
    v8 = v7;
  }

  return v7;
}

- (void)prepareStepper:(id)a3
{
  v4 = MEMORY[0x1E69DCAB8];
  v7 = a3;
  v5 = [v4 systemImageNamed:@"textformat.size.smaller"];
  [v7 setImage:v5 forButton:1];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size.larger"];
  [v7 setImage:v6 forButton:0];

  [(SFReaderTextSizeStepperController *)self _updateStepperControls:v7];
}

- (void)incrementValue:(id)a3
{
  readerContext = self->_readerContext;
  v5 = a3;
  [(SFReaderContext *)readerContext increaseReaderTextSize];
  [(SFReaderTextSizeStepperController *)self _updateStepperControls:v5];
}

- (void)decrementValue:(id)a3
{
  readerContext = self->_readerContext;
  v5 = a3;
  [(SFReaderContext *)readerContext decreaseReaderTextSize];
  [(SFReaderTextSizeStepperController *)self _updateStepperControls:v5];
}

- (void)_updateStepperControls:(id)a3
{
  readerContext = self->_readerContext;
  v5 = a3;
  [v5 setEnabled:-[SFReaderContext canDecreaseReaderTextSize](readerContext forButton:{"canDecreaseReaderTextSize"), 1}];
  [v5 setEnabled:-[SFReaderContext canIncreaseReaderTextSize](self->_readerContext forButton:{"canIncreaseReaderTextSize"), 0}];
}

@end