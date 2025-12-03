@interface SHLLibraryLabel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualLabel:(id)label;
- (SHLLibraryLabel)initWithCoder:(id)coder;
- (SHLLibraryLabel)initWithName:(id)name;
- (int64_t)type;
- (unint64_t)hash;
@end

@implementation SHLLibraryLabel

- (SHLLibraryLabel)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SHLLibraryLabel;
  v6 = [(SHLLibraryLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (int64_t)type
{
  name = [(SHLLibraryLabel *)self name];
  v3 = [name hasPrefix:@"platform"];

  return v3 ^ 1;
}

- (SHLLibraryLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryLabelName"];

  v6 = [(SHLLibraryLabel *)self initWithName:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SHLLibraryLabel *)self isEqualLabel:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualLabel:(id)label
{
  labelCopy = label;
  name = [(SHLLibraryLabel *)self name];
  lowercaseString = [name lowercaseString];
  name2 = [labelCopy name];

  lowercaseString2 = [name2 lowercaseString];
  v9 = [lowercaseString isEqualToString:lowercaseString2];

  return v9;
}

- (unint64_t)hash
{
  name = [(SHLLibraryLabel *)self name];
  v3 = [name hash];

  return v3;
}

@end