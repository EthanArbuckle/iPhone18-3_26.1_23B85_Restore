@interface _GCDeviceGamepadComponentDescription
- (id)createWithContext:(id)a3;
@end

@implementation _GCDeviceGamepadComponentDescription

- (id)createWithContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [GCGamepad alloc];
  v5 = [(_GCDevicePhysicalInputComponentDescription *)self identifier];
  v6 = [(GCGamepad *)v4 _initWithIdentifier:v5 createDefaultElements:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(_GCDevicePhysicalInputComponentDescription *)self elementDescriptions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v6 _buttonWithDescription:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v6 _directionPadWithDescription:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

@end