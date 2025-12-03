@interface _GCCollectionEventHIDAdapterDescription
- (_GCCollectionEventHIDAdapterDescription)initWithCoder:(id)coder;
- (_GCCollectionEventHIDAdapterDescription)initWithRootParser:(id)parser source:(id)source service:(id)service;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCCollectionEventHIDAdapterDescription

- (_GCCollectionEventHIDAdapterDescription)initWithRootParser:(id)parser source:(id)source service:(id)service
{
  parserCopy = parser;
  sourceCopy = source;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = _GCCollectionEventHIDAdapterDescription;
  v12 = [(_GCCollectionEventHIDAdapterDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parser, parser);
    objc_storeStrong(&v13->_sourceDescription, source);
    objc_storeStrong(&v13->_serviceDescription, service);
  }

  return v13;
}

- (_GCCollectionEventHIDAdapterDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _GCCollectionEventHIDAdapterDescription;
  v5 = [(_GCCollectionEventHIDAdapterDescription *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parser"];
    parser = v5->_parser;
    v5->_parser = v6;

    v8 = _GCHIDEventSourceDescription_Classes();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    serviceDescription = v5->_serviceDescription;
    v5->_serviceDescription = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  parser = self->_parser;
  coderCopy = coder;
  [coderCopy encodeObject:parser forKey:@"parser"];
  [coderCopy encodeObject:self->_serviceDescription forKey:@"service"];
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