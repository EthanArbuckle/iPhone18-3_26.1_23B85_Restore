@interface _HKObjectTypeAnchor
- (BOOL)isEqual:(id)equal;
- (_HKObjectTypeAnchor)initWithAnchors:(id)anchors databaseIdentifier:(id)identifier;
- (_HKObjectTypeAnchor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKObjectTypeAnchor

- (_HKObjectTypeAnchor)initWithAnchors:(id)anchors databaseIdentifier:(id)identifier
{
  anchorsCopy = anchors;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _HKObjectTypeAnchor;
  v8 = [(_HKObjectTypeAnchor *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    databaseIdentifier = v8->_databaseIdentifier;
    v8->_databaseIdentifier = v9;

    v11 = [anchorsCopy copy];
    anchors = v8->_anchors;
    v8->_anchors = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_databaseIdentifier isEqual:equalCopy[1]])
  {
    anchors = self->_anchors;
    anchors = [equalCopy anchors];
    v7 = [(NSDictionary *)anchors isEqualToDictionary:anchors];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_HKObjectTypeAnchor)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dbi"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
    v8 = [v6 setWithArray:{v7, v13, v14}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"anchors"];

    if (v9)
    {
      self = [(_HKObjectTypeAnchor *)self initWithAnchors:v9 databaseIdentifier:v5];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  databaseIdentifier = self->_databaseIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:databaseIdentifier forKey:@"dbi"];
  [coderCopy encodeObject:self->_anchors forKey:@"anchors"];
}

@end