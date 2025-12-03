@interface AKAlarmAuthorization
- (AKAlarmAuthorization)init;
- (BOOL)supportsAlarmKit:(id)kit;
- (id)setAuthorizationState:(unint64_t)state forBundleID:(id)d;
- (unint64_t)authorizationStateForBundleID:(id)d;
@end

@implementation AKAlarmAuthorization

- (AKAlarmAuthorization)init
{
  v6.receiver = self;
  v6.super_class = AKAlarmAuthorization;
  v2 = [(AKAlarmAuthorization *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC8AlarmKit18AlarmAuthorization);
    alarmAuthorization = v2->_alarmAuthorization;
    v2->_alarmAuthorization = v3;
  }

  return v2;
}

- (id)setAuthorizationState:(unint64_t)state forBundleID:(id)d
{
  alarmAuthorization = self->_alarmAuthorization;
  v6 = MEMORY[0x1E696AD98];
  dCopy = d;
  v8 = [[v6 alloc] initWithInteger:state];
  v12 = 0;
  [(AlarmAuthorization *)alarmAuthorization setWithState:v8 bundleID:dCopy error:&v12];

  v9 = v12;
  v10 = v12;

  return v9;
}

- (unint64_t)authorizationStateForBundleID:(id)d
{
  v3 = [(AlarmAuthorization *)self->_alarmAuthorization stateWithBundleID:d error:0];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)supportsAlarmKit:(id)kit
{
  v3 = [(AlarmAuthorization *)self->_alarmAuthorization supportsAlarmKitWithBundleID:kit error:0];
  v4 = [v3 integerValue] != 0;

  return v4;
}

@end