@interface HMSoftwareUpdateDocumentationManager
+ (id)logCategory;
- (HMSoftwareUpdateDocumentationManager)initWithContext:(id)context;
- (id)assetForDocumentationMetadata:(id)metadata;
- (id)assetForMetadataFromDisk:(id)disk;
- (void)addAssetAndCompletion:(id)completion completion:(id)a4;
- (void)didUpdateDocumentationAssetState:(id)state;
- (void)documentationForMetadata:(id)metadata completion:(id)completion;
- (void)removeAssetAndCompletion:(id)completion;
- (void)removeDocumentationMetadata:(id)metadata;
@end

@implementation HMSoftwareUpdateDocumentationManager

- (void)didUpdateDocumentationAssetState:(id)state
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@In didUpdateDocumentationAssetState", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([stateCopy stateNeedsNotification])
  {
    os_unfair_lock_lock_with_options();
    assetCompletionPairByDigestUUID = [(HMSoftwareUpdateDocumentationManager *)selfCopy assetCompletionPairByDigestUUID];
    metadata = [stateCopy metadata];
    metadataDigestUUID = [metadata metadataDigestUUID];
    v12 = [assetCompletionPairByDigestUUID objectForKeyedSubscript:metadataDigestUUID];
    completions = [v12 completions];

    if ([completions count])
    {
      array = [MEMORY[0x1E695DF70] array];
      assetCompletionPairByDigestUUID2 = [(HMSoftwareUpdateDocumentationManager *)selfCopy assetCompletionPairByDigestUUID];
      metadata2 = [stateCopy metadata];
      metadataDigestUUID2 = [metadata2 metadataDigestUUID];
      v18 = [assetCompletionPairByDigestUUID2 objectForKeyedSubscript:metadataDigestUUID2];
      [v18 setCompletions:array];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    if ([completions count])
    {
      context = [(HMSoftwareUpdateDocumentationManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __73__HMSoftwareUpdateDocumentationManager_didUpdateDocumentationAssetState___block_invoke;
      v22[3] = &unk_1E754E5C0;
      v23 = completions;
      v24 = stateCopy;
      [delegateCaller invokeBlock:v22];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __73__HMSoftwareUpdateDocumentationManager_didUpdateDocumentationAssetState___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 40) documentation];
        if (v8)
        {
          (*(v7 + 16))(v7, v8, 0);
        }

        else
        {
          v9 = [*(a1 + 40) error];
          if (v9)
          {
            (*(v7 + 16))(v7, 0, v9);
          }

          else
          {
            v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
            (*(v7 + 16))(v7, 0, v10);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)assetForDocumentationMetadata:(id)metadata
{
  v22 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  os_unfair_lock_lock_with_options();
  assetCompletionPairByDigestUUID = [(HMSoftwareUpdateDocumentationManager *)self assetCompletionPairByDigestUUID];
  allValues = [assetCompletionPairByDigestUUID allValues];
  v7 = [allValues na_map:&__block_literal_global_52209];

  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        metadata = [v12 metadata];
        v14 = [metadata isEqual:metadataCopy];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)removeAssetAndCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  assetCompletionPairByDigestUUID = [(HMSoftwareUpdateDocumentationManager *)self assetCompletionPairByDigestUUID];
  metadata = [completionCopy metadata];
  metadataDigestUUID = [metadata metadataDigestUUID];
  [assetCompletionPairByDigestUUID removeObjectForKey:metadataDigestUUID];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addAssetAndCompletion:(id)completion completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = a4;
  documentationIsCached = [completionCopy documentationIsCached];
  os_unfair_lock_lock_with_options();
  assetCompletionPairByDigestUUID = [(HMSoftwareUpdateDocumentationManager *)self assetCompletionPairByDigestUUID];
  metadata = [completionCopy metadata];
  metadataDigestUUID = [metadata metadataDigestUUID];
  v12 = [assetCompletionPairByDigestUUID objectForKeyedSubscript:metadataDigestUUID];
  completions = [v12 completions];

  if (!completions)
  {
    completions = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (documentationIsCached)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((documentationIsCached & 1) == 0)
  {
LABEL_5:
    v14 = _Block_copy(v7);
    [completions addObject:v14];
  }

LABEL_6:
  v15 = objc_alloc_init(HMSoftwareUpdateAssetCompletionsPair);
  [(HMSoftwareUpdateAssetCompletionsPair *)v15 setAsset:completionCopy];
  [(HMSoftwareUpdateAssetCompletionsPair *)v15 setCompletions:completions];
  assetCompletionPairByDigestUUID2 = [(HMSoftwareUpdateDocumentationManager *)self assetCompletionPairByDigestUUID];
  metadata2 = [completionCopy metadata];
  metadataDigestUUID2 = [metadata2 metadataDigestUUID];
  [assetCompletionPairByDigestUUID2 setObject:v15 forKeyedSubscript:metadataDigestUUID2];

  os_unfair_lock_unlock(&self->_lock);
  if (documentationIsCached)
  {
    documentation = [completionCopy documentation];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = documentation;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Calling completion with cached documentation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    context = [(HMSoftwareUpdateDocumentationManager *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__HMSoftwareUpdateDocumentationManager_addAssetAndCompletion_completion___block_invoke;
    v28[3] = &unk_1E754E458;
    v29 = documentation;
    v30 = v7;
    v26 = documentation;
    [delegateCaller invokeBlock:v28];
  }

  else
  {
    [completionCopy startCaching];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)removeDocumentationMetadata:(id)metadata
{
  v4 = [(HMSoftwareUpdateDocumentationManager *)self assetForDocumentationMetadata:metadata];
  [(HMSoftwareUpdateDocumentationManager *)self removeAssetAndCompletion:v4];
}

- (void)documentationForMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HMSoftwareUpdateDocumentationManager_documentationForMetadata_completion___block_invoke;
  block[3] = &unk_1E754E0F8;
  block[4] = self;
  v12 = metadataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = metadataCopy;
  dispatch_async(queue, block);
}

void __76__HMSoftwareUpdateDocumentationManager_documentationForMetadata_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assetForDocumentationMetadata:*(a1 + 40)];
  if (!v2)
  {
    v2 = [*(a1 + 32) assetForMetadataFromDisk:*(a1 + 40)];
    if (!v2)
    {
      v2 = [[HMSoftwareUpdateDocumentationAsset alloc] initWithDocumentationMetadata:*(a1 + 40)];
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 32);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = HMFGetLogIdentifier();
        v8 = 138543618;
        v9 = v6;
        v10 = 2112;
        v11 = v2;
        _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Created new documentation asset: %@", &v8, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
    }

    [(HMSoftwareUpdateDocumentationAsset *)v2 setDelegate:*(a1 + 32)];
  }

  [*(a1 + 32) addAssetAndCompletion:v2 completion:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)assetForMetadataFromDisk:(id)disk
{
  v59 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v7;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing cached assets", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = +[HMSoftwareUpdateDocumentationAsset assetDirectoryURL];
  v51 = 0;
  v10 = [defaultManager contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:&v51];
  v11 = v51;

  v41 = v11;
  if (v10)
  {
    metadataDigestUUID = [diskCopy metadataDigestUUID];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v40 = v10;
      v15 = *v48;
      v42 = selfCopy;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          lastPathComponent = [v17 lastPathComponent];
          uUIDString = [metadataDigestUUID UUIDString];
          v20 = [lastPathComponent isEqual:uUIDString];

          if (v20)
          {
            v21 = [HMSoftwareUpdateDocumentationAsset assetWithURL:v17];
            v22 = v21;
            if (v21)
            {
              metadata = [v21 metadata];
              v24 = [metadata URL];
              v25 = [diskCopy URL];
              v26 = [v24 isEqual:v25];

              if (v26)
              {
                goto LABEL_19;
              }

              v27 = objc_autoreleasePoolPush();
              v28 = selfCopy;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = HMFGetLogIdentifier();
                v31 = [diskCopy URL];
                metadata2 = [v22 metadata];
                [metadata2 URL];
                v44 = v27;
                v33 = v32 = metadataDigestUUID;
                *buf = 138543874;
                v53 = v30;
                v54 = 2112;
                v55 = v31;
                v56 = 2112;
                v57 = v33;
                _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Remote URL in the metadata %@ and in the asset %@ did not match", buf, 0x20u);

                metadataDigestUUID = v32;
                v27 = v44;

                selfCopy = v42;
              }

              objc_autoreleasePoolPop(v27);
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v14);
      v22 = 0;
LABEL_19:
      v10 = v40;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v37;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get cached assets with error: %@", buf, 0x16u);

      v10 = 0;
    }

    objc_autoreleasePoolPop(v34);
    v22 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v22;
}

- (HMSoftwareUpdateDocumentationManager)initWithContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = HMSoftwareUpdateDocumentationManager;
  v6 = [(HMSoftwareUpdateDocumentationManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    assetCompletionPairByDigestUUID = v7->_assetCompletionPairByDigestUUID;
    v7->_assetCompletionPairByDigestUUID = dictionary;

    v10 = HMDispatchQueueNameString(v7, 0);
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    queue = v7->_queue;
    v7->_queue = v13;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_52227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_52227, &__block_literal_global_23);
  }

  v3 = logCategory__hmf_once_v9_52228;

  return v3;
}

uint64_t __51__HMSoftwareUpdateDocumentationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_52228;
  logCategory__hmf_once_v9_52228 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end