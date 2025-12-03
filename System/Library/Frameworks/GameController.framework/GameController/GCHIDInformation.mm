@interface GCHIDInformation
- (GCHIDInformation)init;
- (GCHIDInformation)initWithIdentifier:(id)identifier registryID:(id)d;
- (void)setProperty:(id)property forKey:(id)key;
@end

@implementation GCHIDInformation

- (GCHIDInformation)initWithIdentifier:(id)identifier registryID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = GCHIDInformation;
  v8 = [(GCHIDInformation *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_registryID, d);
  }

  return v8;
}

- (GCHIDInformation)init
{
  [(GCHIDInformation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained setProperty:propertyCopy forKey:keyCopy forHIDServiceClientWithRegistryID:self->_registryID];
}

@end