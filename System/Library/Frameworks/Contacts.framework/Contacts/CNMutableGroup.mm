@interface CNMutableGroup
- (id)copy;
- (id)freeze;
- (id)freezeWithSelfAsSnapshot;
- (void)adoptValuesFromAndSetSnapshot:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setExternalModificationTag:(id)a3;
- (void)setExternalRepresentation:(id)a3;
- (void)setExternalUUID:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setModificationDate:(id)a3;
- (void)setName:(NSString *)name;
- (void)setSnapshot:(id)a3;
@end

@implementation CNMutableGroup

- (id)copy
{
  v3 = [CNGroup alloc];

  return [(CNGroup *)v3 initWithGroup:self];
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

- (void)setCreationDate:(id)a3
{
  if (self->super._creationDate != a3)
  {
    v4 = [a3 copy];
    creationDate = self->super._creationDate;
    self->super._creationDate = v4;

    MEMORY[0x1EEE66BB8](v4, creationDate);
  }
}

- (void)setModificationDate:(id)a3
{
  if (self->super._modificationDate != a3)
  {
    v4 = [a3 copy];
    modificationDate = self->super._modificationDate;
    self->super._modificationDate = v4;

    MEMORY[0x1EEE66BB8](v4, modificationDate);
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

- (void)setExternalRepresentation:(id)a3
{
  if (self->super._externalRepresentation != a3)
  {
    v4 = [a3 copy];
    externalRepresentation = self->super._externalRepresentation;
    self->super._externalRepresentation = v4;

    MEMORY[0x1EEE66BB8](v4, externalRepresentation);
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

- (void)setExternalUUID:(id)a3
{
  if (self->super._externalUUID != a3)
  {
    v4 = [a3 copy];
    externalUUID = self->super._externalUUID;
    self->super._externalUUID = v4;

    MEMORY[0x1EEE66BB8](v4, externalUUID);
  }
}

- (void)adoptValuesFromAndSetSnapshot:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [v12 name];
    [(CNMutableGroup *)self setName:v4];

    v5 = [v12 identifier];
    [(CNMutableGroup *)self setIdentifier:v5];

    -[CNMutableGroup setIOSLegacyIdentifier:](self, "setIOSLegacyIdentifier:", [v12 iOSLegacyIdentifier]);
    v6 = [v12 creationDate];
    [(CNMutableGroup *)self setCreationDate:v6];

    v7 = [v12 modificationDate];
    [(CNMutableGroup *)self setModificationDate:v7];

    v8 = [v12 externalIdentifier];
    [(CNMutableGroup *)self setExternalIdentifier:v8];

    v9 = [v12 externalRepresentation];
    [(CNMutableGroup *)self setExternalRepresentation:v9];

    v10 = [v12 externalModificationTag];
    [(CNMutableGroup *)self setExternalModificationTag:v10];

    v11 = [v12 externalUUID];
    [(CNMutableGroup *)self setExternalUUID:v11];
  }

  [(CNMutableGroup *)self setSnapshot:v12];
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

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (id)freezeWithSelfAsSnapshot
{
  v3 = [MEMORY[0x1E695DFB0] null];
  [(CNMutableGroup *)self setSnapshot:v3];

  return [(CNMutableGroup *)self freeze];
}

@end