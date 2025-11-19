@interface CollectAssetResourcesByCplResourceType
@end

@implementation CollectAssetResourcesByCplResourceType

void ___CollectAssetResourcesByCplResourceType_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v8;
  if (!v7)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_PHResourceLocalAvailabilityRequestResourceType _ResourceTypeForAssetResource(PHAsset *__strong, PHAssetResource *__strong)"}];
    [v30 handleFailureInFunction:v31 file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1435 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_37:
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_PHResourceLocalAvailabilityRequestResourceType _ResourceTypeForAssetResource(PHAsset *__strong, PHAssetResource *__strong)"}];
    [v32 handleFailureInFunction:v33 file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1436 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _CPLResourceTypeForAssetResource(PHAssetResource *__strong, CPLResourceType *)"}];
    [v34 handleFailureInFunction:v35 file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_3:
  v10 = v9;
LABEL_4:
  if ([v9 conformsToProtocol:&unk_1F105FCD0] && (v11 = objc_msgSend(v9, "cplResourceType")) != 0)
  {
    v12 = v11;

    if (v12 < 0x1D)
    {
      v13 = v12 - 1;
      if ((0x9DFE07Fu >> (v12 - 1)))
      {
        v14 = &unk_19CB29750;
LABEL_26:
        v16 = v14[v13];
        goto LABEL_27;
      }
    }
  }

  else
  {
  }

  v15 = [v9 type];
  v16 = v15;
  if (v15 > 107)
  {
    if (v15 == 108)
    {
      v16 = 20;
      goto LABEL_27;
    }

    if (v15 == 110)
    {
      v16 = 22;
      goto LABEL_27;
    }
  }

  else
  {
    if (v15 == 7)
    {
      v16 = 21;
      goto LABEL_27;
    }

    if (v15 == 16)
    {
      v16 = 19;
      goto LABEL_27;
    }
  }

  if (![v7 isCloudSharedAsset])
  {
    v13 = v16 - 1;
    if (v16 - 1 < 0x13 && ((0x4FFFFu >> v13) & 1) != 0)
    {
      v14 = &unk_19CB29830;
      goto LABEL_26;
    }

LABEL_34:

    v28 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      *buf = 138412546;
      v37 = v29;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Ignoring resource for sharing asset: %@, resource: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (v16 == 1)
  {
    goto LABEL_27;
  }

  if ([v9 type] == 2)
  {
    v16 = 1;
    goto LABEL_27;
  }

  if (v16 != 9)
  {
    goto LABEL_34;
  }

  v16 = 13;
LABEL_27:

  v17 = *(a1 + 40);
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (!v19)
  {
    v27 = *(a1 + 40);
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    [v27 setObject:v9 forKeyedSubscript:v28];
LABEL_30:

    goto LABEL_31;
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = *(a1 + 32);
  v22 = _PHResourceLocalAvailabilityRequestResourceTypeDescription(v16);
  v23 = [v20 stringWithFormat:@"Trying to collect resource for already used _PHResourceLocalAvailabilityRequestResourceType while sharing asset: %@, cplResourceType: %@, resource: %@, all resources: %@", v21, v22, v9, *(a1 + 48)];

  v24 = _PHResourceLocalAvailabilityRequestError(0, 0, v23);
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  *a4 = 1;
LABEL_31:
}

@end