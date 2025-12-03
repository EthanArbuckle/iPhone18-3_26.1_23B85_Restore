@interface CHWorkoutTypeKey
+ (BOOL)historyFilterDisambiguatesLocationForActivityType:(unint64_t)type;
+ (id)emptyKey;
+ (id)initForWorkout:(id)workout;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CHWorkoutTypeKey

+ (id)emptyKey
{
  v2 = objc_alloc_init(CHWorkoutTypeKey);
  [(CHWorkoutTypeKey *)v2 setActivityType:_HKWorkoutActivityTypeNone];
  [(CHWorkoutTypeKey *)v2 setIndoor:0];
  [(CHWorkoutTypeKey *)v2 setWorkoutBrandName:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_activityType;
  *(v5 + 8) = self->_indoor;
  v6 = [(NSString *)self->_workoutBrandName copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v5[4] = self->_swimLocationType;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    workoutBrandName = self->_workoutBrandName;
    workoutBrandName = [v5 workoutBrandName];
    if (workoutBrandName == workoutBrandName)
    {
      v11 = 1;
    }

    else
    {
      workoutBrandName2 = [v5 workoutBrandName];
      if (workoutBrandName2)
      {
        v9 = self->_workoutBrandName;
        workoutBrandName3 = [v5 workoutBrandName];
        v11 = [(NSString *)v9 isEqualToString:workoutBrandName3];
      }

      else
      {
        v11 = 0;
      }
    }

    activityType = [(CHWorkoutTypeKey *)self activityType];
    if (activityType == [v5 activityType] && (v14 = -[CHWorkoutTypeKey isIndoor](self, "isIndoor"), ((v14 ^ objc_msgSend(v5, "isIndoor") ^ 1) & v11) == 1))
    {
      swimLocationType = self->_swimLocationType;
      v12 = swimLocationType == [v5 swimLocationType];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  indoor = self->_indoor;
  activityType = self->_activityType;
  if (activityType == 46)
  {
    p_workoutBrandName = &self->_workoutBrandName;
    workoutBrandName = self->_workoutBrandName;
    v5 = p_workoutBrandName[1];
    v7 = 46;
    if (v5 == 2)
    {
      v7 = 200046;
    }

    if (v5 == 1)
    {
      v8 = 99982;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 ^ [(NSString *)workoutBrandName hash];
  }

  else
  {
    v9 = [(NSString *)self->_workoutBrandName hash]^ activityType;
  }

  v10 = 20000;
  if (!indoor)
  {
    v10 = 0;
  }

  return v9 ^ v10;
}

+ (id)initForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = objc_alloc_init(CHWorkoutTypeKey);
  fiui_activityType = [workoutCopy fiui_activityType];

  -[CHWorkoutTypeKey setActivityType:](v4, "setActivityType:", [fiui_activityType effectiveTypeIdentifier]);
  if ([objc_opt_class() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(fiui_activityType, "effectiveTypeIdentifier")}])
  {
    -[CHWorkoutTypeKey setIndoor:](v4, "setIndoor:", [fiui_activityType isIndoor]);
  }

  if ([fiui_activityType effectiveTypeIdentifier] == 46)
  {
    -[CHWorkoutTypeKey setSwimLocationType:](v4, "setSwimLocationType:", [fiui_activityType swimmingLocationType]);
  }

  if ([fiui_activityType effectiveTypeIdentifier] == 14)
  {
    [(CHWorkoutTypeKey *)v4 setActivityType:77];
  }

  return v4;
}

+ (BOOL)historyFilterDisambiguatesLocationForActivityType:(unint64_t)type
{
  if (type <= 0x34 && ((1 << type) & 0x10402000000000) != 0)
  {
    return 0;
  }

  else
  {
    return [FIWorkoutActivityType shouldDisambiguateOnLocationType:?];
  }
}

@end