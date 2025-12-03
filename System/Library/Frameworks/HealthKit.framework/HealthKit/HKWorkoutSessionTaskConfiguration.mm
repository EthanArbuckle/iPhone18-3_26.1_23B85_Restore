@interface HKWorkoutSessionTaskConfiguration
- (HKWorkoutSessionTaskConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutSessionTaskConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKWorkoutSessionTaskConfiguration);
  [(HKWorkoutSessionTaskConfiguration *)v4 setSessionUUID:self->_sessionUUID];
  [(HKWorkoutSessionTaskConfiguration *)v4 setWorkoutConfiguration:self->_workoutConfiguration];
  [(HKWorkoutSessionTaskConfiguration *)v4 setRequiresCoreLocationAssertion:self->_requiresCoreLocationAssertion];
  [(HKWorkoutSessionTaskConfiguration *)v4 setRequiresRecovery:self->_requiresRecovery];
  [(HKWorkoutSessionTaskConfiguration *)v4 setSupportsAppRelaunchForRecovery:self->_supportsAppRelaunchForRecovery];
  [(HKWorkoutSessionTaskConfiguration *)v4 setShouldStopPreviousSession:self->_shouldStopPreviousSession];
  [(HKWorkoutSessionTaskConfiguration *)v4 setSupports3rdPartyAOT:self->_supports3rdPartyAOT];
  [(HKWorkoutSessionTaskConfiguration *)v4 setCurrentActivity:self->_currentActivity];
  [(HKWorkoutSessionTaskConfiguration *)v4 setActivityConfigurations:self->_activityConfigurations];
  [(HKWorkoutSessionTaskConfiguration *)v4 setSessionType:self->_sessionType];
  return v4;
}

- (HKWorkoutSessionTaskConfiguration)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HKWorkoutSessionTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_uuid"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workout_configuration"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v8;

    v5->_requiresCoreLocationAssertion = [coderCopy decodeBoolForKey:@"cl_assertion"];
    v5->_requiresRecovery = [coderCopy decodeBoolForKey:@"recovery"];
    v5->_supportsAppRelaunchForRecovery = [coderCopy decodeBoolForKey:@"recovery_relaunch_app"];
    v5->_shouldStopPreviousSession = [coderCopy decodeBoolForKey:@"stop_previous"];
    v5->_supports3rdPartyAOT = [coderCopy decodeBoolForKey:@"supports_3rd_party_aot"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_activity"];
    currentActivity = v5->_currentActivity;
    v5->_currentActivity = v10;

    v12 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"activity_configurations"];
    activityConfigurations = v5->_activityConfigurations;
    v5->_activityConfigurations = v15;

    v5->_sessionType = [coderCopy decodeIntegerForKey:@"session_type"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKWorkoutSessionTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sessionUUID forKey:{@"session_uuid", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_workoutConfiguration forKey:@"workout_configuration"];
  [coderCopy encodeBool:self->_requiresCoreLocationAssertion forKey:@"cl_assertion"];
  [coderCopy encodeBool:self->_requiresRecovery forKey:@"recovery"];
  [coderCopy encodeBool:self->_supportsAppRelaunchForRecovery forKey:@"recovery_relaunch_app"];
  [coderCopy encodeBool:self->_shouldStopPreviousSession forKey:@"stop_previous"];
  [coderCopy encodeBool:self->_supports3rdPartyAOT forKey:@"supports_3rd_party_aot"];
  [coderCopy encodeObject:self->_currentActivity forKey:@"current_activity"];
  [coderCopy encodeObject:self->_activityConfigurations forKey:@"activity_configurations"];
  [coderCopy encodeInteger:self->_sessionType forKey:@"session_type"];
}

@end