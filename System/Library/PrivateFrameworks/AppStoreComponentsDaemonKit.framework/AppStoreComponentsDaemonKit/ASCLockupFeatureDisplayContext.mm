@interface ASCLockupFeatureDisplayContext
- (ASCLockupFeatureDisplayContext)initWithCoder:(id)coder;
- (ASCLockupFeatureDisplayContext)initWithDisplayContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureDisplayContext

- (ASCLockupFeatureDisplayContext)initWithDisplayContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureDisplayContext;
  v5 = [(ASCLockupFeatureDisplayContext *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    displayContext = v5->_displayContext;
    v5->_displayContext = v6;
  }

  return v5;
}

- (ASCLockupFeatureDisplayContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayContext"];

  v6 = [(ASCLockupFeatureDisplayContext *)self initWithDisplayContext:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayContext = [(ASCLockupFeatureDisplayContext *)self displayContext];
  [coderCopy encodeObject:displayContext forKey:@"displayContext"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  displayContext = [(ASCLockupFeatureDisplayContext *)self displayContext];
  [(ASCHasher *)v3 combineObject:displayContext];

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
      displayContext = [(ASCLockupFeatureDisplayContext *)self displayContext];
      displayContext2 = [(ASCLockupFeatureDisplayContext *)v8 displayContext];
      v11 = displayContext2;
      if (displayContext && displayContext2)
      {
        v7 = [displayContext isEqual:displayContext2];
      }

      else
      {
        v7 = displayContext == displayContext2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  displayContext = [(ASCLockupFeatureDisplayContext *)self displayContext];
  [(ASCDescriber *)v3 addObject:displayContext withName:@"displayContext"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end