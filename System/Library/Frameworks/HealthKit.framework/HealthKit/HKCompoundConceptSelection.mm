@interface HKCompoundConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKCompoundConceptSelection)initWithCoder:(id)coder;
- (HKCompoundConceptSelection)initWithSelections:(id)selections operationType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCompoundConceptSelection

- (HKCompoundConceptSelection)initWithSelections:(id)selections operationType:(unint64_t)type
{
  selectionsCopy = selections;
  if (!selectionsCopy)
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
  }

  if ([selectionsCopy count])
  {
    if (type)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
    if (type)
    {
      goto LABEL_7;
    }
  }

  if ([selectionsCopy count] != 1)
  {
    [HKCompoundConceptSelection initWithSelections:a2 operationType:self];
  }

LABEL_7:
  v12.receiver = self;
  v12.super_class = HKCompoundConceptSelection;
  v8 = [(HKConceptSelection *)&v12 init];
  if (v8)
  {
    v9 = [selectionsCopy copy];
    selections = v8->_selections;
    v8->_selections = v9;

    v8->_operationType = type;
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

- (HKCompoundConceptSelection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SelectionsKey"];
  v9 = [coderCopy decodeIntegerForKey:@"OperationTypeKey"];

  if (v8)
  {
    self = [(HKCompoundConceptSelection *)self initWithSelections:v8 operationType:v9];
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
  selections = self->_selections;
  coderCopy = coder;
  [coderCopy encodeObject:selections forKey:@"SelectionsKey"];
  [coderCopy encodeInteger:self->_operationType forKey:@"OperationTypeKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = HKCompoundConceptSelection;
  if ([(HKConceptSelection *)&v17 isEqual:equalCopy])
  {
    v5 = equalCopy;
    operationType = [(HKCompoundConceptSelection *)self operationType];
    if (operationType == [v5 operationType])
    {
      selections = [(HKCompoundConceptSelection *)self selections];
      selections2 = [v5 selections];
      v9 = selections2;
      if (selections == selections2)
      {

        goto LABEL_9;
      }

      selections3 = [v5 selections];
      if (selections3)
      {
        v11 = selections3;
        selections4 = [(HKCompoundConceptSelection *)self selections];
        selections5 = [v5 selections];
        v14 = [selections4 isEqual:selections5];

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