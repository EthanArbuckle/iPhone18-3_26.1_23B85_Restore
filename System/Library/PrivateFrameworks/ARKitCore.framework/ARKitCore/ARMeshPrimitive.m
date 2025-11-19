@interface ARMeshPrimitive
+ (id)planeWithTransform:min:max:texture:;
- (ARMeshPrimitive)initAsPlaneWithTransform:(__n128)a3 min:(__n128)a4 max:(__n128)a5 texture:(__n128)a6;
@end

@implementation ARMeshPrimitive

- (ARMeshPrimitive)initAsPlaneWithTransform:(__n128)a3 min:(__n128)a4 max:(__n128)a5 texture:(__n128)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a9;
  v32.receiver = a1;
  v32.super_class = ARMeshPrimitive;
  v12 = [(ARMeshPrimitive *)&v32 init];
  v13 = v12;
  if (v12)
  {
    *&v12[1].super.isa = a2;
    *&v12[1]._uvBuffer = a3;
    *&v12[1]._indexBuffer = a4;
    *&v12[1]._texture = a5;
    v14 = +[ARSharedGPUDevice sharedInstance];
    v15 = [v14 device];

    v16 = a7;
    v17 = a6;
    v17.n128_u32[1] = 0;
    v36[0] = v17;
    v17.n128_u32[2] = a7.n128_u32[2];
    v16.n128_u32[1] = 0;
    v18 = v16;
    v18.n128_u32[2] = a6.n128_u32[2];
    v36[1] = v18;
    v36[2] = v17;
    v36[3] = v16;
    v13->_nVertices = 4;
    v19 = [v15 newBufferWithBytes:v36 length:64 options:0];
    vertexBuffer = v13->_vertexBuffer;
    v13->_vertexBuffer = v19;

    v35[0] = xmmword_1C25C9448;
    v35[1] = unk_1C25C9458;
    v21 = [v15 newBufferWithBytes:v35 length:8 * v13->_nVertices options:0];
    uvBuffer = v13->_uvBuffer;
    v13->_uvBuffer = v21;

    v33 = xmmword_1C25C9468;
    v34 = 0x200000003;
    v13->_nIndices = 6;
    v23 = [v15 newBufferWithBytes:&v33 length:24 options:0];
    indexBuffer = v13->_indexBuffer;
    v13->_indexBuffer = v23;

    objc_storeStrong(&v13->_texture, a9);
  }

  return v13;
}

+ (id)planeWithTransform:min:max:texture:
{
  v0 = objc_opt_new();

  return v0;
}

@end