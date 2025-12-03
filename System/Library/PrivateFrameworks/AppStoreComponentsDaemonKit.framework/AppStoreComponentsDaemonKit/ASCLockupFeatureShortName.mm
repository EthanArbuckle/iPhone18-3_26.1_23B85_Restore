@interface ASCLockupFeatureShortName
- (ASCLockupFeatureShortName)initWithCoder:(id)coder;
- (ASCLockupFeatureShortName)initWithShortName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureShortName

- (ASCLockupFeatureShortName)initWithShortName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureShortName;
  v5 = [(ASCLockupFeatureShortName *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    shortName = v5->_shortName;
    v5->_shortName = v6;
  }

  return v5;
}

- (ASCLockupFeatureShortName)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortName"];

  v6 = [(ASCLockupFeatureShortName *)self initWithShortName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shortName = [(ASCLockupFeatureShortName *)self shortName];
  [coderCopy encodeObject:shortName forKey:@"shortName"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  shortName = [(ASCLockupFeatureShortName *)self shortName];
  [(ASCHasher *)v3 combineObject:shortName];

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
      shortName = [(ASCLockupFeatureShortName *)self shortName];
      shortName2 = [(ASCLockupFeatureShortName *)v8 shortName];
      v11 = shortName2;
      if (shortName && shortName2)
      {
        v7 = [shortName isEqual:shortName2];
      }

      else
      {
        v7 = shortName == shortName2;
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
  shortName = [(ASCLockupFeatureShortName *)self shortName];
  [(ASCDescriber *)v3 addObject:shortName withName:@"shortName"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end