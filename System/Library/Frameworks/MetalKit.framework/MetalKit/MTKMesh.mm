@interface MTKMesh
+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset device:(id)device sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error;
+ (void)_createMeshesFromObject:(id)a3 newMeshes:(id)a4 sourceMeshes:(id)a5 device:(id)a6 error:(id *)a7;
- (MTKMesh)initWithMesh:(MDLMesh *)mesh device:(id)device error:(NSError *)error;
@end

@implementation MTKMesh

- (MTKMesh)initWithMesh:(MDLMesh *)mesh device:(id)device error:(NSError *)error
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = mesh;
  v43 = device;
  v53.receiver = self;
  v53.super_class = MTKMesh;
  v9 = [(MTKMesh *)&v53 init];
  if (v9)
  {
    v44 = error;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    vertexBuffers = v9->_vertexBuffers;
    v9->_vertexBuffers = v10;

    v9->_vertexCount = [(MDLMesh *)v8 vertexCount];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = v8;
    v12 = [(MDLMesh *)v8 vertexBuffers];
    v13 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          v18 = [MEMORY[0x1E695DFB0] null];
          v19 = [v17 isEqual:v18];

          if ((v19 & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v44)
              {
                *v44 = _MTKModelErrorWithCodeAndErrorString(0, @"vertex buffer in MDLMesh was not created using a MTKMeshBufferAllocator");
              }

LABEL_28:

              v39 = 0;
              v8 = v42;
              goto LABEL_29;
            }

            [(NSMutableArray *)v9->_vertexBuffers addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    submeshes = v9->_submeshes;
    v9->_submeshes = v20;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = [(MDLMesh *)v42 submeshes];
    v22 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v12);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          v27 = [v26 indexBuffer];
          if (v27)
          {
            v28 = v27;
            v29 = [v26 indexCount];

            if (v29)
            {
              v30 = [[MTKSubmesh alloc] initWithMesh:v9 submesh:v26 device:v43 error:v44];
              if (!v30)
              {
                goto LABEL_28;
              }

              v31 = v30;
              [(NSMutableArray *)v9->_submeshes addObject:v30];
            }
          }
        }

        v23 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v23);
    }

    v8 = v42;
    v32 = [(MDLMesh *)v42 vertexDescriptor];
    vertexDescriptor = v9->_vertexDescriptor;
    v9->_vertexDescriptor = v32;

    v34 = [(MDLMesh *)v42 name];

    if (v34)
    {
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      v36 = [(MDLMesh *)v42 name];
      v37 = [v35 initWithString:v36];
      name = v9->_name;
      v9->_name = v37;
    }
  }

  v39 = v9;
LABEL_29:

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

+ (void)_createMeshesFromObject:(id)a3 newMeshes:(id)a4 sourceMeshes:(id)a5 device:(id)a6 error:(id *)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  getMDLMeshClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v12;
    v17 = [[MTKMesh alloc] initWithMesh:v16 device:v15 error:a7];
    if (!v17)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    [v13 addObject:v17];
    [v14 addObject:v16];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [v12 children];
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [a1 _createMeshesFromObject:*(*(&v24 + 1) + 8 * v22++) newMeshes:v13 sourceMeshes:v14 device:v15 error:a7];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset device:(id)device sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = asset;
  v11 = device;
  v12 = v11;
  if (!v10)
  {
    if (error)
    {
      v20 = @"Must supply asset";
LABEL_19:
      _MTKModelErrorWithCodeAndErrorString(0, v20);
      *error = v13 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (!v11)
  {
    if (error)
    {
      v20 = @"Must supply device";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = sourceMeshes;
  if (sourceMeshes)
  {
    sourceMeshes = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v10;
  v15 = [(MDLAsset *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [a1 _createMeshesFromObject:*(*(&v24 + 1) + 8 * i) newMeshes:v13 sourceMeshes:sourceMeshes device:v12 error:error];
      }

      v16 = [(MDLAsset *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  if (v23)
  {
    v19 = sourceMeshes;
    *v23 = sourceMeshes;
  }

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

@end