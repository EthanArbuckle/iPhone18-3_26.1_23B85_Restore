@interface TextFieldDelegateForwarder
- (BOOL)textFieldShouldClear:(id)clear;
- (TextFieldDelegateForwardingTarget)forwardingTarget;
@end

@implementation TextFieldDelegateForwarder

- (TextFieldDelegateForwardingTarget)forwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingTarget);

  return WeakRetained;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  forwardingTarget = [(TextFieldDelegateForwarder *)self forwardingTarget];
  v6 = [forwardingTarget textFieldShouldClear:clearCopy];

  return v6;
}

@end