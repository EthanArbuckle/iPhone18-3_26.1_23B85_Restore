@interface _GCImplicitIPCObjectDescription
- (_GCImplicitIPCObjectDescription)init;
- (_GCImplicitIPCObjectDescription)initWithCoder:(id)a3;
- (_GCImplicitIPCObjectDescription)initWithIdentifier:(id)a3;
- (id)materializeWithContext:(id)a3;
@end

@implementation _GCImplicitIPCObjectDescription

- (_GCImplicitIPCObjectDescription)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCImplicitIPCObjectDescription;
  v5 = [(_GCImplicitIPCObjectDescription *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_GCImplicitIPCObjectDescription)init
{
  [(_GCImplicitIPCObjectDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCImplicitIPCObjectDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _GCImplicitIPCObjectDescription;
  v5 = [(_GCImplicitIPCObjectDescription *)&v10 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;
  }

  return v5;
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F4EA1E20])
  {
    v5 = [v4 IPCObjectRegistry];
    v6 = [v5 IPCObjectWithIdentifier:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end