@interface ATXMagicalMomentsPredictionTableEntry
+ (id)compoundPredicateFromPredicateArray:(id)array;
- (ATXMagicalMomentsPredictionTableEntry)initWithCoder:(id)coder;
- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)prediction applicableCompoundPredicate:(id)predicate;
- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)prediction applicablePredicates:(id)predicates;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMagicalMomentsPredictionTableEntry

- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)prediction applicablePredicates:(id)predicates
{
  predictionCopy = prediction;
  predicatesCopy = predicates;
  v8 = predicatesCopy;
  if (predictionCopy && predicatesCopy && [predicatesCopy count])
  {
    v9 = [objc_opt_class() compoundPredicateFromPredicateArray:v8];
    self = [(ATXMagicalMomentsPredictionTableEntry *)self initWithPrediction:predictionCopy applicableCompoundPredicate:v9];

    selfCopy = self;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsPredictionTableEntry initWithPrediction:applicablePredicates:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)prediction applicableCompoundPredicate:(id)predicate
{
  predictionCopy = prediction;
  predicateCopy = predicate;
  v9 = predicateCopy;
  if (predictionCopy && predicateCopy)
  {
    v15.receiver = self;
    v15.super_class = ATXMagicalMomentsPredictionTableEntry;
    v10 = [(ATXMagicalMomentsPredictionTableEntry *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_prediction, prediction);
      objc_storeStrong(p_isa + 2, predicate);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsPredictionTableEntry initWithPrediction:applicableCompoundPredicate:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  predictionIdentifier = [(ATXMagicalMomentsPrediction *)self->_prediction predictionIdentifier];
  [(ATXMagicalMomentsPrediction *)self->_prediction confidence];
  v6 = [v3 stringWithFormat:@"Prediction: %@, Confidence: %f, Predicate: %@", predictionIdentifier, v5, self->_compoundPredicate];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      prediction = self->_prediction;
      prediction = [(ATXMagicalMomentsPredictionTableEntry *)v5 prediction];
      if ([(ATXMagicalMomentsPrediction *)prediction isEqual:prediction])
      {
        compoundPredicate = self->_compoundPredicate;
        compoundPredicate = [(ATXMagicalMomentsPredictionTableEntry *)v5 compoundPredicate];
        v10 = [(NSCompoundPredicate *)compoundPredicate isEqual:compoundPredicate];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)compoundPredicateFromPredicateArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    [(ATXMagicalMomentsPredictionTableEntry *)a2 compoundPredicateFromPredicateArray:self];
  }

  v6 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:arrayCopy];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  prediction = self->_prediction;
  coderCopy = coder;
  [coderCopy encodeObject:prediction forKey:@"prediction"];
  [coderCopy encodeObject:self->_compoundPredicate forKey:@"compoundPredicate"];
}

- (ATXMagicalMomentsPredictionTableEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prediction"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compoundPredicate"];

  v7 = [(ATXMagicalMomentsPredictionTableEntry *)self initWithPrediction:v5 applicableCompoundPredicate:v6];
  return v7;
}

+ (void)compoundPredicateFromPredicateArray:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsPredictionTable.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"predicateArray"}];
}

@end