@interface CAFilter(AmbientUI)
+ (id)brightnessFilterWithAmount:()AmbientUI;
+ (id)curvesFilterWithValues:()AmbientUI;
+ (id)gaussianFilterWithInputRadius:()AmbientUI;
+ (id)saturationFilterWithAmount:()AmbientUI;
@end

@implementation CAFilter(AmbientUI)

+ (id)gaussianFilterWithInputRadius:()AmbientUI
{
  v2 = objc_alloc(MEMORY[0x277CD9EA0]);
  v3 = [v2 initWithType:*MEMORY[0x277CDA328]];
  [v3 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  [v3 setValue:v4 forKey:@"inputRadius"];

  [v3 setValue:@"medium" forKey:@"inputQuality"];

  return v3;
}

+ (id)brightnessFilterWithAmount:()AmbientUI
{
  v2 = objc_alloc(MEMORY[0x277CD9EA0]);
  v3 = [v2 initWithType:*MEMORY[0x277CDA290]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  [v3 setValue:v4 forKey:@"inputAmount"];

  return v3;
}

+ (id)saturationFilterWithAmount:()AmbientUI
{
  v2 = objc_alloc(MEMORY[0x277CD9EA0]);
  v3 = [v2 initWithType:*MEMORY[0x277CDA2D0]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  [v3 setValue:v4 forKey:@"inputAmount"];

  return v3;
}

+ (id)curvesFilterWithValues:()AmbientUI
{
  v3 = MEMORY[0x277CD9EA0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithType:*MEMORY[0x277CDA2E8]];
  [v6 setValue:v4 forKey:@"inputRedValues"];
  [v6 setValue:v4 forKey:@"inputGreenValues"];
  [v6 setValue:v4 forKey:@"inputBlueValues"];

  return v6;
}

@end