@interface _GCSyntheticControllerDescription
- (BOOL)isEqual:(id)equal;
- (_GCSyntheticControllerDescription)init;
- (_GCSyntheticControllerDescription)initWithControllerIdentifier:(id)identifier persistentIdentifier:(id)persistentIdentifier;
- (id)debugDescription;
@end

@implementation _GCSyntheticControllerDescription

- (_GCSyntheticControllerDescription)initWithControllerIdentifier:(id)identifier persistentIdentifier:(id)persistentIdentifier
{
  v13.receiver = self;
  v13.super_class = _GCSyntheticControllerDescription;
  persistentIdentifierCopy = persistentIdentifier;
  identifierCopy = identifier;
  v7 = [(_GCSyntheticControllerDescription *)&v13 init];
  v8 = [identifierCopy copyWithZone:{0, v13.receiver, v13.super_class}];

  controllerIdentifier = v7->_controllerIdentifier;
  v7->_controllerIdentifier = v8;

  v10 = [persistentIdentifierCopy copy];
  persistentIdentifier = v7->_persistentIdentifier;
  v7->_persistentIdentifier = v10;

  return v7;
}

- (_GCSyntheticControllerDescription)init
{
  [(_GCSyntheticControllerDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_GCSyntheticControllerDescription *)self isEqualToDescription:equalCopy];
  }

  else
  {
    controllerIdentifier = self->_controllerIdentifier;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [(NSCopying *)self->_controllerIdentifier isEqual:equalCopy];
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'>", v5, self, self->_controllerIdentifier];

  return v6;
}

@end