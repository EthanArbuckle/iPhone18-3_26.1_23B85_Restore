@interface AREnvironmentProbeAnchor
- (AREnvironmentProbeAnchor)initWithAnchor:(id)a3;
- (AREnvironmentProbeAnchor)initWithCoder:(id)a3;
- (AREnvironmentProbeAnchor)initWithIdentifier:(double)a3 transform:(double)a4;
- (AREnvironmentProbeAnchor)initWithIdentifier:(id)a3 onPlane:(ARTexturedPlane *)a4;
- (AREnvironmentProbeAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform extent:(simd_float3)extent;
- (AREnvironmentProbeAnchor)initWithName:(double)a3 transform:(double)a4;
- (AREnvironmentProbeAnchor)initWithTransform:(simd_float4x4)transform extent:(simd_float3)extent;
- (AREnvironmentProbeAnchor)initWithTransform:(void *)a1;
- (__n128)initWithIdentifier:(double)a3 transform:(double)a4 extent:(double)a5;
- (float)averageIntensity;
- (id)description;
- (uint64_t)updateTransformToCoordinateSpace:(double)a3 withTimestamp:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setEnvironmentTexture:(id)a3;
@end

@implementation AREnvironmentProbeAnchor

- (AREnvironmentProbeAnchor)initWithTransform:(void *)a1
{
  v7.receiver = a1;
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

- (AREnvironmentProbeAnchor)initWithName:(double)a3 transform:(double)a4
{
  v8 = a7;
  v19.receiver = a1;
  v19.super_class = AREnvironmentProbeAnchor;
  v9 = [(ARAnchor *)&v19 initWithName:v8 transform:a2, a3, a4, a5];
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

- (AREnvironmentProbeAnchor)initWithIdentifier:(double)a3 transform:(double)a4
{
  v8 = a7;
  v19.receiver = a1;
  v19.super_class = AREnvironmentProbeAnchor;
  v9 = [(ARAnchor *)&v19 initWithIdentifier:v8 transform:a2, a3, a4, a5];
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

- (__n128)initWithIdentifier:(double)a3 transform:(double)a4 extent:(double)a5
{
  v9.receiver = a1;
  v9.super_class = AREnvironmentProbeAnchor;
  v6 = [ARAnchor initWithIdentifier:sel_initWithIdentifier_transform_ transform:?];
  if (v6)
  {
    result = a6;
    *v6->_extent = a6;
  }

  return result;
}

- (AREnvironmentProbeAnchor)initWithIdentifier:(id)a3 onPlane:(ARTexturedPlane *)a4
{
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  convert(a4, &v10);
  v7 = [(AREnvironmentProbeAnchor *)self initWithIdentifier:v6 transform:*&v10 extent:*&v11, *&v12, *&v13, *vmulq_f32(v14, xmmword_1C25C9220).i64];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a4];
    [(AREnvironmentProbeAnchor *)v7 setTrackedPlaneIdentifier:v8];
  }

  return v7;
}

- (id)description
{
  v3 = [(ARAnchor *)self name];

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(ARAnchor *)self identifier];
  if (v3)
  {
    v6 = [(ARAnchor *)self name];
    [(ARAnchor *)self transform];
    v11 = ARMatrix4x4Description(0, v7, v8, v9, v10);
    v12 = [(AREnvironmentProbeAnchor *)self environmentTexture];
    [(AREnvironmentProbeAnchor *)self extent];
    v14 = ARVector3Description(v13);
    v15 = [v4 stringWithFormat:@"<%p id=%@ n=%@ T=%@ t=%p e=%@>", self, v5, v6, v11, v12, v14];
  }

  else
  {
    [(ARAnchor *)self transform];
    v6 = ARMatrix4x4Description(0, v16, v17, v18, v19);
    v11 = [(AREnvironmentProbeAnchor *)self environmentTexture];
    [(AREnvironmentProbeAnchor *)self extent];
    v12 = ARVector3Description(v20);
    v15 = [v4 stringWithFormat:@"<%p id=%@ T=%@ t=%p e=%@>", self, v5, v6, v11, v12];
  }

  return v15;
}

- (AREnvironmentProbeAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AREnvironmentProbeAnchor;
  v5 = [(ARAnchor *)&v18 initWithAnchor:v4];
  if (v5)
  {
    v6 = [v4 environmentTexture];
    environmentTexture = v5->_environmentTexture;
    v5->_environmentTexture = v6;

    [v4 clippingPointLux];
    v5->_clippingPointLux = v8;
    v9 = [v4 sourceKeyframeUUIDs];
    sourceKeyframeUUIDs = v5->_sourceKeyframeUUIDs;
    v5->_sourceKeyframeUUIDs = v9;

    [v4 extent];
    *v5->_extent = v11;
    v12 = [v4 trackedPlaneIdentifier];
    trackedPlaneIdentifier = v5->_trackedPlaneIdentifier;
    v5->_trackedPlaneIdentifier = v12;

    v14 = [v4 colorHistogram];
    colorHistogram = v5->_colorHistogram;
    v5->_colorHistogram = v14;

    [v4 opaquePixelPercentage];
    v5->_opaquePixelPercentage = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = AREnvironmentProbeAnchor;
  [(ARAnchor *)&v6 encodeWithCoder:v4];
  [(AREnvironmentProbeAnchor *)self extent];
  [v4 ar_encodeVector3:@"extent" forKey:?];
  v5 = [(AREnvironmentProbeAnchor *)self trackedPlaneIdentifier];
  [v4 encodeObject:v5 forKey:@"trackedPlaneIdentifier"];
}

- (AREnvironmentProbeAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AREnvironmentProbeAnchor;
  v5 = [(ARAnchor *)&v10 initWithCoder:v4];
  if (v5)
  {
    [v4 ar_decodeVector3ForKey:@"extent"];
    *v5->_extent = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackedPlaneIdentifier"];
    trackedPlaneIdentifier = v5->_trackedPlaneIdentifier;
    v5->_trackedPlaneIdentifier = v7;
  }

  return v5;
}

- (void)setEnvironmentTexture:(id)a3
{
  v5 = a3;
  if (self->_environmentTexture != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_environmentTexture, a3);
    v5 = v6;
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

- (uint64_t)updateTransformToCoordinateSpace:(double)a3 withTimestamp:(double)a4
{
  [a1 transform];
  v17 = v9;
  v18 = v8;
  v15 = v11;
  v16 = v10;
  v21.receiver = a1;
  v21.super_class = AREnvironmentProbeAnchor;
  [(ARAnchor *)&v21 updateTransformToCoordinateSpace:a2 withTimestamp:a3, a4, a5, a6];
  return [a1 setTransform:{v18, v17, v16, v15}];
}

@end