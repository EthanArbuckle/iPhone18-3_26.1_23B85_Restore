@interface AVTAsset
- (AVTAsset)initWithType:(int64_t)type identifier:(id)identifier path:(id)path;
- (id)assetImageForAsset:(id)asset;
- (id)instantiateResource;
- (id)resourceByCachingIfNeeded:(BOOL)needed;
- (void)decrUseCount;
- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)freeCache;
- (void)incrUseCount;
- (void)instantiateResource;
@end

@implementation AVTAsset

- (AVTAsset)initWithType:(int64_t)type identifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v82.receiver = self;
  v82.super_class = AVTAsset;
  v11 = [(AVTAsset *)&v82 init];
  v12 = v11;
  if (v11)
  {
    v11->_componentType = type;
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_cacheLock._os_unfair_lock_opaque = 0;
    v13 = AVTPrecompiledMemojiAssetWithIdentifier(v12->_identifier);
    if (!v13)
    {
      v14 = avt_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTAsset initWithType:identifier:path:];
      }
    }

    v15 = [v13 objectForKeyedSubscript:@"variantDependencies-morph"];
    morphVariantDependencies = v12->_morphVariantDependencies;
    v12->_morphVariantDependencies = v15;

    v17 = [v13 objectForKeyedSubscript:@"variantDependencies-image"];
    imageVariantDependencies = v12->_imageVariantDependencies;
    v12->_imageVariantDependencies = v17;

    v19 = [v13 objectForKeyedSubscript:@"variantDependencies-material"];
    materialVariantDependencies = v12->_materialVariantDependencies;
    v12->_materialVariantDependencies = v19;

    v21 = [v13 objectForKeyedSubscript:@"layers"];
    if (v21)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __41__AVTAsset_initWithType_identifier_path___block_invoke;
      v79[3] = &unk_1E7F48280;
      v23 = v22;
      v80 = v23;
      v81 = pathCopy;
      [v21 enumerateKeysAndObjectsUsingBlock:v79];
      layers = v12->_layers;
      v12->_layers = v23;
      v25 = v23;
    }

    v70 = v21;
    v71 = identifierCopy;
    v26 = [v13 objectForKeyedSubscript:@"uvRemapping"];
    v69 = v26;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 objectForKeyedSubscript:@"transform"];
      v29 = [v27 objectForKeyedSubscript:@"mirroringEnabled"];
      v12->_uvRemappingInfo.mirroringEnabled = [v29 BOOLValue];

      v30 = [v28 objectAtIndexedSubscript:0];
      [v30 floatValue];
      v74 = v31;
      v32 = [v28 objectAtIndexedSubscript:1];
      [v32 floatValue];
      v75 = __PAIR64__(v33, v74);
      [v28 objectAtIndexedSubscript:2];
      v35 = v34 = pathCopy;
      [v35 floatValue];
      v72 = v36;
      v37 = [v28 objectAtIndexedSubscript:3];
      [v37 floatValue];
      v73 = __PAIR64__(v38, v72);
      v39 = [v28 objectAtIndexedSubscript:4];
      [v39 floatValue];
      v68 = v40;
      v41 = [v28 objectAtIndexedSubscript:5];
      [v41 floatValue];
      v12[1].super.isa = v75;
      v12[1]._identifier = v73;
      v12[1]._resourcePath = __PAIR64__(v42, v68);

      pathCopy = v34;
    }

    else
    {
      v12->_uvRemappingInfo.mirroringEnabled = 0;
      v12[1].super.isa = 1065353216;
      v12[1]._identifier = 0x3F80000000000000;
      v12[1]._resourcePath = 0;
    }

    v43 = [v13 objectForKeyedSubscript:@"main"];
    v44 = [pathCopy stringByAppendingPathComponent:v43];
    resourcePath = v12->_resourcePath;
    v12->_resourcePath = v44;

    pathExtension = [(NSString *)v12->_resourcePath pathExtension];
    if (([pathExtension isEqualToString:@"vfxz-world"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"vfx-world"))
    {
      v47 = [v13 objectForKeyedSubscript:@"accentColors"];
      v48 = v47;
      v49 = v70;
      identifierCopy = v71;
      if (v47)
      {
        unsignedIntegerValue = [v47 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 1;
      }

      v12->_editableColorCount = unsignedIntegerValue;
      v12->_resourceType = 0;
    }

    else
    {
      v12->_resourceType = 1;
      v49 = v70;
      identifierCopy = v71;
    }

    v51 = [v13 objectForKeyedSubscript:@"ao"];
    if (v51)
    {
      v52 = [pathCopy stringByAppendingPathComponent:v51];
      ambientOcclusion = v12->_ambientOcclusion;
      v12->_ambientOcclusion = v52;
    }

    v54 = [v13 objectForKeyedSubscript:@"mainPerAsset"];
    perAssetMain = v12->_perAssetMain;
    v12->_perAssetMain = v54;

    if (v12->_perAssetMain)
    {
      v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v57 = v12->_perAssetMain;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __41__AVTAsset_initWithType_identifier_path___block_invoke_2;
      v76[3] = &unk_1E7F482A8;
      v77 = v56;
      v78 = pathCopy;
      v58 = v56;
      [(NSDictionary *)v57 enumerateKeysAndObjectsUsingBlock:v76];
      v59 = [v58 copy];
      v60 = v12->_perAssetMain;
      v12->_perAssetMain = v59;
    }

    v61 = [v13 objectForKeyedSubscript:@"highTessellation"];

    if (v61)
    {
      v62 = [v13 objectForKeyedSubscript:@"highTessellation"];
      v12->_forceHighTessellation = [v62 BOOLValue];
    }

    v63 = [v13 objectForKeyedSubscript:@"specialization settings"];
    specializationSettings = v12->_specializationSettings;
    v12->_specializationSettings = v63;

    v65 = [v13 objectForKeyedSubscript:@"wrapDeformerInfo"];
    wrapDeformerDriverNames = v12->_wrapDeformerDriverNames;
    v12->_wrapDeformerDriverNames = v65;
  }

  return v12;
}

void __41__AVTAsset_initWithType_identifier_path___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 stringByAppendingPathComponent:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __41__AVTAsset_initWithType_identifier_path___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 stringByAppendingPathComponent:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  v14[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14[0] = self->_morphVariantDependencies;
  v14[1] = self->_imageVariantDependencies;
  v14[2] = self->_materialVariantDependencies;
  v7 = v14[kind];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke;
  v12[3] = &unk_1E7F482F8;
  v8 = blockCopy;
  v13 = v8;
  v9 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  for (i = 2; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTComponentTypeFromString(a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke_2;
  v7[3] = &unk_1E7F482D0;
  v8 = *(a1 + 32);
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)incrUseCount
{
  os_unfair_lock_lock(&self->_cacheLock);
  ++self->_refCount;

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)freeCache
{
  cachedResource = self->_cachedResource;
  self->_cachedResource = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)decrUseCount
{
  os_unfair_lock_lock(&self->_cacheLock);
  refCount = self->_refCount;
  if (refCount)
  {
    v4 = refCount - 1;
    self->_refCount = v4;
    if (!v4)
    {
      [(AVTAsset *)self freeCache];
    }
  }

  else
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTAsset decrUseCount];
    }
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)instantiateResource
{
  p_resourceType = &self->_resourceType;
  if (self->_resourceType == 1)
  {
    p_isa = self->_resourcePath;
  }

  else if (self->_resourceType)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AVTAsset *)p_resourceType instantiateResource];
    }

    p_isa = 0;
  }

  else
  {
    p_resourcePath = &self->_resourcePath;
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_resourcePath isDirectory:0];
    v20 = 0;
    v6 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:v5 options:0 error:&v20];
    v7 = v20;
    if (v7)
    {
      v8 = avt_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AVTAsset *)&self->_resourcePath instantiateResource];
      }

      p_isa = 0;
    }

    else
    {
      childNodes = [v6 childNodes];
      v8 = [childNodes objectAtIndexedSubscript:0];

      [v8 removeFromParentNode];
      if (v8)
      {
        if (self->_forceHighTessellation)
        {
          v12 = 1;
        }

        else
        {
          componentType = self->_componentType;
          v12 = componentType > 0x1B || ((1 << componentType) & 0xC000068) == 0;
        }

        [v8 avt_enableSubdivisionOnHierarchyWithQuality:v12 animoji:0];
        if (self->_wrapDeformerDriverNames)
        {
          stringByDeletingLastPathComponent = [(NSString *)self->_resourcePath stringByDeletingLastPathComponent];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __31__AVTAsset_instantiateResource__block_invoke;
          v18[3] = &unk_1E7F47EA0;
          v18[4] = self;
          v19 = stringByDeletingLastPathComponent;
          v16 = stringByDeletingLastPathComponent;
          [v8 enumerateHierarchyUsingBlock:v18];
        }

        v8 = v8;
        p_isa = &v8->isa;
      }

      else
      {
        v13 = avt_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(AVTAsset *)p_resourcePath instantiateResource];
        }

        p_isa = 0;
      }
    }
  }

  return p_isa;
}

void __31__AVTAsset_instantiateResource__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 model];

  if (v4)
  {
    v5 = [v3 name];
    v6 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:v5];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.wrapdata", v5, v6];
    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v17 = 0;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9 options:1 error:&v17];
      v13 = v17;
      v16 = v13;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v16];
      v15 = v16;

      [v3 setValue:v14 forUndefinedKey:@"wrapDeformerParameters"];
      [v3 setValue:v6 forUndefinedKey:@"wrapDeformerDriverName"];
    }
  }
}

- (id)resourceByCachingIfNeeded:(BOOL)needed
{
  if (!needed)
  {
    instantiateResource = [(AVTAsset *)self instantiateResource];
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_cacheLock);
  if (!self->_cachedResource)
  {
    instantiateResource2 = [(AVTAsset *)self instantiateResource];
    cachedResource = self->_cachedResource;
    self->_cachedResource = instantiateResource2;
  }

  if (self->_resourceType == 1)
  {
    v6 = self->_cachedResource;
  }

  else
  {
    if (self->_resourceType)
    {
      v8 = avt_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AVTAsset *)&self->_resourceType instantiateResource];
      }

      instantiateResource = 0;
      goto LABEL_13;
    }

    v6 = AVTCloneNodesAndMaterials(self->_cachedResource);
  }

  instantiateResource = v6;
LABEL_13:
  os_unfair_lock_unlock(&self->_cacheLock);
LABEL_14:

  return instantiateResource;
}

- (id)assetImageForAsset:(id)asset
{
  perAssetMain = self->_perAssetMain;
  identifier = [asset identifier];
  v5 = [(NSDictionary *)perAssetMain objectForKeyedSubscript:identifier];

  return v5;
}

- (void)initWithType:identifier:path:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)instantiateResource
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *self;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

@end