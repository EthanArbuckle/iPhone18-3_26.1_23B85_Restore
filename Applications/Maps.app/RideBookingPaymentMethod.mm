@interface RideBookingPaymentMethod
- (NSString)subtitle;
- (NSString)title;
- (UIImage)icon;
- (void)setIntentsPaymentMethod:(id)method;
@end

@implementation RideBookingPaymentMethod

- (void)setIntentsPaymentMethod:(id)method
{
  value = method;
  intentsPaymentMethod = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
  if (([intentsPaymentMethod isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_1012132A8, value, 3);
  }
}

- (NSString)subtitle
{
  intentsPaymentMethod = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
  type = [intentsPaymentMethod type];

  if (type == 8)
  {
    identificationHint = 0;
  }

  else
  {
    intentsPaymentMethod2 = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
    identificationHint = [intentsPaymentMethod2 identificationHint];
  }

  return identificationHint;
}

- (NSString)title
{
  intentsPaymentMethod = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
  type = [intentsPaymentMethod type];

  if (type == 8)
  {
    intentsPaymentMethod2 = +[NSBundle mainBundle];
    [intentsPaymentMethod2 localizedStringForKey:@"Apple Pay" value:@"localized string not found" table:0];
  }

  else
  {
    intentsPaymentMethod2 = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
    [intentsPaymentMethod2 name];
  }
  v6 = ;

  return v6;
}

- (UIImage)icon
{
  intentsPaymentMethod = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
  type = [intentsPaymentMethod type];

  if (type == 8)
  {
    v5 = [UIImage _mapkit_imageNamed:@"apple-pay"];
  }

  else
  {
    v6 = +[RideBookingAccessProxy imageCache];
    intentsPaymentMethod2 = [(RideBookingPaymentMethod *)self intentsPaymentMethod];
    icon = [intentsPaymentMethod2 icon];
    _identifier = [icon _identifier];
    v5 = [v6 imageForKey:_identifier];
  }

  return v5;
}

@end