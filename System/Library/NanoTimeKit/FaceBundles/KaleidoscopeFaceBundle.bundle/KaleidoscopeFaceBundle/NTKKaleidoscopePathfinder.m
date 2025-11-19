@interface NTKKaleidoscopePathfinder
+ (NTKKaleidoscopePathfinder)pathfinderWithImage:(id)a3;
+ (id)pathfinderFromDirectory:(id)a3;
+ (id)pathfinderFromFile:(id)a3;
- (BOOL)writeToDirectory:(id)a3;
- (BOOL)writeToFile:(id)a3;
- (NTKKaleidoscopePathfinder)initWithCoder:(id)a3;
- (NTKKaleidoscopePathfinder)initWithImage:(id)a3;
- (NTKKaleidoscopePathfinderPoint)pointForTime:(float)a3;
- (void)adjustPathStart:(NTKKaleidoscopePathfinder *)self;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKKaleidoscopePathfinder

- (NTKKaleidoscopePathfinder)initWithImage:(id)a3
{
  v4 = a3;
  if (v4 && (v44.receiver = self, v44.super_class = NTKKaleidoscopePathfinder, (self = [(NTKKaleidoscopePathfinder *)&v44 init]) != 0))
  {
    [v4 size];
    v39 = v6;
    v40 = v5;
    [v4 scale];
    v7.f64[0] = v40;
    v7.f64[1] = v39;
    v9 = vmulq_n_f64(v7, v8);
    v10 = v9.f64[1];
    if (v9.f64[0] < 2.0 || v9.f64[1] < 2.0)
    {
      v41 = v9.f64[0];
      v12 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v46 = v4;
        v47 = 1024;
        v48 = v41;
        v49 = 1024;
        v50 = v10;
        _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] nil pathfinder for image %@ (%d x %d), returning early", buf, 0x18u);
      }

      v13 = 0;
    }

    else
    {
      v14 = v9.f64[0];
      v15 = v9.f64[1];
      if (v9.f64[0] < 188 || v15 <= 187)
      {
        v42 = v9;
        v25 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v46 = v4;
          v47 = 1024;
          v48 = v14;
          v49 = 1024;
          v50 = v15;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[kaleidoscope pathfinder cache] poor quality pathfinder for image %@ (%d x %d)", buf, 0x18u);
        }

        v22 = 0;
        v24 = 2;
        v23 = 2;
        v9 = v42;
      }

      else
      {
        v16 = v14 - 156;
        v17 = v15 - 156;
        v18 = (v14 - 156) >> 4;
        v19 = (v15 - 156) >> 4;
        if ((v18 * v19) >= 0x259)
        {
          v19 = sqrtf((v17 * 600.0) / v16);
          v18 = 600 / v19;
        }

        v20 = v16 / v18;
        v21 = v17 / v19;
        if (v20 <= v21)
        {
          v20 = v21;
        }

        v22 = (v20 + 77) / v20;
        v23 = v14 / v20;
        v24 = v15 / v20;
      }

      *&self->_sampleRadiusX = vcvt_f32_f64(vdivq_f64(vdupq_n_s64(0x4063800000000000uLL), v9));
      v26 = malloc_type_malloc(4 * v23 * v24, 0x100004052888210uLL);
      v12 = [NTKKaleidoscopeRawImage rawImageWithImage:v4 width:(16 * v23) height:(16 * v24)];
      NTKKaleidoscopeAnalyzeInterestingness(v12, v26, v23, v24, v22);
      self->_cellGridWidth = v23;
      self->_cellGridHeight = v24;
      v27 = NTKGeneratePathFromInterestingness();
      v28 = v27;
      if (v27)
      {
        v38 = v26;
        v29 = [v27 count];
        self->_pathLength = v29 / 2;
        *&self->_path[4] = malloc_type_malloc(8 * (v29 / 2), 0x100004000313F17uLL);
        if (self->_pathLength >= 1)
        {
          v30 = 0;
          v31 = 1;
          do
          {
            v32 = [v28 objectAtIndexedSubscript:v31 - 1];
            [v32 floatValue];
            v43 = v33;
            v34 = [v28 objectAtIndexedSubscript:v31];
            [v34 floatValue];
            *(*&self->_path[4] + 8 * v30) = __PAIR64__(v35, v43);

            ++v30;
            v31 += 2;
          }

          while (v30 < self->_pathLength);
        }

        free(v38);
        *&self->_dominanceGrid[4] = malloc_type_malloc(16 * v23 * v24, 0x1000040451B5BE8uLL);
        NTKKaleidoscopeAnalyzeDominance();
        v13 = self;
      }

      else
      {
        v36 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1524C();
        }

        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NTKKaleidoscopePathfinder)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NTKKaleidoscopePathfinder;
  v5 = [(NTKKaleidoscopePathfinder *)&v21 init];
  if (v5 && [v4 decodeInt32ForKey:@"version"] == 4098)
  {
    [v4 decodeFloatForKey:@"sampleRadiusX"];
    v5->_sampleRadiusX = v6;
    [v4 decodeFloatForKey:@"sampleRadiusY"];
    v5->_sampleRadiusY = v7;
    v5->_cellGridWidth = [v4 decodeIntForKey:@"cellGridWidth"];
    v8 = [v4 decodeIntForKey:@"cellGridHeight"];
    v5->_cellGridHeight = v8;
    v9 = v5->_cellGridWidth * v8;
    v20 = 0;
    v10 = [v4 decodeBytesForKey:@"dominanceGrid" returnedLength:&v20];
    v11 = 0;
    if (v20 == 16 * v9)
    {
      v12 = v10;
      v13 = malloc_type_malloc(16 * v9, 0x9726DC52uLL);
      *&v5->_dominanceGrid[4] = v13;
      memcpy(v13, v12, 16 * v9);
      v14 = [v4 decodeIntForKey:@"pathLength"];
      v5->_pathLength = v14;
      v19 = 0;
      v15 = [v4 decodeBytesForKey:@"path" returnedLength:&v19];
      v11 = 0;
      if (v19 == 8 * v14)
      {
        v16 = v15;
        v17 = malloc_type_malloc(8 * v14, 0x2337A5A7uLL);
        *&v5->_path[4] = v17;
        memcpy(v17, v16, 8 * v14);
        v11 = v5;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  free(*&self->_dominanceGrid[4]);
  free(*&self->_path[4]);
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopePathfinder;
  [(NTKKaleidoscopePathfinder *)&v3 dealloc];
}

+ (NTKKaleidoscopePathfinder)pathfinderWithImage:(id)a3
{
  v3 = a3;
  v4 = [[NTKKaleidoscopePathfinder alloc] initWithImage:v3];

  return v4;
}

+ (id)pathfinderFromDirectory:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"image-%X.pathfinder", 4098];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 attributesOfItemAtPath:v6 error:0];
  v9 = [v8 objectForKeyedSubscript:NSFileProtectionKey];
  v10 = [v9 isEqualToString:NSFileProtectionNone];

  if (v10)
  {
    v11 = [a1 pathfinderFromFile:v6];
  }

  else
  {
    v12 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 objectForKeyedSubscript:NSFileProtectionKey];
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[kaleidoscope pathfinder cache] path %@ has the wrong protection class (%@)", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)pathfinderFromFile:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:1 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:0];
    [v6 setDecodingFailurePolicy:0];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    if (v7)
    {
      v8 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[kaleidoscope pathfinder cache] using %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1531C();
      }
    }
  }

  else
  {
    v9 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_15384();
    }

    v7 = 0;
  }

  return v7;
}

- (NTKKaleidoscopePathfinderPoint)pointForTime:(float)a3
{
  v4 = v3;
  pathLength = self->_pathLength;
  v6 = pathLength * a3;
  v7 = vcvtms_s32_f32(v6);
  v8 = *&self->_dominanceGrid[4];
  v9 = *&self->_path[4];
  v10 = *(v9 + 8 * (v7 % pathLength));
  v24 = vmla_n_f32(v10, vsub_f32(*(v9 + 8 * ((v7 + 1) % pathLength)), v10), v6 - floorf(v6));
  v11 = *&self->_cellGridWidth;
  *(v4 + 8) = *&self->_sampleRadiusX;
  v12 = vadd_s32(v11, -1);
  v13 = vmin_s32(vmax_s32(vcvt_s32_f32(vmla_f32(0xBF000000BF000000, vcvt_f32_s32(v11), v24)), 0), v12);
  v14 = v12.i32[1];
  if (v13.i32[0] + 1 < v12.i32[0])
  {
    v15 = v13.i32[0] + 1;
  }

  else
  {
    v15 = v12.i32[0];
  }

  if (v13.i32[1] + 1 < v12.i32[1])
  {
    v14 = v13.i32[1] + 1;
  }

  v16 = v11.i32[0];
  v17 = vsubq_f32(*(v8 + 16 * (v15 + v13.i32[1] * v11.i32[0])), *(v8 + 16 * (v13.i32[1] * v11.i32[0] + v13.i32[0])));
  v18 = vsubq_f32(*(v8 + 16 * (v14 * v16 + v15)), *(v8 + 16 * (v14 * v16 + v13.i32[0])));
  CLKUIConvertToSRGBfFromRGBf_fast();
  v21 = vcvtq_f64_f32(*&v20);
  *(v4 + 16) = v20;
  *(v4 + 32) = v21;
  v22 = *(&v20 + 2);
  *(v4 + 48) = *(&v20 + 2);
  *(v4 + 56) = 0x3FF0000000000000;
  LODWORD(v23) = v24.i32[0];
  LODWORD(v21.f64[0]) = 1.0;
  *&v22 = 1.0 - v24.f32[1];
  *(&v23 + 1) = 1.0 - v24.f32[1];
  *v4 = v23;
  result.var0[1] = v21.f64[0];
  result.var0[3] = v19;
  result.var0[2] = v23;
  result.var0[0] = v22;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = 16 * self->_cellGridHeight * self->_cellGridWidth;
  v5 = 8 * self->_pathLength;
  v8 = a3;
  [v8 encodeInt32:4098 forKey:@"version"];
  *&v6 = self->_sampleRadiusX;
  [v8 encodeFloat:@"sampleRadiusX" forKey:v6];
  *&v7 = self->_sampleRadiusY;
  [v8 encodeFloat:@"sampleRadiusY" forKey:v7];
  [v8 encodeInt32:self->_cellGridWidth forKey:@"cellGridWidth"];
  [v8 encodeInt32:self->_cellGridHeight forKey:@"cellGridHeight"];
  [v8 encodeBytes:*&self->_dominanceGrid[4] length:v4 forKey:@"dominanceGrid"];
  [v8 encodeInt32:self->_pathLength forKey:@"pathLength"];
  [v8 encodeBytes:*&self->_path[4] length:v5 forKey:@"path"];
}

- (BOOL)writeToDirectory:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"image-%X.pathfinder", 4098];
  v6 = [v4 stringByAppendingPathComponent:v5];

  LOBYTE(self) = [(NTKKaleidoscopePathfinder *)self writeToFile:v6];
  return self;
}

- (BOOL)writeToFile:(id)a3
{
  v4 = a3;
  v5 = +[CLKDevice currentDevice];
  v6 = [v5 unlockedSinceBoot];

  if (v6)
  {
    v7 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v17 = 0;
    [v7 writeToFile:v4 options:1 error:&v17];
    v8 = v17;
    if (v8)
    {
      v9 = v8;
      v10 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_15454();
      }
    }

    else
    {
      v10 = +[NSFileManager defaultManager];
      v18 = NSFileProtectionKey;
      v19 = NSFileProtectionNone;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = 0;
      v13 = [v10 setAttributes:v12 ofItemAtPath:v4 error:&v16];
      v9 = v16;

      if ((v13 & 1) == 0)
      {
        v14 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_154BC();
        }

        [v10 removeItemAtPath:v4 error:0];
      }
    }

    v11 = v9 == 0;
  }

  else
  {
    v7 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_153EC();
    }

    v11 = 0;
  }

  return v11;
}

- (void)adjustPathStart:(NTKKaleidoscopePathfinder *)self
{
  pathLength = self->_pathLength;
  if (pathLength > 4)
  {
    v5 = v2;
    v7 = 0;
    v8 = *&self->_path[4];
    v9 = vsub_f32(v2, *v8);
    v10 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    for (i = 1; i != pathLength; ++i)
    {
      v12 = vsub_f32(v5, v8[i]);
      v13 = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
      if (v13 < v10)
      {
        v7 = i;
        v10 = v13;
      }
    }

    v14 = malloc_type_malloc(8 * pathLength, 0x100004000313F17uLL);
    v15 = v14;
    for (j = 0; j != pathLength; ++j)
    {
      v14[j] = *(*&self->_path[4] + 8 * (v7 % pathLength));
      ++v7;
    }

    v17 = vsub_f32(v5, *v14);
    if (pathLength / 0x1E <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = pathLength / 0x1E;
    }

    memcpy(*&self->_path[4], v14, 8 * pathLength);
    v19 = 1 - v18;
    v20 = 2 * v18 - 1;
    do
    {
      v21 = 1.0 - fabsf(v19 / v18);
      v15[(pathLength + v19) % pathLength] = vmla_n_f32(v15[(pathLength + v19) % pathLength], v17, (v21 * v21) * ((v21 * -2.0) + 3.0));
      ++v19;
      --v20;
    }

    while (v20);
    *v15 = v5;
    free(*&self->_path[4]);
    *&self->_path[4] = v15;
  }

  else
  {
    v4 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_15524(pathLength, v4);
    }
  }
}

@end