@interface HKBaseDimension
@end

@implementation HKBaseDimension

void __33___HKBaseDimension_nullDimension__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = +[(HKUnit *)HKBaseUnit];
  [v4 setReducibleBaseUnit:v2];

  v3 = +[HKUnit _nullUnit];
  [v4 setReducedUnit:v3];

  v4[6] = 0x3FF0000000000000;
}

uint64_t __60___HKBaseDimension__uniquedDimensionWithName_configuration___block_invoke()
{
  _uniquedDimensionWithName_configuration____dimensionsByName = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __53___HKBaseDimension__uniquedDefinedDimensionWithName___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) UTF8String];
  v4 = &qword_1E737DE98;
  v5 = 21;
  while (strcmp(*(v4 - 2), v3))
  {
    v4 += 4;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  if (*(v4 - 1))
  {
    v6 = v4[1];
    v7 = *v4;
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    v10 = [HKBaseUnit unitFromString:v8];
    [v12 setReducibleBaseUnit:v10];

    v11 = [HKUnit unitFromString:v9];
    [v12 setReducedUnit:v11];

    v12[6] = v6;
  }

LABEL_7:
}

@end