@interface MTKSubmesh
- (MTKMesh)mesh;
- (MTKSubmesh)initWithMesh:(id)mesh submesh:(id)submesh device:(id)device error:(id *)error;
@end

@implementation MTKSubmesh

- (MTKSubmesh)initWithMesh:(id)mesh submesh:(id)submesh device:(id)device error:(id *)error
{
  meshCopy = mesh;
  submeshCopy = submesh;
  v31.receiver = self;
  v31.super_class = MTKSubmesh;
  v11 = [(MTKSubmesh *)&v31 init];
  if (v11)
  {
    geometryType = [submeshCopy geometryType];
    if ([submeshCopy indexType] == 32)
    {
      indexType = 0;
      v14 = 1;
    }

    else
    {
      if ([submeshCopy indexType] != 16)
      {
        if ([submeshCopy indexType] != 8)
        {
          if (error)
          {
            v17 = @"invalid index type submesh";
LABEL_33:
            v29 = _MTKModelErrorWithCodeAndErrorString(0, v17);
LABEL_36:
            v28 = 0;
            *error = v29;
            goto LABEL_39;
          }

LABEL_38:
          v28 = 0;
          goto LABEL_39;
        }

        v14 = 0;
        v15 = 0;
        indexType = 16;
LABEL_7:
        v11->_indexType = v14;
        if ([submeshCopy geometryType] == 1)
        {
          v16 = 1;
LABEL_24:
          v11->_primitiveType = v16;
          if (indexType && (v18 = [objc_alloc(getMDLSubmeshClass()) initWithMDLSubmesh:submeshCopy indexType:indexType geometryType:geometryType], submeshCopy, (submeshCopy = v18) == 0))
          {
            if (error)
            {
              v29 = _MTKModelErrorWithCodeAndErrorString(0, @"required conversion from orginal submesh indexType and geometryType failed");
              submeshCopy = 0;
              goto LABEL_36;
            }

            submeshCopy = 0;
          }

          else
          {
            indexBuffer = [submeshCopy indexBuffer];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              indexBuffer2 = [submeshCopy indexBuffer];
              indexBuffer = v11->_indexBuffer;
              v11->_indexBuffer = indexBuffer2;

              v11->_indexCount = [submeshCopy indexCount];
              name = [submeshCopy name];

              if (name)
              {
                v24 = objc_alloc(MEMORY[0x1E696AEC0]);
                name2 = [submeshCopy name];
                v26 = [v24 initWithString:name2];
                name = v11->_name;
                v11->_name = v26;
              }

              objc_storeWeak(&v11->_mesh, meshCopy);
              goto LABEL_30;
            }

            if (error)
            {
              v17 = @"index buffer in MDLSubmesh was not created using a MTKMeshBufferAllocator";
              goto LABEL_33;
            }
          }

          goto LABEL_38;
        }

        if (![submeshCopy geometryType])
        {
          v16 = 0;
          goto LABEL_24;
        }

        if ([submeshCopy geometryType] != 2)
        {
          if ([submeshCopy geometryType] == 3)
          {
            v16 = 4;
            goto LABEL_24;
          }

          if ([submeshCopy geometryType] != 4 && objc_msgSend(submeshCopy, "geometryType") != 5)
          {
            if (error)
            {
              v17 = @"invalid geometry type in submesh";
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v15)
          {
            indexType = [submeshCopy indexType];
          }

          geometryType = 2;
        }

        v16 = 3;
        goto LABEL_24;
      }

      v14 = 0;
      indexType = 0;
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