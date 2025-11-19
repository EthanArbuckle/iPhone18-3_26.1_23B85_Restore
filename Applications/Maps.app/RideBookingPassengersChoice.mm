@interface RideBookingPassengersChoice
- (NSString)formattedPriceRange;
- (NSString)title;
- (RideBookingPassengersChoice)initWithNumberOfPassengers:(unint64_t)a3;
- (unint64_t)size;
- (void)setIntentsPartySizeOption:(id)a3;
- (void)setIntentsPriceRange:(id)a3;
@end

@implementation RideBookingPassengersChoice

- (NSString)title
{
  v2 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  v3 = [v2 sizeDescription];

  return v3;
}

- (unint64_t)size
{
  v3 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  v4 = [v3 partySizeRange];
  v5 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  [v5 partySizeRange];
  v7 = v6;

  return v4 + v7;
}

- (NSString)formattedPriceRange
{
  v3 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  v4 = [v3 priceRange];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(RideBookingPassengersChoice *)self intentsPriceRange];
  }

  v7 = v6;

  v8 = [v7 _maps_formattedStringWithDefaultShortFormatStrings];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  v11 = v10;

  return &v10->isa;
}

- (RideBookingPassengersChoice)initWithNumberOfPassengers:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RideBookingPassengersChoice;
  result = [(RideBookingPassengersChoice *)&v5 init];
  if (result)
  {
    result->_numberOfPassengers = a3;
  }

  return result;
}

- (void)setIntentsPartySizeOption:(id)a3
{
  value = a3;
  v4 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101215CC1, value, 3);
  }
}

- (void)setIntentsPriceRange:(id)a3
{
  value = a3;
  v4 = [(RideBookingPassengersChoice *)self intentsPriceRange];
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101215CC0, value, 3);
  }
}

@end