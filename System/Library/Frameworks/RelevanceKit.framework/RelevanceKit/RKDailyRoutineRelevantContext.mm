@interface RKDailyRoutineRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKDailyRoutineRelevantContext)initWithCoder:(id)coder;
- (RKDailyRoutineRelevantContext)initWithSituation:(int64_t)situation;
- (id)analyticsDescription;
- (id)description;
@end

@implementation RKDailyRoutineRelevantContext

- (RKDailyRoutineRelevantContext)initWithSituation:(int64_t)situation
{
  v8.receiver = self;
  v8.super_class = RKDailyRoutineRelevantContext;
  _init = [(RKRelevantContext *)&v8 _init];
  v5 = _init;
  if (_init)
  {
    _init->_situation = situation;
    v6 = _init;
  }

  return v5;
}

- (RKDailyRoutineRelevantContext)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"situation"];

  return [(RKDailyRoutineRelevantContext *)self initWithSituation:v4];
}

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

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = RKStringFromRoutineSituation([(RKDailyRoutineRelevantContext *)self situation]);
  v4 = [v2 stringWithFormat:@"<routine: %@>", v3];

  return v4;
}

- (id)analyticsDescription
{
  situation = [(RKDailyRoutineRelevantContext *)self situation];

  return RKStringFromRoutineSituation(situation);
}

@end