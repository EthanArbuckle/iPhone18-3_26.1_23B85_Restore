@interface _GCGamepadEventKeyboardEventAdapterDescription
- (_GCGamepadEventKeyboardEventAdapterDescription)initWithCoder:(id)a3;
- (_GCGamepadEventKeyboardEventAdapterDescription)initWithConfiguration:(id)a3 source:(id)a4;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCGamepadEventKeyboardEventAdapterDescription

- (_GCGamepadEventKeyboardEventAdapterDescription)initWithConfiguration:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventKeyboardEventAdapterDescription;
  v9 = [(_GCGamepadEventKeyboardEventAdapterDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a3);
    objc_storeStrong(&v10->_sourceDescription, a4);
  }

  return v10;
}

- (_GCGamepadEventKeyboardEventAdapterDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventKeyboardEventAdapterDescription;
  v5 = [(_GCGamepadEventKeyboardEventAdapterDescription *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v8 = _GCKeyboardEventSourceDescription_Classes();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"source"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceDescription = self->_sourceDescription;
  v5 = a3;
  [v5 encodeObject:sourceDescription forKey:@"source"];
  [v5 encodeObject:self->_config forKey:@"config"];
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_4;
  }

  v6 = [(_GCKeyboardEventSourceDescription *)self->_sourceDescription materializeWithContext:v4];
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