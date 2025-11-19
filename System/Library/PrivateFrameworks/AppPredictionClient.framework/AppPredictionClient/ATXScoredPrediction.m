@interface ATXScoredPrediction
+ (id)predictionsFrom:(id)a3;
- (ATXScoredPrediction)initWithCoder:(id)a3;
- (ATXScoredPrediction)initWithPredictedItem:(id)a3 score:(float)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScoredPredictionItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXScoredPrediction

- (ATXScoredPrediction)initWithPredictedItem:(id)a3 score:(float)a4
{
  v8 = a3;
  if (!v8)
  {
    [ATXScoredPrediction initWithPredictedItem:a2 score:self];
  }

  v12.receiver = self;
  v12.super_class = ATXScoredPrediction;
  v9 = [(ATXScoredPrediction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictedItem, a3);
    v10->_score = a4;
  }

  return v10;
}

+ (id)predictionsFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) predictedItem];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXScoredPrediction allocWithZone:a3];
  predictedItem = self->_predictedItem;
  *&v6 = self->_score;

  return [(ATXScoredPrediction *)v4 initWithPredictedItem:predictedItem score:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScoredPrediction *)self isEqualToScoredPredictionItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToScoredPredictionItem:(id)a3
{
  if (self->_score == *(a3 + 2))
  {
    return [self->_predictedItem isEqual:*(a3 + 2)];
  }

  else
  {
    return 0;
  }
}

- (ATXScoredPrediction)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"predictedItem"];
  [v5 decodeFloatForKey:@"score"];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [(ATXScoredPrediction *)self initWithPredictedItem:v8 score:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  predictedItem = self->_predictedItem;
  v6 = a3;
  [v6 encodeObject:predictedItem forKey:@"predictedItem"];
  *&v5 = self->_score;
  [v6 encodeFloat:@"score" forKey:v5];
}

- (void)initWithPredictedItem:(uint64_t)a1 score:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXScoredPrediction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"predictedItem"}];
}

@end