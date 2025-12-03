@interface BuddyActivationError
- (BuddyActivationError)initWithConnectionFailure:(BOOL)failure cellular:(BOOL)cellular;
@end

@implementation BuddyActivationError

- (BuddyActivationError)initWithConnectionFailure:(BOOL)failure cellular:(BOOL)cellular
{
  v9 = a2;
  failureCopy = failure;
  cellularCopy = cellular;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyActivationError;
  location = [(BuddyActivationError *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 8) = failureCopy;
    *(location + 9) = cellularCopy;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

@end