@interface NSFileProviderDomainVersion
+ (NSFileProviderDomainVersion)domainVersionWithVersion:(int64_t)version;
- (BOOL)isEqual:(id)equal;
- (NSComparisonResult)compare:(NSFileProviderDomainVersion *)otherVersion;
- (NSFileProviderDomainVersion)initWithCoder:(id)coder;
- (NSFileProviderDomainVersion)initWithVersion:(int64_t)version;
- (NSFileProviderDomainVersion)next;
- (unint64_t)hash;
@end

@implementation NSFileProviderDomainVersion

- (NSFileProviderDomainVersion)initWithVersion:(int64_t)version
{
  v8.receiver = self;
  v8.super_class = NSFileProviderDomainVersion;
  v5 = [(NSFileProviderDomainVersion *)&v8 init];
  if (v5)
  {
    if (!version)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"NSFileProviderDomain.m" lineNumber:44 description:@"Never build a NSFileProviderDomainVersion with version 0"];
    }

    v5->_version = version;
  }

  return v5;
}

+ (NSFileProviderDomainVersion)domainVersionWithVersion:(int64_t)version
{
  v3 = [[self alloc] initWithVersion:version];

  return v3;
}

- (NSFileProviderDomainVersion)next
{
  version = self->_version;
  if ((version + 1) > 1)
  {
    v3 = version + 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [[NSFileProviderDomainVersion alloc] initWithVersion:v3];

  return v4;
}

- (NSComparisonResult)compare:(NSFileProviderDomainVersion *)otherVersion
{
  v4 = otherVersion;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v10 = NSOrderedSame;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D940];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to compare %@ with object of different class: %@", self, v5];
        v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
        v16 = v15;

        objc_exception_throw(v15);
      }

      version = self->_version;
      v7 = v5->_version;
      v8 = version < v7;
      v9 = version != v7;
      if (v8)
      {
        v10 = NSOrderedAscending;
      }

      else
      {
        v10 = v9;
      }
    }
  }

  else
  {
    v10 = NSOrderedDescending;
  }

  return v10;
}

- (NSFileProviderDomainVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NSFileProviderDomainVersion;
  v5 = [(NSFileProviderDomainVersion *)&v7 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"_version"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_version == equalCopy[1];

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  v3 = [v2 hash];

  return v3;
}

@end