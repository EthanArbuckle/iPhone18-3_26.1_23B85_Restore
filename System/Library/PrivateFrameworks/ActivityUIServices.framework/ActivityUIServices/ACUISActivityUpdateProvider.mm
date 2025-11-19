@interface ACUISActivityUpdateProvider
- (ACUISActivityUpdateProvider)initWithActivityUpdateProviding:(id)a3;
- (int64_t)_activityState:(int64_t)a3;
@end

@implementation ACUISActivityUpdateProvider

- (ACUISActivityUpdateProvider)initWithActivityUpdateProviding:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ACUISActivityUpdateProvider;
  v6 = [(ACUISActivityUpdateProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updateProviding, a3);
    v8 = [v5 identifier];
    activityIdentifier = v7->_activityIdentifier;
    v7->_activityIdentifier = v8;

    v10 = [v5 descriptor];
    descriptor = v7->_descriptor;
    v7->_descriptor = v10;

    v7->_state = -[ACUISActivityUpdateProvider _activityState:](v7, "_activityState:", [v5 activityState]);
  }

  return v7;
}

- (int64_t)_activityState:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end