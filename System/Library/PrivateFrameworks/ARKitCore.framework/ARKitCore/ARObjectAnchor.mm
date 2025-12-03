@interface ARObjectAnchor
- (ARObjectAnchor)initWithAnchor:(id)anchor;
- (ARObjectAnchor)initWithCoder:(id)coder;
- (ARObjectAnchor)initWithReferenceObject:(double)object transform:(double)transform;
- (id)description;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARObjectAnchor

- (ARObjectAnchor)initWithReferenceObject:(double)object transform:(double)transform
{
  v9 = a7;
  identifier = [v9 identifier];
  v17.receiver = self;
  v17.super_class = ARObjectAnchor;
  v11 = [(ARAnchor *)&v17 initWithIdentifier:identifier transform:a2, object, transform, a5];

  if (v11)
  {
    objc_storeStrong(&v11->_referenceObject, a7);
  }

  return v11;
}

- (id)name
{
  referenceObject = [(ARObjectAnchor *)self referenceObject];
  name = [referenceObject name];

  return name;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = ARObjectAnchor;
  v3 = [(ARAnchor *)&v10 description];
  if ([v3 length])
  {
    v4 = MEMORY[0x1E696AD60];
    v5 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
    v6 = [v4 stringWithString:v5];

    referenceObject = [(ARObjectAnchor *)self referenceObject];
    v8 = [referenceObject description];
    [v6 appendFormat:@" reference object= %@", v8];

    [v6 appendFormat:@">"];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (ARObjectAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v9.receiver = self;
  v9.super_class = ARObjectAnchor;
  v5 = [(ARAnchor *)&v9 initWithAnchor:anchorCopy];
  if (v5)
  {
    referenceObject = [anchorCopy referenceObject];
    referenceObject = v5->_referenceObject;
    v5->_referenceObject = referenceObject;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARObjectAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ARObjectAnchor *)self referenceObject:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"referenceObject"];
}

- (ARObjectAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARObjectAnchor;
  v5 = [(ARAnchor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceObject"];
    referenceObject = v5->_referenceObject;
    v5->_referenceObject = v6;
  }

  return v5;
}

@end