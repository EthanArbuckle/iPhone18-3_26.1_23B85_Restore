@interface _GCFusedLogicalDevice
- (_GCFusedLogicalDevice)init;
- (_GCFusedLogicalDevice)initWithPrimaryPhysicalDevice:(id)a3 secondaryPhysicalDevice:(id)a4 configuration:(id)a5 manager:(id)a6;
- (id)_makeControllerGamepadEventSource;
- (id)underlyingDevices;
@end

@implementation _GCFusedLogicalDevice

- (_GCFusedLogicalDevice)initWithPrimaryPhysicalDevice:(id)a3 secondaryPhysicalDevice:(id)a4 configuration:(id)a5 manager:(id)a6
{
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _GCFusedLogicalDevice;
  v11 = [(_GCDefaultLogicalDevice *)&v14 initWithPhysicalDevice:a3 configuration:a5 manager:a6];
  secondaryDevice = v11->_secondaryDevice;
  v11->_secondaryDevice = v10;

  return v11;
}

- (_GCFusedLogicalDevice)init
{
  [(_GCFusedLogicalDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)underlyingDevices
{
  v8.receiver = self;
  v8.super_class = _GCFusedLogicalDevice;
  v3 = [(_GCDefaultLogicalDevice *)&v8 underlyingDevices];
  v4 = v3;
  if (self->_secondaryDevice)
  {
    v5 = [v3 setByAddingObject:?];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)_makeControllerGamepadEventSource
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
  v4 = [v3 components];

  v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F4E9B320])
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [(_GCFusedLogicalDevice *)self secondaryDevice];
  v13 = [v12 components];

  v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v31 + 1) + 8 * j);
        if ([v19 conformsToProtocol:&unk_1F4E9B320])
        {
          v20 = v19;

          v16 = v20;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(v7 | v16))
  {
    v21 = 0;
    goto LABEL_35;
  }

  if (v7 && !v16)
  {
    v22 = v7;
LABEL_31:
    v21 = [v22 gamepadEventSource];
    goto LABEL_35;
  }

  if (!v7 && v16)
  {
    v22 = v16;
    goto LABEL_31;
  }

  v23 = [v7 gamepadEventSource];
  v24 = [v16 gamepadEventSource];
  v25 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
  for (k = 0; k != 47; ++k)
  {
    [(_GCGamepadEventFusionConfig *)v25 setPassRule:2 forElement:k forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v25 setPassRule:2 forElement:k forSourceAtIndex:1];
  }

  v27 = [_GCGamepadEventFusionDescription alloc];
  v39[0] = v23;
  v39[1] = v24;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v21 = [(_GCGamepadEventFusionDescription *)v27 initWithConfiguration:v25 sources:v28];

LABEL_35:
  v29 = *MEMORY[0x1E69E9840];

  return v21;
}

@end