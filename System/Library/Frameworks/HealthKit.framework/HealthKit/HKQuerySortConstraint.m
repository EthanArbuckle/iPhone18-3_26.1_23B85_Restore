@interface HKQuerySortConstraint
+ (id)sortConstraintByRelaxingSortConstraint:(id)a3 error:(id *)a4;
+ (id)sortConstraintWithSortDescriptor:(id)a3 predicate:(id)a4;
- (BOOL)canRelax;
- (BOOL)isEqual:(id)a3;
- (HKQuerySortConstraint)init;
- (HKQuerySortConstraint)initWithCoder:(id)a3;
- (HKQuerySortConstraint)initWithSortDescriptor:(id)a3 predicate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuerySortConstraint

+ (id)sortConstraintWithSortDescriptor:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [v7 key];
    v10 = [v8 leftExpression];
    v11 = [v10 keyPath];
    v12 = [v9 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      [HKQuerySortConstraint sortConstraintWithSortDescriptor:a2 predicate:a1];
    }

    if ([v8 predicateOperatorType] != 4 && objc_msgSend(v8, "predicateOperatorType") != 2 && objc_msgSend(v8, "predicateOperatorType"))
    {
      [HKQuerySortConstraint sortConstraintWithSortDescriptor:a2 predicate:a1];
    }
  }

  v13 = [[a1 alloc] initWithSortDescriptor:v7 predicate:v8];

  return v13;
}

+ (id)sortConstraintByRelaxingSortConstraint:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 predicate];

  if (v6)
  {
    v7 = [v5 predicate];
    v8 = [v7 predicateOperatorType];

    if (v8 == 4)
    {
      v9 = MEMORY[0x1E696AB18];
      v10 = [v5 sortDescriptor];
      v11 = [v10 key];
      v12 = [v5 predicate];
      v13 = [v12 rightExpression];
      v14 = [v13 constantValue];
      v15 = [v5 sortDescriptor];
      v16 = [v9 hk_inequalityPredicateWithKey:v11 value:v14 ascending:{objc_msgSend(v15, "ascending")}];

      v17 = [v5 sortDescriptor];
      v18 = [HKQuerySortConstraint sortConstraintWithSortDescriptor:v17 predicate:v16];
    }

    else
    {
      v16 = [v5 sortDescriptor];
      v18 = [HKQuerySortConstraint sortConstraintWithSortDescriptor:v16 predicate:0];
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:@"Unable to relax sort constraint"];
    v18 = 0;
  }

  return v18;
}

- (BOOL)canRelax
{
  v2 = [(HKQuerySortConstraint *)self predicate];
  v3 = v2 != 0;

  return v3;
}

- (HKQuerySortConstraint)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKQuerySortConstraint)initWithSortDescriptor:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKQuerySortConstraint;
  v8 = [(HKQuerySortConstraint *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sortDescriptor = v8->_sortDescriptor;
    v8->_sortDescriptor = v9;

    v11 = [v7 copy];
    predicate = v8->_predicate;
    v8->_predicate = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p sortDescriptor = %@, predicate = %@>", v5, self, self->_sortDescriptor, self->_predicate];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKQuerySortConstraint *)self sortDescriptor];
  v4 = [v3 hash];
  v5 = [(HKQuerySortConstraint *)self predicate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sortDescriptor = self->_sortDescriptor;
      v7 = [(HKQuerySortConstraint *)v5 sortDescriptor];
      v8 = v7;
      if (sortDescriptor == v7)
      {
      }

      else
      {
        v9 = [(HKQuerySortConstraint *)v5 sortDescriptor];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = self->_sortDescriptor;
        v12 = [(HKQuerySortConstraint *)v5 sortDescriptor];
        LODWORD(v11) = [(NSSortDescriptor *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      predicate = self->_predicate;
      v15 = [(HKQuerySortConstraint *)v5 predicate];
      v8 = v15;
      if (predicate == v15)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      v16 = [(HKQuerySortConstraint *)v5 predicate];
      if (v16)
      {
        v17 = v16;
        v18 = self->_predicate;
        v19 = [(HKQuerySortConstraint *)v5 predicate];
        LOBYTE(v18) = [(NSComparisonPredicate *)v18 isEqual:v19];

        if (v18)
        {
          goto LABEL_17;
        }

LABEL_15:
        v13 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (HKQuerySortConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SortDescriptor"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Predicate"];
    self = [(HKQuerySortConstraint *)self initWithSortDescriptor:v5 predicate:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  sortDescriptor = self->_sortDescriptor;
  v5 = a3;
  [v5 encodeObject:sortDescriptor forKey:@"SortDescriptor"];
  [v5 encodeObject:self->_predicate forKey:@"Predicate"];
}

+ (void)sortConstraintWithSortDescriptor:(uint64_t)a1 predicate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQuerySortConstraint.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[sortDescriptor.key isEqualToString:predicate.leftExpression.keyPath]"}];
}

+ (void)sortConstraintWithSortDescriptor:(uint64_t)a1 predicate:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQuerySortConstraint.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"predicate.predicateOperatorType == NSEqualToPredicateOperatorType || predicate.predicateOperatorType == NSGreaterThanPredicateOperatorType || predicate.predicateOperatorType == NSLessThanPredicateOperatorType"}];
}

@end