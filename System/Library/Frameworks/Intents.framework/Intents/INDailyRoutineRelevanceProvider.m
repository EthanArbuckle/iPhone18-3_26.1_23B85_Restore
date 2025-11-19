@interface INDailyRoutineRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (INDailyRoutineRelevanceProvider)initWithCoder:(id)a3;
- (INDailyRoutineRelevanceProvider)initWithSituation:(INDailyRoutineSituation)situation;
@end

@implementation INDailyRoutineRelevanceProvider

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

- (INDailyRoutineRelevanceProvider)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"situation"];

  return [(INDailyRoutineRelevanceProvider *)self initWithSituation:v4];
}

- (INDailyRoutineRelevanceProvider)initWithSituation:(INDailyRoutineSituation)situation
{
  v8.receiver = self;
  v8.super_class = INDailyRoutineRelevanceProvider;
  v4 = [(INRelevanceProvider *)&v8 _init];
  v5 = v4;
  if (v4)
  {
    v4->_situation = situation;
    v6 = v4;
  }

  return v5;
}

@end