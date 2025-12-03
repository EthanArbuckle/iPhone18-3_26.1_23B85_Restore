@interface AAPaymentUIRequest
- (id)urlString;
@end

@implementation AAPaymentUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  paymentInfoUIURL = [v2 paymentInfoUIURL];

  return paymentInfoUIURL;
}

@end