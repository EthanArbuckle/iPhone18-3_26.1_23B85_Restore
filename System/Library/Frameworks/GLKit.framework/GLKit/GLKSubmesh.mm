@interface GLKSubmesh
- (GLKMesh)mesh;
- (GLKSubmesh)initWithMesh:(id)mesh submesh:(id)submesh error:(id *)error;
@end

@implementation GLKSubmesh

- (GLKSubmesh)initWithMesh:(id)mesh submesh:(id)submesh error:(id *)error
{
  meshCopy = mesh;
  submeshCopy = submesh;
  v29.receiver = self;
  v29.super_class = GLKSubmesh;
  v10 = [(GLKSubmesh *)&v29 init];
  if (!v10)
  {
    goto LABEL_27;
  }

  geometryType = [submeshCopy geometryType];
  if ([submeshCopy indexType] == 16)
  {
    indexType = 0;
    v13 = 1;
    v14 = 5123;
  }

  else if ([submeshCopy indexType] == 32)
  {
    indexType = 0;
    v13 = 1;
    v14 = 5125;
  }

  else
  {
    if ([submeshCopy indexType] != 8)
    {
      if (error)
      {
        v16 = @"invalid index type in submesh";
LABEL_30:
        v27 = _GLKModelErrorWithCodeAndErrorString(0, v16);
LABEL_33:
        v26 = 0;
        *error = v27;
        goto LABEL_36;
      }

LABEL_35:
      v26 = 0;
      goto LABEL_36;
    }

    v13 = 0;
    v14 = 5123;
    indexType = 16;
  }

  v10->_type = v14;
  if ([submeshCopy geometryType] == 1)
  {
    v15 = 1;
  }

  else if ([submeshCopy geometryType])
  {
    if ([submeshCopy geometryType] == 2)
    {
      v15 = 4;
    }

    else if ([submeshCopy geometryType] == 3)
    {
      v15 = 5;
    }

    else
    {
      if ([submeshCopy geometryType] != 4 && objc_msgSend(submeshCopy, "geometryType") != 5)
      {
        if (error)
        {
          v16 = @"invalid geometry type in submesh";
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v13)
      {
        indexType = [submeshCopy indexType];
      }

      v15 = 4;
      geometryType = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  v10->_mode = v15;
  if (indexType)
  {
    v17 = [objc_alloc(getMDLSubmeshClass()) initWithMDLSubmesh:submeshCopy indexType:indexType geometryType:geometryType];

    submeshCopy = v17;
    if (!v17)
    {
      if (error)
      {
        v27 = _GLKModelErrorWithCodeAndErrorString(0, @"required conversion from orginal submesh indexType and geometryType failed");
        submeshCopy = 0;
        goto LABEL_33;
      }

      submeshCopy = 0;
      goto LABEL_35;
    }
  }

  indexBuffer = [submeshCopy indexBuffer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (error)
    {
      v16 = @"Index buffer in MDLSubmesh was not created using a GLKMeshBufferAllocator";
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  indexBuffer2 = [submeshCopy indexBuffer];
  elementBuffer = v10->_elementBuffer;
  v10->_elementBuffer = indexBuffer2;

  v10->_elementCount = [submeshCopy indexCount];
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [submeshCopy name];
  v24 = [v22 initWithString:name];
  name = v10->_name;
  v10->_name = v24;

  objc_storeWeak(&v10->_mesh, meshCopy);
LABEL_27:
  v26 = v10;
LABEL_36:

  return v26;
}

- (GLKMesh)mesh
{
  WeakRetained = objc_loadWeakRetained(&self->_mesh);

  return WeakRetained;
}

@end