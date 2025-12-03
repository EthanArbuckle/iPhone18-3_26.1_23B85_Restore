@interface GLKMesh
+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error;
+ (void)_createMeshesFromObject:(id)object newMeshes:(id)meshes sourceMeshes:(id)sourceMeshes error:(id *)error;
- (GLKMesh)initWithMesh:(MDLMesh *)mesh error:(NSError *)error;
@end

@implementation GLKMesh

- (GLKMesh)initWithMesh:(MDLMesh *)mesh error:(NSError *)error
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = mesh;
  v54.receiver = self;
  v54.super_class = GLKMesh;
  v7 = [(GLKMesh *)&v54 init];
  if (!v7)
  {
LABEL_25:
    v40 = v7;
    goto LABEL_34;
  }

  currentContext = [MEMORY[0x277CD9388] currentContext];
  v9 = currentContext;
  if (currentContext)
  {
    v45 = error;
    v43 = currentContext;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = v7->_vertexBuffers;
    v7->_vertexBuffers = v10;

    v7->_vertexCount = [(MDLMesh *)v6 vertexCount];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = v6;
    vertexBuffers = [(MDLMesh *)v6 vertexBuffers];
    v13 = [vertexBuffers countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(vertexBuffers);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          null = [MEMORY[0x277CBEB68] null];
          v19 = [v17 isEqual:null];

          if ((v19 & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v45)
              {
                *v45 = _GLKModelErrorWithCodeAndErrorString(0, @"Vertex buffer in MDLMesh was not created using a GLKMeshBufferAllocator");
              }

              v6 = v44;
LABEL_32:
              v9 = v43;
              goto LABEL_33;
            }

            [(NSMutableArray *)v7->_vertexBuffers addObject:v17];
          }
        }

        v14 = [vertexBuffers countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    submeshes = v7->_submeshes;
    v7->_submeshes = v20;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = v44;
    submeshes = [(MDLMesh *)v44 submeshes];
    v23 = [submeshes countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(submeshes);
          }

          v27 = *(*(&v46 + 1) + 8 * j);
          indexBuffer = [v27 indexBuffer];
          if (indexBuffer)
          {
            v29 = indexBuffer;
            indexCount = [v27 indexCount];

            if (indexCount)
            {
              v31 = [[GLKSubmesh alloc] initWithMesh:v7 submesh:v27 error:v45];
              if (!v31)
              {

                goto LABEL_32;
              }

              v32 = v31;
              [(NSMutableArray *)v7->_submeshes addObject:v31];
            }
          }
        }

        v24 = [submeshes countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    vertexDescriptor = [(MDLMesh *)v44 vertexDescriptor];
    vertexDescriptor = v7->_vertexDescriptor;
    v7->_vertexDescriptor = vertexDescriptor;

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    name = [(MDLMesh *)v44 name];
    v37 = v35;
    v6 = v44;
    v38 = [v37 initWithString:name];
    name = v7->_name;
    v7->_name = v38;

    goto LABEL_25;
  }

  if (error)
  {
    *error = _GLKModelErrorWithCodeAndErrorString(0, @"An EAGL context must be current");
  }

LABEL_33:

  v40 = 0;
LABEL_34:

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

+ (void)_createMeshesFromObject:(id)object newMeshes:(id)meshes sourceMeshes:(id)sourceMeshes error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  meshesCopy = meshes;
  sourceMeshesCopy = sourceMeshes;
  getMDLMeshClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    null = [[GLKMesh alloc] initWithMesh:v13 error:error];
    if (!null)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    [meshesCopy addObject:null];
    [sourceMeshesCopy addObject:v13];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  children = [objectCopy children];
  v16 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(children);
        }

        [self _createMeshesFromObject:*(*(&v21 + 1) + 8 * v19++) newMeshes:meshesCopy sourceMeshes:sourceMeshesCopy error:error];
      }

      while (v17 != v19);
      v17 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = asset;
  currentContext = [MEMORY[0x277CD9388] currentContext];
  if (!currentContext)
  {
    if (error)
    {
      v17 = @"An EAGL context must be current";
LABEL_19:
      _GLKModelErrorWithCodeAndErrorString(0, v17);
      *error = v10 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if (!v8)
  {
    if (error)
    {
      v17 = @"Must supply asset";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = sourceMeshes;
  if (sourceMeshes)
  {
    sourceMeshes = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [(MDLAsset *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [self _createMeshesFromObject:*(*(&v21 + 1) + 8 * i) newMeshes:v10 sourceMeshes:sourceMeshes error:error];
      }

      v13 = [(MDLAsset *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  if (v20)
  {
    v16 = sourceMeshes;
    *v20 = sourceMeshes;
  }

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

@end