@interface WKPaymentAuthorizationControllerDelegate
- (WKPaymentAuthorizationControllerDelegate)initWithRequest:(id)request presenter:(void *)presenter;
- (void)_getPaymentServicesMerchantURL:(id)l;
@end

@implementation WKPaymentAuthorizationControllerDelegate

- (WKPaymentAuthorizationControllerDelegate)initWithRequest:(id)request presenter:(void *)presenter
{
  v10.receiver = self;
  v10.super_class = WKPaymentAuthorizationControllerDelegate;
  v5 = [(WKPaymentAuthorizationDelegate *)&v10 _initWithRequest:request presenter:?];
  if (v5)
  {
    v6 = *(presenter + 3);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      (**v7)(v7);
      v8 = (*(*v7 + 88))(v7, presenter);
      objc_storeWeak(&v5->_presentingWindow, v8);
      (*(*v7 + 8))(v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)_getPaymentServicesMerchantURL:(id)l
{
  v5 = MEMORY[0x1E69E2410];
  (*MEMORY[0x1E69E2410])(self, a2);
  v6 = objc_opt_respondsToSelector();
  v7 = MEMORY[0x1E69E2440];
  if (v6)
  {
    v7 = v5;
  }

  v8 = (*v7)();
  aPIType = [(PKPaymentRequest *)self->super._request.m_ptr APIType];

  [v8 paymentServicesMerchantURLForAPIType:aPIType completion:l];
}

@end