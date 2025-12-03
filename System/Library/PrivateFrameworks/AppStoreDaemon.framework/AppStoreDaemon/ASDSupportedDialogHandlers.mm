@interface ASDSupportedDialogHandlers
- (ASDSupportedDialogHandlers)initWithCoder:(id)coder;
- (ASDSupportedDialogHandlers)initWithDialogObserver:(id)observer;
- (id)initForInternalClient;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDSupportedDialogHandlers

- (ASDSupportedDialogHandlers)initWithDialogObserver:(id)observer
{
  observerCopy = observer;
  v7.receiver = self;
  v7.super_class = ASDSupportedDialogHandlers;
  v5 = [(ASDSupportedDialogHandlers *)&v7 init];
  if (v5)
  {
    v5->_handlesAlerts = objc_opt_respondsToSelector() & 1;
    v5->_handlesAuthentication = objc_opt_respondsToSelector() & 1;
    v5->_handlesDialogs = objc_opt_respondsToSelector() & 1;
    v5->_handlesEngagement = objc_opt_respondsToSelector() & 1;
    v5->_handlesViews = objc_opt_respondsToSelector() & 1;
  }

  return v5;
}

- (id)initForInternalClient
{
  v3.receiver = self;
  v3.super_class = ASDSupportedDialogHandlers;
  result = [(ASDSupportedDialogHandlers *)&v3 init];
  if (result)
  {
    *(result + 9) = 257;
  }

  return result;
}

- (ASDSupportedDialogHandlers)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ASDSupportedDialogHandlers;
  v5 = [(ASDSupportedDialogHandlers *)&v7 init];
  if (v5)
  {
    v5->_handlesAlerts = [coderCopy decodeBoolForKey:@"A"];
    v5->_handlesAuthentication = [coderCopy decodeBoolForKey:@"B"];
    v5->_handlesDialogs = [coderCopy decodeBoolForKey:@"C"];
    v5->_handlesEngagement = [coderCopy decodeBoolForKey:@"D"];
    v5->_handlesViews = [coderCopy decodeBoolForKey:@"E"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handlesAlerts = self->_handlesAlerts;
  coderCopy = coder;
  [coderCopy encodeBool:handlesAlerts forKey:@"A"];
  [coderCopy encodeBool:self->_handlesAuthentication forKey:@"B"];
  [coderCopy encodeBool:self->_handlesDialogs forKey:@"C"];
  [coderCopy encodeBool:self->_handlesEngagement forKey:@"D"];
  [coderCopy encodeBool:self->_handlesViews forKey:@"E"];
}

@end