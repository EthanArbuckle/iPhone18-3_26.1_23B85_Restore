@interface HKWorkoutEffortRelationship
- (HKWorkoutEffortRelationship)initWithCoder:(id)coder;
- (HKWorkoutEffortRelationship)initWithWorkout:(id)workout activity:(id)activity samples:(id)samples;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutEffortRelationship

- (HKWorkoutEffortRelationship)initWithWorkout:(id)workout activity:(id)activity samples:(id)samples
{
  workoutCopy = workout;
  activityCopy = activity;
  samplesCopy = samples;
  v19.receiver = self;
  v19.super_class = HKWorkoutEffortRelationship;
  v11 = [(HKWorkoutEffortRelationship *)&v19 init];
  if (v11)
  {
    v12 = [workoutCopy copy];
    workout = v11->_workout;
    v11->_workout = v12;

    v14 = [samplesCopy copy];
    samples = v11->_samples;
    v11->_samples = v14;

    v16 = [activityCopy copy];
    activity = v11->_activity;
    v11->_activity = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  samples = self->_samples;
  uUID = [(HKWorkoutActivity *)self->_activity UUID];
  uUID2 = [(HKObject *)self->_workout UUID];
  v9 = [v3 stringWithFormat:@"<%@:%p samples=%@, activity=%@, workout=%@>", v5, self, samples, uUID, uUID2];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  workout = self->_workout;
  coderCopy = coder;
  [coderCopy encodeObject:workout forKey:@"Workout"];
  [coderCopy encodeObject:self->_samples forKey:@"Samples"];
  [coderCopy encodeObject:self->_activity forKey:@"Activity"];
}

- (HKWorkoutEffortRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Workout"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Activity"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Samples"];

  v8 = [(HKWorkoutEffortRelationship *)self initWithWorkout:v5 activity:v6 samples:v7];
  return v8;
}

@end