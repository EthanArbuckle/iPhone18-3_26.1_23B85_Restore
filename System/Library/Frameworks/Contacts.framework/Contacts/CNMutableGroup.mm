@interface CNMutableGroup
- (id)copy;
- (id)freeze;
- (id)freezeWithSelfAsSnapshot;
- (void)adoptValuesFromAndSetSnapshot:(id)snapshot;
- (void)setCreationDate:(id)date;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalModificationTag:(id)tag;
- (void)setExternalRepresentation:(id)representation;
- (void)setExternalUUID:(id)d;
- (void)setIdentifier:(id)identifier;
- (void)setModificationDate:(id)date;
- (void)setName:(NSString *)name;
- (void)setSnapshot:(id)snapshot;
@end

@implementation CNMutableGroup

- (id)copy
{
  v3 = [CNGroup alloc];

  return [(CNGroup *)v3 initWithGroup:self];
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

- (void)setName:(NSString *)name
{
  if (self->super._name != name)
  {
    v4 = [(NSString *)name copy];
    v5 = self->super._name;
    self->super._name = v4;

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)setCreationDate:(id)date
{
  if (self->super._creationDate != date)
  {
    v4 = [date copy];
    creationDate = self->super._creationDate;
    self->super._creationDate = v4;

    MEMORY[0x1EEE66BB8](v4, creationDate);
  }
}

- (void)setModificationDate:(id)date
{
  if (self->super._modificationDate != date)
  {
    v4 = [date copy];
    modificationDate = self->super._modificationDate;
    self->super._modificationDate = v4;

    MEMORY[0x1EEE66BB8](v4, modificationDate);
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

- (void)setExternalRepresentation:(id)representation
{
  if (self->super._externalRepresentation != representation)
  {
    v4 = [representation copy];
    externalRepresentation = self->super._externalRepresentation;
    self->super._externalRepresentation = v4;

    MEMORY[0x1EEE66BB8](v4, externalRepresentation);
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

- (void)setExternalUUID:(id)d
{
  if (self->super._externalUUID != d)
  {
    v4 = [d copy];
    externalUUID = self->super._externalUUID;
    self->super._externalUUID = v4;

    MEMORY[0x1EEE66BB8](v4, externalUUID);
  }
}

- (void)adoptValuesFromAndSetSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    name = [snapshotCopy name];
    [(CNMutableGroup *)self setName:name];

    identifier = [snapshotCopy identifier];
    [(CNMutableGroup *)self setIdentifier:identifier];

    -[CNMutableGroup setIOSLegacyIdentifier:](self, "setIOSLegacyIdentifier:", [snapshotCopy iOSLegacyIdentifier]);
    creationDate = [snapshotCopy creationDate];
    [(CNMutableGroup *)self setCreationDate:creationDate];

    modificationDate = [snapshotCopy modificationDate];
    [(CNMutableGroup *)self setModificationDate:modificationDate];

    externalIdentifier = [snapshotCopy externalIdentifier];
    [(CNMutableGroup *)self setExternalIdentifier:externalIdentifier];

    externalRepresentation = [snapshotCopy externalRepresentation];
    [(CNMutableGroup *)self setExternalRepresentation:externalRepresentation];

    externalModificationTag = [snapshotCopy externalModificationTag];
    [(CNMutableGroup *)self setExternalModificationTag:externalModificationTag];

    externalUUID = [snapshotCopy externalUUID];
    [(CNMutableGroup *)self setExternalUUID:externalUUID];
  }

  [(CNMutableGroup *)self setSnapshot:snapshotCopy];
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

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (id)freezeWithSelfAsSnapshot
{
  null = [MEMORY[0x1E695DFB0] null];
  [(CNMutableGroup *)self setSnapshot:null];

  return [(CNMutableGroup *)self freeze];
}

@end