@interface ARDepthData
- (ARDepthData)initWithCoder:(id)coder;
- (ARDepthData)initWithDepthMap:(__CVBuffer *)map confidenceMap:(__CVBuffer *)confidenceMap;
- (__n128)cameraIntrinsics;
- (__n128)deviceTransform;
- (__n128)extrinsicsToAppNode;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setDeviceTransform:(__n128)transform;
- (__n128)setExtrinsicsToAppNode:(__n128)node;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setConfidenceMap:(__CVBuffer *)map;
- (void)setDepthMap:(__CVBuffer *)map;
- (void)setNormalsBuffer:(__CVBuffer *)buffer;
@end

@implementation ARDepthData

- (ARDepthData)initWithDepthMap:(__CVBuffer *)map confidenceMap:(__CVBuffer *)confidenceMap
{
  v8.receiver = self;
  v8.super_class = ARDepthData;
  v6 = [(ARDepthData *)&v8 init];
  if (v6)
  {
    v6->_depthMap = CVPixelBufferRetain(map);
    v6->_confidenceMap = CVPixelBufferRetain(confidenceMap);
    v6->_isValid = 1;
  }

  return v6;
}

- (void)setDepthMap:(__CVBuffer *)map
{
  depthMap = self->_depthMap;
  if (depthMap != map)
  {
    CVPixelBufferRelease(depthMap);
    self->_depthMap = CVPixelBufferRetain(map);
  }
}

- (void)setConfidenceMap:(__CVBuffer *)map
{
  confidenceMap = self->_confidenceMap;
  if (confidenceMap != map)
  {
    CVPixelBufferRelease(confidenceMap);
    self->_confidenceMap = CVPixelBufferRetain(map);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)buffer
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != buffer)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = CVPixelBufferRetain(buffer);
  }
}

- (void)setConfidenceBuffer:(__CVBuffer *)buffer
{
  confidenceBuffer = self->_confidenceBuffer;
  if (confidenceBuffer != buffer)
  {
    CVPixelBufferRelease(confidenceBuffer);
    self->_confidenceBuffer = CVPixelBufferRetain(buffer);
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

- (ARDepthData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ARDepthData;
  v5 = [(ARDepthData *)&v24 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = coderCopy;
      v5->_depthMap = [v7 ar_decodePixelBufferForKey:@"depthMap"];
      v5->_confidenceMap = [v7 ar_decodePixelBufferForKey:@"confidenceMap"];
      v5->_confidenceBuffer = [v7 ar_decodePixelBufferForKey:@"confidenceBuffer"];
      v8 = [v7 ar_decodePixelBufferForKey:@"normalsBuffer"];

      v5->_normalsBuffer = v8;
    }

    [coderCopy ar_decodeMatrix3x3ForKey:@"cameraIntrinsics"];
    *&v5->_anon_50[8] = v9;
    *&v5->_anon_50[24] = v10;
    *v5->_anon_50 = v11;
    *&v5->_anon_50[16] = v12;
    *&v5->_anon_50[40] = v13;
    *&v5->_anon_50[32] = v14;
    [coderCopy ar_decodeMatrix4x4ForKey:@"extrinsicsToAppNode"];
    *v5->_anon_80 = v15;
    *&v5->_anon_80[16] = v16;
    *&v5->_anon_80[32] = v17;
    *&v5->_anon_80[48] = v18;
    [coderCopy ar_decodeMatrix4x4ForKey:@"deviceTransform"];
    *&v5[1].super.isa = v19;
    *&v5[1]._depthMap = v20;
    *&v5[1]._normalsBuffer = v21;
    *&v5[1]._timestamp = v22;
    v5->_isValid = [coderCopy decodeBoolForKey:@"isValid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    depthMap = self->_depthMap;
    v5 = coderCopy;
    [v5 ar_encodePixelBuffer:depthMap forKey:@"depthMap"];
    [v5 ar_encodePixelBuffer:self->_confidenceMap forKey:@"confidenceMap"];
    [v5 ar_encodePixelBuffer:self->_confidenceBuffer forKey:@"confidenceBuffer"];
    [v5 ar_encodePixelBuffer:self->_normalsBuffer forKey:@"normalsBuffer"];
  }

  [coderCopy ar_encodeMatrix3x3:@"cameraIntrinsics" forKey:{*self->_anon_50, *&self->_anon_50[16], *&self->_anon_50[32]}];
  [coderCopy ar_encodeMatrix4x4:@"extrinsicsToAppNode" forKey:{*self->_anon_80, *&self->_anon_80[16], *&self->_anon_80[32], *&self->_anon_80[48]}];
  [coderCopy ar_encodeMatrix4x4:@"deviceTransform" forKey:{*&self[1].super.isa, *&self[1]._depthMap, *&self[1]._normalsBuffer, self[1]._timestamp}];
  [coderCopy encodeBool:self->_isValid forKey:@"isValid"];
}

- (__n128)cameraIntrinsics
{
  result = *(self + 80);
  v2 = *(self + 96);
  v3 = *(self + 112);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[5] = a2;
  result[6] = intrinsics;
  result[7] = a4;
  return result;
}

- (__n128)extrinsicsToAppNode
{
  result = *(self + 128);
  v2 = *(self + 144);
  v3 = *(self + 160);
  v4 = *(self + 176);
  return result;
}

- (__n128)setExtrinsicsToAppNode:(__n128)node
{
  result[8] = a2;
  result[9] = node;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)deviceTransform
{
  result = *(self + 192);
  v2 = *(self + 208);
  v3 = *(self + 224);
  v4 = *(self + 240);
  return result;
}

- (__n128)setDeviceTransform:(__n128)transform
{
  result[12] = a2;
  result[13] = transform;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end