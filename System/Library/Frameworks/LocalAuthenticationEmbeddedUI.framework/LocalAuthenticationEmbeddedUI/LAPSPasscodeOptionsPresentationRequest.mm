@interface LAPSPasscodeOptionsPresentationRequest
- (LAPSPasscodeOptionsPresentationRequest)initWithSourceViewController:(id)controller;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
@end

@implementation LAPSPasscodeOptionsPresentationRequest

- (LAPSPasscodeOptionsPresentationRequest)initWithSourceViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeOptionsPresentationRequest;
  v6 = [(LAPSPasscodeOptionsPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceViewController, controller);
    v7->_presentationStyle = 0;
  }

  return v7;
}

- (LAPSPasscodeOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end