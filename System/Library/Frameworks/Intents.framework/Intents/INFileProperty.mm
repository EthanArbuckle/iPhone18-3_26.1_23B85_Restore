@interface INFileProperty
- (BOOL)isEqual:(id)equal;
- (INFileProperty)initWithCoder:(id)coder;
- (INFileProperty)initWithName:(id)name qualifier:(id)qualifier type:(id)type dateComponentsRange:(id)range person:(id)person value:(id)value quantity:(id)quantity;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INFileProperty

- (id)_dictionaryRepresentation
{
  v25[7] = *MEMORY[0x1E69E9840];
  name = self->_name;
  v23 = name;
  v24[0] = @"name";
  if (!name)
  {
    name = [MEMORY[0x1E695DFB0] null];
  }

  v22 = name;
  v25[0] = name;
  v24[1] = @"qualifier";
  qualifier = self->_qualifier;
  null = qualifier;
  if (!qualifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v25[1] = null;
  v24[2] = @"type";
  type = self->_type;
  null2 = type;
  if (!type)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[2] = null2;
  v24[3] = @"dateComponentsRange";
  dateComponentsRange = self->_dateComponentsRange;
  null3 = dateComponentsRange;
  if (!dateComponentsRange)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null3;
  v25[3] = null3;
  v24[4] = @"person";
  person = self->_person;
  null4 = person;
  if (!person)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null4;
  v24[5] = @"value";
  value = self->_value;
  null5 = value;
  if (!value)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null5;
  v24[6] = @"quantity";
  quantity = self->_quantity;
  null6 = quantity;
  if (!quantity)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (quantity)
  {
    if (value)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (value)
    {
LABEL_17:
      if (person)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  if (person)
  {
LABEL_18:
    if (dateComponentsRange)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (dateComponentsRange)
  {
LABEL_19:
    if (type)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (qualifier)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_29:

  if (!type)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (qualifier)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v23)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INFileProperty;
  v6 = [(INFileProperty *)&v11 description];
  _dictionaryRepresentation = [(INFileProperty *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INFileProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qualifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponentsRange"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity"];

  v12 = [(INFileProperty *)self initWithName:v5 qualifier:v6 type:v7 dateComponentsRange:v8 person:v9 value:v10 quantity:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_qualifier forKey:@"qualifier"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_dateComponentsRange forKey:@"dateComponentsRange"];
  [coderCopy encodeObject:self->_person forKey:@"person"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_quantity forKey:@"quantity"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    v13 = 0;
    if (name == v5[1] || [(NSString *)name isEqual:?])
    {
      qualifier = self->_qualifier;
      if (qualifier == v5[2] || [(NSString *)qualifier isEqual:?])
      {
        type = self->_type;
        if (type == v5[3] || [(NSString *)type isEqual:?])
        {
          dateComponentsRange = self->_dateComponentsRange;
          if (dateComponentsRange == v5[4] || [(INDateComponentsRange *)dateComponentsRange isEqual:?])
          {
            person = self->_person;
            if (person == v5[5] || [(INPerson *)person isEqual:?])
            {
              value = self->_value;
              if (value == v5[6] || [(NSString *)value isEqual:?])
              {
                quantity = self->_quantity;
                if (quantity == v5[7] || [(NSNumber *)quantity isEqual:?])
                {
                  v13 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_qualifier hash]^ v3;
  v5 = [(NSString *)self->_type hash];
  v6 = v4 ^ v5 ^ [(INDateComponentsRange *)self->_dateComponentsRange hash];
  v7 = [(INPerson *)self->_person hash];
  v8 = v7 ^ [(NSString *)self->_value hash];
  return v6 ^ v8 ^ [(NSNumber *)self->_quantity hash];
}

- (INFileProperty)initWithName:(id)name qualifier:(id)qualifier type:(id)type dateComponentsRange:(id)range person:(id)person value:(id)value quantity:(id)quantity
{
  nameCopy = name;
  qualifierCopy = qualifier;
  typeCopy = type;
  rangeCopy = range;
  personCopy = person;
  valueCopy = value;
  quantityCopy = quantity;
  v38.receiver = self;
  v38.super_class = INFileProperty;
  v22 = [(INFileProperty *)&v38 init];
  if (v22)
  {
    v23 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v23;

    v25 = [qualifierCopy copy];
    qualifier = v22->_qualifier;
    v22->_qualifier = v25;

    v27 = [typeCopy copy];
    type = v22->_type;
    v22->_type = v27;

    v29 = [rangeCopy copy];
    dateComponentsRange = v22->_dateComponentsRange;
    v22->_dateComponentsRange = v29;

    v31 = [personCopy copy];
    person = v22->_person;
    v22->_person = v31;

    v33 = [valueCopy copy];
    value = v22->_value;
    v22->_value = v33;

    v35 = [quantityCopy copy];
    quantity = v22->_quantity;
    v22->_quantity = v35;
  }

  return v22;
}

@end