@interface HKRelationshipConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKRelationshipConceptSelection)init;
- (HKRelationshipConceptSelection)initWithCoder:(id)a3;
- (HKRelationshipConceptSelection)initWithDirection:(unint64_t)a3 type:(int64_t)a4 selection:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (HKRelationshipConceptSelection)initWithDirection:(unint64_t)a3 type:(int64_t)a4 selection:(id)a5
{
  v9 = a5;
  if (!v9)
  {
    [HKRelationshipConceptSelection initWithDirection:a2 type:self selection:?];
  }

  v15.receiver = self;
  v15.super_class = HKRelationshipConceptSelection;
  v10 = [(HKConceptSelection *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_direction = a3;
    v10->_type = a4;
    v12 = [v9 copy];
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

- (HKRelationshipConceptSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"DirectionKey"];
  v6 = [v4 decodeIntegerForKey:@"TypeKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SelectionKey"];

  if (v7)
  {
    self = [(HKRelationshipConceptSelection *)self initWithDirection:v5 type:v6 selection:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  direction = self->_direction;
  v5 = a3;
  [v5 encodeInteger:direction forKey:@"DirectionKey"];
  [v5 encodeInt64:self->_type forKey:@"TypeKey"];
  [v5 encodeObject:self->_selection forKey:@"SelectionKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKRelationshipConceptSelection;
  if ([(HKConceptSelection *)&v18 isEqual:v4])
  {
    v5 = v4;
    v6 = [(HKRelationshipConceptSelection *)self direction];
    if (v6 != [v5 direction])
    {
      goto LABEL_12;
    }

    v7 = [(HKRelationshipConceptSelection *)self type];
    if (v7 != [v5 type])
    {
      goto LABEL_12;
    }

    v8 = [(HKRelationshipConceptSelection *)self selection];
    v9 = [v5 selection];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [v5 selection];
      if (!v11)
      {

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [(HKRelationshipConceptSelection *)self selection];
      v14 = [v5 selection];
      v15 = [v13 isEqual:v14];

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