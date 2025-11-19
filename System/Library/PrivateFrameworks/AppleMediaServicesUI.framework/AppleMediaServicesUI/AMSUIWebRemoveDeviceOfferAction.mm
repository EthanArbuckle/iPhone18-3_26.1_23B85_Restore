@interface AMSUIWebRemoveDeviceOfferAction
- (AMSUIWebRemoveDeviceOfferAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebRemoveDeviceOfferAction

- (AMSUIWebRemoveDeviceOfferAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = AMSUIWebRemoveDeviceOfferAction;
  v8 = [(AMSUIWebAction *)&v18 initWithJSObject:v6 context:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 iTunesAccountFromJSAccount:v10];
    v12 = [v11 copy];
    account = v8->_account;
    v8->_account = v12;

    v14 = [v6 objectForKeyedSubscript:@"identifier"];
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
  v3 = [(AMSUIWebAction *)&v18 runAction];
  v4 = [(AMSUIWebRemoveDeviceOfferAction *)self identifier];
  if (v4 && (v5 = v4, -[AMSUIWebRemoveDeviceOfferAction identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v5, v7))
  {
    v8 = MEMORY[0x1E698C8A8];
    v9 = [(AMSUIWebRemoveDeviceOfferAction *)self identifier];
    v10 = [(AMSUIWebRemoveDeviceOfferAction *)self account];
    v11 = [(AMSUIWebAction *)self context];
    v12 = [v11 bag];
    [v8 removeDeviceOfferWithIdentifier:v9 account:v10 bag:v12 logKey:0];

    v13 = [MEMORY[0x1E698C7F0] promiseWithSuccess];
    v14 = [v13 promiseAdapter];
  }

  else
  {
    v15 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    v14 = [v15 promiseWithError:v13];
  }

  v16 = v14;

  return v16;
}

@end