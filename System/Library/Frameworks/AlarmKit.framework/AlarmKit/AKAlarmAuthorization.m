@interface AKAlarmAuthorization
- (AKAlarmAuthorization)init;
- (BOOL)supportsAlarmKit:(id)a3;
- (id)setAuthorizationState:(unint64_t)a3 forBundleID:(id)a4;
- (unint64_t)authorizationStateForBundleID:(id)a3;
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

- (id)setAuthorizationState:(unint64_t)a3 forBundleID:(id)a4
{
  alarmAuthorization = self->_alarmAuthorization;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [[v6 alloc] initWithInteger:a3];
  v12 = 0;
  [(AlarmAuthorization *)alarmAuthorization setWithState:v8 bundleID:v7 error:&v12];

  v9 = v12;
  v10 = v12;

  return v9;
}

- (unint64_t)authorizationStateForBundleID:(id)a3
{
  v3 = [(AlarmAuthorization *)self->_alarmAuthorization stateWithBundleID:a3 error:0];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)supportsAlarmKit:(id)a3
{
  v3 = [(AlarmAuthorization *)self->_alarmAuthorization supportsAlarmKitWithBundleID:a3 error:0];
  v4 = [v3 integerValue] != 0;

  return v4;
}

@end