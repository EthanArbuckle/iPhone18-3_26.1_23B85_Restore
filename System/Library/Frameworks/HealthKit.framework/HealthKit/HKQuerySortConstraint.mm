@interface HKQuerySortConstraint
+ (id)sortConstraintByRelaxingSortConstraint:(id)constraint error:(id *)error;
+ (id)sortConstraintWithSortDescriptor:(id)descriptor predicate:(id)predicate;
- (BOOL)canRelax;
- (BOOL)isEqual:(id)equal;
- (HKQuerySortConstraint)init;
- (HKQuerySortConstraint)initWithCoder:(id)coder;
- (HKQuerySortConstraint)initWithSortDescriptor:(id)descriptor predicate:(id)predicate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuerySortConstraint

+ (id)sortConstraintWithSortDescriptor:(id)descriptor predicate:(id)predicate
{
  descriptorCopy = descriptor;
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v9 = [descriptorCopy key];
    leftExpression = [predicateCopy leftExpression];
    keyPath = [leftExpression keyPath];
    v12 = [v9 isEqualToString:keyPath];

    if ((v12 & 1) == 0)
    {
      [HKQuerySortConstraint sortConstraintWithSortDescriptor:a2 predicate:self];
    }

    if ([predicateCopy predicateOperatorType] != 4 && objc_msgSend(predicateCopy, "predicateOperatorType") != 2 && objc_msgSend(predicateCopy, "predicateOperatorType"))
    {
      [HKQuerySortConstraint sortConstraintWithSortDescriptor:a2 predicate:self];
    }
  }

  v13 = [[self alloc] initWithSortDescriptor:descriptorCopy predicate:predicateCopy];

  return v13;
}

+ (id)sortConstraintByRelaxingSortConstraint:(id)constraint error:(id *)error
{
  constraintCopy = constraint;
  predicate = [constraintCopy predicate];

  if (predicate)
  {
    predicate2 = [constraintCopy predicate];
    predicateOperatorType = [predicate2 predicateOperatorType];

    if (predicateOperatorType == 4)
    {
      v9 = MEMORY[0x1E696AB18];
      sortDescriptor = [constraintCopy sortDescriptor];
      v11 = [sortDescriptor key];
      predicate3 = [constraintCopy predicate];
      rightExpression = [predicate3 rightExpression];
      constantValue = [rightExpression constantValue];
      sortDescriptor2 = [constraintCopy sortDescriptor];
      sortDescriptor4 = [v9 hk_inequalityPredicateWithKey:v11 value:constantValue ascending:{objc_msgSend(sortDescriptor2, "ascending")}];

      sortDescriptor3 = [constraintCopy sortDescriptor];
      v18 = [HKQuerySortConstraint sortConstraintWithSortDescriptor:sortDescriptor3 predicate:sortDescriptor4];
    }

    else
    {
      sortDescriptor4 = [constraintCopy sortDescriptor];
      v18 = [HKQuerySortConstraint sortConstraintWithSortDescriptor:sortDescriptor4 predicate:0];
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Unable to relax sort constraint"];
    v18 = 0;
  }

  return v18;
}

- (BOOL)canRelax
{
  predicate = [(HKQuerySortConstraint *)self predicate];
  v3 = predicate != 0;

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

- (HKQuerySortConstraint)initWithSortDescriptor:(id)descriptor predicate:(id)predicate
{
  descriptorCopy = descriptor;
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = HKQuerySortConstraint;
  v8 = [(HKQuerySortConstraint *)&v14 init];
  if (v8)
  {
    v9 = [descriptorCopy copy];
    sortDescriptor = v8->_sortDescriptor;
    v8->_sortDescriptor = v9;

    v11 = [predicateCopy copy];
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
  sortDescriptor = [(HKQuerySortConstraint *)self sortDescriptor];
  v4 = [sortDescriptor hash];
  predicate = [(HKQuerySortConstraint *)self predicate];
  v6 = [predicate hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sortDescriptor = self->_sortDescriptor;
      sortDescriptor = [(HKQuerySortConstraint *)v5 sortDescriptor];
      v8 = sortDescriptor;
      if (sortDescriptor == sortDescriptor)
      {
      }

      else
      {
        sortDescriptor2 = [(HKQuerySortConstraint *)v5 sortDescriptor];
        if (!sortDescriptor2)
        {
          goto LABEL_14;
        }

        v10 = sortDescriptor2;
        v11 = self->_sortDescriptor;
        sortDescriptor3 = [(HKQuerySortConstraint *)v5 sortDescriptor];
        LODWORD(v11) = [(NSSortDescriptor *)v11 isEqual:sortDescriptor3];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      predicate = self->_predicate;
      predicate = [(HKQuerySortConstraint *)v5 predicate];
      v8 = predicate;
      if (predicate == predicate)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      predicate2 = [(HKQuerySortConstraint *)v5 predicate];
      if (predicate2)
      {
        v17 = predicate2;
        v18 = self->_predicate;
        predicate3 = [(HKQuerySortConstraint *)v5 predicate];
        LOBYTE(v18) = [(NSComparisonPredicate *)v18 isEqual:predicate3];

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

- (HKQuerySortConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SortDescriptor"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Predicate"];
    self = [(HKQuerySortConstraint *)self initWithSortDescriptor:v5 predicate:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sortDescriptor = self->_sortDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:sortDescriptor forKey:@"SortDescriptor"];
  [coderCopy encodeObject:self->_predicate forKey:@"Predicate"];
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