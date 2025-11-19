@interface ARDepthData
- (ARDepthData)initWithCoder:(id)a3;
- (ARDepthData)initWithDepthMap:(__CVBuffer *)a3 confidenceMap:(__CVBuffer *)a4;
- (__n128)cameraIntrinsics;
- (__n128)deviceTransform;
- (__n128)extrinsicsToAppNode;
- (__n128)setCameraIntrinsics:(__n128)a3;
- (__n128)setDeviceTransform:(__n128)a3;
- (__n128)setExtrinsicsToAppNode:(__n128)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setConfidenceBuffer:(__CVBuffer *)a3;
- (void)setConfidenceMap:(__CVBuffer *)a3;
- (void)setDepthMap:(__CVBuffer *)a3;
- (void)setNormalsBuffer:(__CVBuffer *)a3;
@end

@implementation ARDepthData

- (ARDepthData)initWithDepthMap:(__CVBuffer *)a3 confidenceMap:(__CVBuffer *)a4
{
  v8.receiver = self;
  v8.super_class = ARDepthData;
  v6 = [(ARDepthData *)&v8 init];
  if (v6)
  {
    v6->_depthMap = CVPixelBufferRetain(a3);
    v6->_confidenceMap = CVPixelBufferRetain(a4);
    v6->_isValid = 1;
  }

  return v6;
}

- (void)setDepthMap:(__CVBuffer *)a3
{
  depthMap = self->_depthMap;
  if (depthMap != a3)
  {
    CVPixelBufferRelease(depthMap);
    self->_depthMap = CVPixelBufferRetain(a3);
  }
}

- (void)setConfidenceMap:(__CVBuffer *)a3
{
  confidenceMap = self->_confidenceMap;
  if (confidenceMap != a3)
  {
    CVPixelBufferRelease(confidenceMap);
    self->_confidenceMap = CVPixelBufferRetain(a3);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)a3
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != a3)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = CVPixelBufferRetain(a3);
  }
}

- (void)setConfidenceBuffer:(__CVBuffer *)a3
{
  confidenceBuffer = self->_confidenceBuffer;
  if (confidenceBuffer != a3)
  {
    CVPixelBufferRelease(confidenceBuffer);
    self->_confidenceBuffer = CVPixelBufferRetain(a3);
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_depthMap);
  CVPixelBufferRelease(self->_confidenceMap);
  CVPixelBufferRelease(self->_confidenceBuffer);
  CVPixelBufferRelease(self->_normalsBuffer);
  v3.receiver = self;
  v3.super_class = ARDepthData;
  [(ARDepthData *)&v3 dealloc];
}

- (ARDepthData)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ARDepthData;
  v5 = [(ARDepthData *)&v24 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
      v5->_depthMap = [v7 ar_decodePixelBufferForKey:@"depthMap"];
      v5->_confidenceMap = [v7 ar_decodePixelBufferForKey:@"confidenceMap"];
      v5->_confidenceBuffer = [v7 ar_decodePixelBufferForKey:@"confidenceBuffer"];
      v8 = [v7 ar_decodePixelBufferForKey:@"normalsBuffer"];

      v5->_normalsBuffer = v8;
    }

    [v4 ar_decodeMatrix3x3ForKey:@"cameraIntrinsics"];
    *&v5->_anon_50[8] = v9;
    *&v5->_anon_50[24] = v10;
    *v5->_anon_50 = v11;
    *&v5->_anon_50[16] = v12;
    *&v5->_anon_50[40] = v13;
    *&v5->_anon_50[32] = v14;
    [v4 ar_decodeMatrix4x4ForKey:@"extrinsicsToAppNode"];
    *v5->_anon_80 = v15;
    *&v5->_anon_80[16] = v16;
    *&v5->_anon_80[32] = v17;
    *&v5->_anon_80[48] = v18;
    [v4 ar_decodeMatrix4x4ForKey:@"deviceTransform"];
    *&v5[1].super.isa = v19;
    *&v5[1]._depthMap = v20;
    *&v5[1]._normalsBuffer = v21;
    *&v5[1]._timestamp = v22;
    v5->_isValid = [v4 decodeBoolForKey:@"isValid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeDouble:@"timestamp" forKey:self->_timestamp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    depthMap = self->_depthMap;
    v5 = v6;
    [v5 ar_encodePixelBuffer:depthMap forKey:@"depthMap"];
    [v5 ar_encodePixelBuffer:self->_confidenceMap forKey:@"confidenceMap"];
    [v5 ar_encodePixelBuffer:self->_confidenceBuffer forKey:@"confidenceBuffer"];
    [v5 ar_encodePixelBuffer:self->_normalsBuffer forKey:@"normalsBuffer"];
  }

  [v6 ar_encodeMatrix3x3:@"cameraIntrinsics" forKey:{*self->_anon_50, *&self->_anon_50[16], *&self->_anon_50[32]}];
  [v6 ar_encodeMatrix4x4:@"extrinsicsToAppNode" forKey:{*self->_anon_80, *&self->_anon_80[16], *&self->_anon_80[32], *&self->_anon_80[48]}];
  [v6 ar_encodeMatrix4x4:@"deviceTransform" forKey:{*&self[1].super.isa, *&self[1]._depthMap, *&self[1]._normalsBuffer, self[1]._timestamp}];
  [v6 encodeBool:self->_isValid forKey:@"isValid"];
}

- (__n128)cameraIntrinsics
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

- (__n128)extrinsicsToAppNode
{
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  return result;
}

- (__n128)setExtrinsicsToAppNode:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)deviceTransform
{
  result = *(a1 + 192);
  v2 = *(a1 + 208);
  v3 = *(a1 + 224);
  v4 = *(a1 + 240);
  return result;
}

- (__n128)setDeviceTransform:(__n128)a3
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end