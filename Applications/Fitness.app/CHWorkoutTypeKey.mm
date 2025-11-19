@interface CHWorkoutTypeKey
+ (BOOL)historyFilterDisambiguatesLocationForActivityType:(unint64_t)a3;
+ (id)emptyKey;
+ (id)initForWorkout:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_activityType;
  *(v5 + 8) = self->_indoor;
  v6 = [(NSString *)self->_workoutBrandName copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v5[4] = self->_swimLocationType;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    workoutBrandName = self->_workoutBrandName;
    v7 = [v5 workoutBrandName];
    if (workoutBrandName == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [v5 workoutBrandName];
      if (v8)
      {
        v9 = self->_workoutBrandName;
        v10 = [v5 workoutBrandName];
        v11 = [(NSString *)v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    v13 = [(CHWorkoutTypeKey *)self activityType];
    if (v13 == [v5 activityType] && (v14 = -[CHWorkoutTypeKey isIndoor](self, "isIndoor"), ((v14 ^ objc_msgSend(v5, "isIndoor") ^ 1) & v11) == 1))
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

+ (id)initForWorkout:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHWorkoutTypeKey);
  v5 = [v3 fiui_activityType];

  -[CHWorkoutTypeKey setActivityType:](v4, "setActivityType:", [v5 effectiveTypeIdentifier]);
  if ([objc_opt_class() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(v5, "effectiveTypeIdentifier")}])
  {
    -[CHWorkoutTypeKey setIndoor:](v4, "setIndoor:", [v5 isIndoor]);
  }

  if ([v5 effectiveTypeIdentifier] == 46)
  {
    -[CHWorkoutTypeKey setSwimLocationType:](v4, "setSwimLocationType:", [v5 swimmingLocationType]);
  }

  if ([v5 effectiveTypeIdentifier] == 14)
  {
    [(CHWorkoutTypeKey *)v4 setActivityType:77];
  }

  return v4;
}

+ (BOOL)historyFilterDisambiguatesLocationForActivityType:(unint64_t)a3
{
  if (a3 <= 0x34 && ((1 << a3) & 0x10402000000000) != 0)
  {
    return 0;
  }

  else
  {
    return [FIWorkoutActivityType shouldDisambiguateOnLocationType:?];
  }
}

@end