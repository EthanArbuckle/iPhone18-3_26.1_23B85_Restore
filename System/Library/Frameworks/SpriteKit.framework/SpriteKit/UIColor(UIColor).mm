@interface UIColor(UIColor)
+ (uint64_t)colorWithVectorRGBA:()UIColor;
- (__n64)vectorRGBA;
- (float)componentRGBA;
@end

@implementation UIColor(UIColor)

- (float)componentRGBA
{
  v9 = 0.0;
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  if ([self getRed:&v9 green:&v8 blue:&v7 alpha:&v6])
  {
    return v9;
  }

  else
  {
    v3 = [self getWhite:&v5 alpha:&v6];
    result = 0.0;
    if (!v3)
    {
      return result;
    }

    return v5;
  }
}

- (__n64)vectorRGBA
{
  [self componentRGBA];
  result.n64_u32[1] = v1;
  return result;
}

+ (uint64_t)colorWithVectorRGBA:()UIColor
{
  LODWORD(a2) = self.n128_u32[1];
  LODWORD(a3) = self.n128_u32[2];
  LODWORD(a4) = self.n128_u32[3];
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{self.n128_f64[0], a2, a3, a4}];
}

@end