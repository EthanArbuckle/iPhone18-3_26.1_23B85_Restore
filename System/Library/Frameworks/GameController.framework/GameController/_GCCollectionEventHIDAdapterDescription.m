@interface _GCCollectionEventHIDAdapterDescription
- (_GCCollectionEventHIDAdapterDescription)initWithCoder:(id)a3;
- (_GCCollectionEventHIDAdapterDescription)initWithRootParser:(id)a3 source:(id)a4 service:(id)a5;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCCollectionEventHIDAdapterDescription

- (_GCCollectionEventHIDAdapterDescription)initWithRootParser:(id)a3 source:(id)a4 service:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _GCCollectionEventHIDAdapterDescription;
  v12 = [(_GCCollectionEventHIDAdapterDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parser, a3);
    objc_storeStrong(&v13->_sourceDescription, a4);
    objc_storeStrong(&v13->_serviceDescription, a5);
  }

  return v13;
}

- (_GCCollectionEventHIDAdapterDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _GCCollectionEventHIDAdapterDescription;
  v5 = [(_GCCollectionEventHIDAdapterDescription *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parser"];
    parser = v5->_parser;
    v5->_parser = v6;

    v8 = _GCHIDEventSourceDescription_Classes();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    serviceDescription = v5->_serviceDescription;
    v5->_serviceDescription = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  parser = self->_parser;
  v5 = a3;
  [v5 encodeObject:parser forKey:@"parser"];
  [v5 encodeObject:self->_serviceDescription forKey:@"service"];
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
      v12 = [[_GCCollectionEventHIDAdapter alloc] initWithRootParser:self->_parser source:v8 service:v9];
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