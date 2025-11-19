@interface HKWorkoutTrainingLoadCollectionQueryResults
- (HKWorkoutTrainingLoadCollectionQueryResults)initWithCoder:(id)a3;
- (HKWorkoutTrainingLoadCollectionQueryResults)initWithTotalTrainingLoadCollection:(id)a3 collectionByActivityType:(id)a4;
- (id)trainingLoadCollectionForActivityType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutTrainingLoadCollectionQueryResults

- (HKWorkoutTrainingLoadCollectionQueryResults)initWithTotalTrainingLoadCollection:(id)a3 collectionByActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoadCollectionQueryResults;
  v8 = [(HKWorkoutTrainingLoadCollectionQueryResults *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    totalTrainingLoadCollection = v8->_totalTrainingLoadCollection;
    v8->_totalTrainingLoadCollection = v9;

    v11 = [v7 copy];
    collectionByActivityType = v8->_collectionByActivityType;
    v8->_collectionByActivityType = v11;
  }

  return v8;
}

- (id)trainingLoadCollectionForActivityType:(unint64_t)a3
{
  collectionByActivityType = self->_collectionByActivityType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)collectionByActivityType objectForKeyedSubscript:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalTrainingLoadCollection = self->_totalTrainingLoadCollection;
  v5 = a3;
  [v5 encodeObject:totalTrainingLoadCollection forKey:@"totalTrainingLoadCollection"];
  [v5 encodeObject:self->_collectionByActivityType forKey:@"collectionByActivityType"];
}

- (HKWorkoutTrainingLoadCollectionQueryResults)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKWorkoutTrainingLoadCollectionQueryResults;
  v5 = [(HKWorkoutTrainingLoadCollectionQueryResults *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalTrainingLoadCollection"];
    totalTrainingLoadCollection = v5->_totalTrainingLoadCollection;
    v5->_totalTrainingLoadCollection = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"collectionByActivityType"];
    collectionByActivityType = v5->_collectionByActivityType;
    v5->_collectionByActivityType = v12;
  }

  return v5;
}

@end