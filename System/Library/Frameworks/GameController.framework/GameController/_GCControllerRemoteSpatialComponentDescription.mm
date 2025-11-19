@interface _GCControllerRemoteSpatialComponentDescription
- (_GCControllerRemoteSpatialComponentDescription)init;
- (_GCControllerRemoteSpatialComponentDescription)initWithCoder:(id)a3;
- (_GCControllerRemoteSpatialComponentDescription)initWithIdentifier:(id)a3 facade:(id)a4;
- (id)createWithContext:(id)a3;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCControllerRemoteSpatialComponentDescription

- (_GCControllerRemoteSpatialComponentDescription)initWithIdentifier:(id)a3 facade:(id)a4
{
  v13.receiver = self;
  v13.super_class = _GCControllerRemoteSpatialComponentDescription;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCControllerRemoteSpatialComponentDescription *)&v13 init];
  v8 = [v6 copyWithZone:{0, v13.receiver, v13.super_class}];

  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [v5 copy];
  facade = v7->_facade;
  v7->_facade = v10;

  return v7;
}

- (_GCControllerRemoteSpatialComponentDescription)init
{
  [(_GCControllerRemoteSpatialComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerRemoteSpatialComponentDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = GCIPCObjectIdentifier_Classes();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"identifier"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"facade"];

  v8 = [(_GCControllerRemoteSpatialComponentDescription *)self initWithIdentifier:v6 facade:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_facade forKey:@"facade"];
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  materializedComponent = self->_materializedComponent;
  if (materializedComponent || ([(_GCControllerRemoteSpatialComponentDescription *)self createWithContext:v4], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_materializedComponent, self->_materializedComponent = v6, v7, (materializedComponent = self->_materializedComponent) != 0))
  {
    v8 = materializedComponent;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createWithContext:(id)a3
{
  facade = self->_facade;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "objectClass"))];
  v6 = [(_GCDeviceSpatialComponent *)[_GCControllerRemoteSpatialComponent alloc] initWithIdentifier:self->_identifier facade:v5];

  return v6;
}

@end