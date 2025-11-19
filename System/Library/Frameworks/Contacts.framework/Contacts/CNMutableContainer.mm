@interface CNMutableContainer
- (id)copy;
- (id)freeze;
- (id)freezeWithSelfAsSnapshot;
- (void)adoptValuesFromAndSetSnapshot:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setConstraintsPath:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setExternalModificationTag:(id)a3;
- (void)setExternalSyncData:(id)a3;
- (void)setExternalSyncTag:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLastSyncDate:(id)a3;
- (void)setMeIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setProviderIdentifier:(id)a3;
- (void)setProviderMetadata:(id)a3;
- (void)setSnapshot:(id)a3;
@end

@implementation CNMutableContainer

- (id)copy
{
  v3 = [CNContainer alloc];

  return [(CNContainer *)v3 initWithContainer:self];
}

- (void)setIdentifier:(id)a3
{
  if (self->super._identifier != a3)
  {
    v4 = [a3 copy];
    identifier = self->super._identifier;
    self->super._identifier = v4;

    MEMORY[0x1EEE66BB8](v4, identifier);
  }
}

- (void)setName:(id)a3
{
  if (self->super._name != a3)
  {
    v4 = [a3 copy];
    name = self->super._name;
    self->super._name = v4;

    MEMORY[0x1EEE66BB8](v4, name);
  }
}

- (void)setAccountIdentifier:(id)a3
{
  if (self->super._accountIdentifier != a3)
  {
    v4 = [a3 copy];
    accountIdentifier = self->super._accountIdentifier;
    self->super._accountIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, accountIdentifier);
  }
}

- (void)setExternalIdentifier:(id)a3
{
  if (self->super._externalIdentifier != a3)
  {
    v4 = [a3 copy];
    externalIdentifier = self->super._externalIdentifier;
    self->super._externalIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, externalIdentifier);
  }
}

- (void)setExternalModificationTag:(id)a3
{
  if (self->super._externalModificationTag != a3)
  {
    v4 = [a3 copy];
    externalModificationTag = self->super._externalModificationTag;
    self->super._externalModificationTag = v4;

    MEMORY[0x1EEE66BB8](v4, externalModificationTag);
  }
}

- (void)setExternalSyncTag:(id)a3
{
  if (self->super._externalSyncTag != a3)
  {
    v4 = [a3 copy];
    externalSyncTag = self->super._externalSyncTag;
    self->super._externalSyncTag = v4;

    MEMORY[0x1EEE66BB8](v4, externalSyncTag);
  }
}

- (void)setExternalSyncData:(id)a3
{
  if (self->super._externalSyncData != a3)
  {
    v4 = [a3 copy];
    externalSyncData = self->super._externalSyncData;
    self->super._externalSyncData = v4;

    MEMORY[0x1EEE66BB8](v4, externalSyncData);
  }
}

- (void)setConstraintsPath:(id)a3
{
  if (self->super._constraintsPath != a3)
  {
    v4 = [a3 copy];
    constraintsPath = self->super._constraintsPath;
    self->super._constraintsPath = v4;

    MEMORY[0x1EEE66BB8](v4, constraintsPath);
  }
}

- (void)setMeIdentifier:(id)a3
{
  if (self->super._meIdentifier != a3)
  {
    v4 = [a3 copy];
    meIdentifier = self->super._meIdentifier;
    self->super._meIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, meIdentifier);
  }
}

- (void)setLastSyncDate:(id)a3
{
  if (self->super._lastSyncDate != a3)
  {
    v4 = [a3 copy];
    lastSyncDate = self->super._lastSyncDate;
    self->super._lastSyncDate = v4;

    MEMORY[0x1EEE66BB8](v4, lastSyncDate);
  }
}

- (void)setSnapshot:(id)a3
{
  snapshot = self->super._snapshot;
  if (snapshot != a3)
  {
    self->super._snapshot = 0;
    v5 = a3;

    v6 = [v5 copy];
    v7 = self->super._snapshot;
    self->super._snapshot = v6;
  }
}

- (void)adoptValuesFromAndSetSnapshot:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = +[CN writableContainerProperties];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v10 CNValueForContainer:v4];
          [v10 setCNValue:v11 onContainer:self];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  [(CNMutableContainer *)self setSnapshot:v4];
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (id)freezeWithSelfAsSnapshot
{
  v3 = [MEMORY[0x1E695DFB0] null];
  [(CNMutableContainer *)self setSnapshot:v3];

  return [(CNMutableContainer *)self freeze];
}

- (void)setProviderIdentifier:(id)a3
{
  if (self->super._providerIdentifier != a3)
  {
    v4 = [a3 copy];
    providerIdentifier = self->super._providerIdentifier;
    self->super._providerIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, providerIdentifier);
  }
}

- (void)setProviderMetadata:(id)a3
{
  if (self->super._providerMetadata != a3)
  {
    v4 = [a3 copy];
    providerMetadata = self->super._providerMetadata;
    self->super._providerMetadata = v4;

    MEMORY[0x1EEE66BB8](v4, providerMetadata);
  }
}

@end