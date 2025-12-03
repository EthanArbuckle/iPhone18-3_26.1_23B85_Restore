@interface FMDBluetoothDiscoveryToken
- (BOOL)isDiscoveryActive;
- (BOOL)isEqual:(id)equal;
- (FMDBluetoothDiscoveryToken)init;
- (FMDBluetoothDiscoveryTokenDelegate)delegate;
- (NSString)description;
- (unint64_t)hash;
- (void)startDiscoveryForDuration:(double)duration;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscoveryToken

- (FMDBluetoothDiscoveryToken)init
{
  v5.receiver = self;
  v5.super_class = FMDBluetoothDiscoveryToken;
  v2 = [(FMDBluetoothDiscoveryToken *)&v5 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    [(FMDBluetoothDiscoveryToken *)v2 setUuid:v3];
  }

  return v2;
}

- (void)startDiscoveryForDuration:(double)duration
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:duration];
  [(FMDBluetoothDiscoveryToken *)self setEndDate:v4];

  delegate = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v6 discoveryRequestedStart:self];
    }
  }

  _objc_release_x2();
}

- (void)stopDiscovery
{
  delegate = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 discoveryRequestedStop:self];
    }
  }

  _objc_release_x2();
}

- (BOOL)isDiscoveryActive
{
  delegate = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate isDiscoveryActive:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  endDate = [(FMDBluetoothDiscoveryToken *)selfCopy endDate];
  v4 = [NSString stringWithFormat:@"%p-%@", selfCopy, endDate];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(FMDBluetoothDiscoveryToken *)self hash];
      v7 = [(FMDBluetoothDiscoveryToken *)v5 hash];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  uuid = [(FMDBluetoothDiscoveryToken *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (FMDBluetoothDiscoveryTokenDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end