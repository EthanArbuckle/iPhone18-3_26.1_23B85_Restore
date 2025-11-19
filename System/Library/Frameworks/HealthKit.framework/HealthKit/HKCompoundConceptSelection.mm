@interface HKCompoundConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKCompoundConceptSelection)initWithCoder:(id)a3;
- (HKCompoundConceptSelection)initWithSelections:(id)a3 operationType:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCompoundConceptSelection

- (HKCompoundConceptSelection)initWithSelections:(id)a3 operationType:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
  }

  if ([v7 count])
  {
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
    if (a4)
    {
      goto LABEL_7;
    }
  }

  if ([v7 count] != 1)
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
  }

LABEL_7:
  v12.receiver = self;
  v12.super_class = HKCompoundConceptSelection;
  v8 = [(HKConceptSelection *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    selections = v8->_selections;
    v8->_selections = v9;

    v8->_operationType = a4;
  }

  return v8;
}

- (id)description
{
  operationType = self->_operationType;
  v4 = MEMORY[0x1E696AEC0];
  if (operationType)
  {
    v5 = &stru_1F05FF230;
  }

  else
  {
    v5 = @"NOT ";
  }

  if (operationType)
  {
    v6 = self->_operationType;
  }

  else
  {
    v6 = 2;
  }

  v7 = HKStringFromCompoundOperatorType(v6);
  v8 = [v4 stringWithFormat:@" %@ ", v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = [(NSArray *)self->_selections componentsJoinedByString:v8];
  v12 = [v9 stringWithFormat:@"<%@: %@(%@)>", v10, v5, v11];

  return v12;
}

- (HKCompoundConceptSelection)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"SelectionsKey"];
  v9 = [v5 decodeIntegerForKey:@"OperationTypeKey"];

  if (v8)
  {
    self = [(HKCompoundConceptSelection *)self initWithSelections:v8 operationType:v9];
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
  selections = self->_selections;
  v5 = a3;
  [v5 encodeObject:selections forKey:@"SelectionsKey"];
  [v5 encodeInteger:self->_operationType forKey:@"OperationTypeKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKCompoundConceptSelection;
  if ([(HKConceptSelection *)&v17 isEqual:v4])
  {
    v5 = v4;
    v6 = [(HKCompoundConceptSelection *)self operationType];
    if (v6 == [v5 operationType])
    {
      v7 = [(HKCompoundConceptSelection *)self selections];
      v8 = [v5 selections];
      v9 = v8;
      if (v7 == v8)
      {

        goto LABEL_9;
      }

      v10 = [v5 selections];
      if (v10)
      {
        v11 = v10;
        v12 = [(HKCompoundConceptSelection *)self selections];
        v13 = [v5 selections];
        v14 = [v12 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_9:
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)initWithSelections:(uint64_t)a1 operationType:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCompoundConceptSelection.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"selections"}];
}

- (void)initWithSelections:(uint64_t)a1 operationType:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCompoundConceptSelection.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"selections.count"}];
}

- (void)initWithSelections:(uint64_t)a1 operationType:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCompoundConceptSelection.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"selections.count == 1"}];
}

@end