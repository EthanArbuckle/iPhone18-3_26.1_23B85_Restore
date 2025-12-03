@interface CLKDeviceMetrics
+ (id)metricsWithDevice:(id)device identitySizeClass:(unint64_t)class;
- (CGPoint)applyPointRoundingBehavior:(CGPoint)behavior;
- (CGPoint)constantPoint:(CGPoint)point withOverride:(CGPoint)override forSizeClass:(unint64_t)class;
- (CGPoint)constantPoint:(CGPoint)point withOverrides:(id)overrides;
- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular;
- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave;
- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave avoniaCompact:(CGPoint)self0 avoniaRegular:(CGPoint)self1;
- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave avoniaCompact:(CGPoint)self0 avoniaRegular:(CGPoint)self1 begonia:(CGPoint)self2;
- (CGPoint)scaledPoint:(CGPoint)point;
- (CGPoint)scaledPoint:(CGPoint)point usingScale:(double)scale;
- (CGPoint)scaledPoint:(CGPoint)point withOverride:(CGPoint)override forSizeClass:(unint64_t)class;
- (CGPoint)scaledPoint:(CGPoint)point withOverrides:(id)overrides;
- (CGSize)applySizeRoundingBehavior:(CGSize)behavior;
- (CGSize)constantSize:(CGSize)size withOverride:(CGSize)override forSizeClass:(unint64_t)class;
- (CGSize)constantSize:(CGSize)size withOverrides:(id)overrides;
- (CGSize)scaledSize:(CGSize)size;
- (CGSize)scaledSize:(CGSize)size usingScale:(double)scale;
- (CGSize)scaledSize:(CGSize)size withOverride:(CGSize)override forSizeClass:(unint64_t)class;
- (CGSize)scaledSize:(CGSize)size withOverrides:(id)overrides;
- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular;
- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave;
- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave avoniaCompact:(CGSize)self0 avoniaRegular:(CGSize)self1;
- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave avoniaCompact:(CGSize)self0 avoniaRegular:(CGSize)self1 begonia:(CGSize)self2;
- (CLKDeviceMetrics)initWithDevice:(id)device identitySizeClass:(unint64_t)class;
- (double)_unroundedScaledValue:(double)value;
- (double)applyRoundingBehavior:(double)behavior;
- (double)constantValue:(double)value withOverride:(double)override forSizeClass:(unint64_t)class;
- (double)constantValue:(double)value withOverrides:(id)overrides;
- (double)scaledValue:(double)value;
- (double)scaledValue:(double)value withOverride:(double)override forSizeClass:(unint64_t)class;
- (double)scaledValue:(double)value withOverrides:(id)overrides;
- (double)valueCompact:(double)compact regular:(double)regular luxoCompact:(double)luxoCompact luxoRegular:(double)luxoRegular aloeCompact:(double)aloeCompact aloeRegular:(double)aloeRegular agave:(double)agave avoniaCompact:(double)self0 avoniaRegular:(double)self1;
- (double)valueCompact:(double)compact regular:(double)regular luxoCompact:(double)luxoCompact luxoRegular:(double)luxoRegular aloeCompact:(double)aloeCompact aloeRegular:(double)aloeRegular agave:(double)agave avoniaCompact:(double)self0 avoniaRegular:(double)self1 begonia:(double)self2;
- (id)genericScaledValue:(id)value withOverrides:(id)overrides useScaledValue:(id)scaledValue useScaledValueWithScale:(id)scale;
- (unint64_t)_effectiveSizeClass;
- (void)setFallbackSizeClass:(unint64_t)class andFallbackScale:(double)scale forSizeClass:(unint64_t)sizeClass;
- (void)setScale:(double)scale forSizeClass:(unint64_t)class;
@end

@implementation CLKDeviceMetrics

+ (id)metricsWithDevice:(id)device identitySizeClass:(unint64_t)class
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy identitySizeClass:class];

  return v7;
}

- (CLKDeviceMetrics)initWithDevice:(id)device identitySizeClass:(unint64_t)class
{
  v30[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = CLKDeviceMetrics;
  v8 = [(CLKDeviceMetrics *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_identitySizeClass = class;
    v9->_roundingBehavior = 1;
    if (initWithDevice_identitySizeClass__onceToken != -1)
    {
      [CLKDeviceMetrics initWithDevice:identitySizeClass:];
    }

    v10 = initWithDevice_identitySizeClass____defaultScales;
    if (class - 1 > 1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
      v14 = [v10 objectForKeyedSubscript:v13];
      [v14 doubleValue];
      v16 = v15;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      scales = v9->_scales;
      v9->_scales = dictionary;

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

- (void)setScale:(double)scale forSizeClass:(unint64_t)class
{
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  scales = self->_scales;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
  [(NSMutableDictionary *)scales setObject:v8 forKeyedSubscript:v7];
}

- (void)setFallbackSizeClass:(unint64_t)class andFallbackScale:(double)scale forSizeClass:(unint64_t)sizeClass
{
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  v8 = [CLKSizeScalePair pairWithSizeClass:class scale:v11];
  fallbackSizeClassMap = self->_fallbackSizeClassMap;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sizeClass];
  [(NSMutableDictionary *)fallbackSizeClassMap setObject:v8 forKeyedSubscript:v10];
}

- (double)_unroundedScaledValue:(double)value
{
  scales = self->_scales;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v6 = [(NSMutableDictionary *)scales objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7 * value;

  return v8;
}

- (id)genericScaledValue:(id)value withOverrides:(id)overrides useScaledValue:(id)scaledValue useScaledValueWithScale:(id)scale
{
  valueCopy = value;
  overridesCopy = overrides;
  scaledValueCopy = scaledValue;
  scaleCopy = scale;
  _effectiveSizeClass = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_effectiveSizeClass];
  v16 = [overridesCopy objectForKeyedSubscript:v15];

  if (!v16)
  {
    fallbackSizeClassMap = self->_fallbackSizeClassMap;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_effectiveSizeClass];
    v19 = [(NSMutableDictionary *)fallbackSizeClassMap objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = 1.0;
      while (1)
      {
        scale = [v19 scale];
        [scale doubleValue];
        v20 = v20 * v22;

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "sizeClass")}];
        v24 = [overridesCopy objectForKeyedSubscript:v23];

        if (v24)
        {
          break;
        }

        sizeClass = [v19 sizeClass];

        v26 = self->_fallbackSizeClassMap;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sizeClass];
        v19 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];

        if (!v19)
        {
          goto LABEL_6;
        }
      }

      v16 = scaleCopy[2](scaleCopy, v24, v20);
    }

    else
    {
LABEL_6:
      v16 = scaledValueCopy[2](scaledValueCopy, valueCopy);
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

  sizeClass = [(CLKDevice *)self->_device sizeClass];
  newestAllowedSizeClass = [(CLKDeviceMetrics *)self newestAllowedSizeClass];

  if (newestAllowedSizeClass)
  {
    newestAllowedSizeClass2 = [(CLKDeviceMetrics *)self newestAllowedSizeClass];
    integerValue = [newestAllowedSizeClass2 integerValue];

    while (sizeClass > integerValue)
    {
      v7 = _effectiveSizeClass__fallbacks;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sizeClass];
      v9 = [v7 objectForKeyedSubscript:v8];

      sizeClass = [v9 integerValue];
    }
  }

  return sizeClass;
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

- (double)scaledValue:(double)value
{
  [(CLKDeviceMetrics *)self _unroundedScaledValue:value];

  [(CLKDeviceMetrics *)self applyRoundingBehavior:?];
  return result;
}

- (double)applyRoundingBehavior:(double)behavior
{
  roundingBehavior = [(CLKDeviceMetrics *)self roundingBehavior];
  if (roundingBehavior > 2)
  {
    if (roundingBehavior == 3)
    {
      CLKRoundForDevice(self->_device, behavior + behavior);
      return v10 * 0.5;
    }

    else if (roundingBehavior == 4)
    {
      v7.n128_u64[0] = 1.0;
      v6.n128_f64[0] = behavior;

      MEMORY[0x2821DE7E8](4, v6, v7);
      return result;
    }

    return behavior;
  }

  if (roundingBehavior != 1)
  {
    if (roundingBehavior == 2)
    {
      CLKRoundForDevice(self->_device, behavior * 0.5);
      return v8 + v8;
    }

    return behavior;
  }

  device = self->_device;

  CLKRoundForDevice(device, behavior);
  return result;
}

- (double)constantValue:(double)value withOverride:(double)override forSizeClass:(unint64_t)class
{
  if ([(CLKDeviceMetrics *)self _effectiveSizeClass]== class)
  {
    return override;
  }

  else
  {
    return value;
  }
}

- (double)scaledValue:(double)value withOverride:(double)override forSizeClass:(unint64_t)class
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
  v14 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:override];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(CLKDeviceMetrics *)self scaledValue:v10 withOverrides:value];
  v12 = v11;

  return v12;
}

- (double)constantValue:(double)value withOverrides:(id)overrides
{
  v6 = MEMORY[0x277CCABB0];
  overridesCopy = overrides;
  v8 = [v6 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v9 = [overridesCopy objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 doubleValue];
    value = v10;
  }

  return value;
}

- (double)scaledValue:(double)value withOverrides:(id)overrides
{
  v6 = MEMORY[0x277CCABB0];
  overridesCopy = overrides;
  v8 = [v6 numberWithDouble:value];
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
  v9 = [(CLKDeviceMetrics *)self genericScaledValue:v8 withOverrides:overridesCopy useScaledValue:v14 useScaledValueWithScale:v13];

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

- (double)valueCompact:(double)compact regular:(double)regular luxoCompact:(double)luxoCompact luxoRegular:(double)luxoRegular aloeCompact:(double)aloeCompact aloeRegular:(double)aloeRegular agave:(double)agave avoniaCompact:(double)self0 avoniaRegular:(double)self1
{
  _effectiveSizeClass = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (_effectiveSizeClass > 4)
  {
    if (_effectiveSizeClass <= 6)
    {
      compact = aloeRegular;
      if (_effectiveSizeClass != 5)
      {
        return agave;
      }
    }

    else
    {
      compact = avoniaCompact;
      if (_effectiveSizeClass != 7)
      {
        if (_effectiveSizeClass == 8)
        {
          return avoniaRegular;
        }

        compact = agave;
        if (_effectiveSizeClass != 9)
        {
          return luxoRegular;
        }
      }
    }
  }

  else if (_effectiveSizeClass <= 1)
  {
    if (_effectiveSizeClass)
    {
      compact = regular;
      if (_effectiveSizeClass != 1)
      {
        return luxoRegular;
      }
    }
  }

  else
  {
    compact = luxoCompact;
    if (_effectiveSizeClass != 2)
    {
      if (_effectiveSizeClass != 3)
      {
        return aloeCompact;
      }

      return luxoRegular;
    }
  }

  return compact;
}

- (double)valueCompact:(double)compact regular:(double)regular luxoCompact:(double)luxoCompact luxoRegular:(double)luxoRegular aloeCompact:(double)aloeCompact aloeRegular:(double)aloeRegular agave:(double)agave avoniaCompact:(double)self0 avoniaRegular:(double)self1 begonia:(double)self2
{
  _effectiveSizeClass = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (_effectiveSizeClass > 4)
  {
    if (_effectiveSizeClass > 6)
    {
      compact = avoniaCompact;
      switch(_effectiveSizeClass)
      {
        case 7:
          return compact;
        case 8:
          return avoniaRegular;
        case 9:
          return begonia;
      }

      return luxoRegular;
    }

    compact = aloeRegular;
    if (_effectiveSizeClass != 5)
    {
      return agave;
    }
  }

  else if (_effectiveSizeClass <= 1)
  {
    if (_effectiveSizeClass)
    {
      compact = regular;
      if (_effectiveSizeClass != 1)
      {
        return luxoRegular;
      }
    }
  }

  else
  {
    compact = luxoCompact;
    if (_effectiveSizeClass != 2)
    {
      if (_effectiveSizeClass != 3)
      {
        return aloeCompact;
      }

      return luxoRegular;
    }
  }

  return compact;
}

- (CGPoint)scaledPoint:(CGPoint)point
{
  y = point.y;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:point.x];
  v6 = v5;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:y];

  [(CLKDeviceMetrics *)self applyPointRoundingBehavior:v6, v7];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)scaledPoint:(CGPoint)point usingScale:(double)scale
{
  [(CLKDeviceMetrics *)self applyPointRoundingBehavior:point.x * scale, point.y * scale];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)applyPointRoundingBehavior:(CGPoint)behavior
{
  y = behavior.y;
  x = behavior.x;
  roundingBehavior = [(CLKDeviceMetrics *)self roundingBehavior];
  if (roundingBehavior <= 1)
  {
    if (roundingBehavior == 1)
    {
      CLKPointRoundForDevice(self->_device);
      goto LABEL_8;
    }
  }

  else
  {
    switch(roundingBehavior)
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

- (CGPoint)constantPoint:(CGPoint)point withOverride:(CGPoint)override forSizeClass:(unint64_t)class
{
  y = override.y;
  x = override.x;
  v8 = point.y;
  v9 = point.x;
  _effectiveSizeClass = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (_effectiveSizeClass == class)
  {
    v11 = x;
  }

  else
  {
    v11 = v9;
  }

  if (_effectiveSizeClass == class)
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

- (CGPoint)scaledPoint:(CGPoint)point withOverride:(CGPoint)override forSizeClass:(unint64_t)class
{
  y = override.y;
  x = override.x;
  v7 = point.y;
  v8 = point.x;
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
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

- (CGPoint)constantPoint:(CGPoint)point withOverrides:(id)overrides
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x277CCABB0];
  overridesCopy = overrides;
  v9 = [v7 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v10 = [overridesCopy objectForKeyedSubscript:v9];

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

- (CGPoint)scaledPoint:(CGPoint)point withOverrides:(id)overrides
{
  v5 = MEMORY[0x277CCAE60];
  pointCopy = point;
  overridesCopy = overrides;
  v7 = [v5 valueWithBytes:&pointCopy objCType:"{CGPoint=dd}"];
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
  v8 = [(CLKDeviceMetrics *)self genericScaledValue:v7 withOverrides:overridesCopy useScaledValue:v16 useScaledValueWithScale:v15];

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

- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular
{
  [(CLKDeviceMetrics *)self pointCompact:*&aloeCompact.x regular:*&aloeCompact.y luxoCompact:*&aloeRegular.x luxoRegular:*&aloeRegular.y aloeCompact:compact.x aloeRegular:compact.y agave:regular.x, regular.y, luxoCompact.x, luxoCompact.y, luxoRegular.x, luxoRegular.y, v10, v11, v12, v13, v12, v13];
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave
{
  [(CLKDeviceMetrics *)self pointCompact:*&aloeCompact.x regular:*&aloeCompact.y luxoCompact:*&aloeRegular.x luxoRegular:*&aloeRegular.y aloeCompact:*&agave.x aloeRegular:*&agave.y agave:compact.x avoniaCompact:compact.y avoniaRegular:regular.x, regular.y, luxoCompact.x, luxoCompact.y, luxoRegular.x, luxoRegular.y, v11, v12, v13, v14, v13, v14, v11, v12, v15, v16];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave avoniaCompact:(CGPoint)self0 avoniaRegular:(CGPoint)self1
{
  y = luxoRegular.y;
  x = luxoRegular.x;
  v13 = luxoCompact.y;
  v14 = luxoCompact.x;
  v15 = regular.y;
  v16 = regular.x;
  v17 = compact.y;
  v18 = compact.x;
  v19 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&aloeCompact.x];
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
        v18 = avoniaCompact.x;
        v17 = avoniaCompact.y;
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
      v18 = avoniaRegular.x;
      v17 = avoniaRegular.y;
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

- (CGPoint)pointCompact:(CGPoint)compact regular:(CGPoint)regular luxoCompact:(CGPoint)luxoCompact luxoRegular:(CGPoint)luxoRegular aloeCompact:(CGPoint)aloeCompact aloeRegular:(CGPoint)aloeRegular agave:(CGPoint)agave avoniaCompact:(CGPoint)self0 avoniaRegular:(CGPoint)self1 begonia:(CGPoint)self2
{
  y = luxoRegular.y;
  x = luxoRegular.x;
  v14 = luxoCompact.y;
  v15 = luxoCompact.x;
  v16 = regular.y;
  v17 = regular.x;
  v18 = compact.y;
  v19 = compact.x;
  v20 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&aloeCompact.x];
  if (v20 > 4)
  {
    if (v20 <= 6)
    {
      if (v20 == 5)
      {
        x = avoniaRegular.x;
        y = avoniaRegular.y;
      }

      else
      {
        x = begonia.x;
        y = begonia.y;
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
    x = avoniaCompact.x;
    y = avoniaCompact.y;
  }

  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGSize)scaledSize:(CGSize)size
{
  height = size.height;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:size.width];
  v6 = v5;
  [(CLKDeviceMetrics *)self _unroundedScaledValue:height];

  [(CLKDeviceMetrics *)self applySizeRoundingBehavior:v6, v7];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)scaledSize:(CGSize)size usingScale:(double)scale
{
  [(CLKDeviceMetrics *)self applySizeRoundingBehavior:size.width * scale, size.height * scale];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)applySizeRoundingBehavior:(CGSize)behavior
{
  height = behavior.height;
  width = behavior.width;
  roundingBehavior = [(CLKDeviceMetrics *)self roundingBehavior];
  if (roundingBehavior <= 2)
  {
    if (roundingBehavior != 1)
    {
      if (roundingBehavior == 2)
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

  if (roundingBehavior == 3)
  {
    CLKSizeRoundForDevice(self->_device);
    width = v11 * 0.5;
    height = v12 * 0.5;
    goto LABEL_11;
  }

  if (roundingBehavior == 4)
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

- (CGSize)constantSize:(CGSize)size withOverride:(CGSize)override forSizeClass:(unint64_t)class
{
  height = override.height;
  width = override.width;
  v8 = size.height;
  v9 = size.width;
  _effectiveSizeClass = [(CLKDeviceMetrics *)self _effectiveSizeClass];
  if (_effectiveSizeClass == class)
  {
    v11 = width;
  }

  else
  {
    v11 = v9;
  }

  if (_effectiveSizeClass == class)
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

- (CGSize)scaledSize:(CGSize)size withOverride:(CGSize)override forSizeClass:(unint64_t)class
{
  height = override.height;
  width = override.width;
  v7 = size.height;
  v8 = size.width;
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
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

- (CGSize)constantSize:(CGSize)size withOverrides:(id)overrides
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277CCABB0];
  overridesCopy = overrides;
  v9 = [v7 numberWithUnsignedInteger:{-[CLKDeviceMetrics _effectiveSizeClass](self, "_effectiveSizeClass")}];
  v10 = [overridesCopy objectForKeyedSubscript:v9];

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

- (CGSize)scaledSize:(CGSize)size withOverrides:(id)overrides
{
  v5 = MEMORY[0x277CCAE60];
  sizeCopy = size;
  overridesCopy = overrides;
  v7 = [v5 valueWithBytes:&sizeCopy objCType:"{CGSize=dd}"];
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
  v8 = [(CLKDeviceMetrics *)self genericScaledValue:v7 withOverrides:overridesCopy useScaledValue:v16 useScaledValueWithScale:v15];

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

- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular
{
  [(CLKDeviceMetrics *)self sizeCompact:*&aloeCompact.width regular:*&aloeCompact.height luxoCompact:*&aloeRegular.width luxoRegular:*&aloeRegular.height aloeCompact:compact.width aloeRegular:compact.height agave:regular.width, regular.height, luxoCompact.width, luxoCompact.height, luxoRegular.width, luxoRegular.height, v10, v11, v12, v13, v12, v13];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave
{
  [(CLKDeviceMetrics *)self sizeCompact:*&aloeCompact.width regular:*&aloeCompact.height luxoCompact:*&aloeRegular.width luxoRegular:*&aloeRegular.height aloeCompact:*&agave.width aloeRegular:*&agave.height agave:compact.width avoniaCompact:compact.height avoniaRegular:regular.width, regular.height, luxoCompact.width, luxoCompact.height, luxoRegular.width, luxoRegular.height, v11, v12, v13, v14, v13, v14, v11, v12, v15, v16];
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave avoniaCompact:(CGSize)self0 avoniaRegular:(CGSize)self1
{
  height = luxoRegular.height;
  width = luxoRegular.width;
  v13 = luxoCompact.height;
  v14 = luxoCompact.width;
  v15 = regular.height;
  v16 = regular.width;
  v17 = compact.height;
  v18 = compact.width;
  v19 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&aloeCompact.width];
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
        v18 = avoniaCompact.width;
        v17 = avoniaCompact.height;
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
      v18 = avoniaRegular.width;
      v17 = avoniaRegular.height;
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

- (CGSize)sizeCompact:(CGSize)compact regular:(CGSize)regular luxoCompact:(CGSize)luxoCompact luxoRegular:(CGSize)luxoRegular aloeCompact:(CGSize)aloeCompact aloeRegular:(CGSize)aloeRegular agave:(CGSize)agave avoniaCompact:(CGSize)self0 avoniaRegular:(CGSize)self1 begonia:(CGSize)self2
{
  height = luxoRegular.height;
  width = luxoRegular.width;
  v14 = luxoCompact.height;
  v15 = luxoCompact.width;
  v16 = regular.height;
  v17 = regular.width;
  v18 = compact.height;
  v19 = compact.width;
  v20 = [(CLKDeviceMetrics *)self _effectiveSizeClass:*&aloeCompact.width];
  if (v20 > 4)
  {
    if (v20 <= 6)
    {
      if (v20 == 5)
      {
        width = avoniaRegular.width;
        height = avoniaRegular.height;
      }

      else
      {
        width = begonia.width;
        height = begonia.height;
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
    width = avoniaCompact.width;
    height = avoniaCompact.height;
  }

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

@end