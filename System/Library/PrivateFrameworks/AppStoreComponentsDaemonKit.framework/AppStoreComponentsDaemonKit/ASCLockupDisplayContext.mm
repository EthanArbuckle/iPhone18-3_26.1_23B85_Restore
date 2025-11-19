@interface ASCLockupDisplayContext
- (ASCLockupDisplayContext)initWithCoder:(id)a3;
- (ASCLockupDisplayContext)initWithHeadingKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupDisplayContext

- (ASCLockupDisplayContext)initWithHeadingKind:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASCLockupDisplayContext;
  v6 = [(ASCLockupDisplayContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headingKind, a3);
  }

  return v7;
}

- (ASCLockupDisplayContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjects:{objc_opt_class(), 0}];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"headingKind"];

  v8 = [(ASCLockupDisplayContext *)self initWithHeadingKind:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupDisplayContext *)self headingKind];
  [v4 encodeObject:v5 forKey:@"headingKind"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupDisplayContext *)self headingKind];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      v9 = [(ASCLockupDisplayContext *)self headingKind];
      v10 = [(ASCLockupDisplayContext *)v8 headingKind];
      v11 = v10;
      if (v9 && v10)
      {
        v7 = [v9 isEqual:v10];
      }

      else
      {
        v7 = v9 == v10;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupDisplayContext *)self headingKind];
  [(ASCDescriber *)v3 addObject:v4 withName:@"headingKind"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end