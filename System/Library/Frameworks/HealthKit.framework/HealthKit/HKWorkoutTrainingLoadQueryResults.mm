@interface HKWorkoutTrainingLoadQueryResults
- (HKWorkoutTrainingLoadQueryResults)initWithCoder:(id)coder;
- (HKWorkoutTrainingLoadQueryResults)initWithTotalTrainingLoad:(id)load trainingloadByActivityType:(id)type;
- (id)trainingLoadForActivityType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutTrainingLoadQueryResults

- (HKWorkoutTrainingLoadQueryResults)initWithTotalTrainingLoad:(id)load trainingloadByActivityType:(id)type
{
  loadCopy = load;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoadQueryResults;
  v8 = [(HKWorkoutTrainingLoadQueryResults *)&v14 init];
  if (v8)
  {
    v9 = [loadCopy copy];
    totalTrainingLoad = v8->_totalTrainingLoad;
    v8->_totalTrainingLoad = v9;

    v11 = [typeCopy copy];
    trainingloadByActivityType = v8->_trainingloadByActivityType;
    v8->_trainingloadByActivityType = v11;
  }

  return v8;
}

- (id)trainingLoadForActivityType:(unint64_t)type
{
  if (type == 84)
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

- (void)encodeWithCoder:(id)coder
{
  totalTrainingLoad = self->_totalTrainingLoad;
  coderCopy = coder;
  [coderCopy encodeObject:totalTrainingLoad forKey:@"totalTrainingLoad"];
  [coderCopy encodeObject:self->_trainingloadByActivityType forKey:@"trainingloadByActivityType"];
}

- (HKWorkoutTrainingLoadQueryResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKWorkoutTrainingLoadQueryResults;
  v5 = [(HKWorkoutTrainingLoadQueryResults *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalTrainingLoad"];
    totalTrainingLoad = v5->_totalTrainingLoad;
    v5->_totalTrainingLoad = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"trainingloadByActivityType"];
    trainingloadByActivityType = v5->_trainingloadByActivityType;
    v5->_trainingloadByActivityType = v12;
  }

  return v5;
}

@end