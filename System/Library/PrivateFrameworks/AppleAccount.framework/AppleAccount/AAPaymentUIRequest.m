@interface AAPaymentUIRequest
- (id)urlString;
@end

@implementation AAPaymentUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 paymentInfoUIURL];

  return v3;
}

@end