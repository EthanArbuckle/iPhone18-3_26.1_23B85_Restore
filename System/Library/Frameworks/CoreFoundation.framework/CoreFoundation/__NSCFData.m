@interface __NSCFData
- (BOOL)isEqual:(id)a3;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, a3) != 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((__CFDataMtbl(self) & 1) != 0 || !_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v8.receiver = self;
    v8.super_class = __NSCFData;
    result = [(__NSCFData *)&v8 copyWithZone:a3];
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