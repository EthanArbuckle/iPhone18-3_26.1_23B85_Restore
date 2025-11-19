@interface GLKSubmesh
- (GLKMesh)mesh;
- (GLKSubmesh)initWithMesh:(id)a3 submesh:(id)a4 error:(id *)a5;
@end

@implementation GLKSubmesh

- (GLKSubmesh)initWithMesh:(id)a3 submesh:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = GLKSubmesh;
  v10 = [(GLKSubmesh *)&v29 init];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = [v9 geometryType];
  if ([v9 indexType] == 16)
  {
    v12 = 0;
    v13 = 1;
    v14 = 5123;
  }

  else if ([v9 indexType] == 32)
  {
    v12 = 0;
    v13 = 1;
    v14 = 5125;
  }

  else
  {
    if ([v9 indexType] != 8)
    {
      if (a5)
      {
        v16 = @"invalid index type in submesh";
LABEL_30:
        v27 = _GLKModelErrorWithCodeAndErrorString(0, v16);
LABEL_33:
        v26 = 0;
        *a5 = v27;
        goto LABEL_36;
      }

LABEL_35:
      v26 = 0;
      goto LABEL_36;
    }

    v13 = 0;
    v14 = 5123;
    v12 = 16;
  }

  v10->_type = v14;
  if ([v9 geometryType] == 1)
  {
    v15 = 1;
  }

  else if ([v9 geometryType])
  {
    if ([v9 geometryType] == 2)
    {
      v15 = 4;
    }

    else if ([v9 geometryType] == 3)
    {
      v15 = 5;
    }

    else
    {
      if ([v9 geometryType] != 4 && objc_msgSend(v9, "geometryType") != 5)
      {
        if (a5)
        {
          v16 = @"invalid geometry type in submesh";
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v13)
      {
        v12 = [v9 indexType];
      }

      v15 = 4;
      v11 = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  v10->_mode = v15;
  if (v12)
  {
    v17 = [objc_alloc(getMDLSubmeshClass()) initWithMDLSubmesh:v9 indexType:v12 geometryType:v11];

    v9 = v17;
    if (!v17)
    {
      if (a5)
      {
        v27 = _GLKModelErrorWithCodeAndErrorString(0, @"required conversion from orginal submesh indexType and geometryType failed");
        v9 = 0;
        goto LABEL_33;
      }

      v9 = 0;
      goto LABEL_35;
    }
  }

  v18 = [v9 indexBuffer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (a5)
    {
      v16 = @"Index buffer in MDLSubmesh was not created using a GLKMeshBufferAllocator";
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v20 = [v9 indexBuffer];
  elementBuffer = v10->_elementBuffer;
  v10->_elementBuffer = v20;

  v10->_elementCount = [v9 indexCount];
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = [v9 name];
  v24 = [v22 initWithString:v23];
  name = v10->_name;
  v10->_name = v24;

  objc_storeWeak(&v10->_mesh, v8);
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