@interface ASCLockupFeatureSignpostTags
- (ASCLockupFeatureSignpostTags)initWithCoder:(id)coder;
- (ASCLockupFeatureSignpostTags)initWithSignpostTags:(id)tags;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureSignpostTags

- (ASCLockupFeatureSignpostTags)initWithSignpostTags:(id)tags
{
  tagsCopy = tags;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureSignpostTags;
  v5 = [(ASCLockupFeatureSignpostTags *)&v9 init];
  if (v5)
  {
    v6 = [tagsCopy copy];
    signpostTags = v5->_signpostTags;
    v5->_signpostTags = v6;
  }

  return v5;
}

- (ASCLockupFeatureSignpostTags)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"signpostTags"];

  if (v9)
  {
    self = [(ASCLockupFeatureSignpostTags *)self initWithSignpostTags:v9];
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCLockupFeatureSignpostTags initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signpostTags = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [coderCopy encodeObject:signpostTags forKey:@"signpostTags"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  signpostTags = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [(ASCHasher *)v3 combineObject:signpostTags];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v7 = v6;

  if (v7)
  {
    signpostTags = [(ASCLockupFeatureSignpostTags *)self signpostTags];
    signpostTags2 = [v7 signpostTags];
    v10 = signpostTags2;
    if (signpostTags && signpostTags2)
    {
      v11 = [signpostTags isEqual:signpostTags2];
    }

    else
    {
      v11 = signpostTags == signpostTags2;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  signpostTags = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [(ASCDescriber *)v3 addObject:signpostTags withName:@"signpostTags"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end