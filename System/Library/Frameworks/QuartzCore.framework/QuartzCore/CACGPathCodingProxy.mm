@interface CACGPathCodingProxy
- (CACGPathCodingProxy)initWithCoder:(id)a3;
- (CACGPathCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CACGPathCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = CACGPathCodingProxy;
  [(CACGPathCodingProxy *)&v3 dealloc];
}

- (CACGPathCodingProxy)initWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CACGPathCodingProxy;
  v4 = [(CACGPathCodingProxy *)&v12 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"LKCGPathSegments"}];
    if (v5)
    {
      v6 = v5;
      Mutable = CGPathCreateMutable();
      v8 = [v6 count];
      if (v8)
      {
        v9 = v8;
        for (i = 0; i != v9; ++i)
        {
          [objc_msgSend(v6 objectAtIndex:{i), "addToCGPath:", Mutable}];
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    v4->_path = Mutable;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  CGPathApply(self->_path, v5, encodePathSegment);
  [a3 encodeObject:v5 forKey:@"LKCGPathSegments"];
}

- (CACGPathCodingProxy)initWithObject:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CACGPathCodingProxy;
  v4 = [(CACGPathCodingProxy *)&v6 init];
  if (v4)
  {
    v4->_path = MEMORY[0x1865E8EB0](a3);
  }

  return v4;
}

@end