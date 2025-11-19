@interface ATXMagicalMomentsPredictionTableEntry
+ (id)compoundPredicateFromPredicateArray:(id)a3;
- (ATXMagicalMomentsPredictionTableEntry)initWithCoder:(id)a3;
- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)a3 applicableCompoundPredicate:(id)a4;
- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)a3 applicablePredicates:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMagicalMomentsPredictionTableEntry

- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)a3 applicablePredicates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7 && [v7 count])
  {
    v9 = [objc_opt_class() compoundPredicateFromPredicateArray:v8];
    self = [(ATXMagicalMomentsPredictionTableEntry *)self initWithPrediction:v6 applicableCompoundPredicate:v9];

    v10 = self;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsPredictionTableEntry initWithPrediction:applicablePredicates:];
    }

    v10 = 0;
  }

  return v10;
}

- (ATXMagicalMomentsPredictionTableEntry)initWithPrediction:(id)a3 applicableCompoundPredicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v15.receiver = self;
    v15.super_class = ATXMagicalMomentsPredictionTableEntry;
    v10 = [(ATXMagicalMomentsPredictionTableEntry *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_prediction, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsPredictionTableEntry initWithPrediction:applicableCompoundPredicate:];
    }

    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXMagicalMomentsPrediction *)self->_prediction predictionIdentifier];
  [(ATXMagicalMomentsPrediction *)self->_prediction confidence];
  v6 = [v3 stringWithFormat:@"Prediction: %@, Confidence: %f, Predicate: %@", v4, v5, self->_compoundPredicate];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      prediction = self->_prediction;
      v7 = [(ATXMagicalMomentsPredictionTableEntry *)v5 prediction];
      if ([(ATXMagicalMomentsPrediction *)prediction isEqual:v7])
      {
        compoundPredicate = self->_compoundPredicate;
        v9 = [(ATXMagicalMomentsPredictionTableEntry *)v5 compoundPredicate];
        v10 = [(NSCompoundPredicate *)compoundPredicate isEqual:v9];
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

+ (id)compoundPredicateFromPredicateArray:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXMagicalMomentsPredictionTableEntry *)a2 compoundPredicateFromPredicateArray:a1];
  }

  v6 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  prediction = self->_prediction;
  v5 = a3;
  [v5 encodeObject:prediction forKey:@"prediction"];
  [v5 encodeObject:self->_compoundPredicate forKey:@"compoundPredicate"];
}

- (ATXMagicalMomentsPredictionTableEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prediction"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compoundPredicate"];

  v7 = [(ATXMagicalMomentsPredictionTableEntry *)self initWithPrediction:v5 applicableCompoundPredicate:v6];
  return v7;
}

+ (void)compoundPredicateFromPredicateArray:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsPredictionTable.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"predicateArray"}];
}

@end