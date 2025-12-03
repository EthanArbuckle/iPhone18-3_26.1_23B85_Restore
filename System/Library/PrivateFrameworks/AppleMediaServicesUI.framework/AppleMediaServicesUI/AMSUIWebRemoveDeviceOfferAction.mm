@interface AMSUIWebRemoveDeviceOfferAction
- (AMSUIWebRemoveDeviceOfferAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebRemoveDeviceOfferAction

- (AMSUIWebRemoveDeviceOfferAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = AMSUIWebRemoveDeviceOfferAction;
  v8 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [contextCopy iTunesAccountFromJSAccount:v10];
    v12 = [v11 copy];
    account = v8->_account;
    v8->_account = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    identifier = v8->_identifier;
    v8->_identifier = v15;
  }

  return v8;
}

- (id)runAction
{
  v18.receiver = self;
  v18.super_class = AMSUIWebRemoveDeviceOfferAction;
  runAction = [(AMSUIWebAction *)&v18 runAction];
  identifier = [(AMSUIWebRemoveDeviceOfferAction *)self identifier];
  if (identifier && (v5 = identifier, -[AMSUIWebRemoveDeviceOfferAction identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v5, v7))
  {
    v8 = MEMORY[0x1E698C8A8];
    identifier2 = [(AMSUIWebRemoveDeviceOfferAction *)self identifier];
    account = [(AMSUIWebRemoveDeviceOfferAction *)self account];
    context = [(AMSUIWebAction *)self context];
    v12 = [context bag];
    [v8 removeDeviceOfferWithIdentifier:identifier2 account:account bag:v12 logKey:0];

    promiseWithSuccess = [MEMORY[0x1E698C7F0] promiseWithSuccess];
    promiseAdapter = [promiseWithSuccess promiseAdapter];
  }

  else
  {
    v15 = MEMORY[0x1E698CAD0];
    promiseWithSuccess = AMSError();
    promiseAdapter = [v15 promiseWithError:promiseWithSuccess];
  }

  v16 = promiseAdapter;

  return v16;
}

@end