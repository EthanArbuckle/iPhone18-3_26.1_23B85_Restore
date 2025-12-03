@interface ASCLockupDisplayContext
- (ASCLockupDisplayContext)initWithCoder:(id)coder;
- (ASCLockupDisplayContext)initWithHeadingKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupDisplayContext

- (ASCLockupDisplayContext)initWithHeadingKind:(id)kind
{
  kindCopy = kind;
  v9.receiver = self;
  v9.super_class = ASCLockupDisplayContext;
  v6 = [(ASCLockupDisplayContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headingKind, kind);
  }

  return v7;
}

- (ASCLockupDisplayContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [[v4 alloc] initWithObjects:{objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"headingKind"];

  v8 = [(ASCLockupDisplayContext *)self initWithHeadingKind:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  headingKind = [(ASCLockupDisplayContext *)self headingKind];
  [coderCopy encodeObject:headingKind forKey:@"headingKind"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  headingKind = [(ASCLockupDisplayContext *)self headingKind];
  [(ASCHasher *)v3 combineObject:headingKind];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
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
      headingKind = [(ASCLockupDisplayContext *)self headingKind];
      headingKind2 = [(ASCLockupDisplayContext *)v8 headingKind];
      v11 = headingKind2;
      if (headingKind && headingKind2)
      {
        v7 = [headingKind isEqual:headingKind2];
      }

      else
      {
        v7 = headingKind == headingKind2;
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
  headingKind = [(ASCLockupDisplayContext *)self headingKind];
  [(ASCDescriber *)v3 addObject:headingKind withName:@"headingKind"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end