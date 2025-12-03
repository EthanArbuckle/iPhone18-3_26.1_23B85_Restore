@interface __NSCFData
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation __NSCFData

- (Class)classForCoder
{
  v2 = __CFDataMtbl(self);
  v3 = off_1E6A55860;
  if (!v2)
  {
    v3 = off_1E6A557C0;
  }

  v4 = *v3;

  return objc_opt_self();
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x1E69E9840];
  if ((__CFDataMtbl(self) & 1) != 0 || !_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v8.receiver = self;
    v8.super_class = __NSCFData;
    result = [(__NSCFData *)&v8 copyWithZone:zone];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return _CFNonObjCRetain(self);
  }

  return result;
}

@end