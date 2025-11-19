@interface AEPersistentDeactivation
- (id)initWithScratchpadIdentifier:(void *)a3 deactivation:;
- (uint64_t)deactivation;
- (uint64_t)scratchpadIdentifier;
@end

@implementation AEPersistentDeactivation

- (id)initWithScratchpadIdentifier:(void *)a3 deactivation:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AEPersistentDeactivation;
    a1 = objc_msgSendSuper2(&v10, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (uint64_t)scratchpadIdentifier
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)deactivation
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end