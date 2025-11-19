@interface BSXPCAutoCodingInitialize
@end

@implementation BSXPCAutoCodingInitialize

IMP ___BSXPCAutoCodingInitialize_block_invoke()
{
  v0 = objc_opt_class();
  result = class_getMethodImplementation(v0, sel_encodeWithCoder_);
  qword_1ED44FF30 = result;
  return result;
}

@end