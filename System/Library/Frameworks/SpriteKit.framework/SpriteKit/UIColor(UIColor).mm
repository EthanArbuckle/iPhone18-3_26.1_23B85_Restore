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
  if ([a1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6])
  {
    return v9;
  }

  else
  {
    v3 = [a1 getWhite:&v5 alpha:&v6];
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
  [a1 componentRGBA];
  result.n64_u32[1] = v1;
  return result;
}

+ (uint64_t)colorWithVectorRGBA:()UIColor
{
  LODWORD(a2) = a1.n128_u32[1];
  LODWORD(a3) = a1.n128_u32[2];
  LODWORD(a4) = a1.n128_u32[3];
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{a1.n128_f64[0], a2, a3, a4}];
}

@end