@interface ACDPluginEntry
- (ACDPluginEntry)init;
- (ACDPluginEntry)initWithBundle:(id)bundle;
- (BOOL)principalObjectRespondsToSelector:(SEL)selector;
- (NSSet)supportedAccountTypes;
- (NSSet)supportedDataclasses;
- (NSString)identifier;
- (id)debugDescription;
- (id)description;
- (id)principalObject;
@end

@implementation ACDPluginEntry

- (ACDPluginEntry)init
{
  [(ACDPluginEntry *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDPluginEntry)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = ACDPluginEntry;
  v6 = [(ACDPluginEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
  }

  return v7;
}

- (NSSet)supportedAccountTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*&selfCopy->_fetchedFlags & 2) == 0)
  {
    bundle = selfCopy->_bundle;
    objc_opt_class();
    v4 = _ACDSetForKeyInBundle(bundle, @"ACSupportedAccountTypes");
    supportedAccountTypes = selfCopy->_supportedAccountTypes;
    selfCopy->_supportedAccountTypes = v4;

    *&selfCopy->_fetchedFlags |= 2u;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_supportedAccountTypes;

  return v6;
}

- (NSSet)supportedDataclasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*&selfCopy->_fetchedFlags & 4) == 0)
  {
    bundle = selfCopy->_bundle;
    objc_opt_class();
    v4 = _ACDSetForKeyInBundle(bundle, @"ACSupportedDataclasses");
    supportedDataclasses = selfCopy->_supportedDataclasses;
    selfCopy->_supportedDataclasses = v4;

    *&selfCopy->_fetchedFlags |= 4u;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_supportedDataclasses;

  return v6;
}

- (id)principalObject
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*&selfCopy->_fetchedFlags & 1) == 0)
  {
    v3 = objc_alloc_init([(NSBundle *)selfCopy->_bundle principalClass]);
    principalObject = selfCopy->_principalObject;
    selfCopy->_principalObject = v3;

    *&selfCopy->_fetchedFlags |= 1u;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_principalObject;

  return v5;
}

- (NSString)identifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*&selfCopy->_fetchedFlags & 8) == 0)
  {
    bundleIdentifier = [(NSBundle *)selfCopy->_bundle bundleIdentifier];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = bundleIdentifier;

    *&selfCopy->_fetchedFlags |= 8u;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_identifier;

  return v5;
}

- (BOOL)principalObjectRespondsToSelector:(SEL)selector
{
  principalClass = [(NSBundle *)self->_bundle principalClass];

  return [(objc_class *)principalClass instancesRespondToSelector:selector];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundlePath = [(NSBundle *)self->_bundle bundlePath];
  v7 = [v3 stringWithFormat:@"<%@: %p { bundle: %@ }>", v5, self, bundlePath];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundle = self->_bundle;
  v7 = __34__ACDPluginEntry_debugDescription__block_invoke(v5, self->_supportedAccountTypes, (*&self->_fetchedFlags >> 1) & 1);
  v8 = __34__ACDPluginEntry_debugDescription__block_invoke(v7, self->_supportedDataclasses, (*&self->_fetchedFlags >> 2) & 1);
  v9 = [v3 stringWithFormat:@"<%@: %p { bundle: %@, supportedAccountTypes: %@, supportedDataclasses: %@ }>", v5, self, bundle, v7, v8];

  return v9;
}

__CFString *__34__ACDPluginEntry_debugDescription__block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(not loaded)";
  }

  return v6;
}

@end