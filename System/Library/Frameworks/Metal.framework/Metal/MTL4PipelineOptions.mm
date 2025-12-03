@interface MTL4PipelineOptions
- (BOOL)isEqual:(id)equal;
- (MTL4PipelineOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4PipelineOptions

- (MTL4PipelineOptions)init
{
  v4.receiver = self;
  v4.super_class = MTL4PipelineOptions;
  v2 = [(MTL4PipelineOptions *)&v4 init];
  v2->_pluginData = 0;
  v2->_shaderValidationConfig = objc_alloc_init(MTLShaderValidationConfiguration);
  v2->_postVertexDumpBufferIndex = 0;
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineOptions;
  [(MTL4PipelineOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setShaderReflection:{-[MTL4PipelineOptions shaderReflection](self, "shaderReflection")}];
  [v5 setShaderValidation:{-[MTL4PipelineOptions shaderValidation](self, "shaderValidation")}];
  [v5 setPluginData:{-[MTL4PipelineOptions pluginData](self, "pluginData")}];

  *(v5 + 40) = [(MTLShaderValidationConfiguration *)[(MTL4PipelineOptions *)self shaderValidationConfig] copyWithZone:zone];
  *(v5 + 8) = self->_enablePerformanceStatistics;
  *(v5 + 9) = self->_enablePostVertexDump;
  *(v5 + 10) = self->_enablePostMeshDump;
  *(v5 + 11) = self->_enableAccelerationStructureViewerInstrumentation;
  *(v5 + 12) = self->_enableResourcePatchingInstrumentation;
  *(v5 + 13) = self->_enableResourceUsageInstrumentation;
  *(v5 + 48) = self->_maxNumRegisters;
  *(v5 + 56) = self->_postVertexDumpBufferIndex;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  v9 = *(equal + 3) == self->_shaderReflection && *(equal + 2) == self->_shaderValidation;
  v10 = *(equal + 4);
  if (v10 == self->_pluginData)
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSDictionary *)v10 isEqual:?];
  }

  v12 = v11 & v9;
  v13 = *(equal + 5);
  v14 = v13 == self->_shaderValidationConfig || [(MTLShaderValidationConfiguration *)v13 isEqual:?];
  v6.i32[0] = *(equal + 2);
  v7.i32[0] = *&self->_enablePerformanceStatistics;
  v15 = vminv_u16(vceq_s16((vmovl_u8(v6).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v7).u64[0] & 0xFF00FF00FF00FFLL))) & (*(equal + 12) == self->_enableResourcePatchingInstrumentation);
  if (*(equal + 13) != self->_enableResourceUsageInstrumentation)
  {
    LOBYTE(v15) = 0;
  }

  if (*(equal + 6) != self->_maxNumRegisters)
  {
    LOBYTE(v15) = 0;
  }

  if (*(equal + 7) != self->_postVertexDumpBufferIndex)
  {
    LOBYTE(v15) = 0;
  }

  if ((v12 & v14) != 0)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  bzero(&v10, 0x58uLL);
  v10 = vextq_s8(*&self->_shaderValidation, *&self->_shaderValidation, 8uLL);
  v11 = [(NSDictionary *)[(MTL4PipelineOptions *)self pluginData] hash];
  v3.i32[0] = *&self->_enablePerformanceStatistics;
  v4 = vmovl_u16((vmovl_u8(v3).u64[0] & 0xFF01FF01FF01FF01));
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6.i64[0] = 255;
  v6.i64[1] = 255;
  v7 = vandq_s8(v5, v6);
  v5.i64[0] = v4.u32[2];
  v5.i64[1] = v4.u32[3];
  v13 = vandq_s8(v5, v6);
  v12 = v7;
  enableResourceUsageInstrumentation = self->_enableResourceUsageInstrumentation;
  enableResourcePatchingInstrumentation = self->_enableResourcePatchingInstrumentation;
  v15 = enableResourceUsageInstrumentation;
  v16 = *&self->_maxNumRegisters;
  return _MTLHashState(v10.i32, 0x58uLL);
}

@end