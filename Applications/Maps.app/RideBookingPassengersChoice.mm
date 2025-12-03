@interface RideBookingPassengersChoice
- (NSString)formattedPriceRange;
- (NSString)title;
- (RideBookingPassengersChoice)initWithNumberOfPassengers:(unint64_t)passengers;
- (unint64_t)size;
- (void)setIntentsPartySizeOption:(id)option;
- (void)setIntentsPriceRange:(id)range;
@end

@implementation RideBookingPassengersChoice

- (NSString)title
{
  intentsPartySizeOption = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  sizeDescription = [intentsPartySizeOption sizeDescription];

  return sizeDescription;
}

- (unint64_t)size
{
  intentsPartySizeOption = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  partySizeRange = [intentsPartySizeOption partySizeRange];
  intentsPartySizeOption2 = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  [intentsPartySizeOption2 partySizeRange];
  v7 = v6;

  return partySizeRange + v7;
}

- (NSString)formattedPriceRange
{
  intentsPartySizeOption = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  priceRange = [intentsPartySizeOption priceRange];
  v5 = priceRange;
  if (priceRange)
  {
    intentsPriceRange = priceRange;
  }

  else
  {
    intentsPriceRange = [(RideBookingPassengersChoice *)self intentsPriceRange];
  }

  v7 = intentsPriceRange;

  _maps_formattedStringWithDefaultShortFormatStrings = [v7 _maps_formattedStringWithDefaultShortFormatStrings];
  v9 = _maps_formattedStringWithDefaultShortFormatStrings;
  if (_maps_formattedStringWithDefaultShortFormatStrings)
  {
    v10 = _maps_formattedStringWithDefaultShortFormatStrings;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  v11 = v10;

  return &v10->isa;
}

- (RideBookingPassengersChoice)initWithNumberOfPassengers:(unint64_t)passengers
{
  v5.receiver = self;
  v5.super_class = RideBookingPassengersChoice;
  result = [(RideBookingPassengersChoice *)&v5 init];
  if (result)
  {
    result->_numberOfPassengers = passengers;
  }

  return result;
}

- (void)setIntentsPartySizeOption:(id)option
{
  value = option;
  intentsPartySizeOption = [(RideBookingPassengersChoice *)self intentsPartySizeOption];
  if (([intentsPartySizeOption isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101215CC1, value, 3);
  }
}

- (void)setIntentsPriceRange:(id)range
{
  value = range;
  intentsPriceRange = [(RideBookingPassengersChoice *)self intentsPriceRange];
  if (([intentsPriceRange isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101215CC0, value, 3);
  }
}

@end