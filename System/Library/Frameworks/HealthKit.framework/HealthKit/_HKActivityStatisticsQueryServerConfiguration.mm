@interface _HKActivityStatisticsQueryServerConfiguration
- (_HKActivityStatisticsQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKActivityStatisticsQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKActivityStatisticsQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setStartDate:self->_startDate];
  [v4 setEndDate:self->_endDate];
  [v4 setMoveIntervalComponents:self->_moveIntervalComponents];
  [v4 setExerciseIntervalComponents:self->_exerciseIntervalComponents];
  [v4 setUpdateInterval:self->_updateInterval];
  return v4;
}

- (_HKActivityStatisticsQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _HKActivityStatisticsQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_startDate);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_endDate);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_moveIntervalComponents);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    moveIntervalComponents = v5->_moveIntervalComponents;
    v5->_moveIntervalComponents = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_exerciseIntervalComponents);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    exerciseIntervalComponents = v5->_exerciseIntervalComponents;
    v5->_exerciseIntervalComponents = v20;

    v22 = NSStringFromSelector(sel_updateInterval);
    [v4 decodeDoubleForKey:v22];
    v5->_updateInterval = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = _HKActivityStatisticsQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v15 encodeWithCoder:v4];
  startDate = self->_startDate;
  v6 = NSStringFromSelector(sel_startDate);
  [v4 encodeObject:startDate forKey:{v6, v15.receiver, v15.super_class}];

  endDate = self->_endDate;
  v8 = NSStringFromSelector(sel_endDate);
  [v4 encodeObject:endDate forKey:v8];

  moveIntervalComponents = self->_moveIntervalComponents;
  v10 = NSStringFromSelector(sel_moveIntervalComponents);
  [v4 encodeObject:moveIntervalComponents forKey:v10];

  exerciseIntervalComponents = self->_exerciseIntervalComponents;
  v12 = NSStringFromSelector(sel_exerciseIntervalComponents);
  [v4 encodeObject:exerciseIntervalComponents forKey:v12];

  updateInterval = self->_updateInterval;
  v14 = NSStringFromSelector(sel_updateInterval);
  [v4 encodeDouble:v14 forKey:updateInterval];
}

@end