@interface AFSiriWorkoutReminder
- (AFSiriWorkoutReminder)initWithCoder:(id)a3;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutActivityType:(unint64_t)a5 locationType:(int64_t)a6 swimmingLocationType:(int64_t)a7;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutType:(int64_t)a5;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutType:(int64_t)a5 workoutActivityType:(unint64_t)a6 locationType:(int64_t)a7 swimmingLocationType:(int64_t)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriWorkoutReminder

- (AFSiriWorkoutReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"predictionType"];
  if ([v4 containsValueForKey:@"workoutType"])
  {
    v7 = [v4 decodeIntegerForKey:@"workoutType"];
  }

  else
  {
    v7 = 0;
  }

  if ([v4 containsValueForKey:@"workoutActivityType"])
  {
    v8 = [v4 decodeIntegerForKey:@"workoutActivityType"];
  }

  else
  {
    v8 = 0;
  }

  if ([v4 containsValueForKey:@"workoutLocationType"])
  {
    v9 = [v4 decodeIntegerForKey:@"workoutLocationType"];
  }

  else
  {
    v9 = 0;
  }

  if ([v4 containsValueForKey:@"workoutSwimmingLocationType"])
  {
    v10 = [v4 decodeIntegerForKey:@"workoutSwimmingLocationType"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(AFSiriWorkoutReminder *)self initWithPredictionIdentifier:v5 predictionType:v6 workoutType:v7 workoutActivityType:v8 locationType:v9 swimmingLocationType:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(AFSiriWorkoutReminder *)self predictionIdentifier];
  [v5 encodeObject:v4 forKey:@"predictionIdentifier"];

  [v5 encodeInteger:-[AFSiriWorkoutReminder predictionType](self forKey:{"predictionType"), @"predictionType"}];
  [v5 encodeInteger:-[AFSiriWorkoutReminder workoutType](self forKey:{"workoutType"), @"workoutType"}];
  [v5 encodeInteger:-[AFSiriWorkoutReminder workoutActivityType](self forKey:{"workoutActivityType"), @"workoutActivityType"}];
  [v5 encodeInteger:-[AFSiriWorkoutReminder workoutLocationType](self forKey:{"workoutLocationType"), @"workoutLocationType"}];
  [v5 encodeInteger:-[AFSiriWorkoutReminder workoutSwimmingLocationType](self forKey:{"workoutSwimmingLocationType"), @"workoutSwimmingLocationType"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  workoutType = self->_workoutType;
  if (workoutType > 0xA)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E7347430[workoutType];
  }

  v6 = v5;
  workoutActivityType = self->_workoutActivityType;
  workoutLocationType = self->_workoutLocationType;
  workoutSwimmingLocationType = self->_workoutSwimmingLocationType;
  predictionType = self->_predictionType;
  if (predictionType > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_1E73479C8[predictionType];
  }

  v12 = v11;
  v13 = [v3 stringWithFormat:@"AFSiriWorkoutReminder<workoutType: %@ workoutActivityType: %lu workoutLocationType: %lu workoutSwimmingLocationType: %lu predictionType: %@>", v6, workoutActivityType, workoutLocationType, workoutSwimmingLocationType, v12];

  return v13;
}

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutType:(int64_t)a5 workoutActivityType:(unint64_t)a6 locationType:(int64_t)a7 swimmingLocationType:(int64_t)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = AFSiriWorkoutReminder;
  v16 = [(AFSiriWorkoutReminder *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_predictionIdentifier, a3);
    v17->_workoutSwimmingLocationType = a8;
    v17->_predictionType = a4;
    v17->_workoutType = a5;
    v17->_workoutActivityType = a6;
    v17->_workoutLocationType = a7;
  }

  return v17;
}

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutActivityType:(unint64_t)a5 locationType:(int64_t)a6 swimmingLocationType:(int64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = AFSiriWorkoutReminder;
  v14 = [(AFSiriWorkoutReminder *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_predictionIdentifier, a3);
    v15->_workoutSwimmingLocationType = a7;
    v15->_predictionType = a4;
    v15->_workoutType = 0;
    v15->_workoutActivityType = a5;
    v15->_workoutLocationType = a6;
  }

  return v15;
}

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)a3 predictionType:(int64_t)a4 workoutType:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AFSiriWorkoutReminder;
  v10 = [(AFSiriWorkoutReminder *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_predictionIdentifier, a3);
    v11->_workoutSwimmingLocationType = 0;
    v11->_predictionType = a4;
    v11->_workoutType = a5;
    v11->_workoutActivityType = 0;
    v11->_workoutLocationType = 0;
  }

  return v11;
}

@end