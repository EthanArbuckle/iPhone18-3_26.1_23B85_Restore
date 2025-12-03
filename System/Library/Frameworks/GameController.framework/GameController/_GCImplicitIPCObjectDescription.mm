@interface _GCImplicitIPCObjectDescription
- (_GCImplicitIPCObjectDescription)init;
- (_GCImplicitIPCObjectDescription)initWithCoder:(id)coder;
- (_GCImplicitIPCObjectDescription)initWithIdentifier:(id)identifier;
- (id)materializeWithContext:(id)context;
@end

@implementation _GCImplicitIPCObjectDescription

- (_GCImplicitIPCObjectDescription)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _GCImplicitIPCObjectDescription;
  v5 = [(_GCImplicitIPCObjectDescription *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
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

- (_GCImplicitIPCObjectDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _GCImplicitIPCObjectDescription;
  v5 = [(_GCImplicitIPCObjectDescription *)&v10 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;
  }

  return v5;
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy conformsToProtocol:&unk_1F4EA1E20])
  {
    iPCObjectRegistry = [contextCopy IPCObjectRegistry];
    v6 = [iPCObjectRegistry IPCObjectWithIdentifier:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end