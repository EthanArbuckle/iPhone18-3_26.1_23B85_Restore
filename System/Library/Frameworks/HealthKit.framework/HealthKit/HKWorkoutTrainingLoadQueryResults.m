@interface HKWorkoutTrainingLoadQueryResults
- (HKWorkoutTrainingLoadQueryResults)initWithCoder:(id)a3;
- (HKWorkoutTrainingLoadQueryResults)initWithTotalTrainingLoad:(id)a3 trainingloadByActivityType:(id)a4;
- (id)trainingLoadForActivityType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutTrainingLoadQueryResults

- (HKWorkoutTrainingLoadQueryResults)initWithTotalTrainingLoad:(id)a3 trainingloadByActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoadQueryResults;
  v8 = [(HKWorkoutTrainingLoadQueryResults *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    totalTrainingLoad = v8->_totalTrainingLoad;
    v8->_totalTrainingLoad = v9;

    v11 = [v7 copy];
    trainingloadByActivityType = v8->_trainingloadByActivityType;
    v8->_trainingloadByActivityType = v11;
  }

  return v8;
}

- (id)trainingLoadForActivityType:(unint64_t)a3
{
  if (a3 == 84)
  {
    v3 = 0;
  }

  else
  {
    trainingloadByActivityType = self->_trainingloadByActivityType;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v3 = [(NSDictionary *)trainingloadByActivityType objectForKeyedSubscript:v5];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  totalTrainingLoad = self->_totalTrainingLoad;
  v5 = a3;
  [v5 encodeObject:totalTrainingLoad forKey:@"totalTrainingLoad"];
  [v5 encodeObject:self->_trainingloadByActivityType forKey:@"trainingloadByActivityType"];
}

- (HKWorkoutTrainingLoadQueryResults)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKWorkoutTrainingLoadQueryResults;
  v5 = [(HKWorkoutTrainingLoadQueryResults *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalTrainingLoad"];
    totalTrainingLoad = v5->_totalTrainingLoad;
    v5->_totalTrainingLoad = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"trainingloadByActivityType"];
    trainingloadByActivityType = v5->_trainingloadByActivityType;
    v5->_trainingloadByActivityType = v12;
  }

  return v5;
}

@end