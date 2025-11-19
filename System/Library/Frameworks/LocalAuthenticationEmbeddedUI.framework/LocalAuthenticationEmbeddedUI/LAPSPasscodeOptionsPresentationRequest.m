@interface LAPSPasscodeOptionsPresentationRequest
- (LAPSPasscodeOptionsPresentationRequest)initWithSourceViewController:(id)a3;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
@end

@implementation LAPSPasscodeOptionsPresentationRequest

- (LAPSPasscodeOptionsPresentationRequest)initWithSourceViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeOptionsPresentationRequest;
  v6 = [(LAPSPasscodeOptionsPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceViewController, a3);
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