@interface WKPaymentAuthorizationViewControllerDelegate
- (WKPaymentAuthorizationViewControllerDelegate)initWithRequest:(id)request presenter:(void *)presenter;
- (void)_getPaymentServicesMerchantURL:(id)l;
@end

@implementation WKPaymentAuthorizationViewControllerDelegate

- (WKPaymentAuthorizationViewControllerDelegate)initWithRequest:(id)request presenter:(void *)presenter
{
  v5.receiver = self;
  v5.super_class = WKPaymentAuthorizationViewControllerDelegate;
  return [(WKPaymentAuthorizationDelegate *)&v5 _initWithRequest:request presenter:presenter];
}

- (void)_getPaymentServicesMerchantURL:(id)l
{
  v5 = (*MEMORY[0x1E69E2440])(self, a2);
  aPIType = [(PKPaymentRequest *)self->super._request.m_ptr APIType];

  [v5 paymentServicesMerchantURLForAPIType:aPIType completion:l];
}

@end