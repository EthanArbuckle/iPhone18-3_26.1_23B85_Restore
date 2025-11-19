@interface GCSystemGesturesState
- (GCSystemGesturesState)init;
- (GCSystemGesturesState)initWithEnabledSystemGestures:(id)a3 disabledSystemGestures:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation GCSystemGesturesState

- (GCSystemGesturesState)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(GCSystemGesturesState *)self initWithEnabledSystemGestures:v3 disabledSystemGestures:v4 bundleIdentifier:@"N/A"];

  return v5;
}

- (GCSystemGesturesState)initWithEnabledSystemGestures:(id)a3 disabledSystemGestures:(id)a4 bundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GCSystemGesturesState;
  v12 = [(GCSystemGesturesState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_disabledSystemGestureInputNames, a4);
    objc_storeStrong(&v13->_enabledSystemGestureInputNames, a3);
    objc_storeStrong(&v13->_bundleIdentifier, a5);
  }

  return v13;
}

@end