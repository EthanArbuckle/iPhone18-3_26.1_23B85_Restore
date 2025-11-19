@interface GCHIDInformationDescription
- (GCHIDInformationDescription)init;
- (GCHIDInformationDescription)initWithCoder:(id)a3;
- (GCHIDInformationDescription)initWithIdentifier:(id)a3 registryID:(id)a4;
- (NSString)description;
- (id)materializeWithContext:(id)a3;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCHIDInformationDescription

- (GCHIDInformationDescription)initWithIdentifier:(id)a3 registryID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCHIDInformationDescription;
  v8 = [(GCHIDInformationDescription *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_registryID, a4);
  }

  return v8;
}

- (GCHIDInformationDescription)init
{
  [(GCHIDInformationDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCHIDInformationDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GCHIDInformationDescription;
  v5 = [(GCHIDInformationDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registryID"];
    registryID = v5->_registryID;
    v5->_registryID = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_registryID forKey:@"registryID"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCHIDInformationDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '%@'>", v5, v6];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCHIDInformationDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '#%llx'>", v5, objc_msgSend(v6, "hash")];

  return v7;
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  materializedComponent = self->_materializedComponent;
  if (!materializedComponent)
  {
    v6 = [[GCHIDInformation alloc] initWithIdentifier:self->_identifier registryID:self->_registryID];
    v7 = self->_materializedComponent;
    self->_materializedComponent = v6;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    materializedComponent = self->_materializedComponent;
    if (isKindOfClass)
    {
      objc_storeWeak(&materializedComponent->_manager, v4);
      materializedComponent = self->_materializedComponent;
    }
  }

  v9 = materializedComponent;

  return materializedComponent;
}

@end