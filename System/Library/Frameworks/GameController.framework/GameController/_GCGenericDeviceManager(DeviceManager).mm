@interface _GCGenericDeviceManager(DeviceManager)
- (_GCFusedLogicalDevice)makeDeviceWithConfiguration:()DeviceManager dependencies:;
@end

@implementation _GCGenericDeviceManager(DeviceManager)

- (_GCFusedLogicalDevice)makeDeviceWithConfiguration:()DeviceManager dependencies:
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 count] == 1)
  {
    v9 = [_GCDefaultLogicalDevice alloc];
    anyObject = [v8 anyObject];
    v11 = [(_GCDefaultLogicalDevice *)v9 initWithPhysicalDevice:anyObject configuration:v7 manager:self];

    anyObject2 = [v8 anyObject];
    delegate = [anyObject2 delegate];
    [(_GCDefaultLogicalDevice *)v11 setDelegate:delegate];

    goto LABEL_21;
  }

  if ([v8 count] == 2)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v36 = v8;
      obj = v14;
      v34 = a2;
      selfCopy = self;
      v38 = v7;
      v17 = 0;
      v18 = 0;
      v19 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          identifier = [v21 identifier];
          deviceDependencies = [v38 deviceDependencies];
          firstObject = [deviceDependencies firstObject];
          v25 = [identifier isEqual:firstObject];

          v26 = v21;
          if (v25)
          {
            v27 = v17;
          }

          else
          {
            v27 = v18;
          }

          if (v25)
          {
            v17 = v26;
          }

          else
          {
            v18 = v26;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v16);
      v28 = obj;

      v7 = v38;
      self = selfCopy;
      v8 = v36;
      a2 = v34;
      if (v17)
      {
        if (v18)
        {
LABEL_19:
          v11 = [[_GCFusedLogicalDevice alloc] initWithPrimaryPhysicalDevice:v17 secondaryPhysicalDevice:v18 configuration:v7 manager:self];
          delegate2 = [v17 delegate];
          [(_GCDefaultLogicalDevice *)v11 setDelegate:delegate2];

          goto LABEL_21;
        }

LABEL_26:
        [(_GCGenericDeviceManager(DeviceManager) *)a2 makeDeviceWithConfiguration:self dependencies:v28];
        goto LABEL_19;
      }
    }

    else
    {

      v18 = 0;
      v28 = v14;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager+DeviceManager.m" lineNumber:40 description:{@"Dependencies did not contain primary device. %@", v28}];

    v17 = 0;
    if (v18)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager+DeviceManager.m" lineNumber:49 description:{@"Bad configuration: %@", v7}];

  v11 = 0;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)makeDeviceWithConfiguration:()DeviceManager dependencies:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_GCGenericDeviceManager+DeviceManager.m" lineNumber:41 description:{@"Dependencies did not contain secondary device. %@", a3}];
}

@end