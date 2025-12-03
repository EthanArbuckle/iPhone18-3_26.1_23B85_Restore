@interface ARCoachingArc
- (ARCoachingArc)initWithRadius:(double)radius mat:(double)mat;
@end

@implementation ARCoachingArc

- (ARCoachingArc)initWithRadius:(double)radius mat:(double)mat
{
  v7 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v8 = -1;
  do
  {
    v9 = (v8 / 3.0) * 3.14159265 * 0.5;
    v10 = vmulq_n_f32(*&__sincosf_stret(v9), a2);
    *&v19[v7] = v10;
    ++v8;
    v7 += 16;
  }

  while (v7 != 96);
  v18.receiver = self;
  v18.super_class = ARCoachingArc;
  v10.i32[0] = *"333?";
  result = [(ARCoachingSpline *)&v18 initWithPoints:v19 numPoints:6 relativeThickness:0 pattern:*v10.i64 mat:radius, mat, a5, a6];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end