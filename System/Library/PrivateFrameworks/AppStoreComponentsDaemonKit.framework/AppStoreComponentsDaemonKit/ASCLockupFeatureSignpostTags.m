@interface ASCLockupFeatureSignpostTags
- (ASCLockupFeatureSignpostTags)initWithCoder:(id)a3;
- (ASCLockupFeatureSignpostTags)initWithSignpostTags:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureSignpostTags

- (ASCLockupFeatureSignpostTags)initWithSignpostTags:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureSignpostTags;
  v5 = [(ASCLockupFeatureSignpostTags *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    signpostTags = v5->_signpostTags;
    v5->_signpostTags = v6;
  }

  return v5;
}

- (ASCLockupFeatureSignpostTags)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"signpostTags"];

  if (v9)
  {
    self = [(ASCLockupFeatureSignpostTags *)self initWithSignpostTags:v9];
    v10 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCLockupFeatureSignpostTags initWithCoder:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [v4 encodeObject:v5 forKey:@"signpostTags"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCLockupFeatureSignpostTags *)self signpostTags];
    v9 = [v7 signpostTags];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];
    }

    else
    {
      v11 = v8 == v9;
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
  v4 = [(ASCLockupFeatureSignpostTags *)self signpostTags];
  [(ASCDescriber *)v3 addObject:v4 withName:@"signpostTags"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end