@interface NTKKaleidoscopeResourceManager
+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3;
+ (void)_deallocInstance:(id)a3;
- (NTKKaleidoscopeResourceManager)initWithPixelFormat:(unint64_t)a3;
- (id)_pipelineStateForShaderType:(unint64_t)a3 vertexName:(id)a4 fragmentName:(id)a5 inLibrary:(id)a6 archive:(id)a7 allowsBlending:(BOOL)a8;
- (void)_asyncDeallocInstance;
- (void)_loadMTLBufferData;
- (void)_loadPrograms;
- (void)_queue_setupPipelineForType:(unint64_t)a3 vertexName:(id)a4 fragmentName:(id)a5 inLibrary:(id)a6 archive:(id)a7;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NTKKaleidoscopeResourceManager

+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  if (!qword_2CF88)
  {
    v5 = [[NTKKaleidoscopeResourceManager alloc] initWithPixelFormat:a3];
    v6 = qword_2CF88;
    qword_2CF88 = v5;
  }

  objc_sync_exit(v4);

  v7 = qword_2CF88;
  if (*(qword_2CF88 + 32) != a3)
  {
    sub_1559C();
  }

  return v7;
}

+ (void)_deallocInstance:(id)a3
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = qword_2CF88;
  qword_2CF88 = 0;

  objc_sync_exit(obj);
}

- (NTKKaleidoscopeResourceManager)initWithPixelFormat:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopeResourceManager;
  v4 = [(NTKKaleidoscopeResourceManager *)&v10 init];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v4->_bundle;
    v4->_bundle = v5;

    v4->_viewMtlPixelFormat = a3;
    v7 = +[CLKUIMetalResourceManager sharedDevice];
    device = v4->_device;
    v4->_device = v7;

    [(NTKKaleidoscopeResourceManager *)v4 _loadMTLBufferData];
    [(NTKKaleidoscopeResourceManager *)v4 _loadPrograms];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKKaleidoscopeResourceManager;
  [(NTKKaleidoscopeResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  v2 = +[NSThread isMainThread];
  v3 = objc_opt_class();
  if (v2)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:"_deallocInstance:" withObject:? waitUntilDone:?];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_clients - 1;
  v2->_clients = v3;
  objc_sync_exit(v2);

  if (!v3)
  {

    [(NTKKaleidoscopeResourceManager *)v2 _asyncDeallocInstance];
  }
}

- (void)_loadMTLBufferData
{
  v3 = [(MTLDevice *)self->_device newBufferWithLength:128 options:0];
  v4 = [v3 contents];
  *v4->f32 = xmmword_1B6E8;
  *v4[2].f32 = unk_1B6F8;
  v5 = v4 + 5;
  v6 = 17;
  v7 = 6;
  v8 = vdup_n_s32(0x3F866666u);
  do
  {
    v9 = __sincosf_stret((v7 + 10) * 0.5236);
    v5[-1] = vmul_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), v8);
    v10 = __sincosf_stret(v6 * 0.5236);
    *v5 = vmul_f32(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), v8);
    v5 += 2;
    ++v6;
    --v7;
  }

  while (v7);
  mtlBuffer = self->_mtlBuffer;
  self->_mtlBuffer = v3;
}

- (id)_pipelineStateForShaderType:(unint64_t)a3 vertexName:(id)a4 fragmentName:(id)a5 inLibrary:(id)a6 archive:(id)a7 allowsBlending:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *(&off_24DF0 + a3);
  v19 = @"off";
  if (v8)
  {
    v19 = @"on";
  }

  v20 = [NSString stringWithFormat:@"%@_blend_%@", *(&off_24DF0 + a3), v19];
  v51 = v8;
  v21 = objc_opt_new();
  [v21 setConstantValue:&v51 type:53 atIndex:0];
  v22 = +[MTLFunctionDescriptor functionDescriptor];
  v50 = v14;
  [v22 setName:v14];
  [v22 setConstantValues:v21];
  v23 = [v17 newFunctionInLibrary:v16 withDescriptor:v22];
  v49 = v15;
  [v22 setName:v15];
  v47 = v16;
  v24 = [v17 newFunctionInLibrary:v16 withDescriptor:v22];
  v25 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v48 = v20;
  [v25 setLabel:v20];
  v46 = v23;
  [v25 setVertexFunction:v23];
  [v25 setFragmentFunction:v24];
  viewMtlPixelFormat = self->_viewMtlPixelFormat;
  v27 = [v25 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setPixelFormat:viewMtlPixelFormat];

  if (v8)
  {
    v29 = [v25 colorAttachments];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setBlendingEnabled:1];

    v31 = [v25 colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setRgbBlendOperation:0];

    v33 = [v25 colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setAlphaBlendOperation:0];

    v35 = [v25 colorAttachments];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 setSourceRGBBlendFactor:4];

    v37 = [v25 colorAttachments];
    v38 = [v37 objectAtIndexedSubscript:0];
    [v38 setSourceAlphaBlendFactor:4];

    v39 = [v25 colorAttachments];
    v40 = [v39 objectAtIndexedSubscript:0];
    [v40 setDestinationRGBBlendFactor:5];

    v41 = [v25 colorAttachments];
    v42 = [v41 objectAtIndexedSubscript:0];
    [v42 setDestinationAlphaBlendFactor:5];
  }

  v43 = [v17 newRenderPipelineStateForDevice:self->_device withDescriptor:v25];
  if (!v43)
  {
    sub_155C8();
  }

  v44 = v43;

  return v44;
}

- (void)_queue_setupPipelineForType:(unint64_t)a3 vertexName:(id)a4 fragmentName:(id)a5 inLibrary:(id)a6 archive:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [(NTKKaleidoscopeResourceManager *)self _pipelineStateForShaderType:a3 vertexName:v15 fragmentName:v14 inLibrary:v13 archive:v12 allowsBlending:0];
  v17 = self + 16 * a3;
  v18 = *(v17 + 5);
  *(v17 + 5) = v16;

  v19 = [(NTKKaleidoscopeResourceManager *)self _pipelineStateForShaderType:a3 vertexName:v15 fragmentName:v14 inLibrary:v13 archive:v12 allowsBlending:1];

  v20 = *(v17 + 6);
  *(v17 + 6) = v19;
}

- (void)_loadPrograms
{
  device = self->_device;
  if (qword_2CF98 != -1)
  {
    sub_155F4();
  }

  v8 = 0;
  v4 = qword_2CF90;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v4 error:&v8];
  v6 = v8;

  v7 = [CLKUIMetalBinaryArchive archiveWithName:@"NTKKaleidoscopeShaders" bundle:self->_bundle device:self->_device];

  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:0 vertexName:@"kal_circle_vert" fragmentName:@"kal_faceted_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:1 vertexName:@"kal_circle_vert" fragmentName:@"kal_radial_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:2 vertexName:@"kal_circle_vert" fragmentName:@"kal_rosette_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:3 vertexName:@"kal_fullscreen_vert" fragmentName:@"kal_faceted_fullscreen_frag" inLibrary:v5 archive:v7];
}

@end