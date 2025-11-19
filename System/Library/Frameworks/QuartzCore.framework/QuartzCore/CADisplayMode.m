@interface CADisplayMode
+ (CADisplayMode)displayModeWithWidth:(unint64_t)a3 height:(unint64_t)a4 refreshRate:(double)a5 isVRR:(BOOL)a6;
+ (id)_displayModeWithMode:(Mode)a3 display:(id)a4 rates:(id)a5 perMode:(PerModeInfo)a6 maxSourceBandwidthPerPipe:(unsigned int)a7;
- (BOOL)colorModeIsYCbCr;
- (BOOL)isEqual:(id)a3;
- (Mode)_mode;
- (NSString)colorGamut;
- (NSString)colorMode;
- (NSString)hdrMode;
- (__CFData)copyPrivateRepresentation;
- (double)refreshRate;
- (id)_initWithMode:(Mode)a3 display:(id)a4 rates:(id)a5 perMode:(PerModeInfo)a6 maxSourceBandwidthPerPipe:(unsigned int)a7;
- (id)description;
- (unint64_t)bitDepth;
- (unint64_t)preferredScale;
- (void)_setWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CADisplayMode

- (unint64_t)preferredScale
{
  priv = self->_priv;
  result = LODWORD(priv->var3);
  if (!result)
  {
    if ((priv->var0.var0.var1 & 0x10000000) != 0)
    {
      MGGetFloat32Answer();
      return v4;
    }

    else if (priv->var2 <= 0x438)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (double)refreshRate
{
  priv = self->_priv;
  if (priv->var0.var0.var1 != -1)
  {
    return round(((priv->var0.var0.var1 >> 29) & 0x1FFFFFF) * 0.00152587891) * 0.01;
  }

  [*(&priv->var0.var0.var1 + 1) hardwareRefreshRate];
  return round(1.0 / v6);
}

- (NSString)colorGamut
{
  if ([*(&self->_priv->var0.var0.var1 + 1) supportsExtendedColors])
  {
    return @"gamut_P3";
  }

  else
  {
    return @"gamut_SRGB";
  }
}

- (NSString)hdrMode
{
  var1 = self->_priv->var0.var0.var1;
  if (var1)
  {
    v3 = (*&self->_priv->var0.var0.var0 & 0x10000000) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = ((var1 >> 55) & 0x1F) - 16, v4 <= 0xC))
  {
    return *(&off_1E6DEC078 + v4);
  }

  else
  {
    return @"SDR";
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  free(self->_priv);
  v3.receiver = self;
  v3.super_class = CADisplayMode;
  [(CADisplayMode *)&v3 dealloc];
}

- (id)description
{
  var1 = self->_priv->var0.var0.var1;
  if ((var1 & 0x10000000) != 0)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CADisplayMode %d x %d internal_panel (fixed)>", -[CADisplayMode width](self, "width"), -[CADisplayMode height](self, "height"), v11, v12];
  }

  v4 = off_1E6DEC0E0[(var1 >> 60) & 3];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CADisplayMode *)self width];
  v7 = [(CADisplayMode *)self height];
  v8 = ((*&self->_priv->var0.var0.var0 >> 55) & 0x1F) - 1;
  if (v8 > 0x1B)
  {
    v9 = "";
  }

  else
  {
    v9 = off_1E6DED668[v8];
  }

  return [v5 stringWithFormat:@"<CADisplayMode %d x %d fmt:%s range:%s>", v6, v7, v9, v4];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(a3 + 1), priv = self->_priv, v5->i64[0] == priv->var0.var0.var1) || (v7 = vshrn_n_s64(*v5, 0x1DuLL), v8.i64[0] = v7.i32[0] & 0x1FFFFFF, v8.i64[1] = v7.i32[1] & 0x1FFFFFF, v9 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v8), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), *v5), (vmovn_s64(vceqq_s64(v9, vdupq_laneq_s64(v9, 1))).u8[0] & 1) != 0)) && v5->i64[1] == *(&priv->var0.var0.var1 + 1) && v5[1].i64[0] == priv->var1 && v5[1].i64[1] == priv->var2;
  return result;
}

- (__CFData)copyPrivateRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  *bytes = 0;
  var1 = self->_priv->var0.var0.var1;
  return CFDataCreate(0, bytes, 16);
}

- (unint64_t)bitDepth
{
  var1 = self->_priv->var0.var0.var1;
  if (var1)
  {
    v3 = (*&self->_priv->var0.var0.var0 & 0x10000000) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = ((var1 >> 55) & 0x1F) - 2, v4 <= 0x1A))
  {
    return qword_183E21E68[v4];
  }

  else
  {
    return 8;
  }
}

- (BOOL)colorModeIsYCbCr
{
  var1 = self->_priv->var0.var0.var1;
  if (var1)
  {
    v3 = (*&self->_priv->var0.var0.var0 & 0x10000000) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 0x3F1FF0u >> (var1 >> 55);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (NSString)colorMode
{
  var1 = self->_priv->var0.var0.var1;
  result = @"auto";
  if (var1)
  {
    v4 = (var1 & 0x10000000) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return result;
  }

  v5 = (var1 >> 55) & 0x1F;
  if (((var1 >> 55) & 0x1F) > 0xF)
  {
    if (((var1 >> 55) & 0x1F) <= 0x15)
    {
      if ((v5 - 16) < 2)
      {
        return @"HDR10_444LimitedRange";
      }

      if ((v5 - 18) < 2)
      {
        return @"HDR10_422LimitedRange";
      }

      if ((v5 - 20) < 2)
      {
        return @"HDR10_420LimitedRange";
      }

      return result;
    }

    if ((v5 - 22) >= 4)
    {
      if ((v5 - 26) < 2)
      {
        return @"DolbyVision";
      }

      if (v5 == 28)
      {
        return @"DolbyVisionLowLatency";
      }

      return result;
    }

    v6 = var1 & 0x3000000000000000;
    v7 = @"HDR10_RGBFullRange";
    v8 = v6 == 0x1000000000000000;
LABEL_27:
    if (v8)
    {
      return &v7->isa;
    }

    return result;
  }

  if (((var1 >> 55) & 0x1F) <= 6)
  {
    if ((v5 - 1) >= 3)
    {
      if ((v5 - 4) < 3)
      {
        return @"YCbCr420LimitedRange";
      }

      return result;
    }

    goto LABEL_22;
  }

  if ((v5 - 7) < 3)
  {
    return @"YCbCr422LimitedRange";
  }

  if ((v5 - 10) < 3)
  {
    return @"YCbCr444LimitedRange";
  }

  if ((v5 - 13) < 3)
  {
LABEL_22:
    v9 = (var1 >> 60) & 3;
    if (v9 == 1)
    {
      return @"RGBFullRange";
    }

    v7 = @"RGBLimitedRange";
    v8 = v9 == 2;
    goto LABEL_27;
  }

  return result;
}

- (void)_setWidth:(unint64_t)a3 height:(unint64_t)a4
{
  priv = self->_priv;
  priv->var1 = a3;
  priv->var2 = a4;
}

- (Mode)_mode
{
  var1 = self->_priv->var0.var0.var1;
  *(&result.var0.var1 + 1) = a2;
  result.var0.var1 = var1;
  return result;
}

- (id)_initWithMode:(Mode)a3 display:(id)a4 rates:(id)a5 perMode:(PerModeInfo)a6 maxSourceBandwidthPerPipe:(unsigned int)a7
{
  v7 = *&a6.var2;
  var0 = a6.var0;
  v10 = *(&a3.var0.var1 + 1);
  var1 = a3.var0.var1;
  v18 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_malloc(0x40uLL, 0x1080040D897DFA0uLL);
  self->_priv = v13;
  v13->var0.var0.var1 = var1;
  v14 = v10;
  priv = self->_priv;
  *(&priv->var0.var0.var1 + 1) = v14;
  priv->var1 = (var1 & 0x3FFF);
  priv->var2 = (var1 >> 14) & 0x3FFF;
  LODWORD(priv->var3) = 0;
  priv->var5 = a5;
  priv->var6.var0 = var0;
  self->_priv->var6.var1 = v7;
  v17.receiver = self;
  v17.super_class = CADisplayMode;
  return [(CADisplayMode *)&v17 init];
}

+ (CADisplayMode)displayModeWithWidth:(unint64_t)a3 height:(unint64_t)a4 refreshRate:(double)a5 isVRR:(BOOL)a6
{
  v6 = a3 & 0x3FFF | ((a4 & 0x3FFF) << 14) | ((vcvtd_n_u64_f64(a5, 0x10uLL) & 0x1FFFFFF) << 29);
  v7 = 0x8000000000000000;
  if (!a6)
  {
    v7 = 0;
  }

  return [a1 _displayModeWithMode:v6 | v7 | 0x1080000000000000 display:0 rates:0 perMode:0 maxSourceBandwidthPerPipe:{0, 0}];
}

+ (id)_displayModeWithMode:(Mode)a3 display:(id)a4 rates:(id)a5 perMode:(PerModeInfo)a6 maxSourceBandwidthPerPipe:(unsigned int)a7
{
  v7 = [[a1 alloc] _initWithMode:a3.var0.var1 display:*(&a3.var0.var1 + 1) rates:a4 perMode:a5 maxSourceBandwidthPerPipe:{a6.var0, *&a6.var2}];

  return v7;
}

@end