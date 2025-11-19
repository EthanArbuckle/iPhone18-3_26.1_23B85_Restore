@interface ASDSupportedDialogHandlers
- (ASDSupportedDialogHandlers)initWithCoder:(id)a3;
- (ASDSupportedDialogHandlers)initWithDialogObserver:(id)a3;
- (id)initForInternalClient;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDSupportedDialogHandlers

- (ASDSupportedDialogHandlers)initWithDialogObserver:(id)a3
{
  v4 = a3;
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

- (ASDSupportedDialogHandlers)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDSupportedDialogHandlers;
  v5 = [(ASDSupportedDialogHandlers *)&v7 init];
  if (v5)
  {
    v5->_handlesAlerts = [v4 decodeBoolForKey:@"A"];
    v5->_handlesAuthentication = [v4 decodeBoolForKey:@"B"];
    v5->_handlesDialogs = [v4 decodeBoolForKey:@"C"];
    v5->_handlesEngagement = [v4 decodeBoolForKey:@"D"];
    v5->_handlesViews = [v4 decodeBoolForKey:@"E"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handlesAlerts = self->_handlesAlerts;
  v5 = a3;
  [v5 encodeBool:handlesAlerts forKey:@"A"];
  [v5 encodeBool:self->_handlesAuthentication forKey:@"B"];
  [v5 encodeBool:self->_handlesDialogs forKey:@"C"];
  [v5 encodeBool:self->_handlesEngagement forKey:@"D"];
  [v5 encodeBool:self->_handlesViews forKey:@"E"];
}

@end