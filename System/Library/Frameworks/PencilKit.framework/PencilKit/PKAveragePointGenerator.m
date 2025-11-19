@interface PKAveragePointGenerator
- (PKAveragePointGenerator)init;
- (double)currentStrokePoint;
- (id).cxx_construct;
- (void)addInputPoint:(uint64_t)a1;
- (void)addStroke:(uint64_t)a1;
- (void)addStrokes:(uint64_t)a1;
- (void)currentInputPoint;
- (void)reset;
@end

@implementation PKAveragePointGenerator

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 10) = 0;
  *(self + 22) = 0;
  *(self + 1) = 0u;
  *(self + 96) = 0;
  *(self + 21) = 0;
  *(self + 44) = 0;
  *(self + 104) = 0u;
  *(self + 184) = 0;
  *(self + 32) = 0;
  *(self + 66) = 0;
  *(self + 12) = 0u;
  *(self + 272) = 0;
  *(self + 43) = 0;
  *(self + 88) = 0;
  *(self + 280) = 0u;
  *(self + 360) = 0;
  *(self + 54) = 0;
  *(self + 110) = 0;
  *(self + 23) = 0u;
  *(self + 448) = 0;
  *(self + 65) = 0;
  *(self + 132) = 0;
  *(self + 456) = 0u;
  *(self + 536) = 0;
  *(self + 76) = 0;
  *(self + 154) = 0;
  *(self + 34) = 0u;
  *(self + 624) = 0;
  *(self + 87) = 0;
  *(self + 176) = 0;
  *(self + 632) = 0u;
  *(self + 712) = 0;
  *(self + 98) = 0;
  *(self + 198) = 0;
  *(self + 45) = 0u;
  *(self + 800) = 0;
  *(self + 109) = 0;
  *(self + 220) = 0;
  *(self + 808) = 0u;
  *(self + 888) = 0;
  *(self + 120) = 0;
  *(self + 242) = 0;
  *(self + 56) = 0u;
  *(self + 976) = 0;
  *(self + 131) = 0;
  *(self + 264) = 0;
  *(self + 984) = 0u;
  *(self + 1064) = 0;
  *(self + 142) = 0;
  *(self + 286) = 0;
  *(self + 67) = 0u;
  *(self + 1152) = 0;
  *(self + 153) = 0;
  *(self + 308) = 0;
  *(self + 1160) = 0u;
  *(self + 1240) = 0;
  *(self + 164) = 0;
  *(self + 330) = 0;
  *(self + 78) = 0u;
  *(self + 1328) = 0;
  *(self + 175) = 0;
  *(self + 352) = 0;
  *(self + 1336) = 0u;
  *(self + 1416) = 0;
  *(self + 186) = 0;
  *(self + 374) = 0;
  *(self + 89) = 0u;
  return self;
}

- (PKAveragePointGenerator)init
{
  v3.receiver = self;
  v3.super_class = PKAveragePointGenerator;
  result = [(PKAveragePointGenerator *)&v3 init];
  if (result)
  {
    result->_azimuth.isAngle = 1;
    result->_altitude.isAngle = 1;
    result->_directionAngle.isAngle = 1;
    result->_rollAngle.isAngle = 1;
  }

  return result;
}

- (void)reset
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    *(a1 + 16) = 0u;
    *(a1 + 80) = 0;
    os_unfair_lock_unlock((a1 + 88));
    os_unfair_lock_lock((a1 + 176));
    *(a1 + 104) = 0u;
    *(a1 + 168) = 0;
    os_unfair_lock_unlock((a1 + 176));
    os_unfair_lock_lock((a1 + 264));
    *(a1 + 192) = 0u;
    *(a1 + 256) = 0;
    os_unfair_lock_unlock((a1 + 264));
    os_unfair_lock_lock((a1 + 352));
    *(a1 + 280) = 0u;
    *(a1 + 344) = 0;
    os_unfair_lock_unlock((a1 + 352));
    os_unfair_lock_lock((a1 + 440));
    *(a1 + 368) = 0u;
    *(a1 + 432) = 0;
    os_unfair_lock_unlock((a1 + 440));
    os_unfair_lock_lock((a1 + 528));
    *(a1 + 456) = 0u;
    *(a1 + 520) = 0;
    os_unfair_lock_unlock((a1 + 528));
    os_unfair_lock_lock((a1 + 616));
    *(a1 + 544) = 0u;
    *(a1 + 608) = 0;
    os_unfair_lock_unlock((a1 + 616));
    os_unfair_lock_lock((a1 + 704));
    *(a1 + 632) = 0u;
    *(a1 + 696) = 0;
    os_unfair_lock_unlock((a1 + 704));
    os_unfair_lock_lock((a1 + 792));
    *(a1 + 720) = 0u;
    *(a1 + 784) = 0;
    os_unfair_lock_unlock((a1 + 792));
    os_unfair_lock_lock((a1 + 880));
    *(a1 + 808) = 0u;
    *(a1 + 872) = 0;
    os_unfair_lock_unlock((a1 + 880));
    os_unfair_lock_lock((a1 + 968));
    *(a1 + 896) = 0u;
    *(a1 + 960) = 0;
    os_unfair_lock_unlock((a1 + 968));
    os_unfair_lock_lock((a1 + 1056));
    *(a1 + 984) = 0u;
    *(a1 + 1048) = 0;
    os_unfair_lock_unlock((a1 + 1056));
    os_unfair_lock_lock((a1 + 1144));
    *(a1 + 1072) = 0u;
    *(a1 + 1136) = 0;
    os_unfair_lock_unlock((a1 + 1144));
    os_unfair_lock_lock((a1 + 1232));
    *(a1 + 1160) = 0u;
    *(a1 + 1224) = 0;
    os_unfair_lock_unlock((a1 + 1232));
    os_unfair_lock_lock((a1 + 1320));
    *(a1 + 1248) = 0u;
    *(a1 + 1312) = 0;
    os_unfair_lock_unlock((a1 + 1320));
    os_unfair_lock_lock((a1 + 1408));
    *(a1 + 1336) = 0u;
    *(a1 + 1400) = 0;
    os_unfair_lock_unlock((a1 + 1408));
    os_unfair_lock_lock((a1 + 1496));
    *(a1 + 1424) = 0u;
    *(a1 + 1488) = 0;

    os_unfair_lock_unlock((a1 + 1496));
  }
}

- (void)currentInputPoint
{
  if (a1)
  {
    *a2 = PKRunningStat::mean((a1 + 8));
    *(a2 + 8) = PKRunningStat::mean((a1 + 96));
    *(a2 + 16) = PKRunningStat::mean((a1 + 184));
    v15 = PKRunningStat::mean((a1 + 272));
    __x = PKRunningStat::mean((a1 + 360));
    v4.f64[0] = v15;
    v4.f64[1] = __x;
    v19 = v4;
    v20 = vdupq_n_s64(0x401921FB54442D18uLL);
    v18 = vorrq_s8(vcltzq_f64(v4), vcgtq_f64(v4, v20));
    v16 = fmod(v15, 6.28318531);
    v5 = fmod(__x, 6.28318531);
    *v6.i64 = v16;
    *&v6.i64[1] = v5;
    v7 = vbslq_s8(v18, v6, v19);
    v8 = vbslq_s8(vcltzq_f64(v7), vaddq_f64(v7, v20), v7);
    *(a2 + 24) = vbicq_s8(v8, vceqzq_f64(v8));
    *(a2 + 40) = PKRunningStat::mean((a1 + 448));
    v9 = PKRunningStat::mean((a1 + 536));
    v10 = fmod(v9, 6.28318531);
    if (v9 <= 6.28318531 && v9 >= 0.0)
    {
      v10 = v9;
    }

    if (v10 < 0.0)
    {
      v10 = v10 + 6.28318531;
    }

    if (v10 == 0.0)
    {
      v10 = 0.0;
    }

    *(a2 + 48) = v10;
    *(a2 + 56) = 0;
    *(a2 + 64) = PKRunningStat::mean((a1 + 712));
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = PKRunningStat::mean((a1 + 800));
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    v12 = PKRunningStat::mean((a1 + 888));
    v13 = fmod(v12, 6.28318531);
    if (v12 <= 6.28318531 && v12 >= 0.0)
    {
      v13 = v12;
    }

    if (v13 < 0.0)
    {
      v13 = v13 + 6.28318531;
    }

    if (v13 == 0.0)
    {
      v13 = 0.0;
    }

    *(a2 + 112) = v13;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
  }

  else
  {
    *(a2 + 128) = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

- (double)currentStrokePoint
{
  if (a1)
  {
    *a2 = PKRunningStat::mean((a1 + 712));
    a2[1] = PKRunningStat::mean((a1 + 8));
    a2[2] = PKRunningStat::mean((a1 + 96));
    a2[3] = PKRunningStat::mean((a1 + 976));
    a2[4] = PKRunningStat::mean((a1 + 1152));
    a2[5] = PKRunningStat::mean((a1 + 1064));
    a2[6] = PKRunningStat::mean((a1 + 184));
    a2[7] = PKRunningStat::mean((a1 + 272));
    a2[8] = PKRunningStat::mean((a1 + 360));
    a2[9] = PKRunningStat::mean((a1 + 1240));
    a2[10] = PKRunningStat::mean((a1 + 1328));
    result = PKRunningStat::mean((a1 + 1416));
    a2[11] = result;
  }

  else
  {
    result = 0.0;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

- (void)addInputPoint:(uint64_t)a1
{
  if (a1)
  {
    PKRunningStat::push((a1 + 8), *a2);
    PKRunningStat::push((a1 + 96), a2[1]);
    PKRunningStat::push((a1 + 184), a2[2]);
    PKRunningStat::push((a1 + 272), a2[3]);
    PKRunningStat::push((a1 + 360), a2[4]);
    PKRunningStat::push((a1 + 448), a2[5]);
    PKRunningStat::push((a1 + 536), a2[6]);
    PKRunningStat::push((a1 + 624), a2[7]);
    PKRunningStat::push((a1 + 712), a2[8]);
    PKRunningStat::push((a1 + 800), a2[11]);
    v4 = a2[14];

    PKRunningStat::push((a1 + 888), v4);
  }
}

- (void)addStroke:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 path];
    v6 = [v5 count];
    v7 = [v4 ink];
    v8 = [v7 behavior];
    v9 = [v8 renderingDescriptor];
    v10 = [v9 type];

    v11 = 0.0;
    v12 = 2.0;
    if (v10)
    {
      v12 = 0.0;
    }

    v22 = v12;
    if (v4)
    {
      [v4 transform];
      [v4 _inkTransform];
      v11 = sqrt(v24 * v24 + v23 * v23);
      v14 = v24;
      v13 = v23;
    }

    else
    {
      v14 = 0.0;
      v13 = 0.0;
    }

    v15 = [v4 ink];
    if ([v15 _isFountainPenInk])
    {
      v16 = [v4 ink];
      v17 = [v16 _isFountainPenInkV2] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    if (v6)
    {
      v18 = 0;
      v19 = v11 * sqrt(v14 * v14 + v13 * v13);
      v21 = v19;
      do
      {
        if (v5)
        {
          [v5 decompressedPointAt:v18];
        }

        v20 = 0.0;
        if (v10)
        {
          v20 = v19 * 0.0;
        }

        PKRunningStat::push((a1 + 712), 0.0);
        PKRunningStat::push((a1 + 8), 0.0);
        PKRunningStat::push((a1 + 96), 0.0);
        PKRunningStat::push((a1 + 976), v22 + (0.0 - v22) * v19);
        PKRunningStat::push((a1 + 1152), 0.0);
        PKRunningStat::push((a1 + 1064), v19 * 0.0);
        PKRunningStat::push((a1 + 184), 0.0);
        if ((v17 & 1) == 0)
        {
          PKRunningStat::push((a1 + 272), 0.0);
        }

        PKRunningStat::push((a1 + 360), 0.0);
        PKRunningStat::push((a1 + 1240), 0.0);
        PKRunningStat::push((a1 + 1328), v20);
        PKRunningStat::push((a1 + 1416), 0.0);
        ++v18;
        v19 = v21;
      }

      while (v6 != v18);
    }
  }
}

- (void)addStrokes:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(PKAveragePointGenerator *)a1 addStroke:?];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

@end