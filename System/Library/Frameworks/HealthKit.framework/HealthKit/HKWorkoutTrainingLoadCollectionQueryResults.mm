@interface HKWorkoutTrainingLoadCollectionQueryResults
- (HKWorkoutTrainingLoadCollectionQueryResults)initWithCoder:(id)coder;
- (HKWorkoutTrainingLoadCollectionQueryResults)initWithTotalTrainingLoadCollection:(id)collection collectionByActivityType:(id)type;
- (id)trainingLoadCollectionForActivityType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutTrainingLoadCollectionQueryResults

- (HKWorkoutTrainingLoadCollectionQueryResults)initWithTotalTrainingLoadCollection:(id)collection collectionByActivityType:(id)type
{
  collectionCopy = collection;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoadCollectionQueryResults;
  v8 = [(HKWorkoutTrainingLoadCollectionQueryResults *)&v14 init];
  if (v8)
  {
    v9 = [collectionCopy copy];
    totalTrainingLoadCollection = v8->_totalTrainingLoadCollection;
    v8->_totalTrainingLoadCollection = v9;

    v11 = [typeCopy copy];
    collectionByActivityType = v8->_collectionByActivityType;
    v8->_collectionByActivityType = v11;
  }

  return v8;
}

- (id)trainingLoadCollectionForActivityType:(unint64_t)type
{
  collectionByActivityType = self->_collectionByActivityType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [(NSDictionary *)collectionByActivityType objectForKeyedSubscript:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  totalTrainingLoadCollection = self->_totalTrainingLoadCollection;
  coderCopy = coder;
  [coderCopy encodeObject:totalTrainingLoadCollection forKey:@"totalTrainingLoadCollection"];
  [coderCopy encodeObject:self->_collectionByActivityType forKey:@"collectionByActivityType"];
}

- (HKWorkoutTrainingLoadCollectionQueryResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKWorkoutTrainingLoadCollectionQueryResults;
  v5 = [(HKWorkoutTrainingLoadCollectionQueryResults *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalTrainingLoadCollection"];
    totalTrainingLoadCollection = v5->_totalTrainingLoadCollection;
    v5->_totalTrainingLoadCollection = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"collectionByActivityType"];
    collectionByActivityType = v5->_collectionByActivityType;
    v5->_collectionByActivityType = v12;
  }

  return v5;
}

@end