@interface AEPersistentDeactivation
- (id)initWithScratchpadIdentifier:(void *)identifier deactivation:;
- (uint64_t)deactivation;
- (uint64_t)scratchpadIdentifier;
@end

@implementation AEPersistentDeactivation

- (id)initWithScratchpadIdentifier:(void *)identifier deactivation:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEPersistentDeactivation;
    self = objc_msgSendSuper2(&v10, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, identifier);
    }
  }

  return self;
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