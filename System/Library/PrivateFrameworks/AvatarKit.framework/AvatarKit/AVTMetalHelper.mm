@interface AVTMetalHelper
+ (id)helperForDevice:(uint64_t)a1;
- (id)_initWithDevice:(id)a3;
- (id)_locked_computePipelineStateWithFunctionName:(id)a3;
- (id)_locked_functionNamed:(id)a3;
- (id)_locked_renderPipelineStateWithDescriptor:(id *)a3 hashNumber:(id)a4;
- (id)computePipelineStateWithFunctionName:(id)a1;
- (id)device;
- (id)functionNamed:(id)a1;
- (id)renderPipelineStateWithDescriptor:(void *)a1;
- (os_unfair_lock_s)library;
- (void)_locked_instanciateLibraryIfNeeded;
@end

@implementation AVTMetalHelper

- (id)_initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTMetalHelper;
  v6 = [(AVTMetalHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)helperForDevice:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&helperForDevice___lock);
  if (!helperForDevice___helpers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = helperForDevice___helpers;
    helperForDevice___helpers = v3;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "registryID")}];
  v6 = [helperForDevice___helpers objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [[AVTMetalHelper alloc] _initWithDevice:v2];
    [helperForDevice___helpers setObject:v6 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&helperForDevice___lock);

  return v6;
}

- (void)_locked_instanciateLibraryIfNeeded
{
  if (!self->_library)
  {
    v4 = +[AVTResourceLocator sharedResourceLocator];
    v7 = [(AVTResourceLocator *)v4 urlForFrameworkResourceAtPath:0 isDirectory:?];

    v5 = [(MTLDevice *)self->_device newLibraryWithURL:v7 error:0];
    library = self->_library;
    self->_library = v5;
  }
}

- (id)_locked_functionNamed:(id)a3
{
  v4 = a3;
  functions = self->_functions;
  if (!functions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_functions;
    self->_functions = v6;

    functions = self->_functions;
  }

  v8 = [(NSMutableDictionary *)functions objectForKeyedSubscript:v4];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    [(AVTMetalHelper *)self _locked_instanciateLibraryIfNeeded];
    v9 = [(MTLLibrary *)self->_library newFunctionWithName:v4];
    [(NSMutableDictionary *)self->_functions setObject:v9 forKeyedSubscript:v4];
    if (!v9)
    {
      v10 = avt_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v10 _locked_functionNamed:v11, v12, v13, v14, v15, v16, v17];
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)renderPipelineStateWithDescriptor:(void *)a1
{
  v3 = a1;
  if (a1)
  {
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *a2) ^ ((0x9DDFEA08EB382D69 * *a2) >> 47));
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ *(a2 + 8))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ *(a2 + 8))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ *(a2 + 8))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ *(a2 + 8))))) >> 47));
    if (*(a2 + 16) == 1)
    {
      v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ 1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ 1)));
      v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ ((0x9DDFEA08EB382D69 * (*(a2 + 24) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a2 + 24) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))))));
      v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ *(a2 + 32))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ *(a2 + 32))));
      v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ *(a2 + 40))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ *(a2 + 40))));
      v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ *(a2 + 48))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ *(a2 + 48))));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ *(a2 + 56))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ *(a2 + 56))));
      v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ *(a2 + 64))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ *(a2 + 64))))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ *(a2 + 64))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ *(a2 + 64))))) >> 47));
    }

    v14 = [*(a2 + 72) hash];
    v15 = [*(a2 + 80) hash];
    v16 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v6)));
    v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ (0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))))));
    v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (*(a2 + 88) ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a2 + 88) ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (*(a2 + 88) ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a2 + 88) ^ v18)))) >> 47))];
    v20 = [*(v3 + 5) objectForKeyedSubscript:v19];
    if (!v20)
    {
      os_unfair_lock_lock(v3 + 6);
      v21 = *(a2 + 48);
      v27[2] = *(a2 + 32);
      v27[3] = v21;
      v22 = *(a2 + 72);
      v28 = *(a2 + 64);
      v23 = *(a2 + 16);
      v27[0] = *a2;
      v27[1] = v23;
      v29 = v22;
      v24 = *(a2 + 80);
      v25 = *(a2 + 88);
      v30 = v24;
      v31 = v25;
      v20 = [v3 _locked_renderPipelineStateWithDescriptor:v27 hashNumber:v19];
      os_unfair_lock_unlock(v3 + 6);
    }

    v3 = v20;
  }

  return v3;
}

- (id)_locked_renderPipelineStateWithDescriptor:(id *)a3 hashNumber:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  renderPipelineStates = self->_renderPipelineStates;
  if (!renderPipelineStates)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_renderPipelineStates;
    self->_renderPipelineStates = v8;

    renderPipelineStates = self->_renderPipelineStates;
  }

  v10 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:v6];
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6974140]);
    v12 = [v11 colorAttachments];
    v13 = [v12 objectAtIndexedSubscript:0];

    [v13 setPixelFormat:a3->var0];
    [v11 setDepthAttachmentPixelFormat:a3->var1];
    [v13 setBlendingEnabled:a3->var2];
    [v13 setRgbBlendOperation:a3->var3];
    [v13 setSourceRGBBlendFactor:a3->var4];
    [v13 setDestinationRGBBlendFactor:a3->var5];
    [v13 setAlphaBlendOperation:a3->var6];
    [v13 setSourceAlphaBlendFactor:a3->var7];
    [v13 setDestinationAlphaBlendFactor:a3->var8];
    v14 = [(AVTMetalHelper *)self _locked_functionNamed:a3->var9];
    [v11 setVertexFunction:v14];

    v15 = [(AVTMetalHelper *)self _locked_functionNamed:a3->var10];
    [v11 setFragmentFunction:v15];

    [v11 setRasterSampleCount:a3->var11];
    device = self->_device;
    v31 = 0;
    v10 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v11 error:&v31];
    v17 = v31;
    if (v17)
    {
      v18 = avt_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        var9 = a3->var9;
        var10 = a3->var10;
        *buf = 138412802;
        v33 = var9;
        v34 = 2112;
        v35 = var10;
        v36 = 2112;
        v37 = v17;
        _os_log_error_impl(&dword_1BB472000, v18, OS_LOG_TYPE_ERROR, "Error: Failed to create render pipeline state for %@ + %@ with error %@", buf, 0x20u);
      }
    }

    [(NSMutableDictionary *)self->_renderPipelineStates setObject:v10 forKeyedSubscript:v6];

    if (!v10)
    {
      v19 = avt_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v19 _locked_renderPipelineStateWithDescriptor:v20 hashNumber:v21, v22, v23, v24, v25, v26];
      }

      v10 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_locked_computePipelineStateWithFunctionName:(id)a3
{
  v4 = a3;
  computePipelineStates = self->_computePipelineStates;
  if (!computePipelineStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_computePipelineStates;
    self->_computePipelineStates = v6;

    computePipelineStates = self->_computePipelineStates;
  }

  v8 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:v4];
  if (!v8)
  {
    v9 = [(AVTMetalHelper *)self _locked_functionNamed:v4];
    device = self->_device;
    v22 = 0;
    v8 = [(MTLDevice *)device newComputePipelineStateWithFunction:v9 error:&v22];
    v11 = v22;
    if (v11)
    {
      v12 = avt_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v4 _locked_computePipelineStateWithFunctionName:v11, v12];
      }
    }

    [(NSMutableDictionary *)self->_computePipelineStates setObject:v8 forKeyedSubscript:v4];

    if (!v8)
    {
      v13 = avt_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v13 _locked_renderPipelineStateWithDescriptor:v14 hashNumber:v15, v16, v17, v18, v19, v20];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (id)device
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (os_unfair_lock_s)library
{
  if (a1)
  {
    v2 = a1;
    v3 = *&a1[4]._os_unfair_lock_opaque;
    if (!v3)
    {
      os_unfair_lock_lock(a1 + 6);
      [(os_unfair_lock_s *)v2 _locked_instanciateLibraryIfNeeded];
      os_unfair_lock_unlock(v2 + 6);
      v3 = *&v2[4]._os_unfair_lock_opaque;
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)functionNamed:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 4) objectForKeyedSubscript:v3];
    if (!v4)
    {
      os_unfair_lock_lock(a1 + 6);
      v4 = [a1 _locked_functionNamed:v3];
      os_unfair_lock_unlock(a1 + 6);
    }

    a1 = v4;
  }

  return a1;
}

- (id)computePipelineStateWithFunctionName:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 6) objectForKeyedSubscript:v3];
    if (!v4)
    {
      os_unfair_lock_lock(a1 + 6);
      v4 = [a1 _locked_computePipelineStateWithFunctionName:v3];
      os_unfair_lock_unlock(a1 + 6);
    }

    a1 = v4;
  }

  return a1;
}

- (void)_locked_functionNamed:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_locked_renderPipelineStateWithDescriptor:(uint64_t)a3 hashNumber:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_locked_computePipelineStateWithFunctionName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Failed to create compute pipeline state for %@ with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end