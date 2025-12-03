@interface _GCGamepadEventGamepadHIDAdapterDescription
- (_GCGamepadEventGamepadHIDAdapterDescription)initWithCoder:(id)coder;
- (_GCGamepadEventGamepadHIDAdapterDescription)initWithSource:(id)source service:(id)service;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCGamepadEventGamepadHIDAdapterDescription

- (_GCGamepadEventGamepadHIDAdapterDescription)initWithSource:(id)source service:(id)service
{
  sourceCopy = source;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventGamepadHIDAdapterDescription;
  v9 = [(_GCGamepadEventGamepadHIDAdapterDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceDescription, source);
    objc_storeStrong(&v10->_serviceDescription, service);
  }

  return v10;
}

- (_GCGamepadEventGamepadHIDAdapterDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventGamepadHIDAdapterDescription;
  v5 = [(_GCGamepadEventGamepadHIDAdapterDescription *)&v12 init];
  if (v5)
  {
    v6 = _GCHIDEventSourceDescription_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    serviceDescription = v5->_serviceDescription;
    v5->_serviceDescription = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serviceDescription = self->_serviceDescription;
  coderCopy = coder;
  [coderCopy encodeObject:serviceDescription forKey:@"service"];
  [coderCopy encodeObject:self->_sourceDescription forKey:@"source"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_2;
  }

  v7 = [(_GCHIDEventSourceDescription *)self->_sourceDescription materializeWithContext:contextCopy];
  if (v7)
  {
    v8 = v7;
    v9 = [(_GCCControllerHIDServiceInfoDescription *)self->_serviceDescription materializeWithContext:contextCopy];
    v10 = v9;
    if (!self->_serviceDescription || v9)
    {
      v12 = [[_GCGamepadEventGamepadHIDAdapter alloc] initWithSource:v8 service:v9];
      v13 = self->_materializedObject;
      self->_materializedObject = v12;

      materializedObject = self->_materializedObject;
LABEL_2:
      v6 = materializedObject;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end