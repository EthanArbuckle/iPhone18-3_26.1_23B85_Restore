@interface GKNoise
+ (GKNoise)noiseWithComponentNoises:(NSArray *)noises selectionNoise:(GKNoise *)selectionNoise;
+ (GKNoise)noiseWithComponentNoises:(NSArray *)noises selectionNoise:(GKNoise *)selectionNoise componentBoundaries:(NSArray *)componentBoundaries boundaryBlendDistances:(NSArray *)blendDistances;
+ (GKNoise)noiseWithNoiseSource:(GKNoiseSource *)noiseSource;
+ (GKNoise)noiseWithNoiseSource:(GKNoiseSource *)noiseSource gradientColors:(NSDictionary *)gradientColors;
- (GKNoise)init;
- (GKNoise)initWithNoiseSource:(GKNoiseSource *)noiseSource;
- (GKNoise)initWithNoiseSource:(GKNoiseSource *)noiseSource gradientColors:(NSDictionary *)gradientColors;
- (float)valueAtPosition:(vector_float2)position;
- (id)cloneRecursive:(id)a3;
- (void)__blendWithNoise:(id)a3 selectionNoise:(id)a4 selectionRangeLowerBound:(double)a5 selectionRangeUpperBound:(double)a6 selectionBoundaryBlendDistance:(double)a7;
- (void)addWithNoise:(GKNoise *)noise;
- (void)applyAbsoluteValue;
- (void)cacheBinaryModule:(id)a3 rhsNoise:(id)a4;
- (void)cacheQuaternaryModule:(id)a3 xDisplacementNoise:(id)a4 yDisplacementNoise:(id)a5 zDisplacementNoise:(id)a6;
- (void)cacheTernaryModule:(id)a3 rhsNoise:(id)a4 selectionNoise:(id)a5;
- (void)cacheUnaryModule:(id)a3;
- (void)clampWithLowerBound:(double)lowerBound upperBound:(double)upperBound;
- (void)dealloc;
- (void)displaceXWithNoise:(GKNoise *)xDisplacementNoise yWithNoise:(GKNoise *)yDisplacementNoise zWithNoise:(GKNoise *)zDisplacementNoise;
- (void)invert;
- (void)maximumWithNoise:(GKNoise *)noise;
- (void)minimumWithNoise:(GKNoise *)noise;
- (void)moveBy:(_OWORD *)a3;
- (void)multiplyWithNoise:(GKNoise *)noise;
- (void)raiseToPower:(double)power;
- (void)raiseToPowerWithNoise:(GKNoise *)noise;
- (void)remapValuesToCurveWithControlPoints:(NSDictionary *)controlPoints;
- (void)rotateBy:(_OWORD *)a3;
- (void)scaleBy:(_OWORD *)a3;
@end

@implementation GKNoise

- (GKNoise)init
{
  v3 = objc_opt_new();
  v4 = [(GKNoise *)self initWithNoiseSource:v3];

  return v4;
}

+ (GKNoise)noiseWithNoiseSource:(GKNoiseSource *)noiseSource
{
  v3 = noiseSource;
  v4 = [objc_alloc(objc_opt_class()) initWithNoiseSource:v3];

  return v4;
}

+ (GKNoise)noiseWithNoiseSource:(GKNoiseSource *)noiseSource gradientColors:(NSDictionary *)gradientColors
{
  v5 = noiseSource;
  v6 = gradientColors;
  v7 = [objc_alloc(objc_opt_class()) initWithNoiseSource:v5 gradientColors:v6];

  return v7;
}

- (GKNoise)initWithNoiseSource:(GKNoiseSource *)noiseSource
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = noiseSource;
  if ((atomic_load_explicit(&qword_27DF48778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF48778))
  {
    v10[0] = &unk_284B58770;
    v8 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v10[1] = &unk_284B58780;
    v11[0] = v8;
    v9 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v11[1] = v9;
    _MergedGlobals_0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

    __cxa_guard_release(&qword_27DF48778);
  }

  v5 = [(GKNoise *)self initWithNoiseSource:v4 gradientColors:_MergedGlobals_0];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (GKNoise)initWithNoiseSource:(GKNoiseSource *)noiseSource gradientColors:(NSDictionary *)gradientColors
{
  v6 = noiseSource;
  v7 = gradientColors;
  v13.receiver = self;
  v13.super_class = GKNoise;
  v8 = [(GKNoise *)&v13 init];
  if (v8)
  {
    v9 = [(GKNoiseSource *)v6 cloneModule];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modules = v8->_modules;
    v8->_modules = v10;

    [(NSMutableArray *)v8->_modules addObject:v9];
    [(GKNoise *)v8 setGradientColors:v7];
  }

  return v8;
}

+ (GKNoise)noiseWithComponentNoises:(NSArray *)noises selectionNoise:(GKNoise *)selectionNoise
{
  v5 = noises;
  v6 = selectionNoise;
  v7 = [(NSArray *)v5 count];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7 != 1)
  {
    for (i = 1; i != v7; ++i)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:i * (1.0 / v7 + 1.0 / v7) + -1.0];
      [v8 addObject:v11];

      v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.1];
      [v9 addObject:v12];
    }
  }

  v13 = [objc_opt_class() noiseWithComponentNoises:v5 selectionNoise:v6 componentBoundaries:v8 boundaryBlendDistances:v9];

  return v13;
}

+ (GKNoise)noiseWithComponentNoises:(NSArray *)noises selectionNoise:(GKNoise *)selectionNoise componentBoundaries:(NSArray *)componentBoundaries boundaryBlendDistances:(NSArray *)blendDistances
{
  v9 = noises;
  v10 = selectionNoise;
  v75 = componentBoundaries;
  v73 = blendDistances;
  v76 = [(NSArray *)v9 count];
  if (v76)
  {
    v11 = 0;
    v12 = -1.0;
    do
    {
      v13 = [(NSArray *)v9 objectAtIndexedSubscript:v11];
      v14 = 1.0;
      if (v11 < v76 - 1)
      {
        v15 = [(NSArray *)v75 objectAtIndexedSubscript:v11];
        [v15 doubleValue];
        v14 = v16;
      }

      v17 = [GKConstantNoiseSource constantNoiseWithValue:(v14 - v12) * 0.5];
      v18 = [GKNoise noiseWithNoiseSource:v17];
      [v13 multiplyWithNoise:v18];

      v19 = [GKConstantNoiseSource constantNoiseWithValue:(v14 + v12) * 0.5];
      v20 = [GKNoise noiseWithNoiseSource:v19];
      [v13 addWithNoise:v20];

      ++v11;
      v12 = v14;
    }

    while (v76 != v11);
  }

  v21 = [(NSArray *)v9 objectAtIndexedSubscript:0];
  v71 = v21;
  if (v76 >= 2)
  {
    v22 = 1;
    do
    {
      v23 = [(NSArray *)v9 objectAtIndexedSubscript:v22];
      v24 = v22 - 1;
      v25 = [(NSArray *)v75 objectAtIndexedSubscript:v22 - 1];
      [v25 doubleValue];
      v27 = v26;
      v28 = [(NSArray *)v73 objectAtIndexedSubscript:v24];
      [v28 doubleValue];
      [v21 __blendWithNoise:v23 selectionNoise:v10 selectionRangeLowerBound:v27 selectionRangeUpperBound:1.79769313e308 selectionBoundaryBlendDistance:v29];

      v22 = v24 + 2;
    }

    while (v24 + 2 != v76);
  }

  v70 = v10;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v72 = v9;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = v31;
  if (v76)
  {
    v33 = 0;
    v74 = v31;
    do
    {
      v34 = [(NSArray *)v9 objectAtIndexedSubscript:v33];
      v35 = [v34 gradientColors];
      [v32 addObject:v35];

      ++v33;
    }

    while (v76 != v33);
    v36 = 0;
    v37 = v76 - 1;
    v38 = -1.0;
    do
    {
      v39 = v38;
      v40 = [v32 objectAtIndexedSubscript:v36];
      v41 = [v40 count];
      v38 = 1.0;
      if (v36 < v37)
      {
        v42 = [(NSArray *)v75 objectAtIndexedSubscript:v36];
        [v42 doubleValue];
        v38 = v43;
      }

      v44 = [v40 allKeys];
      v45 = [v44 sortedArrayUsingComparator:&__block_literal_global_2];

      v46 = v38 - v39;
      v47 = v41 - 1;
      if (v36)
      {
        if ([v45 count])
        {
          v48 = [v45 objectAtIndexedSubscript:0];
          v49 = [v40 objectForKeyedSubscript:v48];
          [v48 doubleValue];
          v51 = v41 != 1 || v36 >= v37;
          v52 = v39 + (v50 * 0.5 + 0.5) * v46;
          if (v51)
          {
            v52 = v52 + 2.22044605e-16;
          }

          v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
          [v30 setObject:v49 forKey:v53];

          v54 = 2 - v41;
          for (i = 1; i < [v45 count]; ++i)
          {
            v56 = [v45 objectAtIndexedSubscript:i];
            v57 = [v40 objectForKeyedSubscript:v56];
            [v56 doubleValue];
            v59 = v54 + i != 1 || v36 >= v37;
            v60 = v39 + (v58 * 0.5 + 0.5) * v46;
            if (!v59)
            {
              v60 = v60 + -2.22044605e-16;
            }

            v61 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
            [v30 setObject:v57 forKey:v61];
          }
        }
      }

      else
      {
        for (j = 0; j < [v45 count]; ++j)
        {
          v63 = [v45 objectAtIndexedSubscript:j];
          v64 = [v40 objectForKeyedSubscript:v63];
          [v63 doubleValue];
          v66 = v47 != j || v76 == 1;
          v67 = v39 + (v65 * 0.5 + 0.5) * v46;
          if (!v66)
          {
            v67 = v67 + -2.22044605e-16;
          }

          v68 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
          [v30 setObject:v64 forKey:v68];
        }
      }

      ++v36;
      v32 = v74;
    }

    while (v36 != v76);
  }

  if ([v30 count])
  {
    [v71 setGradientColors:v30];
  }

  return v71;
}

uint64_t __94__GKNoise_noiseWithComponentNoises_selectionNoise_componentBoundaries_boundaryBlendDistances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (float)valueAtPosition:(vector_float2)position
{
  v3 = [(NSMutableArray *)self->_modules lastObject];
  *&v4 = position.f32[1];
  v10[0] = COERCE_UNSIGNED_INT64(position.f32[0]);
  v10[1] = v4;
  [v3 valueAt:v10];
  v6 = v5;
  v7 = -1.0;
  if (v6 >= -1.0)
  {
    v7 = v6;
    if (v6 > 1.0)
    {
      v7 = 1.0;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_modules removeAllObjects];
  modules = self->_modules;
  self->_modules = 0;

  v4.receiver = self;
  v4.super_class = GKNoise;
  [(GKNoise *)&v4 dealloc];
}

- (void)cacheUnaryModule:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->_modules lastObject];
  [v5 setInputModule:v4 atIndex:0];

  [(NSMutableArray *)self->_modules addObject:v5];
}

- (void)cacheBinaryModule:(id)a3 rhsNoise:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_modules lastObject];
  [v12 setInputModule:v7 atIndex:0];

  v8 = [v6 __modules];
  v9 = [v8 lastObject];
  v10 = [(GKNoise *)self cloneRecursive:v9];
  v11 = [(NSMutableArray *)self->_modules lastObject];
  [v12 setInputModule:v11 atIndex:1];

  [(NSMutableArray *)self->_modules addObject:v12];
}

- (void)cacheTernaryModule:(id)a3 rhsNoise:(id)a4 selectionNoise:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableArray *)self->_modules lastObject];
  [v19 setInputModule:v10 atIndex:0];

  v11 = [v8 __modules];
  v12 = [v11 lastObject];
  v13 = [(GKNoise *)self cloneRecursive:v12];
  v14 = [(NSMutableArray *)self->_modules lastObject];
  [v19 setInputModule:v14 atIndex:1];

  v15 = [v9 __modules];
  v16 = [v15 lastObject];
  v17 = [(GKNoise *)self cloneRecursive:v16];
  v18 = [(NSMutableArray *)self->_modules lastObject];
  [v19 setInputModule:v18 atIndex:2];

  [(NSMutableArray *)self->_modules addObject:v19];
}

- (void)cacheQuaternaryModule:(id)a3 xDisplacementNoise:(id)a4 yDisplacementNoise:(id)a5 zDisplacementNoise:(id)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(NSMutableArray *)self->_modules lastObject];
  [v29 setInputModule:v13 atIndex:0];

  if (!v10)
  {
    v14 = [GKConstantNoiseSource constantNoiseWithValue:0.0];
    v10 = [GKNoise noiseWithNoiseSource:v14];
  }

  v28 = [v10 __modules];
  v15 = [v28 lastObject];
  v16 = [(GKNoise *)self cloneRecursive:v15];
  v17 = [(NSMutableArray *)self->_modules lastObject];
  [v29 setInputModule:v17 atIndex:1];

  if (!v11)
  {
    v18 = [GKConstantNoiseSource constantNoiseWithValue:0.0];
    v11 = [GKNoise noiseWithNoiseSource:v18];
  }

  v19 = [v11 __modules];
  v20 = [v19 lastObject];
  v21 = [(GKNoise *)self cloneRecursive:v20];
  v22 = [(NSMutableArray *)self->_modules lastObject];
  [v29 setInputModule:v22 atIndex:2];

  if (!v12)
  {
    v23 = [GKConstantNoiseSource constantNoiseWithValue:0.0];
    v12 = [GKNoise noiseWithNoiseSource:v23];
  }

  v24 = [v12 __modules];
  v25 = [v24 lastObject];
  v26 = [(GKNoise *)self cloneRecursive:v25];
  v27 = [(NSMutableArray *)self->_modules lastObject];
  [v29 setInputModule:v27 atIndex:3];

  [(NSMutableArray *)self->_modules addObject:v29];
}

- (id)cloneRecursive:(id)a3
{
  v4 = a3;
  v5 = [v4 cloneModule];
  v6 = [v4 requiredInputModuleCount];
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [v4 inputModuleAtIndex:v7];
      v9 = [(GKNoise *)self cloneRecursive:v8];
      [v5 setInputModule:v9 atIndex:v7];

      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }

  [(NSMutableArray *)self->_modules addObject:v5];

  return v5;
}

- (void)applyAbsoluteValue
{
  v3 = objc_alloc_init(GKAbsoluteValueNoiseModifier);
  [(GKNoise *)self cacheUnaryModule:?];
}

- (void)clampWithLowerBound:(double)lowerBound upperBound:(double)upperBound
{
  v5 = [[GKClampNoiseModifier alloc] initWithLowerBound:lowerBound upperBound:upperBound];
  [(GKNoise *)self cacheUnaryModule:?];
}

- (void)raiseToPower:(double)power
{
  v4 = [[GKConstantPowerNoiseModifier alloc] initWithConstantPower:power];
  [(GKNoise *)self cacheUnaryModule:?];
}

- (void)invert
{
  v3 = objc_alloc_init(GKInvertNoiseModifier);
  [(GKNoise *)self cacheUnaryModule:?];
}

- (void)remapValuesToCurveWithControlPoints:(NSDictionary *)controlPoints
{
  v5 = controlPoints;
  v4 = [[GKCurveNoiseModifier alloc] initWithControlPoints:v5];
  [(GKNoise *)self cacheUnaryModule:v4];
}

- (void)moveBy:(_OWORD *)a3
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  v4 = [[GKMoveNoiseModifier alloc] initWithDelta:v6];
  [a1 cacheUnaryModule:v4];
}

- (void)scaleBy:(_OWORD *)a3
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  v4 = [[GKScaleNoiseModifier alloc] initWithFactor:v6];
  [a1 cacheUnaryModule:v4];
}

- (void)rotateBy:(_OWORD *)a3
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  v4 = [[GKRotateNoiseModifier alloc] initWithRadians:v6];
  [a1 cacheUnaryModule:v4];
}

- (void)addWithNoise:(GKNoise *)noise
{
  v5 = noise;
  v4 = objc_alloc_init(GKAddNoiseModifier);
  [(GKNoise *)self cacheBinaryModule:v4 rhsNoise:v5];
}

- (void)multiplyWithNoise:(GKNoise *)noise
{
  v5 = noise;
  v4 = objc_alloc_init(GKMultiplyNoiseModifier);
  [(GKNoise *)self cacheBinaryModule:v4 rhsNoise:v5];
}

- (void)minimumWithNoise:(GKNoise *)noise
{
  v5 = noise;
  v4 = objc_alloc_init(GKMinimumNoiseModifier);
  [(GKNoise *)self cacheBinaryModule:v4 rhsNoise:v5];
}

- (void)maximumWithNoise:(GKNoise *)noise
{
  v5 = noise;
  v4 = objc_alloc_init(GKMaximumNoiseModifier);
  [(GKNoise *)self cacheBinaryModule:v4 rhsNoise:v5];
}

- (void)raiseToPowerWithNoise:(GKNoise *)noise
{
  v5 = noise;
  v4 = objc_alloc_init(GKPowerNoiseModifier);
  [(GKNoise *)self cacheBinaryModule:v4 rhsNoise:v5];
}

- (void)displaceXWithNoise:(GKNoise *)xDisplacementNoise yWithNoise:(GKNoise *)yDisplacementNoise zWithNoise:(GKNoise *)zDisplacementNoise
{
  v11 = xDisplacementNoise;
  v8 = yDisplacementNoise;
  v9 = zDisplacementNoise;
  v10 = objc_alloc_init(GKDisplaceNoiseModifier);
  [(GKNoise *)self cacheQuaternaryModule:v10 xDisplacementNoise:v11 yDisplacementNoise:v8 zDisplacementNoise:v9];
}

- (void)__blendWithNoise:(id)a3 selectionNoise:(id)a4 selectionRangeLowerBound:(double)a5 selectionRangeUpperBound:(double)a6 selectionBoundaryBlendDistance:(double)a7
{
  v14 = a3;
  v12 = a4;
  v13 = [[GKBlendNoiseModifier alloc] initWithSelectionRangeLowerBound:a5 selectionRangeUpperBound:a6 selectionBoundaryBlendDistance:a7];
  [(GKNoise *)self cacheTernaryModule:v13 rhsNoise:v14 selectionNoise:v12];
}

@end