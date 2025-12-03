@interface ASCLockupFeatureDeveloperName
- (ASCLockupFeatureDeveloperName)initWithCoder:(id)coder;
- (ASCLockupFeatureDeveloperName)initWithDeveloperName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureDeveloperName

- (ASCLockupFeatureDeveloperName)initWithDeveloperName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureDeveloperName;
  v5 = [(ASCLockupFeatureDeveloperName *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    developerName = v5->_developerName;
    v5->_developerName = v6;
  }

  return v5;
}

- (ASCLockupFeatureDeveloperName)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerName"];

  v6 = [(ASCLockupFeatureDeveloperName *)self initWithDeveloperName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  developerName = [(ASCLockupFeatureDeveloperName *)self developerName];
  [coderCopy encodeObject:developerName forKey:@"developerName"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  developerName = [(ASCLockupFeatureDeveloperName *)self developerName];
  [(ASCHasher *)v3 combineObject:developerName];

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
      developerName = [(ASCLockupFeatureDeveloperName *)self developerName];
      developerName2 = [(ASCLockupFeatureDeveloperName *)v8 developerName];
      v11 = developerName2;
      if (developerName && developerName2)
      {
        v7 = [developerName isEqual:developerName2];
      }

      else
      {
        v7 = developerName == developerName2;
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
  developerName = [(ASCLockupFeatureDeveloperName *)self developerName];
  [(ASCDescriber *)v3 addObject:developerName withName:@"developerName"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end