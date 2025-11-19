@interface NTKParameciumTouchHandler
- (NTKParameciumTouchHandler)init;
- (void)clearTouches;
- (void)iterateTouchesWithBlock:(id)a3;
- (void)rotateTouchesByAngle:(float)a3;
@end

@implementation NTKParameciumTouchHandler

- (NTKParameciumTouchHandler)init
{
  v5.receiver = self;
  v5.super_class = NTKParameciumTouchHandler;
  v2 = [(NTKParameciumTouchHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_touchIndex = 0;
    memset_pattern16(v2->_touchTimes, &unk_BDA0, 0x28uLL);
  }

  return v3;
}

- (void)clearTouches
{
  for (i = 0; i != 10; ++i)
  {
    self->_touchTimes[i] = -3.4028e38;
    *&self->_touchCoords[8 * self->_touchIndex] = 0;
  }
}

- (void)iterateTouchesWithBlock:(id)a3
{
  v4 = 0;
  touchTimes = self->_touchTimes;
  do
  {
    (*(a3 + 2))(a3, v4, touchTimes[v4], *&touchTimes[2 * v4 - 20]);
    ++v4;
  }

  while (v4 != 10);
}

- (void)rotateTouchesByAngle:(float)a3
{
  v4 = __sincosf_stret(a3);
  v5.f32[0] = -v4.__sinval;
  v5.i32[1] = LODWORD(v4.__cosval);
  for (i = 16; i != 96; i += 8)
  {
    v7 = vadd_f32(*(&self->super.isa + i), 0xBF000000BF000000);
    *(&self->super.isa + i) = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), v7.f32[0]), v5, v7, 1), 0x3F0000003F000000);
  }
}

@end