@interface PHImageResourceChooserBestPolicyHandler
+ (BOOL)_imageResourceIsUndecodableBasedOnResourceType:(unsigned int)a3 recipeID:(unsigned int)a4 version:(unsigned int)a5 asset:(id)a6 loggingPrefix:(id)a7;
+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8;
@end

@implementation PHImageResourceChooserBestPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a5;
  v52.receiver = a1;
  v52.super_class = &OBJC_METACLASS___PHImageResourceChooserBestPolicyHandler;
  HIDWORD(v48) = v10;
  v51 = a8;
  v16 = objc_msgSendSuper2(&v52, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, v14, a4, v15, v10, a7, a8);
  v17 = [v15 asset];
  v18 = [v14 dataStoreKey];

  v19 = [v15 behaviorSpec];
  v20 = [v19 loadingOptions];

  v21 = [v15 behaviorSpec];
  v22 = [v21 version];

  v23 = [v14 store];
  v24 = [objc_opt_class() storeClassID];

  v25 = 0.0;
  if (v22 <= 1)
  {
    [v15 fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
    v25 = v26;
  }

  if (!v16)
  {
    goto LABEL_8;
  }

  if ((v20 & 6) != 0 && v24 == 1)
  {
    v27 = @"failed loading mode test";
LABEL_7:
    *v51 = v27;
LABEL_8:
    v28 = 1;
    goto LABEL_12;
  }

  [v14 recipeID];
  if (PLResourceRecipeIsFullSizeDeferredProcessingPreview())
  {
    v29 = [v15 asset];
    v30 = [v29 mediaType];

    if (v30 != 2)
    {
      v27 = @"failed deferred processing preview test";
      goto LABEL_7;
    }
  }

  v28 = 0;
LABEL_12:
  if (![v17 isRAWPlusJPEG])
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v34 = 0;
    goto LABEL_63;
  }

  if ([v14 resourceType] || objc_msgSend(v14, "version"))
  {
    v31 = 1;
  }

  else
  {
    v31 = [v14 isDerivative];
  }

  v32 = [v17 originalResourceChoice];
  if (v28)
  {
    goto LABEL_22;
  }

  if (v32 == 1 || v22 == 2)
  {
    if (!((v22 != 2) | v31 & 1))
    {
      v33 = @"r+j raw or derivatives";
      goto LABEL_62;
    }

    if (v32 == 1 && !(([v14 version] != 0) | v31 & 1))
    {
      v33 = @"r+j ignore orig JPEG";
      goto LABEL_62;
    }
  }

  else if ([v14 resourceType] == 4)
  {
    v33 = @"r+j alt image";
LABEL_62:
    v34 = 0;
    *v51 = v33;
    goto LABEL_63;
  }

LABEL_26:
  if ([v14 recipeID] == 65743 && !v18 && objc_msgSend(v17, "effectiveThumbnailIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = @"cpl thumb test";
    goto LABEL_62;
  }

  if (!([v14 isHintBased] & 1 | (v18 != 0)) && (objc_msgSend(v14, "canDownload") & 1) == 0 && !objc_msgSend(v14, "locallyGeneratableForAsset:", v17))
  {
    v33 = @"failed local/generatable test";
    goto LABEL_62;
  }

  LODWORD(v48) = v18 != 0;
  if ([v14 isHintBased] & 1) == 0 && (v20)
  {
    v35 = objc_opt_class();
    v36 = [v14 resourceType];
    v37 = [v14 recipeID];
    v38 = [v14 version];
    v39 = [v15 loggingPrefix];
    LOBYTE(v35) = [v35 _imageResourceIsUndecodableBasedOnResourceType:v36 recipeID:v37 version:v38 asset:v17 loggingPrefix:v39];

    if (v35)
    {
      v33 = @"failed undecodable test";
      goto LABEL_62;
    }
  }

  if (v24 == 3 && ![v14 recipeID])
  {
    v40 = [v15 behaviorSpec];
    v41 = [v40 isExplicitUserAction];

    if (!v41)
    {
      v33 = @"syndication originals test";
      goto LABEL_62;
    }
  }

  if (v22 < 2)
  {
    v42 = v50 ^ 1;
  }

  else
  {
    v42 = 0;
  }

  if (v42 == 1 && v25 > 0.0)
  {
    [v14 resourceScale];
    if (v25 > v43)
    {
      v33 = @"smaller than fallback scale";
      goto LABEL_62;
    }
  }

  [v14 resourceScale];
  v45 = v44;
  [v15 requestedScale];
  if (v45 >= v46)
  {
    v34 = 2;
    goto LABEL_63;
  }

  if (((v25 > 0.0) & v49) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  if (((v25 > 0.0) & v49) == 0 && ((v42 ^ 1) & 1) == 0)
  {
    if (v51)
    {
      v33 = @"too small";
      goto LABEL_62;
    }

    goto LABEL_22;
  }

LABEL_63:

  return v34;
}

+ (BOOL)_imageResourceIsUndecodableBasedOnResourceType:(unsigned int)a3 recipeID:(unsigned int)a4 version:(unsigned int)a5 asset:(id)a6 loggingPrefix:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__34675;
  v43 = __Block_byref_object_dispose__34676;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__34675;
  v37 = __Block_byref_object_dispose__34676;
  v38 = 0;
  v13 = [v11 managedObjectContextForFetchingResources];
  if (!(a4 | a3 | a5))
  {
    v14 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke;
    v29[3] = &unk_1E75A9D58;
    v29[4] = v11;
    v30 = v13;
    v31 = &v39;
    v32 = &v33;
    [v30 performBlockAndWait:v29];
    goto LABEL_7;
  }

  if (!a3 && a4 == 65938 && a5 == 2)
  {
    v14 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke_2;
    v25[3] = &unk_1E75A9D58;
    v25[4] = v11;
    v26 = v13;
    v27 = &v39;
    v28 = &v33;
    [v26 performBlockAndWait:v25];
LABEL_7:
  }

  v15 = v40[5];
  if (v15)
  {
    if ([v15 isEqualToString:@"CGImageProperties"])
    {
      v16 = v34[5];
      if (v16)
      {
        v24 = 0;
        v17 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:0 error:&v24];
        v18 = v24;
        v19 = v17 != 0;
        if (v17)
        {
          v20 = PLImageManagerGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v12;
            _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "[RM]: %@ Checking image decodability based on media metadata", buf, 0xCu);
          }

          if (!CGImageIsDecodable())
          {
            v19 = 0;
            goto LABEL_23;
          }

          v21 = PLImageManagerGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v46 = v12;
            v47 = 2048;
            v48 = a5;
            _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM]: %@ Metadata decode check failed (version: %ld)", buf, 0x16u);
          }
        }

        else
        {
          v21 = PLImageManagerGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = [v11 uuid];
            *buf = 134218498;
            v46 = a5;
            v47 = 2112;
            v48 = v23;
            v49 = 2112;
            v50 = v18;
            _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Error serializing media metadata for resource version: %ld, asset: %@, error: %@", buf, 0x20u);
          }
        }

LABEL_23:
        goto LABEL_18;
      }
    }
  }

  v19 = 0;
LABEL_18:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v19;
}

void __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) uuid];
  v13 = [v2 assetWithUUID:v3 inManagedObjectContext:*(a1 + 40)];

  v4 = [v13 master];
  v5 = [v4 mediaMetadataType];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v13 master];
  v9 = [v8 mediaMetadata];
  v10 = [v9 data];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) uuid];
  v13 = [v2 assetWithUUID:v3 inManagedObjectContext:*(a1 + 40)];

  v4 = [v13 additionalAttributes];
  v5 = [v4 mediaMetadataType];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v13 additionalAttributes];
  v9 = [v8 mediaMetadata];
  v10 = [v9 data];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

@end