@interface MTKSubmesh
- (MTKMesh)mesh;
- (MTKSubmesh)initWithMesh:(id)a3 submesh:(id)a4 device:(id)a5 error:(id *)a6;
@end

@implementation MTKSubmesh

- (MTKSubmesh)initWithMesh:(id)a3 submesh:(id)a4 device:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v31.receiver = self;
  v31.super_class = MTKSubmesh;
  v11 = [(MTKSubmesh *)&v31 init];
  if (v11)
  {
    v12 = [v10 geometryType];
    if ([v10 indexType] == 32)
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      if ([v10 indexType] != 16)
      {
        if ([v10 indexType] != 8)
        {
          if (a6)
          {
            v17 = @"invalid index type submesh";
LABEL_33:
            v29 = _MTKModelErrorWithCodeAndErrorString(0, v17);
LABEL_36:
            v28 = 0;
            *a6 = v29;
            goto LABEL_39;
          }

LABEL_38:
          v28 = 0;
          goto LABEL_39;
        }

        v14 = 0;
        v15 = 0;
        v13 = 16;
LABEL_7:
        v11->_indexType = v14;
        if ([v10 geometryType] == 1)
        {
          v16 = 1;
LABEL_24:
          v11->_primitiveType = v16;
          if (v13 && (v18 = [objc_alloc(getMDLSubmeshClass()) initWithMDLSubmesh:v10 indexType:v13 geometryType:v12], v10, (v10 = v18) == 0))
          {
            if (a6)
            {
              v29 = _MTKModelErrorWithCodeAndErrorString(0, @"required conversion from orginal submesh indexType and geometryType failed");
              v10 = 0;
              goto LABEL_36;
            }

            v10 = 0;
          }

          else
          {
            v19 = [v10 indexBuffer];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v21 = [v10 indexBuffer];
              indexBuffer = v11->_indexBuffer;
              v11->_indexBuffer = v21;

              v11->_indexCount = [v10 indexCount];
              v23 = [v10 name];

              if (v23)
              {
                v24 = objc_alloc(MEMORY[0x1E696AEC0]);
                v25 = [v10 name];
                v26 = [v24 initWithString:v25];
                name = v11->_name;
                v11->_name = v26;
              }

              objc_storeWeak(&v11->_mesh, v9);
              goto LABEL_30;
            }

            if (a6)
            {
              v17 = @"index buffer in MDLSubmesh was not created using a MTKMeshBufferAllocator";
              goto LABEL_33;
            }
          }

          goto LABEL_38;
        }

        if (![v10 geometryType])
        {
          v16 = 0;
          goto LABEL_24;
        }

        if ([v10 geometryType] != 2)
        {
          if ([v10 geometryType] == 3)
          {
            v16 = 4;
            goto LABEL_24;
          }

          if ([v10 geometryType] != 4 && objc_msgSend(v10, "geometryType") != 5)
          {
            if (a6)
            {
              v17 = @"invalid geometry type in submesh";
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v15)
          {
            v13 = [v10 indexType];
          }

          v12 = 2;
        }

        v16 = 3;
        goto LABEL_24;
      }

      v14 = 0;
      v13 = 0;
    }

    v15 = 1;
    goto LABEL_7;
  }

LABEL_30:
  v28 = v11;
LABEL_39:

  return v28;
}

- (MTKMesh)mesh
{
  WeakRetained = objc_loadWeakRetained(&self->_mesh);

  return WeakRetained;
}

@end