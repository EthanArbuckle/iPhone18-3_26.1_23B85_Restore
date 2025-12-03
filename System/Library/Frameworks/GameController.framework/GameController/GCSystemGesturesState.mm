@interface GCSystemGesturesState
- (GCSystemGesturesState)init;
- (GCSystemGesturesState)initWithEnabledSystemGestures:(id)gestures disabledSystemGestures:(id)systemGestures bundleIdentifier:(id)identifier;
@end

@implementation GCSystemGesturesState

- (GCSystemGesturesState)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(GCSystemGesturesState *)self initWithEnabledSystemGestures:v3 disabledSystemGestures:v4 bundleIdentifier:@"N/A"];

  return v5;
}

- (GCSystemGesturesState)initWithEnabledSystemGestures:(id)gestures disabledSystemGestures:(id)systemGestures bundleIdentifier:(id)identifier
{
  gesturesCopy = gestures;
  systemGesturesCopy = systemGestures;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = GCSystemGesturesState;
  v12 = [(GCSystemGesturesState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_disabledSystemGestureInputNames, systemGestures);
    objc_storeStrong(&v13->_enabledSystemGestureInputNames, gestures);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
  }

  return v13;
}

@end