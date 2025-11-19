@interface HKWorkoutEffortRelationship
- (HKWorkoutEffortRelationship)initWithCoder:(id)a3;
- (HKWorkoutEffortRelationship)initWithWorkout:(id)a3 activity:(id)a4 samples:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutEffortRelationship

- (HKWorkoutEffortRelationship)initWithWorkout:(id)a3 activity:(id)a4 samples:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKWorkoutEffortRelationship;
  v11 = [(HKWorkoutEffortRelationship *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    workout = v11->_workout;
    v11->_workout = v12;

    v14 = [v10 copy];
    samples = v11->_samples;
    v11->_samples = v14;

    v16 = [v9 copy];
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
  v7 = [(HKWorkoutActivity *)self->_activity UUID];
  v8 = [(HKObject *)self->_workout UUID];
  v9 = [v3 stringWithFormat:@"<%@:%p samples=%@, activity=%@, workout=%@>", v5, self, samples, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  workout = self->_workout;
  v5 = a3;
  [v5 encodeObject:workout forKey:@"Workout"];
  [v5 encodeObject:self->_samples forKey:@"Samples"];
  [v5 encodeObject:self->_activity forKey:@"Activity"];
}

- (HKWorkoutEffortRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Workout"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Activity"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Samples"];

  v8 = [(HKWorkoutEffortRelationship *)self initWithWorkout:v5 activity:v6 samples:v7];
  return v8;
}

@end