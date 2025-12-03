@interface ACUISActivityUpdateProvider
- (ACUISActivityUpdateProvider)initWithActivityUpdateProviding:(id)providing;
- (int64_t)_activityState:(int64_t)state;
@end

@implementation ACUISActivityUpdateProvider

- (ACUISActivityUpdateProvider)initWithActivityUpdateProviding:(id)providing
{
  providingCopy = providing;
  v13.receiver = self;
  v13.super_class = ACUISActivityUpdateProvider;
  v6 = [(ACUISActivityUpdateProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updateProviding, providing);
    identifier = [providingCopy identifier];
    activityIdentifier = v7->_activityIdentifier;
    v7->_activityIdentifier = identifier;

    descriptor = [providingCopy descriptor];
    descriptor = v7->_descriptor;
    v7->_descriptor = descriptor;

    v7->_state = -[ACUISActivityUpdateProvider _activityState:](v7, "_activityState:", [providingCopy activityState]);
  }

  return v7;
}

- (int64_t)_activityState:(int64_t)state
{
  if ((state - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

@end