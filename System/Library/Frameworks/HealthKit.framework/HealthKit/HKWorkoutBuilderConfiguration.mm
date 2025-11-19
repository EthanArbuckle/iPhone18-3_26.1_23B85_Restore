@interface HKWorkoutBuilderConfiguration
- (BOOL)isEqual:(id)a3;
- (HKWorkoutBuilderConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutBuilderConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  device = self->_device;
  v6 = v4[2];
  if (device != v6 && (!v6 || ![(HKDevice *)device isEqual:?]))
  {
    goto LABEL_17;
  }

  if (((workoutConfiguration = self->_workoutConfiguration, v8 = v4[3], workoutConfiguration == v8) || v8 && [(HKWorkoutConfiguration *)workoutConfiguration isEqual:?]) && self->_goalType == v4[4] && ((goal = self->_goal, v10 = v4[5], goal == v10) || v10 && [(HKQuantity *)goal isEqual:?]) && self->_shouldCollectWorkoutEvents == *(v4 + 8) && ((associatedSessionUUID = self->_associatedSessionUUID, v12 = v4[6], associatedSessionUUID == v12) || v12 && [(NSUUID *)associatedSessionUUID isEqual:?]))
  {
    v13 = self->_requiresRecovery == *(v4 + 9);
  }

  else
  {
LABEL_17:
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKDevice *)self->_device hash];
  v4 = [(HKWorkoutConfiguration *)self->_workoutConfiguration hash]^ v3;
  goalType = self->_goalType;
  return v4 ^ goalType ^ [(HKQuantity *)self->_goal hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HKWorkoutBuilderConfiguration;
  v4 = [(HKTaskConfiguration *)&v7 copyWithZone:a3];
  [v4 setDevice:self->_device];
  [v4 setWorkoutConfiguration:self->_workoutConfiguration];
  [v4 setGoalType:self->_goalType];
  [v4 setGoal:self->_goal];
  v5 = [(NSUUID *)self->_associatedSessionUUID copy];
  [v4 setAssociatedSessionUUID:v5];

  [v4 setShouldCollectWorkoutEvents:self->_shouldCollectWorkoutEvents];
  [v4 setRequiresRecovery:self->_requiresRecovery];
  return v4;
}

- (HKWorkoutBuilderConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKWorkoutBuilderConfiguration;
  v5 = [(HKTaskConfiguration *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutConfig"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v8;

    v5->_goalType = [v4 decodeIntegerForKey:@"goalType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associated_session_uuid"];
    associatedSessionUUID = v5->_associatedSessionUUID;
    v5->_associatedSessionUUID = v12;

    v5->_shouldCollectWorkoutEvents = [v4 decodeBoolForKey:@"should_collect_events"];
    v5->_requiresRecovery = [v4 decodeBoolForKey:@"requires_recovery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutBuilderConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_device forKey:{@"device", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_workoutConfiguration forKey:@"workoutConfig"];
  [v4 encodeInteger:self->_goalType forKey:@"goalType"];
  [v4 encodeObject:self->_goal forKey:@"goal"];
  [v4 encodeObject:self->_associatedSessionUUID forKey:@"associated_session_uuid"];
  [v4 encodeBool:self->_shouldCollectWorkoutEvents forKey:@"should_collect_events"];
  [v4 encodeBool:self->_requiresRecovery forKey:@"requires_recovery"];
}

@end