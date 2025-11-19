@interface SharedTripAction
- (SharedTripAction)initWithSharedTrip:(id)a3;
@end

@implementation SharedTripAction

- (SharedTripAction)initWithSharedTrip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SharedTripAction;
  v6 = [(SharedTripAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareTrip, a3);
  }

  return v7;
}

@end