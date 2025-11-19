@interface HMHAPMetadata
+ (id)encodeProtobufWithVersion:(id)a3 characteristics:(id)a4 services:(id)a5 categories:(id)a6;
+ (id)getSharedInstance;
- (BOOL)applyProtoBufData:(id)a3;
- (BOOL)shouldNotCacheCharacteristicOfType:(id)a3;
- (NSNumber)version;
- (id)categoryForCategoryUUIDString:(id)a3;
- (id)categoryForIdentifier:(id)a3;
- (id)characteristicTypeDescription:(id)a3;
- (id)serviceTypeDescription:(id)a3;
- (void)setVersion:(id)a3;
@end

@implementation HMHAPMetadata

- (BOOL)shouldNotCacheCharacteristicOfType:(id)a3
{
  v3 = shouldNotCacheCharacteristicOfType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&shouldNotCacheCharacteristicOfType__onceToken, &__block_literal_global_104);
  }

  v5 = [shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes containsObject:v4];

  return v5;
}

void __52__HMHAPMetadata_shouldNotCacheCharacteristicOfType___block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"00000073-0000-1000-8000-0026BB765291";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes;
  shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)applyProtoBufData:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v51 = a3;
  context = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  v52 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v51, "length")}];
    *buf = 138543618;
    v73 = v6;
    v74 = 2112;
    v75 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unpacking [%@] bytes of metadata", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v53 = [[HMPBMetadata alloc] initWithData:v51];
  if (v53)
  {
    os_unfair_lock_lock_with_options();
    if ([(NSNumber *)v52->_version integerValue]>= v53->_version)
    {
      os_unfair_lock_unlock(&v52->_lock);
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
      version = v52->_version;
      v52->_version = v8;

      os_unfair_lock_unlock(&v52->_lock);
      v56 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](v53->_hapCharacteristics, "count")}];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v10 = v53->_hapCharacteristics;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v11)
      {
        v12 = *v66;
        do
        {
          v13 = 0;
          do
          {
            if (*v66 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v65 + 1) + 8 * v13);
            v15 = objc_alloc_init(HMHAPMetadataCharacteristic);
            v16 = v15;
            if (v14)
            {
              v17 = *(v14 + 16);
              [(HMHAPMetadataCharacteristic *)v16 setUuidStr:v17];

              v18 = *(v14 + 8);
            }

            else
            {
              [(HMHAPMetadataCharacteristic *)v15 setUuidStr:0];
              v18 = 0;
            }

            v19 = v18;
            [(HMHAPMetadataCharacteristic *)v16 setChrDescription:v19];

            v20 = [(HMHAPMetadataCharacteristic *)v16 uuidStr];
            [v56 setObject:v16 forKey:v20];

            ++v13;
          }

          while (v11 != v13);
          v21 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
          v11 = v21;
        }

        while (v21);
      }

      [(HMHAPMetadata *)v52 setHapChrMap:v56];
      v55 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](v53->_hapServices, "count")}];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v22 = v53->_hapServices;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v23)
      {
        v24 = *v62;
        do
        {
          v25 = 0;
          do
          {
            if (*v62 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v61 + 1) + 8 * v25);
            v27 = objc_alloc_init(HMHAPMetadataService);
            v28 = v27;
            if (v26)
            {
              v29 = *(v26 + 16);
              [(HMHAPMetadataService *)v28 setUuidStr:v29];

              v30 = *(v26 + 8);
            }

            else
            {
              [(HMHAPMetadataService *)v27 setUuidStr:0];
              v30 = 0;
            }

            v31 = v30;
            [(HMHAPMetadataService *)v28 setSvcDescription:v31];

            v32 = [(HMHAPMetadataService *)v28 uuidStr];
            [v55 setObject:v28 forKey:v32];

            ++v25;
          }

          while (v23 != v25);
          v33 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
          v23 = v33;
        }

        while (v33);
      }

      [(HMHAPMetadata *)v52 setHapSvcMap:v55];
      v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](v53->_hapCategories, "count")}];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v53->_hapCategories;
      v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v35)
      {
        v36 = *v58;
        do
        {
          v37 = 0;
          do
          {
            if (*v58 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v57 + 1) + 8 * v37);
            v39 = objc_alloc_init(HMHAPMetadataCategory);
            if (v38)
            {
              v40 = [MEMORY[0x1E696AD98] numberWithInt:*(v38 + 16)];
              [(HMHAPMetadataCategory *)v39 setIdentifier:v40];

              v41 = *(v38 + 24);
            }

            else
            {
              v46 = [MEMORY[0x1E696AD98] numberWithInt:0];
              [(HMHAPMetadataCategory *)v39 setIdentifier:v46];

              v41 = 0;
            }

            v42 = v41;
            [(HMHAPMetadataCategory *)v39 setUuidStr:v42];

            if (v38)
            {
              v43 = *(v38 + 8);
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;
            [(HMHAPMetadataCategory *)v39 setCatDescription:v44];

            v45 = [(HMHAPMetadataCategory *)v39 identifier];
            [v34 setObject:v39 forKey:v45];

            ++v37;
          }

          while (v35 != v37);
          v47 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
          v35 = v47;
        }

        while (v47);
      }

      [(HMHAPMetadata *)v52 setHapCategoryMap:v34];
    }
  }

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)categoryForCategoryUUIDString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(HMHAPMetadata *)self hapCategoryMap];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 uuidStr];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = [HMAccessoryCategory alloc];
          v14 = [v10 uuidStr];
          v15 = [v10 catDescription];
          v16 = [(HMAccessoryCategory *)v13 initWithType:v14 name:v15];

          v7 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v16];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)categoryForIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (-[HMHAPMetadata hapCategoryMap](self, "hapCategoryMap"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [HMAccessoryCategory alloc];
    v8 = [v6 uuidStr];
    v9 = [v6 catDescription];
    v10 = [(HMAccessoryCategory *)v7 initWithType:v8 name:v9];
  }

  else
  {
    v10 = [(HMHAPMetadata *)self categoryForCategoryUUIDString:@"0FBA259B-05AC-46F2-875F-204ABB6D9FE7"];
  }

  v11 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v10];

  return v11;
}

- (id)characteristicTypeDescription:(id)a3
{
  v4 = a3;
  v5 = [(HMHAPMetadata *)self hapChrMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 chrDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Custom";
  }

  v10 = v9;

  return v9;
}

- (id)serviceTypeDescription:(id)a3
{
  v4 = a3;
  v5 = [(HMHAPMetadata *)self hapSvcMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 svcDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Custom";
  }

  v10 = v9;

  return v9;
}

- (void)setVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  version = self->_version;
  self->_version = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)version
{
  os_unfair_lock_lock_with_options();
  v3 = self->_version;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)encodeProtobufWithVersion:(id)a3 characteristics:(id)a4 services:(id)a5 categories:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v45 = a5;
  v43 = a6;
  v11 = objc_alloc_init(HMPBMetadata);
  v42 = v9;
  v12 = [v9 intValue];
  if (v11)
  {
    *&v11->_has |= 1u;
    v11->_version = v12;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        v18 = objc_alloc_init(HMPBMetadataCharacteristic);
        v19 = [v17 uuidStr];
        if (v18)
        {
          objc_storeStrong(&v18->_uuidStr, v19);
        }

        v20 = [v17 chrDescription];
        if (v18)
        {
          objc_storeStrong(&v18->_chrDescription, v20);
        }

        [(HMPBMetadata *)v11 addHapCharacteristics:v18];
      }

      v14 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v14);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v45;
  v21 = [v46 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(v46);
        }

        v25 = *(*(&v52 + 1) + 8 * j);
        v26 = objc_alloc_init(HMPBMetadataService);
        v27 = [v25 uuidStr];
        if (v26)
        {
          objc_storeStrong(&v26->_uuidStr, v27);
        }

        v28 = [v25 svcDescription];
        if (v26)
        {
          objc_storeStrong(&v26->_svcDescription, v28);
        }

        [(HMPBMetadata *)v11 addHapServices:v26];
      }

      v22 = [v46 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v22);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44 = v43;
  v29 = [v44 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v44);
        }

        v33 = *(*(&v48 + 1) + 8 * k);
        v34 = objc_alloc_init(HMPBMetadataCategory);
        v35 = [v33 uuidStr];
        if (v34)
        {
          objc_storeStrong(&v34->_uuidStr, v35);
        }

        v36 = [v33 catDescription];
        if (v34)
        {
          objc_storeStrong(&v34->_catDescription, v36);
        }

        v37 = [v33 identifier];
        v38 = [v37 intValue];
        if (v34)
        {
          *&v34->_has |= 1u;
          v34->_identifier = v38;
        }

        [(HMPBMetadata *)v11 addHapCategories:v34];
      }

      v30 = [v44 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v30);
  }

  v39 = [(HMPBMetadata *)v11 data];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)getSharedInstance
{
  if (getSharedInstance_onceToken != -1)
  {
    dispatch_once(&getSharedInstance_onceToken, &__block_literal_global_35886);
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__HMHAPMetadata_getSharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMHAPMetadata);
  v1 = getSharedInstance_sharedInstance;
  getSharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end