@interface ARMeshPrimitive
+ (id)planeWithTransform:min:max:texture:;
- (ARMeshPrimitive)initAsPlaneWithTransform:(__n128)transform min:(__n128)min max:(__n128)max texture:(__n128)texture;
@end

@implementation ARMeshPrimitive

- (ARMeshPrimitive)initAsPlaneWithTransform:(__n128)transform min:(__n128)min max:(__n128)max texture:(__n128)texture
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a9;
  v32.receiver = self;
  v32.super_class = ARMeshPrimitive;
  v12 = [(ARMeshPrimitive *)&v32 init];
  v13 = v12;
  if (v12)
  {
    *&v12[1].super.isa = a2;
    *&v12[1]._uvBuffer = transform;
    *&v12[1]._indexBuffer = min;
    *&v12[1]._texture = max;
    v14 = +[ARSharedGPUDevice sharedInstance];
    device = [v14 device];

    v16 = a7;
    textureCopy = texture;
    textureCopy.n128_u32[1] = 0;
    v36[0] = textureCopy;
    textureCopy.n128_u32[2] = a7.n128_u32[2];
    v16.n128_u32[1] = 0;
    v18 = v16;
    v18.n128_u32[2] = texture.n128_u32[2];
    v36[1] = v18;
    v36[2] = textureCopy;
    v36[3] = v16;
    v13->_nVertices = 4;
    v19 = [device newBufferWithBytes:v36 length:64 options:0];
    vertexBuffer = v13->_vertexBuffer;
    v13->_vertexBuffer = v19;

    v35[0] = xmmword_1C25C9448;
    v35[1] = unk_1C25C9458;
    v21 = [device newBufferWithBytes:v35 length:8 * v13->_nVertices options:0];
    uvBuffer = v13->_uvBuffer;
    v13->_uvBuffer = v21;

    v33 = xmmword_1C25C9468;
    v34 = 0x200000003;
    v13->_nIndices = 6;
    v23 = [device newBufferWithBytes:&v33 length:24 options:0];
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