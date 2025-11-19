@interface TextFieldDelegateForwarder
- (BOOL)textFieldShouldClear:(id)a3;
- (TextFieldDelegateForwardingTarget)forwardingTarget;
@end

@implementation TextFieldDelegateForwarder

- (TextFieldDelegateForwardingTarget)forwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingTarget);

  return WeakRetained;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = [(TextFieldDelegateForwarder *)self forwardingTarget];
  v6 = [v5 textFieldShouldClear:v4];

  return v6;
}

@end