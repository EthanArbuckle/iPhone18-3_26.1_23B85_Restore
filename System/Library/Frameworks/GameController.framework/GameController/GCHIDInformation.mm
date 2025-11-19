@interface GCHIDInformation
- (GCHIDInformation)init;
- (GCHIDInformation)initWithIdentifier:(id)a3 registryID:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
@end

@implementation GCHIDInformation

- (GCHIDInformation)initWithIdentifier:(id)a3 registryID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCHIDInformation;
  v8 = [(GCHIDInformation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_registryID, a4);
  }

  return v8;
}

- (GCHIDInformation)init
{
  [(GCHIDInformation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained setProperty:v7 forKey:v6 forHIDServiceClientWithRegistryID:self->_registryID];
}

@end