@interface ARObjectAnchor
- (ARObjectAnchor)initWithAnchor:(id)a3;
- (ARObjectAnchor)initWithCoder:(id)a3;
- (ARObjectAnchor)initWithReferenceObject:(double)a3 transform:(double)a4;
- (id)description;
- (id)name;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARObjectAnchor

- (ARObjectAnchor)initWithReferenceObject:(double)a3 transform:(double)a4
{
  v9 = a7;
  v10 = [v9 identifier];
  v17.receiver = a1;
  v17.super_class = ARObjectAnchor;
  v11 = [(ARAnchor *)&v17 initWithIdentifier:v10 transform:a2, a3, a4, a5];

  if (v11)
  {
    objc_storeStrong(&v11->_referenceObject, a7);
  }

  return v11;
}

- (id)name
{
  v2 = [(ARObjectAnchor *)self referenceObject];
  v3 = [v2 name];

  return v3;
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

    v7 = [(ARObjectAnchor *)self referenceObject];
    v8 = [v7 description];
    [v6 appendFormat:@" reference object= %@", v8];

    [v6 appendFormat:@">"];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (ARObjectAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARObjectAnchor;
  v5 = [(ARAnchor *)&v9 initWithAnchor:v4];
  if (v5)
  {
    v6 = [v4 referenceObject];
    referenceObject = v5->_referenceObject;
    v5->_referenceObject = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ARObjectAnchor;
  v4 = a3;
  [(ARAnchor *)&v6 encodeWithCoder:v4];
  v5 = [(ARObjectAnchor *)self referenceObject:v6.receiver];
  [v4 encodeObject:v5 forKey:@"referenceObject"];
}

- (ARObjectAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARObjectAnchor;
  v5 = [(ARAnchor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceObject"];
    referenceObject = v5->_referenceObject;
    v5->_referenceObject = v6;
  }

  return v5;
}

@end