@interface PHImageResourceChooserBestPolicyHandler
+ (BOOL)_imageResourceIsUndecodableBasedOnResourceType:(unsigned int)type recipeID:(unsigned int)d version:(unsigned int)version asset:(id)asset loggingPrefix:(id)prefix;
+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason;
@end

@implementation PHImageResourceChooserBestPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason
{
  reversedCopy = reversed;
  infoCopy = info;
  requestInfoCopy = requestInfo;
  v52.receiver = self;
  v52.super_class = &OBJC_METACLASS___PHImageResourceChooserBestPolicyHandler;
  HIDWORD(v48) = reversedCopy;
  reasonCopy = reason;
  v16 = objc_msgSendSuper2(&v52, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, infoCopy, policy, requestInfoCopy, reversedCopy, forPolicy, reason);
  asset = [requestInfoCopy asset];
  dataStoreKey = [infoCopy dataStoreKey];

  behaviorSpec = [requestInfoCopy behaviorSpec];
  loadingOptions = [behaviorSpec loadingOptions];

  behaviorSpec2 = [requestInfoCopy behaviorSpec];
  version = [behaviorSpec2 version];

  store = [infoCopy store];
  storeClassID = [objc_opt_class() storeClassID];

  v25 = 0.0;
  if (version <= 1)
  {
    [requestInfoCopy fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
    v25 = v26;
  }

  if (!v16)
  {
    goto LABEL_8;
  }

  if ((loadingOptions & 6) != 0 && storeClassID == 1)
  {
    v27 = @"failed loading mode test";
LABEL_7:
    *reasonCopy = v27;
LABEL_8:
    v28 = 1;
    goto LABEL_12;
  }

  [infoCopy recipeID];
  if (PLResourceRecipeIsFullSizeDeferredProcessingPreview())
  {
    asset2 = [requestInfoCopy asset];
    mediaType = [asset2 mediaType];

    if (mediaType != 2)
    {
      v27 = @"failed deferred processing preview test";
      goto LABEL_7;
    }
  }

  v28 = 0;
LABEL_12:
  if (![asset isRAWPlusJPEG])
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v34 = 0;
    goto LABEL_63;
  }

  if ([infoCopy resourceType] || objc_msgSend(infoCopy, "version"))
  {
    isDerivative = 1;
  }

  else
  {
    isDerivative = [infoCopy isDerivative];
  }

  originalResourceChoice = [asset originalResourceChoice];
  if (v28)
  {
    goto LABEL_22;
  }

  if (originalResourceChoice == 1 || version == 2)
  {
    if (!((version != 2) | isDerivative & 1))
    {
      v33 = @"r+j raw or derivatives";
      goto LABEL_62;
    }

    if (originalResourceChoice == 1 && !(([infoCopy version] != 0) | isDerivative & 1))
    {
      v33 = @"r+j ignore orig JPEG";
      goto LABEL_62;
    }
  }

  else if ([infoCopy resourceType] == 4)
  {
    v33 = @"r+j alt image";
LABEL_62:
    v34 = 0;
    *reasonCopy = v33;
    goto LABEL_63;
  }

LABEL_26:
  if ([infoCopy recipeID] == 65743 && !dataStoreKey && objc_msgSend(asset, "effectiveThumbnailIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = @"cpl thumb test";
    goto LABEL_62;
  }

  if (!([infoCopy isHintBased] & 1 | (dataStoreKey != 0)) && (objc_msgSend(infoCopy, "canDownload") & 1) == 0 && !objc_msgSend(infoCopy, "locallyGeneratableForAsset:", asset))
  {
    v33 = @"failed local/generatable test";
    goto LABEL_62;
  }

  LODWORD(v48) = dataStoreKey != 0;
  if ([infoCopy isHintBased] & 1) == 0 && (loadingOptions)
  {
    v35 = objc_opt_class();
    resourceType = [infoCopy resourceType];
    recipeID = [infoCopy recipeID];
    version2 = [infoCopy version];
    loggingPrefix = [requestInfoCopy loggingPrefix];
    LOBYTE(v35) = [v35 _imageResourceIsUndecodableBasedOnResourceType:resourceType recipeID:recipeID version:version2 asset:asset loggingPrefix:loggingPrefix];

    if (v35)
    {
      v33 = @"failed undecodable test";
      goto LABEL_62;
    }
  }

  if (storeClassID == 3 && ![infoCopy recipeID])
  {
    behaviorSpec3 = [requestInfoCopy behaviorSpec];
    isExplicitUserAction = [behaviorSpec3 isExplicitUserAction];

    if (!isExplicitUserAction)
    {
      v33 = @"syndication originals test";
      goto LABEL_62;
    }
  }

  if (version < 2)
  {
    v42 = v50 ^ 1;
  }

  else
  {
    v42 = 0;
  }

  if (v42 == 1 && v25 > 0.0)
  {
    [infoCopy resourceScale];
    if (v25 > v43)
    {
      v33 = @"smaller than fallback scale";
      goto LABEL_62;
    }
  }

  [infoCopy resourceScale];
  v45 = v44;
  [requestInfoCopy requestedScale];
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
    if (reasonCopy)
    {
      v33 = @"too small";
      goto LABEL_62;
    }

    goto LABEL_22;
  }

LABEL_63:

  return v34;
}

+ (BOOL)_imageResourceIsUndecodableBasedOnResourceType:(unsigned int)type recipeID:(unsigned int)d version:(unsigned int)version asset:(id)asset loggingPrefix:(id)prefix
{
  v51 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  prefixCopy = prefix;
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
  managedObjectContextForFetchingResources = [assetCopy managedObjectContextForFetchingResources];
  if (!(d | type | version))
  {
    v14 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke;
    v29[3] = &unk_1E75A9D58;
    v29[4] = assetCopy;
    v30 = managedObjectContextForFetchingResources;
    v31 = &v39;
    v32 = &v33;
    [v30 performBlockAndWait:v29];
    goto LABEL_7;
  }

  if (!type && d == 65938 && version == 2)
  {
    v14 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __127__PHImageResourceChooserBestPolicyHandler__imageResourceIsUndecodableBasedOnResourceType_recipeID_version_asset_loggingPrefix___block_invoke_2;
    v25[3] = &unk_1E75A9D58;
    v25[4] = assetCopy;
    v26 = managedObjectContextForFetchingResources;
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
            versionCopy2 = prefixCopy;
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
            versionCopy2 = prefixCopy;
            v47 = 2048;
            versionCopy = version;
            _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM]: %@ Metadata decode check failed (version: %ld)", buf, 0x16u);
          }
        }

        else
        {
          v21 = PLImageManagerGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            uuid = [assetCopy uuid];
            *buf = 134218498;
            versionCopy2 = version;
            v47 = 2112;
            versionCopy = uuid;
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