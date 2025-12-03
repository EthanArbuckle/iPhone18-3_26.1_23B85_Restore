@interface ATXScoredPrediction
+ (id)predictionsFrom:(id)from;
- (ATXScoredPrediction)initWithCoder:(id)coder;
- (ATXScoredPrediction)initWithPredictedItem:(id)item score:(float)score;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredPredictionItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXScoredPrediction

- (ATXScoredPrediction)initWithPredictedItem:(id)item score:(float)score
{
  itemCopy = item;
  if (!itemCopy)
  {
    [ATXScoredPrediction initWithPredictedItem:a2 score:self];
  }

  v12.receiver = self;
  v12.super_class = ATXScoredPrediction;
  v9 = [(ATXScoredPrediction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictedItem, item);
    v10->_score = score;
  }

  return v10;
}

+ (id)predictionsFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fromCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy;
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

        predictedItem = [*(*(&v12 + 1) + 8 * i) predictedItem];
        [v4 addObject:predictedItem];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXScoredPrediction allocWithZone:zone];
  predictedItem = self->_predictedItem;
  *&v6 = self->_score;

  return [(ATXScoredPrediction *)v4 initWithPredictedItem:predictedItem score:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScoredPrediction *)self isEqualToScoredPredictionItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToScoredPredictionItem:(id)item
{
  if (self->_score == *(item + 2))
  {
    return [self->_predictedItem isEqual:*(item + 2)];
  }

  else
  {
    return 0;
  }
}

- (ATXScoredPrediction)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"predictedItem"];
  [coderCopy decodeFloatForKey:@"score"];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [(ATXScoredPrediction *)self initWithPredictedItem:v8 score:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  predictedItem = self->_predictedItem;
  coderCopy = coder;
  [coderCopy encodeObject:predictedItem forKey:@"predictedItem"];
  *&v5 = self->_score;
  [coderCopy encodeFloat:@"score" forKey:v5];
}

- (void)initWithPredictedItem:(uint64_t)a1 score:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXScoredPrediction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"predictedItem"}];
}

@end