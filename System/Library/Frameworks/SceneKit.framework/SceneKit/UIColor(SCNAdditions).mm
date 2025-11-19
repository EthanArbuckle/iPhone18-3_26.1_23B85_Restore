@interface UIColor(SCNAdditions)
+ (uint64_t)scn_colorWithC3DColor:()SCNAdditions;
+ (uint64_t)scn_colorWithLinearDisplayP3Red:()SCNAdditions green:blue:alpha:;
+ (uint64_t)scn_colorWithLinearSRGBRed:()SCNAdditions green:blue:alpha:;
+ (uint64_t)scn_colorWithModelIORed:()SCNAdditions green:blue:alpha:options:;
- (CGColor)scn_C3DColorIgnoringColorSpace:()SCNAdditions success:;
- (double)scn_colorComponentsForModelIO;
@end

@implementation UIColor(SCNAdditions)

+ (uint64_t)scn_colorWithLinearSRGBRed:()SCNAdditions green:blue:alpha:
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = C3DColorSpaceLinearSRGB();
  v5 = CGColorCreate(v4, components);
  v6 = [MEMORY[0x277D75348] colorWithCGColor:v5];
  CGColorRelease(v5);
  return v6;
}

+ (uint64_t)scn_colorWithLinearDisplayP3Red:()SCNAdditions green:blue:alpha:
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = C3DColorSpaceLinearDisplayP3();
  v5 = CGColorCreate(v4, components);
  v6 = [MEMORY[0x277D75348] colorWithCGColor:v5];
  CGColorRelease(v5);
  return v6;
}

+ (uint64_t)scn_colorWithModelIORed:()SCNAdditions green:blue:alpha:options:
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = C3DColorSpaceITUR_709();
  v5 = CGColorCreate(v4, components);
  ExtendedSRGBWithCGColor = C3DCGColorCreateExtendedSRGBWithCGColor(v5);
  v7 = [MEMORY[0x277D75348] colorWithCGColor:ExtendedSRGBWithCGColor];
  CGColorRelease(ExtendedSRGBWithCGColor);
  CGColorRelease(v5);
  return v7;
}

- (double)scn_colorComponentsForModelIO
{
  v1 = [a1 CGColor];

  return C3DCGColorGetITUR_709Components(v1);
}

+ (uint64_t)scn_colorWithC3DColor:()SCNAdditions
{
  if (!a3)
  {
    return 0;
  }

  ExtendedSRGBWithC3DColor = C3DCGColorCreateExtendedSRGBWithC3DColor(*a3, *(a3 + 8));
  v4 = [MEMORY[0x277D75348] colorWithCGColor:ExtendedSRGBWithC3DColor];
  CGColorRelease(ExtendedSRGBWithC3DColor);
  return v4;
}

- (CGColor)scn_C3DColorIgnoringColorSpace:()SCNAdditions success:
{
  result = [a1 CGColor];
  v7 = result;
  if (result)
  {
    result = C3DColor4WithCGColor(result, a3);
    if (!a4)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return result;
  }

  *a4 = v7 != 0;
  return result;
}

@end