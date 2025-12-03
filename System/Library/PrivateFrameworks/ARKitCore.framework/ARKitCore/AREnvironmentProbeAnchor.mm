@interface AREnvironmentProbeAnchor
- (AREnvironmentProbeAnchor)initWithAnchor:(id)anchor;
- (AREnvironmentProbeAnchor)initWithCoder:(id)coder;
- (AREnvironmentProbeAnchor)initWithIdentifier:(double)identifier transform:(double)transform;
- (AREnvironmentProbeAnchor)initWithIdentifier:(id)identifier onPlane:(ARTexturedPlane *)plane;
- (AREnvironmentProbeAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform extent:(simd_float3)extent;
- (AREnvironmentProbeAnchor)initWithName:(double)name transform:(double)transform;
- (AREnvironmentProbeAnchor)initWithTransform:(simd_float4x4)transform extent:(simd_float3)extent;
- (AREnvironmentProbeAnchor)initWithTransform:(void *)transform;
- (__n128)initWithIdentifier:(double)identifier transform:(double)transform extent:(double)extent;
- (float)averageIntensity;
- (id)description;
- (uint64_t)updateTransformToCoordinateSpace:(double)space withTimestamp:(double)timestamp;
- (void)encodeWithCoder:(id)coder;
- (void)setEnvironmentTexture:(id)texture;
@end

@implementation AREnvironmentProbeAnchor

- (AREnvironmentProbeAnchor)initWithTransform:(void *)transform
{
  v7.receiver = transform;
  v7.super_class = AREnvironmentProbeAnchor;
  v1 = [(ARAnchor *)&v7 initWithTransform:?];
  v2 = v1;
  if (v1)
  {
    v3.i64[0] = 0x7F0000007FLL;
    v3.i64[1] = 0x7F0000007FLL;
    *v1->_extent = vnegq_f32(v3);
    v4 = objc_opt_new();
    sourceKeyframeUUIDs = v2->_sourceKeyframeUUIDs;
    v2->_sourceKeyframeUUIDs = v4;
  }

  return v2;
}

- (AREnvironmentProbeAnchor)initWithName:(double)name transform:(double)transform
{
  v8 = a7;
  v19.receiver = self;
  v19.super_class = AREnvironmentProbeAnchor;
  v9 = [(ARAnchor *)&v19 initWithName:v8 transform:a2, name, transform, a5];
  v10 = v9;
  if (v9)
  {
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    *v9->_extent = vnegq_f32(v11);
    v12 = objc_opt_new();
    sourceKeyframeUUIDs = v10->_sourceKeyframeUUIDs;
    v10->_sourceKeyframeUUIDs = v12;
  }

  return v10;
}

- (AREnvironmentProbeAnchor)initWithIdentifier:(double)identifier transform:(double)transform
{
  v8 = a7;
  v19.receiver = self;
  v19.super_class = AREnvironmentProbeAnchor;
  v9 = [(ARAnchor *)&v19 initWithIdentifier:v8 transform:a2, identifier, transform, a5];
  v10 = v9;
  if (v9)
  {
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    *v9->_extent = vnegq_f32(v11);
    v12 = objc_opt_new();
    sourceKeyframeUUIDs = v10->_sourceKeyframeUUIDs;
    v10->_sourceKeyframeUUIDs = v12;
  }

  return v10;
}

- (AREnvironmentProbeAnchor)initWithTransform:(simd_float4x4)transform extent:(simd_float3)extent
{
  v6.receiver = self;
  v6.super_class = AREnvironmentProbeAnchor;
  result = [(ARAnchor *)&v6 initWithTransform:*transform.columns[0].i64, *transform.columns[1].i64, *transform.columns[2].i64, *transform.columns[3].i64];
  if (result)
  {
    *result->_extent = extent;
  }

  return result;
}

- (AREnvironmentProbeAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform extent:(simd_float3)extent
{
  v7.receiver = self;
  v7.super_class = AREnvironmentProbeAnchor;
  result = [(ARAnchor *)&v7 initWithName:name transform:*transform.columns[0].i64, *transform.columns[1].i64, *transform.columns[2].i64, *transform.columns[3].i64];
  if (result)
  {
    *result->_extent = extent;
  }

  return result;
}

- (__n128)initWithIdentifier:(double)identifier transform:(double)transform extent:(double)extent
{
  v9.receiver = self;
  v9.super_class = AREnvironmentProbeAnchor;
  v6 = [ARAnchor initWithIdentifier:sel_initWithIdentifier_transform_ transform:?];
  if (v6)
  {
    result = a6;
    *v6->_extent = a6;
  }

  return result;
}

- (AREnvironmentProbeAnchor)initWithIdentifier:(id)identifier onPlane:(ARTexturedPlane *)plane
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  convert(plane, &v10);
  v7 = [(AREnvironmentProbeAnchor *)self initWithIdentifier:identifierCopy transform:*&v10 extent:*&v11, *&v12, *&v13, *vmulq_f32(v14, xmmword_1C25C9220).i64];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:plane];
    [(AREnvironmentProbeAnchor *)v7 setTrackedPlaneIdentifier:v8];
  }

  return v7;
}

- (id)description
{
  name = [(ARAnchor *)self name];

  v4 = MEMORY[0x1E696AEC0];
  identifier = [(ARAnchor *)self identifier];
  if (name)
  {
    name2 = [(ARAnchor *)self name];
    [(ARAnchor *)self transform];
    environmentTexture2 = ARMatrix4x4Description(0, v7, v8, v9, v10);
    environmentTexture = [(AREnvironmentProbeAnchor *)self environmentTexture];
    [(AREnvironmentProbeAnchor *)self extent];
    v14 = ARVector3Description(v13);
    v15 = [v4 stringWithFormat:@"<%p id=%@ n=%@ T=%@ t=%p e=%@>", self, identifier, name2, environmentTexture2, environmentTexture, v14];
  }

  else
  {
    [(ARAnchor *)self transform];
    name2 = ARMatrix4x4Description(0, v16, v17, v18, v19);
    environmentTexture2 = [(AREnvironmentProbeAnchor *)self environmentTexture];
    [(AREnvironmentProbeAnchor *)self extent];
    environmentTexture = ARVector3Description(v20);
    v15 = [v4 stringWithFormat:@"<%p id=%@ T=%@ t=%p e=%@>", self, identifier, name2, environmentTexture2, environmentTexture];
  }

  return v15;
}

- (AREnvironmentProbeAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v18.receiver = self;
  v18.super_class = AREnvironmentProbeAnchor;
  v5 = [(ARAnchor *)&v18 initWithAnchor:anchorCopy];
  if (v5)
  {
    environmentTexture = [anchorCopy environmentTexture];
    environmentTexture = v5->_environmentTexture;
    v5->_environmentTexture = environmentTexture;

    [anchorCopy clippingPointLux];
    v5->_clippingPointLux = v8;
    sourceKeyframeUUIDs = [anchorCopy sourceKeyframeUUIDs];
    sourceKeyframeUUIDs = v5->_sourceKeyframeUUIDs;
    v5->_sourceKeyframeUUIDs = sourceKeyframeUUIDs;

    [anchorCopy extent];
    *v5->_extent = v11;
    trackedPlaneIdentifier = [anchorCopy trackedPlaneIdentifier];
    trackedPlaneIdentifier = v5->_trackedPlaneIdentifier;
    v5->_trackedPlaneIdentifier = trackedPlaneIdentifier;

    colorHistogram = [anchorCopy colorHistogram];
    colorHistogram = v5->_colorHistogram;
    v5->_colorHistogram = colorHistogram;

    [anchorCopy opaquePixelPercentage];
    v5->_opaquePixelPercentage = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = AREnvironmentProbeAnchor;
  [(ARAnchor *)&v6 encodeWithCoder:coderCopy];
  [(AREnvironmentProbeAnchor *)self extent];
  [coderCopy ar_encodeVector3:@"extent" forKey:?];
  trackedPlaneIdentifier = [(AREnvironmentProbeAnchor *)self trackedPlaneIdentifier];
  [coderCopy encodeObject:trackedPlaneIdentifier forKey:@"trackedPlaneIdentifier"];
}

- (AREnvironmentProbeAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AREnvironmentProbeAnchor;
  v5 = [(ARAnchor *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy ar_decodeVector3ForKey:@"extent"];
    *v5->_extent = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackedPlaneIdentifier"];
    trackedPlaneIdentifier = v5->_trackedPlaneIdentifier;
    v5->_trackedPlaneIdentifier = v7;
  }

  return v5;
}

- (void)setEnvironmentTexture:(id)texture
{
  textureCopy = texture;
  if (self->_environmentTexture != textureCopy)
  {
    v6 = textureCopy;
    objc_storeStrong(&self->_environmentTexture, texture);
    textureCopy = v6;
    self->_averageIntensity = 0.0;
  }
}

- (float)averageIntensity
{
  result = self->_averageIntensity;
  if (result == 0.0)
  {
    environmentTexture = self->_environmentTexture;
    if (environmentTexture)
    {
      result = ARAverageCubemapIntensity(environmentTexture);
      self->_averageIntensity = result;
    }
  }

  return result;
}

- (uint64_t)updateTransformToCoordinateSpace:(double)space withTimestamp:(double)timestamp
{
  [self transform];
  v17 = v9;
  v18 = v8;
  v15 = v11;
  v16 = v10;
  v21.receiver = self;
  v21.super_class = AREnvironmentProbeAnchor;
  [(ARAnchor *)&v21 updateTransformToCoordinateSpace:a2 withTimestamp:space, timestamp, a5, a6];
  return [self setTransform:{v18, v17, v16, v15}];
}

@end