@interface _GCKeyboardEventHIDAdapterDescription
- (_GCKeyboardEventHIDAdapterDescription)initWithCoder:(id)a3;
- (_GCKeyboardEventHIDAdapterDescription)initWithSource:(id)a3 service:(id)a4;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCKeyboardEventHIDAdapterDescription

- (_GCKeyboardEventHIDAdapterDescription)initWithSource:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _GCKeyboardEventHIDAdapterDescription;
  v9 = [(_GCKeyboardEventHIDAdapterDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceDescription, a3);
    objc_storeStrong(&v10->_serviceDescription, a4);
  }

  return v10;
}

- (_GCKeyboardEventHIDAdapterDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _GCKeyboardEventHIDAdapterDescription;
  v5 = [(_GCKeyboardEventHIDAdapterDescription *)&v12 init];
  if (v5)
  {
    v6 = _GCHIDEventSourceDescription_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    serviceDescription = v5->_serviceDescription;
    v5->_serviceDescription = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serviceDescription = self->_serviceDescription;
  v5 = a3;
  [v5 encodeObject:serviceDescription forKey:@"service"];
  [v5 encodeObject:self->_sourceDescription forKey:@"source"];
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_2;
  }

  v7 = [(_GCHIDEventSourceDescription *)self->_sourceDescription materializeWithContext:v4];
  if (v7)
  {
    v8 = v7;
    v9 = [(_GCCControllerHIDServiceInfoDescription *)self->_serviceDescription materializeWithContext:v4];
    v10 = v9;
    if (!self->_serviceDescription || v9)
    {
      v12 = [[_GCKeyboardEventHIDAdapter alloc] initWithSource:v8 service:v9];
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