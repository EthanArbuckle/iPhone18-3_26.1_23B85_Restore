@interface _HKObjectTypeAnchor
- (BOOL)isEqual:(id)a3;
- (_HKObjectTypeAnchor)initWithAnchors:(id)a3 databaseIdentifier:(id)a4;
- (_HKObjectTypeAnchor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKObjectTypeAnchor

- (_HKObjectTypeAnchor)initWithAnchors:(id)a3 databaseIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _HKObjectTypeAnchor;
  v8 = [(_HKObjectTypeAnchor *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    databaseIdentifier = v8->_databaseIdentifier;
    v8->_databaseIdentifier = v9;

    v11 = [v6 copy];
    anchors = v8->_anchors;
    v8->_anchors = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_databaseIdentifier isEqual:v4[1]])
  {
    anchors = self->_anchors;
    v6 = [v4 anchors];
    v7 = [(NSDictionary *)anchors isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_HKObjectTypeAnchor)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dbi"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
    v8 = [v6 setWithArray:{v7, v13, v14}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"anchors"];

    if (v9)
    {
      self = [(_HKObjectTypeAnchor *)self initWithAnchors:v9 databaseIdentifier:v5];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  databaseIdentifier = self->_databaseIdentifier;
  v5 = a3;
  [v5 encodeObject:databaseIdentifier forKey:@"dbi"];
  [v5 encodeObject:self->_anchors forKey:@"anchors"];
}

@end