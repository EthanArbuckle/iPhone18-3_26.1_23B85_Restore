@interface NSArray
@end

@implementation NSArray

IMP __36__NSArray_NSArray__encodeWithCoder___block_invoke(uint64_t a1)
{
  _MergedGlobals_91 = class_getMethodImplementation(NSKeyedArchiver, *(a1 + 32));
  result = class_getMethodImplementation(NSXPCEncoder, *(a1 + 32));
  qword_1ED43F548 = result;
  return result;
}

@end