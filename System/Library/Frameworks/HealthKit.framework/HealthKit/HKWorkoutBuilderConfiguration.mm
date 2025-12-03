@interface HKWorkoutBuilderConfiguration
- (BOOL)isEqual:(id)equal;
- (HKWorkoutBuilderConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutBuilderConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  device = self->_device;
  v6 = equalCopy[2];
  if (device != v6 && (!v6 || ![(HKDevice *)device isEqual:?]))
  {
    goto LABEL_17;
  }

  if (((workoutConfiguration = self->_workoutConfiguration, v8 = equalCopy[3], workoutConfiguration == v8) || v8 && [(HKWorkoutConfiguration *)workoutConfiguration isEqual:?]) && self->_goalType == equalCopy[4] && ((goal = self->_goal, v10 = equalCopy[5], goal == v10) || v10 && [(HKQuantity *)goal isEqual:?]) && self->_shouldCollectWorkoutEvents == *(equalCopy + 8) && ((associatedSessionUUID = self->_associatedSessionUUID, v12 = equalCopy[6], associatedSessionUUID == v12) || v12 && [(NSUUID *)associatedSessionUUID isEqual:?]))
  {
    v13 = self->_requiresRecovery == *(equalCopy + 9);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HKWorkoutBuilderConfiguration;
  v4 = [(HKTaskConfiguration *)&v7 copyWithZone:zone];
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

- (HKWorkoutBuilderConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKWorkoutBuilderConfiguration;
  v5 = [(HKTaskConfiguration *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutConfig"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v8;

    v5->_goalType = [coderCopy decodeIntegerForKey:@"goalType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associated_session_uuid"];
    associatedSessionUUID = v5->_associatedSessionUUID;
    v5->_associatedSessionUUID = v12;

    v5->_shouldCollectWorkoutEvents = [coderCopy decodeBoolForKey:@"should_collect_events"];
    v5->_requiresRecovery = [coderCopy decodeBoolForKey:@"requires_recovery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKWorkoutBuilderConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_device forKey:{@"device", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_workoutConfiguration forKey:@"workoutConfig"];
  [coderCopy encodeInteger:self->_goalType forKey:@"goalType"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_associatedSessionUUID forKey:@"associated_session_uuid"];
  [coderCopy encodeBool:self->_shouldCollectWorkoutEvents forKey:@"should_collect_events"];
  [coderCopy encodeBool:self->_requiresRecovery forKey:@"requires_recovery"];
}

@end