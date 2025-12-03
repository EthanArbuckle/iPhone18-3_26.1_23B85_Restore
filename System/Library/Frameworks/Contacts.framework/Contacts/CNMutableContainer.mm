@interface CNMutableContainer
- (id)copy;
- (id)freeze;
- (id)freezeWithSelfAsSnapshot;
- (void)adoptValuesFromAndSetSnapshot:(id)snapshot;
- (void)setAccountIdentifier:(id)identifier;
- (void)setConstraintsPath:(id)path;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalModificationTag:(id)tag;
- (void)setExternalSyncData:(id)data;
- (void)setExternalSyncTag:(id)tag;
- (void)setIdentifier:(id)identifier;
- (void)setLastSyncDate:(id)date;
- (void)setMeIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setProviderIdentifier:(id)identifier;
- (void)setProviderMetadata:(id)metadata;
- (void)setSnapshot:(id)snapshot;
@end

@implementation CNMutableContainer

- (id)copy
{
  v3 = [CNContainer alloc];

  return [(CNContainer *)v3 initWithContainer:self];
}

- (void)setIdentifier:(id)identifier
{
  if (self->super._identifier != identifier)
  {
    v4 = [identifier copy];
    identifier = self->super._identifier;
    self->super._identifier = v4;

    MEMORY[0x1EEE66BB8](v4, identifier);
  }
}

- (void)setName:(id)name
{
  if (self->super._name != name)
  {
    v4 = [name copy];
    name = self->super._name;
    self->super._name = v4;

    MEMORY[0x1EEE66BB8](v4, name);
  }
}

- (void)setAccountIdentifier:(id)identifier
{
  if (self->super._accountIdentifier != identifier)
  {
    v4 = [identifier copy];
    accountIdentifier = self->super._accountIdentifier;
    self->super._accountIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, accountIdentifier);
  }
}

- (void)setExternalIdentifier:(id)identifier
{
  if (self->super._externalIdentifier != identifier)
  {
    v4 = [identifier copy];
    externalIdentifier = self->super._externalIdentifier;
    self->super._externalIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, externalIdentifier);
  }
}

- (void)setExternalModificationTag:(id)tag
{
  if (self->super._externalModificationTag != tag)
  {
    v4 = [tag copy];
    externalModificationTag = self->super._externalModificationTag;
    self->super._externalModificationTag = v4;

    MEMORY[0x1EEE66BB8](v4, externalModificationTag);
  }
}

- (void)setExternalSyncTag:(id)tag
{
  if (self->super._externalSyncTag != tag)
  {
    v4 = [tag copy];
    externalSyncTag = self->super._externalSyncTag;
    self->super._externalSyncTag = v4;

    MEMORY[0x1EEE66BB8](v4, externalSyncTag);
  }
}

- (void)setExternalSyncData:(id)data
{
  if (self->super._externalSyncData != data)
  {
    v4 = [data copy];
    externalSyncData = self->super._externalSyncData;
    self->super._externalSyncData = v4;

    MEMORY[0x1EEE66BB8](v4, externalSyncData);
  }
}

- (void)setConstraintsPath:(id)path
{
  if (self->super._constraintsPath != path)
  {
    v4 = [path copy];
    constraintsPath = self->super._constraintsPath;
    self->super._constraintsPath = v4;

    MEMORY[0x1EEE66BB8](v4, constraintsPath);
  }
}

- (void)setMeIdentifier:(id)identifier
{
  if (self->super._meIdentifier != identifier)
  {
    v4 = [identifier copy];
    meIdentifier = self->super._meIdentifier;
    self->super._meIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, meIdentifier);
  }
}

- (void)setLastSyncDate:(id)date
{
  if (self->super._lastSyncDate != date)
  {
    v4 = [date copy];
    lastSyncDate = self->super._lastSyncDate;
    self->super._lastSyncDate = v4;

    MEMORY[0x1EEE66BB8](v4, lastSyncDate);
  }
}

- (void)setSnapshot:(id)snapshot
{
  snapshot = self->super._snapshot;
  if (snapshot != snapshot)
  {
    self->super._snapshot = 0;
    snapshotCopy = snapshot;

    v6 = [snapshotCopy copy];
    v7 = self->super._snapshot;
    self->super._snapshot = v6;
  }
}

- (void)adoptValuesFromAndSetSnapshot:(id)snapshot
{
  v17 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  if (snapshotCopy)
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
          v11 = [v10 CNValueForContainer:snapshotCopy];
          [v10 setCNValue:v11 onContainer:self];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  [(CNMutableContainer *)self setSnapshot:snapshotCopy];
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (id)freezeWithSelfAsSnapshot
{
  null = [MEMORY[0x1E695DFB0] null];
  [(CNMutableContainer *)self setSnapshot:null];

  return [(CNMutableContainer *)self freeze];
}

- (void)setProviderIdentifier:(id)identifier
{
  if (self->super._providerIdentifier != identifier)
  {
    v4 = [identifier copy];
    providerIdentifier = self->super._providerIdentifier;
    self->super._providerIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, providerIdentifier);
  }
}

- (void)setProviderMetadata:(id)metadata
{
  if (self->super._providerMetadata != metadata)
  {
    v4 = [metadata copy];
    providerMetadata = self->super._providerMetadata;
    self->super._providerMetadata = v4;

    MEMORY[0x1EEE66BB8](v4, providerMetadata);
  }
}

@end