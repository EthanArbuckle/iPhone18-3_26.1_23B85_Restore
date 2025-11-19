@interface RKDailyRoutineRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKDailyRoutineRelevantContext)initWithCoder:(id)a3;
- (RKDailyRoutineRelevantContext)initWithSituation:(int64_t)a3;
- (id)analyticsDescription;
- (id)description;
@end

@implementation RKDailyRoutineRelevantContext

- (RKDailyRoutineRelevantContext)initWithSituation:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RKDailyRoutineRelevantContext;
  v4 = [(RKRelevantContext *)&v8 _init];
  v5 = v4;
  if (v4)
  {
    v4->_situation = a3;
    v6 = v4;
  }

  return v5;
}

- (RKDailyRoutineRelevantContext)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"situation"];

  return [(RKDailyRoutineRelevantContext *)self initWithSituation:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_situation == v4->_situation;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = RKStringFromRoutineSituation([(RKDailyRoutineRelevantContext *)self situation]);
  v4 = [v2 stringWithFormat:@"<routine: %@>", v3];

  return v4;
}

- (id)analyticsDescription
{
  v2 = [(RKDailyRoutineRelevantContext *)self situation];

  return RKStringFromRoutineSituation(v2);
}

@end