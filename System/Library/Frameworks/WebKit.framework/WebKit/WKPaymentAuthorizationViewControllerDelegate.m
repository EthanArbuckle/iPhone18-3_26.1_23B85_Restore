@interface WKPaymentAuthorizationViewControllerDelegate
- (WKPaymentAuthorizationViewControllerDelegate)initWithRequest:(id)a3 presenter:(void *)a4;
- (void)_getPaymentServicesMerchantURL:(id)a3;
@end

@implementation WKPaymentAuthorizationViewControllerDelegate

- (WKPaymentAuthorizationViewControllerDelegate)initWithRequest:(id)a3 presenter:(void *)a4
{
  v5.receiver = self;
  v5.super_class = WKPaymentAuthorizationViewControllerDelegate;
  return [(WKPaymentAuthorizationDelegate *)&v5 _initWithRequest:a3 presenter:a4];
}

- (void)_getPaymentServicesMerchantURL:(id)a3
{
  v5 = (*MEMORY[0x1E69E2440])(self, a2);
  v6 = [(PKPaymentRequest *)self->super._request.m_ptr APIType];

  [v5 paymentServicesMerchantURLForAPIType:v6 completion:a3];
}

@end