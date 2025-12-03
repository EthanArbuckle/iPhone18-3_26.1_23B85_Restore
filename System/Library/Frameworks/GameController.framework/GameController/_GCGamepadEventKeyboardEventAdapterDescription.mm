@interface _GCGamepadEventKeyboardEventAdapterDescription
- (_GCGamepadEventKeyboardEventAdapterDescription)initWithCoder:(id)coder;
- (_GCGamepadEventKeyboardEventAdapterDescription)initWithConfiguration:(id)configuration source:(id)source;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCGamepadEventKeyboardEventAdapterDescription

- (_GCGamepadEventKeyboardEventAdapterDescription)initWithConfiguration:(id)configuration source:(id)source
{
  configurationCopy = configuration;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventKeyboardEventAdapterDescription;
  v9 = [(_GCGamepadEventKeyboardEventAdapterDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, configuration);
    objc_storeStrong(&v10->_sourceDescription, source);
  }

  return v10;
}

- (_GCGamepadEventKeyboardEventAdapterDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventKeyboardEventAdapterDescription;
  v5 = [(_GCGamepadEventKeyboardEventAdapterDescription *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v8 = _GCKeyboardEventSourceDescription_Classes();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceDescription = self->_sourceDescription;
  coderCopy = coder;
  [coderCopy encodeObject:sourceDescription forKey:@"source"];
  [coderCopy encodeObject:self->_config forKey:@"config"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_4;
  }

  v6 = [(_GCKeyboardEventSourceDescription *)self->_sourceDescription materializeWithContext:contextCopy];
  if (v6)
  {
    v7 = v6;
    v8 = [[_GCGamepadEventKeyboardEventAdapter alloc] initWithConfiguration:self->_config source:v6];
    v9 = self->_materializedObject;
    self->_materializedObject = v8;

    materializedObject = self->_materializedObject;
LABEL_4:
    v10 = materializedObject;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

@end