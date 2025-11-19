@interface PUSRemotePasscodeViewController
- (PUSRemotePasscodeViewController)initWithAction:(int64_t)a3;
- (PUSRemotePasscodeViewControllerDelegate)passcodeDelegate;
- (void)setPasscodeDelegate:(id)a3;
@end

@implementation PUSRemotePasscodeViewController

- (PUSRemotePasscodeViewController)initWithAction:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = PUSRemotePasscodeViewController;
  v4 = [(PUSRemotePasscodeViewController *)&v10 init];
  if (v4)
  {
    v5 = [[PUSRemotePasscodeInstructionViewController alloc] initWithAction:a3];
    instructionController = v4->_instructionController;
    v4->_instructionController = v5;

    v11 = v4->_instructionController;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    [(PUSRemotePasscodeViewController *)v4 setViewControllers:v7];

    v8 = [(PUSRemotePasscodeViewController *)v4 navigationBar];
    BPSApplyStyleToNavBar();
  }

  return v4;
}

- (void)setPasscodeDelegate:(id)a3
{
  instructionController = self->_instructionController;
  obj = a3;
  [(PUSRemotePasscodeInstructionViewController *)instructionController setDelegate:obj];
  objc_storeWeak(&self->_passcodeDelegate, obj);
}

- (PUSRemotePasscodeViewControllerDelegate)passcodeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeDelegate);

  return WeakRetained;
}

@end