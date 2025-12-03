@interface SHMediaLibraryLabel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualLabel:(id)label;
- (SHMediaLibraryLabel)initWithCoder:(id)coder;
- (SHMediaLibraryLabel)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)type;
- (unint64_t)hash;
@end

@implementation SHMediaLibraryLabel

- (SHMediaLibraryLabel)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SHMediaLibraryLabel;
  v6 = [(SHMediaLibraryLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (int64_t)type
{
  name = [(SHMediaLibraryLabel *)self name];
  v3 = [name hasPrefix:@"platform"];

  return v3 ^ 1u;
}

- (SHMediaLibraryLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryLabelName"];

  v6 = [(SHMediaLibraryLabel *)self initWithName:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryLabel allocWithZone:?];
  name = [(SHMediaLibraryLabel *)self name];
  v7 = [name copyWithZone:zone];
  v8 = [(SHMediaLibraryLabel *)v5 initWithName:v7];

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryLabel *)self isEqualLabel:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualLabel:(id)label
{
  labelCopy = label;
  name = [(SHMediaLibraryLabel *)self name];
  lowercaseString = [name lowercaseString];
  name2 = [labelCopy name];

  lowercaseString2 = [name2 lowercaseString];
  v9 = [lowercaseString isEqualToString:lowercaseString2];

  return v9;
}

- (unint64_t)hash
{
  name = [(SHMediaLibraryLabel *)self name];
  v3 = [name hash];

  return v3;
}

@end