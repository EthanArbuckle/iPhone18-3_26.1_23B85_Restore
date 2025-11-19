@interface _GCGamepadEventFusionDescription
- (_GCGamepadEventFusionDescription)initWithCoder:(id)a3;
- (_GCGamepadEventFusionDescription)initWithConfiguration:(id)a3 sources:(id)a4;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCGamepadEventFusionDescription

- (_GCGamepadEventFusionDescription)initWithConfiguration:(id)a3 sources:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _GCGamepadEventFusionDescription;
  v9 = [(_GCGamepadEventFusionDescription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a3);
    v11 = [v8 copy];
    sourcesDescription = v10->_sourcesDescription;
    v10->_sourcesDescription = v11;
  }

  return v10;
}

- (_GCGamepadEventFusionDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _GCGamepadEventFusionDescription;
  v5 = [(_GCGamepadEventFusionDescription *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v8 = _GCGamepadEventSourceDescription_Classes();
    v9 = [v8 setByAddingObject:objc_opt_class()];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sources"];
    sourcesDescription = v5->_sourcesDescription;
    v5->_sourcesDescription = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourcesDescription = self->_sourcesDescription;
  v5 = a3;
  [v5 encodeObject:sourcesDescription forKey:@"sources"];
  [v5 encodeObject:self->_config forKey:@"config"];
}

- (id)materializeWithContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  materializedObject = self->_materializedObject;
  if (!materializedObject)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sourcesDescription, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_sourcesDescription;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) materializeWithContext:{v4, v19}];
          if (!v13)
          {

            v6 = 0;
            goto LABEL_13;
          }

          v14 = v13;
          [v7 addObject:v13];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [[_GCGamepadEventFusion alloc] initWithConfiguration:self->_config sources:v7];
    v16 = self->_materializedObject;
    self->_materializedObject = v15;

    materializedObject = self->_materializedObject;
  }

  v6 = materializedObject;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

@end