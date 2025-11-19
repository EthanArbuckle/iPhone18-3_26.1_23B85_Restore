@interface _MTLIndirectComputeCommand
- ($541E98A08E9B8548F71B8284ED28697B)getStageInRegion;
@end

@implementation _MTLIndirectComputeCommand

- ($541E98A08E9B8548F71B8284ED28697B)getStageInRegion
{
  result = [(_MTLIndirectComputeCommand *)self doesNotRecognizeSelector:a3];
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1.var1 = vdupq_n_s64(1uLL);
  return result;
}

@end