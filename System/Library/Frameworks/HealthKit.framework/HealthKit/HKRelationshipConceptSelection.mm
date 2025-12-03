@interface HKRelationshipConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKRelationshipConceptSelection)init;
- (HKRelationshipConceptSelection)initWithCoder:(id)coder;
- (HKRelationshipConceptSelection)initWithDirection:(unint64_t)direction type:(int64_t)type selection:(id)selection;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRelationshipConceptSelection

- (HKRelationshipConceptSelection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKRelationshipConceptSelection)initWithDirection:(unint64_t)direction type:(int64_t)type selection:(id)selection
{
  selectionCopy = selection;
  if (!selectionCopy)
  {
    [HKRelationshipConceptSelection initWithDirection:a2 type:self selection:?];
  }

  v15.receiver = self;
  v15.super_class = HKRelationshipConceptSelection;
  v10 = [(HKConceptSelection *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_direction = direction;
    v10->_type = type;
    v12 = [selectionCopy copy];
    selection = v11->_selection;
    v11->_selection = v12;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_direction == 1)
  {
    v5 = @"objects";
  }

  else
  {
    v5 = @"subjects";
  }

  return [v3 stringWithFormat:@"<%@: %lld with %@ matching %@>", v4, self->_type, v5, self->_selection];
}

- (HKRelationshipConceptSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"DirectionKey"];
  v6 = [coderCopy decodeIntegerForKey:@"TypeKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SelectionKey"];

  if (v7)
  {
    self = [(HKRelationshipConceptSelection *)self initWithDirection:v5 type:v6 selection:v7];
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
  direction = self->_direction;
  coderCopy = coder;
  [coderCopy encodeInteger:direction forKey:@"DirectionKey"];
  [coderCopy encodeInt64:self->_type forKey:@"TypeKey"];
  [coderCopy encodeObject:self->_selection forKey:@"SelectionKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = HKRelationshipConceptSelection;
  if ([(HKConceptSelection *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    direction = [(HKRelationshipConceptSelection *)self direction];
    if (direction != [v5 direction])
    {
      goto LABEL_12;
    }

    type = [(HKRelationshipConceptSelection *)self type];
    if (type != [v5 type])
    {
      goto LABEL_12;
    }

    selection = [(HKRelationshipConceptSelection *)self selection];
    selection2 = [v5 selection];
    v10 = selection2;
    if (selection == selection2)
    {
    }

    else
    {
      selection3 = [v5 selection];
      if (!selection3)
      {

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v12 = selection3;
      selection4 = [(HKRelationshipConceptSelection *)self selection];
      selection5 = [v5 selection];
      v15 = [selection4 isEqual:selection5];

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v16 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (void)initWithDirection:(uint64_t)a1 type:(uint64_t)a2 selection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRelationshipConceptSelection.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"selection"}];
}

@end