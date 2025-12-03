@interface GCHIDInformationDescription
- (GCHIDInformationDescription)init;
- (GCHIDInformationDescription)initWithCoder:(id)coder;
- (GCHIDInformationDescription)initWithIdentifier:(id)identifier registryID:(id)d;
- (NSString)description;
- (id)materializeWithContext:(id)context;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCHIDInformationDescription

- (GCHIDInformationDescription)initWithIdentifier:(id)identifier registryID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = GCHIDInformationDescription;
  v8 = [(GCHIDInformationDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_registryID, d);
  }

  return v8;
}

- (GCHIDInformationDescription)init
{
  [(GCHIDInformationDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCHIDInformationDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GCHIDInformationDescription;
  v5 = [(GCHIDInformationDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registryID"];
    registryID = v5->_registryID;
    v5->_registryID = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_registryID forKey:@"registryID"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(GCHIDInformationDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '%@'>", v5, identifier];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(GCHIDInformationDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '#%llx'>", v5, objc_msgSend(identifier, "hash")];

  return v7;
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
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
      objc_storeWeak(&materializedComponent->_manager, contextCopy);
      materializedComponent = self->_materializedComponent;
    }
  }

  v9 = materializedComponent;

  return materializedComponent;
}

@end