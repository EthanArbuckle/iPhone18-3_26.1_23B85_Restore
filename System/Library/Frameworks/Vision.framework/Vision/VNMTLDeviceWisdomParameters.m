@interface VNMTLDeviceWisdomParameters
- (id)_cachedMetalDeviceWisdomParametersAndReturnError:(id *)a3;
- (id)_wisdomResourcesPath;
- (id)wisdomParameterForMTLDevice:(id)a3 error:(id *)a4;
- (id)wisdomParameterForMTLDeviceWithName:(id)a3 error:(id *)a4;
@end

@implementation VNMTLDeviceWisdomParameters

- (id)wisdomParameterForMTLDeviceWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNMTLDeviceWisdomParameters *)self _cachedMetalDeviceWisdomParametersAndReturnError:a4];
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
    v8 = v6;
    v14 = v8;
    v15 = &v16;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v9 = v17[5];
    if (v9)
    {
      v10 = v9;
    }

    else if (a4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wisdom parameters are not available for the device %@", v8];
      *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v11];
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

- (id)wisdomParameterForMTLDevice:(id)a3 error:(id *)a4
{
  v6 = [a3 name];
  v7 = [(VNMTLDeviceWisdomParameters *)self wisdomParameterForMTLDeviceWithName:v6 error:a4];

  return v7;
}

- (id)_cachedMetalDeviceWisdomParametersAndReturnError:(id *)a3
{
  if (a3)
  {
    *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:@"wisdom parameters are not available for the system"];
  }

  return 0;
}

- (id)_wisdomResourcesPath
{
  v2 = VNFrameworkBundle();
  v3 = [v2 resourcePath];
  v4 = [v3 stringByAppendingPathComponent:@"Wisdom"];

  return v4;
}

@end