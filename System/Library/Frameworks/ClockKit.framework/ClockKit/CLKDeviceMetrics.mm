@interface CLKDeviceMetrics
+ (id)metricsWithDevice:(id)a3 identitySizeClass:(unint64_t)a4;
- (CGPoint)applyPointRoundingBehavior:(CGPoint)a3;
- (CGPoint)constantPoint:(CGPoint)a3 withOverride:(CGPoint)a4 forSizeClass:(unint64_t)a5;
- (CGPoint)constantPoint:(CGPoint)a3 withOverrides:(id)a4;
- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8;
- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9;
- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9 avoniaCompact:(CGPoint)a10 avoniaRegular:(CGPoint)a11;
- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9 avoniaCompact:(CGPoint)a10 avoniaRegular:(CGPoint)a11 begonia:(CGPoint)a12;
- (CGPoint)scaledPoint:(CGPoint)a3;
- (CGPoint)scaledPoint:(CGPoint)a3 usingScale:(double)a4;
- (CGPoint)scaledPoint:(CGPoint)a3 withOverride:(CGPoint)a4 forSizeClass:(unint64_t)a5;
- (CGPoint)scaledPoint:(CGPoint)a3 withOverrides:(id)a4;
- (CGSize)applySizeRoundingBehavior:(CGSize)a3;
- (CGSize)constantSize:(CGSize)a3 withOverride:(CGSize)a4 forSizeClass:(unint64_t)a5;
- (CGSize)constantSize:(CGSize)a3 withOverrides:(id)a4;
- (CGSize)scaledSize:(CGSize)a3;
- (CGSize)scaledSize:(CGSize)a3 usingScale:(double)a4;
- (CGSize)scaledSize:(CGSize)a3 withOverride:(CGSize)a4 forSizeClass:(unint64_t)a5;
- (CGSize)scaledSize:(CGSize)a3 withOverrides:(id)a4;
- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8;
- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9;
- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9 avoniaCompact:(CGSize)a10 avoniaRegular:(CGSize)a11;
- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9 avoniaCompact:(CGSize)a10 avoniaRegular:(CGSize)a11 begonia:(CGSize)a12;
- (CLKDeviceMetrics)initWithDevice:(id)a3 identitySizeClass:(unint64_t)a4;
- (double)_unroundedScaledValue:(double)a3;
- (double)applyRoundingBehavior:(double)a3;
- (double)constantValue:(double)a3 withOverride:(double)a4 forSizeClass:(unint64_t)a5;
- (double)constantValue:(double)a3 withOverrides:(id)a4;
- (double)scaledValue:(double)a3;
- (double)scaledValue:(double)a3 withOverride:(double)a4 forSizeClass:(unint64_t)a5;
- (double)scaledValue:(double)a3 withOverrides:(id)a4;
- (double)valueCompact:(double)a3 regular:(double)a4 luxoCompact:(double)a5 luxoRegular:(double)a6 aloeCompact:(double)a7 aloeRegular:(double)a8 agave:(double)a9 avoniaCompact:(double)a10 avoniaRegular:(double)a11;
- (double)valueCompact:(double)a3 regular:(double)a4 luxoCompact:(double)a5 luxoRegular:(double)a6 aloeCompact:(double)a7 aloeRegular:(double)a8 agave:(double)a9 avoniaCompact:(double)a10 avoniaRegular:(double)a11 begonia:(double)a12;
- (id)genericScaledValue:(id)a3 withOverrides:(id)a4 useScaledValue:(id)a5 useScaledValueWithScale:(id)a6;
- (unint64_t)_effectiveSizeClass;
- (void)setFallbackSizeClass:(unint64_t)a3 andFallbackScale:(double)a4 forSizeClass:(unint64_t)a5;
- (void)setScale:(double)a3 forSizeClass:(unint64_t)a4;
@end

@implementation CLKDeviceMetrics

+ (id)metricsWithDevice:(id)a3 identitySizeClass:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDevice:v6 identitySizeClass:a4];

  return v7;
}

- (CLKDeviceMetrics)initWithDevice:(id)a3 identitySizeClass:(unint64_t)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28.receiver = self;
  v28.super_class = CLKDeviceMetrics;
  v8 = [(CLKDeviceMetrics *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_identitySizeClass = a4;
    v9->_roundingBehavior = 1;
    if (initWithDevice_identitySizeClass__onceToken != -1)
    {
      [CLKDeviceMetrics initWithDevice:identitySizeClass:];
    }

    v10 = initWithDevice_identitySizeClass____defaultScales;
    if (a4 - 1 > 1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v14 = [v10 objectForKeyedSubscript:v13];
      [v14 doubleValue];
      v16 = v15;

      v17 = [MEMORY[0x277CBEB38] dictionary];
      scales = v9->_scales;
      v9->_scales = v17;

      v19 = initWithDevice_identitySizeClass____defaultScales;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __53__CLKDeviceMetrics_initWithDevice_identitySizeClass___block_invoke_34;
      v25[3] = &unk_278A1F2D8;
      v26 = v9;
      v27 = v16;
      [v19 enumerateKeysAndObjectsUsingBlock:v25];
      v12 = v26;
    }

    else
    {
      v11 = [initWithDevice_identitySizeClass____defaultScales mutableCopy];
      v12 = v9->_scales;
      v9->_scales = v11;
    }

    v29 = &unk_284A34920;
    v20 = [CLKSizeScalePair pairWithSizeClass:6 scale:&unk_284A34F58];
    v30[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v22 = [v21 mutableCopy];
    fallbackSizeClassMap = v9->_fallbackSizeClassMap;
    v9->_fallbackSizeClassMap = v22;
  }

  return v9;
}

void __53__CLKDeviceMetrics_initWithDevice_identitySizeClass___block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284A34848;
  v2[1] = &unk_284A34860;
  v3[0] = &unk_284A34EE8;
  v3[1] = &unk_284A34EF8;
  v2[2] = &unk_284A34878;
  v2[3] = &unk_284A34890;
  v3[2] = &unk_284A34EF8;
  v3[3] = &unk_284A34F08;
  v2[4] = &unk_284A348A8;
  v2[5] = &unk_284A348C0;
  v3[4] = &unk_284A34F18;
  v3[5] = &unk_284A34F28;
  v2[6] = &unk_284A348D8;
  v2[7] = &unk_284A348F0;
  v3[6] = &unk_284A34F28;
  v3[7] = &unk_284A34F08;
  v2[8] = &unk_284A34908;
  v2[9] = &unk_284A34920;
  v3[8] = &unk_284A34F38;
  v3[9] = &unk_284A34F48;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = initWithDevice_identitySizeClass____defaultScales;
  initWithDevice_identitySizeClass____defaultScales = v0;
}

void __53__CLKDeviceMetrics_initWithDevice_identitySizeClass___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / *(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:v7 forKeyedSubscript:v5];
}

- (void)setScale:(double)a3 forSizeClass:(unint64_t)a4
{
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  scales = self->_scales;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)scales setObject:v8 forKeyedSubscript:v7];
}

- (void)setFallbackSizeClass:(unint64_t)a3 andFallbackScale:(double)a4 forSizeClass:(unint64_t)a5
{
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v8 = [CLKSizeScalePair pairWithSizeClass:a3 scale:v11];
  fallbackSizeClassMap = self->_fallbackSizeClassMap;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [(NSMutableDictionary *)fallbackSizeClassMap setObject:v8 forKeyedSubscript:v10];
}

- (double)_unroundedScaledValue:(double)a3
{
  scales = self->_scales;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v6 = [(NSMutableDictionary *)scales objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7 * a3;

  return v8;
}

- (id)genericScaledValue:(id)a3 withOverrides:(id)a4 useScaledValue:(id)a5 useScaledValueWithScale:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v16 = [v11 objectForKeyedSubscript:v15];

  if (!v16)
  {
    fallbackSizeClassMap = self->_fallbackSizeClassMap;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v19 = [(NSMutableDictionary *)fallbackSizeClassMap objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = 1.0;
      while (1)
      {
        v21 = [v19 scale];
        [v21 doubleValue];
        v20 = v20 * v22;

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "sizeClass")}];
        v24 = [v11 objectForKeyedSubscript:v23];

        if (v24)
        {
          break;
        }

        v25 = [v19 sizeClass];

        v26 = self->_fallbackSizeClassMap;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
        v19 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];

        if (!v19)
        {
          goto LABEL_6;
        }
      }

      v16 = v13[2](v13, v24, v20);
    }

    else
    {
LABEL_6:
      v16 = v12[2](v12, v10);
    }
  }

  v28 = v16;

  return v28;
}

- (unint64_t)_effectiveSizeClass
{
  if (_effectiveSizeClass_onceToken != -1)
  {
    [CLKDeviceMetrics _effectiveSizeClass];
  }

  v3 = [(CLKDevice *)self->_device sizeClass];
  v4 = [(CLKDeviceMetrics *)self newestAllowedSizeClass];

  if (v4)
  {
    v5 = [(CLKDeviceMetrics *)self newestAllowedSizeClass];
    v6 = [v5 integerValue];

    while (v3 > v6)
    {
      v7 = _effectiveSizeClass__fallbacks;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
      v9 = [v7 objectForKeyedSubscript:v8];

      v3 = [v9 integerValue];
    }
  }

  return v3;
}

void __39__CLKDeviceMetrics__effectiveSizeClass__block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284A34878;
  v2[1] = &unk_284A34890;
  v3[0] = &unk_284A34848;
  v3[1] = &unk_284A34860;
  v3[2] = &unk_284A34878;
  v3[3] = &unk_284A34890;
  v2[4] = &unk_284A348D8;
  v2[5] = &unk_284A348F0;
  v2[2] = &unk_284A348A8;
  v2[3] = &unk_284A348C0;
  v3[4] = &unk_284A348C0;
  v3[5] = &unk_284A348A8;
  v2[6] = &unk_284A34908;
  v2[7] = &unk_284A34920;
  v3[6] = &unk_284A348D8;
  v3[7] = &unk_284A348D8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _effectiveSizeClass__fallbacks;
  _effectiveSizeClass__fallbacks = v0;
}

- (double)scaledValue:(double)a3
{
  [(CLKDeviceMetrics *)self _unroundedScaledValue:a3];

  [(CLKDeviceMetrics *)self applyRoundingBehavior:?];
  return result;
}

- (double)applyRoundingBehavior:(double)a3
{
  v5 = [(CLKDeviceMetrics *)self roundingBehavior];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      CLKRoundForDevice(self->_device, a3 + a3);
      return v10 * 0.5;
    }

    else if (v5 == 4)
    {
      v7.n128_u64[0] = 1.0;
      v6.n128_f64[0] = a3;

      MEMORY[0x2821DE7E8](4, v6, v7);
      return result;
    }

    return a3;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      CLKRoundForDevice(self->_device, a3 * 0.5);
      return v8 + v8;
    }

    return a3;
  }

  device = self->_device;

  CLKRoundForDevice(device, a3);
  return result;
}

- (double)constantValue:(double)a3 withOverride:(double)a4 forSizeClass:(unint64_t)a5
{
  if ([(CLKDeviceMetrics *)self _effectiveSizeClass]== a5)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

- (double)scaledValue:(double)a3 withOverride:(double)a4 forSizeClass:(unint64_t)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v14 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(CLKDeviceMetrics *)self scaledValue:v10 withOverrides:a3];
  v12 = v11;

  return v12;
}

- (double)constantValue:(double)a3 withOverrides:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 doubleValue];
    a3 = v10;
  }

  return a3;
}

- (double)scaledValue:(double)a3 withOverrides:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__CLKDeviceMetrics_scaledValue_withOverrides___block_invoke;
  v14[3] = &unk_278A1F300;
  v14[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__CLKDeviceMetrics_scaledValue_withOverrides___block_invoke_2;
  v13[3] = &unk_278A1F328;
  v13[4] = self;
  v9 = [(CLKDeviceMetrics *)self genericScaledValue:v8 withOverrides:v7 useScaledValue:v14 useScaledValueWithScale:v13];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

uint64_t __46__CLKDeviceMetrics_scaledValue_withOverrides___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];
  [v2 scaledValue:?];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithDouble:?];
}

uint64_t __46__CLKDeviceMetrics_scaledValue_withOverrides___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];
  [v2 scaledValue:? usingScale:?];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithDouble:?];
}

- (double)valueCompact:(double)a3 regular:(double)a4 luxoCompact:(double)a5 luxoRegular:(double)a6 aloeCompact:(double)a7 aloeRegular:(double)a8 agave:(double)a9 avoniaCompact:(double)a10 avoniaRegular:(double)a11
{
  v19 = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (v19 > 4)
  {
    if (v19 <= 6)
    {
      a3 = a8;
      if (v19 != 5)
      {
        return a9;
      }
    }

    else
    {
      a3 = a10;
      if (v19 != 7)
      {
        if (v19 == 8)
        {
          return a11;
        }

        a3 = a9;
        if (v19 != 9)
        {
          return a6;
        }
      }
    }
  }

  else if (v19 <= 1)
  {
    if (v19)
    {
      a3 = a4;
      if (v19 != 1)
      {
        return a6;
      }
    }
  }

  else
  {
    a3 = a5;
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        return a7;
      }

      return a6;
    }
  }

  return a3;
}

- (double)valueCompact:(double)a3 regular:(double)a4 luxoCompact:(double)a5 luxoRegular:(double)a6 aloeCompact:(double)a7 aloeRegular:(double)a8 agave:(double)a9 avoniaCompact:(double)a10 avoniaRegular:(double)a11 begonia:(double)a12
{
  v20 = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (v20 > 4)
  {
    if (v20 > 6)
    {
      a3 = a10;
      switch(v20)
      {
        case 7:
          return a3;
        case 8:
          return a11;
        case 9:
          return a12;
      }

      return a6;
    }

    a3 = a8;
    if (v20 != 5)
    {
      return a9;
    }
  }

  else if (v20 <= 1)
  {
    if (v20)
    {
      a3 = a4;
      if (v20 != 1)
      {
        return a6;
      }
    }
  }

  else
  {
    a3 = a5;
    if (v20 != 2)
    {
      if (v20 != 3)
      {
        return a7;
      }

      return a6;
    }
  }

  return a3;
}

- (CGPoint)scaledPoint:(CGPoint)a3
{
  y = a3.y;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:a3.x];
  v6 = v5;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:y];

  [(CLKDeviceMetrics *)self applyPointRoundingBehavior:v6, v7];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)scaledPoint:(CGPoint)a3 usingScale:(double)a4
{
  [(CLKDeviceMetrics *)self applyPointRoundingBehavior:a3.x * a4, a3.y * a4];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)applyPointRoundingBehavior:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CLKDeviceMetrics *)self roundingBehavior];
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      CLKPointRoundForDevice(self->_device);
      goto LABEL_8;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        CLKPointRoundForDevice(self->_device);
        x = v9 + v9;
        y = v10 + v10;
        break;
      case 3:
        CLKPointRoundForDevice(self->_device);
        x = v11 * 0.5;
        y = v12 * 0.5;
        break;
      case 4:
        UIPointRoundToScale();
LABEL_8:
        x = v7;
        y = v8;
        break;
    }
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)constantPoint:(CGPoint)a3 withOverride:(CGPoint)a4 forSizeClass:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (v10 == a5)
  {
    v11 = x;
  }

  else
  {
    v11 = v9;
  }

  if (v10 == a5)
  {
    v12 = y;
  }

  else
  {
    v12 = v8;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)scaledPoint:(CGPoint)a3 withOverride:(CGPoint)a4 forSizeClass:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v20 = v10;
  *v19 = x;
  *&v19[1] = y;
  v11 = [MEMORY[0x277CCAE60] valueWithBytes:v19 objCType:"{CGPoint=dd}"];
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [(CLKDeviceMetrics *)self scaledPoint:v12 withOverrides:v8, v7];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)constantPoint:(CGPoint)a3 withOverrides:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 CGPointValue];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)scaledPoint:(CGPoint)a3 withOverrides:(id)a4
{
  v5 = MEMORY[0x277CCAE60];
  v17 = a3;
  v6 = a4;
  v7 = [v5 valueWithBytes:&v17 objCType:"{CGPoint=dd}"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__CLKDeviceMetrics_scaledPoint_withOverrides___block_invoke;
  v16[3] = &unk_278A1F300;
  v16[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__CLKDeviceMetrics_scaledPoint_withOverrides___block_invoke_2;
  v15[3] = &unk_278A1F328;
  v15[4] = self;
  v8 = [(CLKDeviceMetrics *)self genericScaledValue:v7 withOverrides:v6 useScaledValue:v16 useScaledValueWithScale:v15];

  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

uint64_t __46__CLKDeviceMetrics_scaledPoint_withOverrides___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 CGPointValue];
  [v2 scaledPoint:?];
  v3 = MEMORY[0x277CCAE60];

  return [v3 valueWithCGPoint:?];
}

uint64_t __46__CLKDeviceMetrics_scaledPoint_withOverrides___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 CGPointValue];
  [v2 scaledPoint:? usingScale:?];
  v3 = MEMORY[0x277CCAE60];

  return [v3 valueWithCGPoint:?];
}

- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8
{
  [(CLKDeviceMetrics *)self pointCompact:*&a7.x regular:*&a7.y luxoCompact:*&a8.x luxoRegular:*&a8.y aloeCompact:a3.x aloeRegular:a3.y agave:a4.x, a4.y, a5.x, a5.y, a6.x, a6.y, v10, v11, v12, v13, v12, v13];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9
{
  [(CLKDeviceMetrics *)self pointCompact:*&a7.x regular:*&a7.y luxoCompact:*&a8.x luxoRegular:*&a8.y aloeCompact:*&a9.x aloeRegular:*&a9.y agave:a3.x avoniaCompact:a3.y avoniaRegular:a4.x, a4.y, a5.x, a5.y, a6.x, a6.y, v11, v12, v13, v14, v13, v14, v11, v12, v15, v16];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9 avoniaCompact:(CGPoint)a10 avoniaRegular:(CGPoint)a11
{
  y = a6.y;
  x = a6.x;
  v13 = a5.y;
  v14 = a5.x;
  v15 = a4.y;
  v16 = a4.x;
  v17 = a3.y;
  v18 = a3.x;
  v19 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&a7.x];
  if (v19 <= 4)
  {
    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      if (v19 == 1)
      {
        v18 = v16;
        v17 = v15;
        goto LABEL_21;
      }
    }

    else
    {
      if (v19 == 2)
      {
        v18 = v14;
        v17 = v13;
        goto LABEL_21;
      }

      if (v19 != 3)
      {
        v18 = a10.x;
        v17 = a10.y;
        goto LABEL_21;
      }
    }

LABEL_16:
    v18 = x;
    v17 = y;
    goto LABEL_21;
  }

  v18 = v22;
  v17 = v23;
  if (v19 <= 6)
  {
    if (v19 == 5)
    {
      v18 = a11.x;
      v17 = a11.y;
    }
  }

  else
  {
    if (v19 == 7)
    {
      v18 = v24;
      v17 = v25;
      goto LABEL_21;
    }

    if (v19 == 8)
    {
      v18 = v26;
      v17 = v27;
      goto LABEL_21;
    }

    if (v19 != 9)
    {
      goto LABEL_16;
    }
  }

LABEL_21:
  v20 = v18;
  v21 = v17;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)pointCompact:(CGPoint)a3 regular:(CGPoint)a4 luxoCompact:(CGPoint)a5 luxoRegular:(CGPoint)a6 aloeCompact:(CGPoint)a7 aloeRegular:(CGPoint)a8 agave:(CGPoint)a9 avoniaCompact:(CGPoint)a10 avoniaRegular:(CGPoint)a11 begonia:(CGPoint)a12
{
  y = a6.y;
  x = a6.x;
  v14 = a5.y;
  v15 = a5.x;
  v16 = a4.y;
  v17 = a4.x;
  v18 = a3.y;
  v19 = a3.x;
  v20 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&a7.x];
  if (v20 > 4)
  {
    if (v20 <= 6)
    {
      if (v20 == 5)
      {
        x = a11.x;
        y = a11.y;
      }

      else
      {
        x = a12.x;
        y = a12.y;
      }
    }

    else
    {
      switch(v20)
      {
        case 7:
          x = v23;
          y = v24;
          break;
        case 8:
          x = v25;
          y = v26;
          break;
        case 9:
          x = v27;
          y = v28;
          break;
      }
    }
  }

  else if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        x = v17;
        y = v16;
      }
    }

    else
    {
      x = v19;
      y = v18;
    }
  }

  else if (v20 == 2)
  {
    x = v15;
    y = v14;
  }

  else if (v20 != 3)
  {
    x = a10.x;
    y = a10.y;
  }

  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGSize)scaledSize:(CGSize)a3
{
  height = a3.height;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:a3.width];
  v6 = v5;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:height];

  [(CLKDeviceMetrics *)self applySizeRoundingBehavior:v6, v7];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)scaledSize:(CGSize)a3 usingScale:(double)a4
{
  [(CLKDeviceMetrics *)self applySizeRoundingBehavior:a3.width * a4, a3.height * a4];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)applySizeRoundingBehavior:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CLKDeviceMetrics *)self roundingBehavior];
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        CLKSizeRoundForDevice(self->_device);
        width = v7 + v7;
        height = v8 + v8;
      }

      goto LABEL_11;
    }

    CLKSizeRoundForDevice(self->_device);
LABEL_9:
    width = v9;
    height = v10;
    goto LABEL_11;
  }

  if (v6 == 3)
  {
    CLKSizeRoundForDevice(self->_device);
    width = v11 * 0.5;
    height = v12 * 0.5;
    goto LABEL_11;
  }

  if (v6 == 4)
  {
    UISizeRoundToScale();
    goto LABEL_9;
  }

LABEL_11:
  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)constantSize:(CGSize)a3 withOverride:(CGSize)a4 forSizeClass:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  v10 = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (v10 == a5)
  {
    v11 = width;
  }

  else
  {
    v11 = v9;
  }

  if (v10 == a5)
  {
    v12 = height;
  }

  else
  {
    v12 = v8;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)scaledSize:(CGSize)a3 withOverride:(CGSize)a4 forSizeClass:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.height;
  v8 = a3.width;
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v20 = v10;
  *v19 = width;
  *&v19[1] = height;
  v11 = [MEMORY[0x277CCAE60] valueWithBytes:v19 objCType:"{CGSize=dd}"];
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [(CLKDeviceMetrics *)self scaledSize:v12 withOverrides:v8, v7];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)constantSize:(CGSize)a3 withOverrides:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 CGSizeValue];
    width = v11;
    height = v12;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)scaledSize:(CGSize)a3 withOverrides:(id)a4
{
  v5 = MEMORY[0x277CCAE60];
  v17 = a3;
  v6 = a4;
  v7 = [v5 valueWithBytes:&v17 objCType:"{CGSize=dd}"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__CLKDeviceMetrics_scaledSize_withOverrides___block_invoke;
  v16[3] = &unk_278A1F300;
  v16[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__CLKDeviceMetrics_scaledSize_withOverrides___block_invoke_2;
  v15[3] = &unk_278A1F328;
  v15[4] = self;
  v8 = [(CLKDeviceMetrics *)self genericScaledValue:v7 withOverrides:v6 useScaledValue:v16 useScaledValueWithScale:v15];

  [v8 CGSizeValue];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

uint64_t __45__CLKDeviceMetrics_scaledSize_withOverrides___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 CGSizeValue];
  [v2 scaledSize:?];
  v3 = MEMORY[0x277CCAE60];

  return [v3 valueWithCGSize:?];
}

uint64_t __45__CLKDeviceMetrics_scaledSize_withOverrides___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 CGSizeValue];
  [v2 scaledSize:? usingScale:?];
  v3 = MEMORY[0x277CCAE60];

  return [v3 valueWithCGSize:?];
}

- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8
{
  [(CLKDeviceMetrics *)self sizeCompact:*&a7.width regular:*&a7.height luxoCompact:*&a8.width luxoRegular:*&a8.height aloeCompact:a3.width aloeRegular:a3.height agave:a4.width, a4.height, a5.width, a5.height, a6.width, a6.height, v10, v11, v12, v13, v12, v13];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9
{
  [(CLKDeviceMetrics *)self sizeCompact:*&a7.width regular:*&a7.height luxoCompact:*&a8.width luxoRegular:*&a8.height aloeCompact:*&a9.width aloeRegular:*&a9.height agave:a3.width avoniaCompact:a3.height avoniaRegular:a4.width, a4.height, a5.width, a5.height, a6.width, a6.height, v11, v12, v13, v14, v13, v14, v11, v12, v15, v16];
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9 avoniaCompact:(CGSize)a10 avoniaRegular:(CGSize)a11
{
  height = a6.height;
  width = a6.width;
  v13 = a5.height;
  v14 = a5.width;
  v15 = a4.height;
  v16 = a4.width;
  v17 = a3.height;
  v18 = a3.width;
  v19 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&a7.width];
  if (v19 <= 4)
  {
    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      if (v19 == 1)
      {
        v18 = v16;
        v17 = v15;
        goto LABEL_21;
      }
    }

    else
    {
      if (v19 == 2)
      {
        v18 = v14;
        v17 = v13;
        goto LABEL_21;
      }

      if (v19 != 3)
      {
        v18 = a10.width;
        v17 = a10.height;
        goto LABEL_21;
      }
    }

LABEL_16:
    v18 = width;
    v17 = height;
    goto LABEL_21;
  }

  v18 = v22;
  v17 = v23;
  if (v19 <= 6)
  {
    if (v19 == 5)
    {
      v18 = a11.width;
      v17 = a11.height;
    }
  }

  else
  {
    if (v19 == 7)
    {
      v18 = v24;
      v17 = v25;
      goto LABEL_21;
    }

    if (v19 == 8)
    {
      v18 = v26;
      v17 = v27;
      goto LABEL_21;
    }

    if (v19 != 9)
    {
      goto LABEL_16;
    }
  }

LABEL_21:
  v20 = v18;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)sizeCompact:(CGSize)a3 regular:(CGSize)a4 luxoCompact:(CGSize)a5 luxoRegular:(CGSize)a6 aloeCompact:(CGSize)a7 aloeRegular:(CGSize)a8 agave:(CGSize)a9 avoniaCompact:(CGSize)a10 avoniaRegular:(CGSize)a11 begonia:(CGSize)a12
{
  height = a6.height;
  width = a6.width;
  v14 = a5.height;
  v15 = a5.width;
  v16 = a4.height;
  v17 = a4.width;
  v18 = a3.height;
  v19 = a3.width;
  v20 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&a7.width];
  if (v20 > 4)
  {
    if (v20 <= 6)
    {
      if (v20 == 5)
      {
        width = a11.width;
        height = a11.height;
      }

      else
      {
        width = a12.width;
        height = a12.height;
      }
    }

    else
    {
      switch(v20)
      {
        case 7:
          width = v23;
          height = v24;
          break;
        case 8:
          width = v25;
          height = v26;
          break;
        case 9:
          width = v27;
          height = v28;
          break;
      }
    }
  }

  else if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        width = v17;
        height = v16;
      }
    }

    else
    {
      width = v19;
      height = v18;
    }
  }

  else if (v20 == 2)
  {
    width = v15;
    height = v14;
  }

  else if (v20 != 3)
  {
    width = a10.width;
    height = a10.height;
  }

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

@end