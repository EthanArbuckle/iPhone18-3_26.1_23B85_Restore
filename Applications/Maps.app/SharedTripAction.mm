@interface SharedTripAction
- (SharedTripAction)initWithSharedTrip:(id)trip;
@end

@implementation SharedTripAction

- (SharedTripAction)initWithSharedTrip:(id)trip
{
  tripCopy = trip;
  v9.receiver = self;
  v9.super_class = SharedTripAction;
  v6 = [(SharedTripAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareTrip, trip);
  }

  return v7;
}

@end