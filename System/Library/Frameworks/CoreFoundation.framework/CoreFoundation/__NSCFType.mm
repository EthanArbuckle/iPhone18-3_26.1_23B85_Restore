@interface __NSCFType
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)dealloc;
@end

@implementation __NSCFType

- (id)description
{
  v2 = CFCopyDescription(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(self);
  v3 = CFGetTypeID(self);
  if (v3 == 2)
  {
    __CFAllocatorDeallocate(self);
  }

  else
  {
    v4 = *(_CFRuntimeGetClassWithTypeID(v3) + 32);
    if (v4)
    {
      v4(self);
    }
  }

  v6.receiver = self;
  v6.super_class = __NSCFType;
  [(__NSCFType *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

@end