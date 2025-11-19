@interface GLKMesh
+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error;
+ (void)_createMeshesFromObject:(id)a3 newMeshes:(id)a4 sourceMeshes:(id)a5 error:(id *)a6;
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

  v8 = [MEMORY[0x277CD9388] currentContext];
  v9 = v8;
  if (v8)
  {
    v45 = error;
    v43 = v8;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = v7->_vertexBuffers;
    v7->_vertexBuffers = v10;

    v7->_vertexCount = [(MDLMesh *)v6 vertexCount];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = v6;
    v12 = [(MDLMesh *)v6 vertexBuffers];
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v56 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v18 = [MEMORY[0x277CBEB68] null];
          v19 = [v17 isEqual:v18];

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

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v56 count:16];
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
    v22 = [(MDLMesh *)v44 submeshes];
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v55 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v46 + 1) + 8 * j);
          v28 = [v27 indexBuffer];
          if (v28)
          {
            v29 = v28;
            v30 = [v27 indexCount];

            if (v30)
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

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v33 = [(MDLMesh *)v44 vertexDescriptor];
    vertexDescriptor = v7->_vertexDescriptor;
    v7->_vertexDescriptor = v33;

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [(MDLMesh *)v44 name];
    v37 = v35;
    v6 = v44;
    v38 = [v37 initWithString:v36];
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

+ (void)_createMeshesFromObject:(id)a3 newMeshes:(id)a4 sourceMeshes:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  getMDLMeshClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [[GLKMesh alloc] initWithMesh:v13 error:a6];
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB68] null];
    }

    [v11 addObject:v14];
    [v12 addObject:v13];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v10 children];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v15);
        }

        [a1 _createMeshesFromObject:*(*(&v21 + 1) + 8 * v19++) newMeshes:v11 sourceMeshes:v12 error:a6];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = asset;
  v9 = [MEMORY[0x277CD9388] currentContext];
  if (!v9)
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

        [a1 _createMeshesFromObject:*(*(&v21 + 1) + 8 * i) newMeshes:v10 sourceMeshes:sourceMeshes error:error];
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