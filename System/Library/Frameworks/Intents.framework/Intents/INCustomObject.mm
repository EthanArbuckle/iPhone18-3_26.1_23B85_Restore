@interface INCustomObject
- (BOOL)isEqual:(id)equal;
- (INCustomObject)initWithCoder:(id)coder;
- (INCustomObject)initWithIntent:(id)intent parameterName:(id)name reference:(id)reference;
- (INCustomObject)initWithObject:(id)object codableDescription:(id)description;
- (id)_initWithCodableDescription:(id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCustomObject

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCustomObject;
  coderCopy = coder;
  [(INObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_backingStore forKey:{@"_backingStore", v5.receiver, v5.super_class}];
}

- (INCustomObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INCustomObject;
  v5 = [(INObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];
    backingStore = v5->_backingStore;
    v5->_backingStore = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = INCustomObject;
  if ([(INObject *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    backingStore = self->_backingStore;
    if (!backingStore)
    {
      _backingStore = [equalCopy _backingStore];

      if (!_backingStore)
      {
        v8 = 1;
        goto LABEL_8;
      }

      backingStore = self->_backingStore;
    }

    _backingStore2 = [equalCopy _backingStore];
    v8 = [(INCodable *)backingStore isEqual:_backingStore2];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = INCustomObject;
  v3 = [(INObject *)&v5 hash];
  return [(INCodable *)self->_backingStore hash]^ v3;
}

- (INCustomObject)initWithIntent:(id)intent parameterName:(id)name reference:(id)reference
{
  nameCopy = name;
  intentCopy = intent;
  v9 = [[INObject alloc] initWithIdentifier:0 displayString:&stru_1F01E0850];
  _codableDescription = [intentCopy _codableDescription];

  v11 = [_codableDescription attributeByName:nameCopy];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  codableDescription = [v13 codableDescription];

  v15 = [(INCustomObject *)self initWithObject:v9 codableDescription:codableDescription];
  return v15;
}

- (INCustomObject)initWithObject:(id)object codableDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  identifier = [objectCopy identifier];
  displayString = [objectCopy displayString];
  pronunciationHint = [objectCopy pronunciationHint];
  v17.receiver = self;
  v17.super_class = INCustomObject;
  v11 = [(INObject *)&v17 initWithIdentifier:identifier displayString:displayString pronunciationHint:pronunciationHint];

  if (v11)
  {
    v12 = [[INCodable alloc] initWithCodableDescription:descriptionCopy data:0];
    backingStore = v11->_backingStore;
    v11->_backingStore = v12;

    subtitleString = [objectCopy subtitleString];
    [(INObject *)v11 setSubtitleString:subtitleString];

    displayImage = [objectCopy displayImage];
    [(INObject *)v11 setDisplayImage:displayImage];
  }

  return v11;
}

- (id)_initWithCodableDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = INCustomObject;
  v5 = [(INObject *)&v9 initWithIdentifier:0 displayString:&stru_1F01E0850];
  if (v5)
  {
    v6 = [[INCodable alloc] initWithCodableDescription:descriptionCopy data:0];
    backingStore = v5->_backingStore;
    v5->_backingStore = v6;
  }

  return v5;
}

@end