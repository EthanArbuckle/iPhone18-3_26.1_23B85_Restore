@interface ACDPluginEntry
- (ACDPluginEntry)init;
- (ACDPluginEntry)initWithBundle:(id)a3;
- (BOOL)principalObjectRespondsToSelector:(SEL)a3;
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

- (ACDPluginEntry)initWithBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACDPluginEntry;
  v6 = [(ACDPluginEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
  }

  return v7;
}

- (NSSet)supportedAccountTypes
{
  v2 = self;
  objc_sync_enter(v2);
  if ((*&v2->_fetchedFlags & 2) == 0)
  {
    bundle = v2->_bundle;
    objc_opt_class();
    v4 = _ACDSetForKeyInBundle(bundle, @"ACSupportedAccountTypes");
    supportedAccountTypes = v2->_supportedAccountTypes;
    v2->_supportedAccountTypes = v4;

    *&v2->_fetchedFlags |= 2u;
  }

  objc_sync_exit(v2);

  v6 = v2->_supportedAccountTypes;

  return v6;
}

- (NSSet)supportedDataclasses
{
  v2 = self;
  objc_sync_enter(v2);
  if ((*&v2->_fetchedFlags & 4) == 0)
  {
    bundle = v2->_bundle;
    objc_opt_class();
    v4 = _ACDSetForKeyInBundle(bundle, @"ACSupportedDataclasses");
    supportedDataclasses = v2->_supportedDataclasses;
    v2->_supportedDataclasses = v4;

    *&v2->_fetchedFlags |= 4u;
  }

  objc_sync_exit(v2);

  v6 = v2->_supportedDataclasses;

  return v6;
}

- (id)principalObject
{
  v2 = self;
  objc_sync_enter(v2);
  if ((*&v2->_fetchedFlags & 1) == 0)
  {
    v3 = objc_alloc_init([(NSBundle *)v2->_bundle principalClass]);
    principalObject = v2->_principalObject;
    v2->_principalObject = v3;

    *&v2->_fetchedFlags |= 1u;
  }

  objc_sync_exit(v2);

  v5 = v2->_principalObject;

  return v5;
}

- (NSString)identifier
{
  v2 = self;
  objc_sync_enter(v2);
  if ((*&v2->_fetchedFlags & 8) == 0)
  {
    v3 = [(NSBundle *)v2->_bundle bundleIdentifier];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    *&v2->_fetchedFlags |= 8u;
  }

  objc_sync_exit(v2);

  v5 = v2->_identifier;

  return v5;
}

- (BOOL)principalObjectRespondsToSelector:(SEL)a3
{
  v4 = [(NSBundle *)self->_bundle principalClass];

  return [(objc_class *)v4 instancesRespondToSelector:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSBundle *)self->_bundle bundlePath];
  v7 = [v3 stringWithFormat:@"<%@: %p { bundle: %@ }>", v5, self, v6];

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