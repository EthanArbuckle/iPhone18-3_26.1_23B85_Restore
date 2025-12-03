@interface AFSiriWorkoutReminder
- (AFSiriWorkoutReminder)initWithCoder:(id)coder;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutActivityType:(unint64_t)activityType locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutType:(int64_t)workoutType;
- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutType:(int64_t)workoutType workoutActivityType:(unint64_t)activityType locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSiriWorkoutReminder

- (AFSiriWorkoutReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"predictionType"];
  if ([coderCopy containsValueForKey:@"workoutType"])
  {
    v7 = [coderCopy decodeIntegerForKey:@"workoutType"];
  }

  else
  {
    v7 = 0;
  }

  if ([coderCopy containsValueForKey:@"workoutActivityType"])
  {
    v8 = [coderCopy decodeIntegerForKey:@"workoutActivityType"];
  }

  else
  {
    v8 = 0;
  }

  if ([coderCopy containsValueForKey:@"workoutLocationType"])
  {
    v9 = [coderCopy decodeIntegerForKey:@"workoutLocationType"];
  }

  else
  {
    v9 = 0;
  }

  if ([coderCopy containsValueForKey:@"workoutSwimmingLocationType"])
  {
    v10 = [coderCopy decodeIntegerForKey:@"workoutSwimmingLocationType"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(AFSiriWorkoutReminder *)self initWithPredictionIdentifier:v5 predictionType:v6 workoutType:v7 workoutActivityType:v8 locationType:v9 swimmingLocationType:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predictionIdentifier = [(AFSiriWorkoutReminder *)self predictionIdentifier];
  [coderCopy encodeObject:predictionIdentifier forKey:@"predictionIdentifier"];

  [coderCopy encodeInteger:-[AFSiriWorkoutReminder predictionType](self forKey:{"predictionType"), @"predictionType"}];
  [coderCopy encodeInteger:-[AFSiriWorkoutReminder workoutType](self forKey:{"workoutType"), @"workoutType"}];
  [coderCopy encodeInteger:-[AFSiriWorkoutReminder workoutActivityType](self forKey:{"workoutActivityType"), @"workoutActivityType"}];
  [coderCopy encodeInteger:-[AFSiriWorkoutReminder workoutLocationType](self forKey:{"workoutLocationType"), @"workoutLocationType"}];
  [coderCopy encodeInteger:-[AFSiriWorkoutReminder workoutSwimmingLocationType](self forKey:{"workoutSwimmingLocationType"), @"workoutSwimmingLocationType"}];
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

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutType:(int64_t)workoutType workoutActivityType:(unint64_t)activityType locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = AFSiriWorkoutReminder;
  v16 = [(AFSiriWorkoutReminder *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_predictionIdentifier, identifier);
    v17->_workoutSwimmingLocationType = swimmingLocationType;
    v17->_predictionType = type;
    v17->_workoutType = workoutType;
    v17->_workoutActivityType = activityType;
    v17->_workoutLocationType = locationType;
  }

  return v17;
}

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutActivityType:(unint64_t)activityType locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = AFSiriWorkoutReminder;
  v14 = [(AFSiriWorkoutReminder *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_predictionIdentifier, identifier);
    v15->_workoutSwimmingLocationType = swimmingLocationType;
    v15->_predictionType = type;
    v15->_workoutType = 0;
    v15->_workoutActivityType = activityType;
    v15->_workoutLocationType = locationType;
  }

  return v15;
}

- (AFSiriWorkoutReminder)initWithPredictionIdentifier:(id)identifier predictionType:(int64_t)type workoutType:(int64_t)workoutType
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = AFSiriWorkoutReminder;
  v10 = [(AFSiriWorkoutReminder *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_predictionIdentifier, identifier);
    v11->_workoutSwimmingLocationType = 0;
    v11->_predictionType = type;
    v11->_workoutType = workoutType;
    v11->_workoutActivityType = 0;
    v11->_workoutLocationType = 0;
  }

  return v11;
}

@end