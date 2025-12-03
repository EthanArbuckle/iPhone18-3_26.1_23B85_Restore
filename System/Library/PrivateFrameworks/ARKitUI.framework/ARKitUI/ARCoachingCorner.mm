@interface ARCoachingCorner
- (ARCoachingCorner)initWithRadius:(float32_t)radius relativeThickness:(float32_t)thickness anchorA:(float32_t)a anchorB:(float32_t)b cornerEdge:(double)edge mat:(double)mat;
@end

@implementation ARCoachingCorner

- (ARCoachingCorner)initWithRadius:(float32_t)radius relativeThickness:(float32_t)thickness anchorA:(float32_t)a anchorB:(float32_t)b cornerEdge:(double)edge mat:(double)mat
{
  v20 = xmmword_23D3DC0C0;
  v21 = xmmword_23D3DC0C0;
  v21.f32[0] = thickness;
  v32 = *MEMORY[0x277D85DE8];
  v22 = xmmword_23D3DC0C0;
  v22.f32[0] = a;
  v31[0] = vmulq_n_f32(v21, a2);
  v31[1] = vmulq_n_f32(v22, a2);
  v20.f32[0] = b;
  v23 = xmmword_23D3DC450;
  v24 = xmmword_23D3DC450;
  v24.f32[1] = b;
  v31[2] = vmulq_n_f32(v20, a2);
  v31[3] = vmulq_n_f32(v24, a2);
  v25 = xmmword_23D3DC450;
  v25.f32[1] = a;
  v26 = vmulq_n_f32(v25, a2);
  v23.f32[1] = thickness;
  v27 = vmulq_n_f32(v23, a2);
  v31[4] = v26;
  v31[5] = v27;
  v30.receiver = self;
  v30.super_class = ARCoachingCorner;
  v27.f32[0] = radius;
  result = [(ARCoachingSpline *)&v30 initWithPoints:v31 numPoints:6 relativeThickness:0 pattern:*v27.i64 mat:a10, a12, a14, a16];
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

@end