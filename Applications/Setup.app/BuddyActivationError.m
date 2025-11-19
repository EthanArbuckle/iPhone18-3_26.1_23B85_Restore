@interface BuddyActivationError
- (BuddyActivationError)initWithConnectionFailure:(BOOL)a3 cellular:(BOOL)a4;
@end

@implementation BuddyActivationError

- (BuddyActivationError)initWithConnectionFailure:(BOOL)a3 cellular:(BOOL)a4
{
  v9 = a2;
  v8 = a3;
  v7 = a4;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyActivationError;
  location = [(BuddyActivationError *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 8) = v8;
    *(location + 9) = v7;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

@end