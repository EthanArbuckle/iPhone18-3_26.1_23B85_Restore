@interface IOSurfaceDebugDescription
+ (id)surfaceDescriptions;
@end

@implementation IOSurfaceDebugDescription

+ (id)surfaceDescriptions
{
  v28 = *MEMORY[0x1E69E9840];
  outputStruct = 0;
  input = 1;
  v20 = -3;
  v2 = _ioSurfaceConnect();
  if (IOConnectCallMethod(v2, 0x1Eu, &input, 1u, 0, 0, 0, 0, &outputStruct, &v20))
  {
LABEL_2:
    result = 0;
    goto LABEL_16;
  }

  errorString = 0;
  v4 = IOCFUnserializeBinary(outputStruct, v20, 0, 0, &errorString);
  if (!v4)
  {
    if (errorString)
    {
      NSLog(&cfstr_FailedToUnseri.isa, errorString);
      CFRelease(errorString);
    }

    else
    {
      NSLog(&cfstr_FailedToUnseri_0.isa);
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], outputStruct, v20);
    goto LABEL_2;
  }

  v5 = v4;
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], outputStruct, v20);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 objectForKey:@"Kernel Surfaces"];
  if (v7)
  {
    v8 = _copyDescriptions(v7);
    [v6 setObject:v8 forKey:&unk_1F25E27F0];
  }

  v9 = [v5 objectForKey:@"User Clients"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"pid"];
        if (v15)
        {
          v16 = v15;
          v17 = _copyDescriptions([v14 objectForKey:@"Client Surfaces"]);
          [v6 setObject:v17 forKey:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v11);
  }

  result = v6;
LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

@end