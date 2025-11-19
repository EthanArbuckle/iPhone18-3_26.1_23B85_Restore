@interface GKNoiseMap
+ (GKNoiseMap)noiseMapWithNoise:(GKNoise *)noise;
- (GKNoiseMap)init;
- (GKNoiseMap)initWithNoise:(GKNoise *)noise;
- (GKNoiseMap)initWithNoise:(GKNoise *)noise size:(vector_double2)size origin:(vector_double2)origin sampleCount:(vector_int2)sampleCount seamless:(BOOL)seamless;
- (float)interpolatedValueAtPosition:(vector_float2)position;
- (float)valueAtPosition:(vector_int2)position;
- (id)__colorData;
- (void)dealloc;
- (void)setValue:(float)value atPosition:(vector_int2)position;
@end

@implementation GKNoiseMap

- (GKNoiseMap)init
{
  v3 = objc_opt_new();
  v4 = [GKNoise noiseWithNoiseSource:v3];

  v5 = [(GKNoiseMap *)self initWithNoise:v4];
  return v5;
}

+ (GKNoiseMap)noiseMapWithNoise:(GKNoise *)noise
{
  v3 = noise;
  v4 = [objc_alloc(objc_opt_class()) initWithNoise:v3];

  return v4;
}

- (GKNoiseMap)initWithNoise:(GKNoise *)noise
{
  __asm { FMOV            V0.2D, #1.0 }

  return [(GKNoiseMap *)self initWithNoise:noise size:0 origin:*&_Q0 sampleCount:0.0 seamless:COERCE_DOUBLE(0x6400000064)];
}

- (GKNoiseMap)initWithNoise:(GKNoise *)noise size:(vector_double2)size origin:(vector_double2)origin sampleCount:(vector_int2)sampleCount seamless:(BOOL)seamless
{
  v10 = noise;
  v19.receiver = self;
  v19.super_class = GKNoiseMap;
  v11 = [(GKNoiseMap *)&v19 init];
  v12 = v11;
  if (v11)
  {
    *v11->_size = size;
    *v11->_origin = origin;
    *&v11->_sampleCount[7] = sampleCount;
    v11->_seamless = seamless;
    v13 = [(GKNoise *)v10 gradientColors];
    gradientColors = v12->_gradientColors;
    v12->_gradientColors = v13;

    v15 = [(GKNoise *)v10 __modules];
    [v15 lastObject];
    objc_claimAutoreleasedReturnValue();

    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    MEMORY[0x23EE6C4E0](map, 0x1000C8052888210);
  }

  self->_map = 0;
  v4.receiver = self;
  v4.super_class = GKNoiseMap;
  [(GKNoiseMap *)&v4 dealloc];
}

- (id)__colorData
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*&self->_sampleCount[7] * HIDWORD(*&self->_sampleCount[7]));
  operator new[]();
}

uint64_t __25__GKNoiseMap___colorData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 >= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (float)interpolatedValueAtPosition:(vector_float2)position
{
  v4 = vadd_s32(*&self->_sampleCount[7], -1);
  v5.i64[0] = v4.i32[0];
  v5.i64[1] = v4.i32[1];
  v6 = vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(position), vcvtq_f64_s64(v5)), 0));
  v7 = vrnda_f32(v6);
  v8 = vcge_f32(vabd_f32(v6, v7), 0x3400000034000000);
  if (((v8.i32[0] | v8.i32[1]) & 1) == 0)
  {
    v21 = self->_map[[(GKNoiseMap *)self mapIndexX:v7.f32[0] y:v7.f32[1]]];
    return fmax(fmin(v21, 1.0), -1.0);
  }

  if ((v8.i8[0] & 1) == 0)
  {
    v10 = v7.f32[0];
    v22 = v6.f32[1];
    v23 = (v22 + 1);
    v24 = truncf(v6.f32[1]);
    v25 = v6.f32[1] - v24;
    v26 = v23 - v24;
    v27 = v10;
LABEL_8:
    v28 = [(GKNoiseMap *)self mapIndexX:v27 y:v22];
    v21 = (((self->_map[[(GKNoiseMap *)self mapIndexX:v10 y:v23]] - self->_map[v28]) * v25) / v26) + self->_map[v28];
    return fmax(fmin(v21, 1.0), -1.0);
  }

  v9 = v6.f32[0];
  v10 = (v9 + 1);
  if ((v8.i8[4] & 1) == 0)
  {
    v23 = v7.f32[1];
    v25 = v6.f32[0] - v9;
    v26 = v10 - v9;
    v27 = v6.f32[0];
    v22 = v23;
    goto LABEL_8;
  }

  v11 = v6.f32[1];
  v12 = v6.f32[1];
  v13 = (v12 + 1);
  v14 = (v6.f32[0] - v9) / (v10 - v9);
  v15 = [(GKNoiseMap *)self mapIndexX:v9 y:v12];
  LODWORD(v12) = [(GKNoiseMap *)self mapIndexX:(v9 + 1) y:v12];
  v16 = [(GKNoiseMap *)self mapIndexX:v9 y:v13];
  v17 = [(GKNoiseMap *)self mapIndexX:v10 y:v13];
  map = self->_map;
  v19 = (map[v15] * (1.0 - v14)) + (map[v12] * v14);
  v20 = truncf(v11);
  v21 = ((((map[v17] * v14) - (v19 - (map[v16] * (1.0 - v14)))) * (v11 - v20)) / (v13 - v20)) + v19;
  return fmax(fmin(v21, 1.0), -1.0);
}

- (void)setValue:(float)value atPosition:(vector_int2)position
{
  v4 = position.i32[0];
  v5 = HIDWORD(*&self->_sampleCount[7]);
  if (position.i32[0] >= (*&self->_sampleCount[7] - 1))
  {
    v4 = *&self->_sampleCount[7] - 1;
  }

  if (position.i32[1] >= v5 - 1)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = position.i32[1];
  }

  self->_map[[(GKNoiseMap *)self mapIndexX:v4 & ~(v4 >> 31) y:v6 & ~(v6 >> 31)]] = value;
}

- (float)valueAtPosition:(vector_int2)position
{
  v4 = position.i32[0];
  v5 = HIDWORD(*&self->_sampleCount[7]);
  if (position.i32[0] >= (*&self->_sampleCount[7] - 1))
  {
    v4 = *&self->_sampleCount[7] - 1;
  }

  if (position.i32[1] >= v5 - 1)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = position.i32[1];
  }

  v7 = [(GKNoiseMap *)self mapIndexX:v4 & ~(v4 >> 31) y:v6 & ~(v6 >> 31)];
  v8 = self->_map[v7];
  result = -1.0;
  if (v8 >= -1.0)
  {
    result = self->_map[v7];
    if (v8 > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

@end