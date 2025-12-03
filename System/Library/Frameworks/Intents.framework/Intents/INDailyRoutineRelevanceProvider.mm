@interface INDailyRoutineRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (INDailyRoutineRelevanceProvider)initWithCoder:(id)coder;
- (INDailyRoutineRelevanceProvider)initWithSituation:(INDailyRoutineSituation)situation;
@end

@implementation INDailyRoutineRelevanceProvider

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_situation == equalCopy->_situation;
  }

  return v5;
}

- (INDailyRoutineRelevanceProvider)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"situation"];

  return [(INDailyRoutineRelevanceProvider *)self initWithSituation:v4];
}

- (INDailyRoutineRelevanceProvider)initWithSituation:(INDailyRoutineSituation)situation
{
  v8.receiver = self;
  v8.super_class = INDailyRoutineRelevanceProvider;
  _init = [(INRelevanceProvider *)&v8 _init];
  v5 = _init;
  if (_init)
  {
    _init->_situation = situation;
    v6 = _init;
  }

  return v5;
}

@end