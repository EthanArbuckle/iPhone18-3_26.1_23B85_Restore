@interface _GCControllerRemoteSpatialComponentDescription
- (_GCControllerRemoteSpatialComponentDescription)init;
- (_GCControllerRemoteSpatialComponentDescription)initWithCoder:(id)coder;
- (_GCControllerRemoteSpatialComponentDescription)initWithIdentifier:(id)identifier facade:(id)facade;
- (id)createWithContext:(id)context;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCControllerRemoteSpatialComponentDescription

- (_GCControllerRemoteSpatialComponentDescription)initWithIdentifier:(id)identifier facade:(id)facade
{
  v13.receiver = self;
  v13.super_class = _GCControllerRemoteSpatialComponentDescription;
  facadeCopy = facade;
  identifierCopy = identifier;
  v7 = [(_GCControllerRemoteSpatialComponentDescription *)&v13 init];
  v8 = [identifierCopy copyWithZone:{0, v13.receiver, v13.super_class}];

  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [facadeCopy copy];
  facade = v7->_facade;
  v7->_facade = v10;

  return v7;
}

- (_GCControllerRemoteSpatialComponentDescription)init
{
  [(_GCControllerRemoteSpatialComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerRemoteSpatialComponentDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = GCIPCObjectIdentifier_Classes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"identifier"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"facade"];

  v8 = [(_GCControllerRemoteSpatialComponentDescription *)self initWithIdentifier:v6 facade:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_facade forKey:@"facade"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  materializedComponent = self->_materializedComponent;
  if (materializedComponent || ([(_GCControllerRemoteSpatialComponentDescription *)self createWithContext:contextCopy], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_materializedComponent, self->_materializedComponent = v6, v7, (materializedComponent = self->_materializedComponent) != 0))
  {
    v8 = materializedComponent;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createWithContext:(id)context
{
  facade = self->_facade;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "objectClass"))];
  v6 = [(_GCDeviceSpatialComponent *)[_GCControllerRemoteSpatialComponent alloc] initWithIdentifier:self->_identifier facade:v5];

  return v6;
}

@end