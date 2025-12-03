@interface VNMTLDeviceWisdomParameters
- (id)_cachedMetalDeviceWisdomParametersAndReturnError:(id *)error;
- (id)_wisdomResourcesPath;
- (id)wisdomParameterForMTLDevice:(id)device error:(id *)error;
- (id)wisdomParameterForMTLDeviceWithName:(id)name error:(id *)error;
@end

@implementation VNMTLDeviceWisdomParameters

- (id)wisdomParameterForMTLDeviceWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [(VNMTLDeviceWisdomParameters *)self _cachedMetalDeviceWisdomParametersAndReturnError:error];
  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__9973;
    v20 = __Block_byref_object_dispose__9974;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__VNMTLDeviceWisdomParameters_wisdomParameterForMTLDeviceWithName_error___block_invoke;
    v13[3] = &unk_1E77B35E0;
    v8 = nameCopy;
    v14 = v8;
    v15 = &v16;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v9 = v17[5];
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wisdom parameters are not available for the device %@", v8];
      *error = [VNError errorForDataUnavailableWithLocalizedDescription:v11];
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __73__VNMTLDeviceWisdomParameters_wisdomParameterForMTLDeviceWithName_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 containsString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)wisdomParameterForMTLDevice:(id)device error:(id *)error
{
  name = [device name];
  v7 = [(VNMTLDeviceWisdomParameters *)self wisdomParameterForMTLDeviceWithName:name error:error];

  return v7;
}

- (id)_cachedMetalDeviceWisdomParametersAndReturnError:(id *)error
{
  if (error)
  {
    *error = [VNError errorForDataUnavailableWithLocalizedDescription:@"wisdom parameters are not available for the system"];
  }

  return 0;
}

- (id)_wisdomResourcesPath
{
  v2 = VNFrameworkBundle();
  resourcePath = [v2 resourcePath];
  v4 = [resourcePath stringByAppendingPathComponent:@"Wisdom"];

  return v4;
}

@end