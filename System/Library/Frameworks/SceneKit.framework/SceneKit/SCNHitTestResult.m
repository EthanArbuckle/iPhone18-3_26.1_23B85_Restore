@interface SCNHitTestResult
+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)a3;
- (CGPoint)textureCoordinate;
- (CGPoint)textureCoordinatesWithMappingChannel:(NSInteger)channel;
- (SCNHitTestResult)initWithResult:(__C3DHitTestResult *)a3;
- (SCNMatrix4)modelTransform;
- (SCNNode)boneNode;
- (SCNNode)node;
- (SCNVector3)localCoordinates;
- (SCNVector3)localNormal;
- (SCNVector3)worldCoordinates;
- (SCNVector3)worldNormal;
- (id)description;
- (simd_float3)simdLocalCoordinates;
- (simd_float3)simdLocalNormal;
- (simd_float3)simdWorldCoordinates;
- (simd_float4x4)simdModelTransform;
- (void)dealloc;
@end

@implementation SCNHitTestResult

- (SCNHitTestResult)initWithResult:(__C3DHitTestResult *)a3
{
  v3 = self;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SCNHitTestResult;
    v3 = [(SCNHitTestResult *)&v6 init];
    if (v3)
    {
      v3->_result = CFRetain(a3);
    }
  }

  return v3;
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
    self->_result = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNHitTestResult;
  [(SCNHitTestResult *)&v4 dealloc];
}

- (SCNNode)node
{
  result = C3DHitTestResultGetNode(self->_result);
  if (result)
  {

    return [SCNNode nodeWithNodeRef:result];
  }

  return result;
}

- (SCNNode)boneNode
{
  result = C3DHitTestResultGetJoint(self->_result);
  if (result)
  {

    return [SCNNode nodeWithNodeRef:result];
  }

  return result;
}

- (SCNVector3)localCoordinates
{
  [(SCNHitTestResult *)self simdLocalCoordinates];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldCoordinates
{
  [(SCNHitTestResult *)self simdWorldCoordinates];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)localNormal
{
  [(SCNHitTestResult *)self simdLocalNormal];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldNormal
{
  [(SCNHitTestResult *)self simdWorldNormal];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (CGPoint)textureCoordinatesWithMappingChannel:(NSInteger)channel
{
  v3 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(C3DHitTestResultGetTextureCoordinates(self->_result, channel)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)textureCoordinate
{
  NSLog(&cfstr_Texturecoordin_0.isa, a2);

  [(SCNHitTestResult *)self textureCoordinatesWithMappingChannel:0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (SCNMatrix4)modelTransform
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  ModelTransform = C3DHitTestResultGetModelTransform(self->_result);
  if (ModelTransform)
  {
    v5 = *ModelTransform;
    v6 = ModelTransform[1];
    v7 = ModelTransform[3];
    v11 = ModelTransform[2];
    v12 = v7;
    v9 = v5;
    v10 = v6;
  }

  else
  {
    C3DMatrix4x4MakeIdentity(&v9);
  }

  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  C3DMatrix4x4ToSCNMatrix4(&v9, retstr);
  return result;
}

+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)a3
{
  v4 = [(__CFArray *)a3 count];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [[SCNHitTestResult alloc] initWithResult:[(__CFArray *)a3 objectAtIndex:i]];
      [v5 addObject:v7];
    }
  }

  return v5;
}

- (id)description
{
  [(SCNHitTestResult *)self worldCoordinates];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  return [v9 stringWithFormat:@"<%@: %p <%f, %f, %f> | geometryIndex=%d node=%@ bone=%@>", NSStringFromClass(v10), self, v4, v6, v8, -[SCNHitTestResult geometryIndex](self, "geometryIndex"), -[SCNHitTestResult node](self, "node"), -[SCNHitTestResult boneNode](self, "boneNode")];
}

- (simd_float3)simdLocalCoordinates
{
  LocalPosition = C3DHitTestResultGetLocalPosition(self->_result);
  if (LocalPosition)
  {
    return *LocalPosition;
  }

  else
  {
    return 0;
  }
}

- (simd_float3)simdWorldCoordinates
{
  WorldPosition = C3DHitTestResultGetWorldPosition(self->_result);
  if (WorldPosition)
  {
    return *WorldPosition;
  }

  else
  {
    return 0;
  }
}

- (simd_float3)simdLocalNormal
{
  LocalNormal = C3DHitTestResultGetLocalNormal(self->_result);
  if (LocalNormal)
  {
    return *LocalNormal;
  }

  else
  {
    return 0;
  }
}

- (simd_float4x4)simdModelTransform
{
  ModelTransform = C3DHitTestResultGetModelTransform(self->_result);
  v3 = MEMORY[0x277D860B8];
  if (ModelTransform)
  {
    v3 = ModelTransform;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.columns[3] = v7;
  result.columns[2] = v6;
  result.columns[1] = v5;
  result.columns[0] = v4;
  return result;
}

@end