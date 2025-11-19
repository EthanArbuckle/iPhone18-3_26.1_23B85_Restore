@interface _GCPhysicalInputElementCollection0
- (id)elementAtIndex:(unint64_t)a3;
@end

@implementation _GCPhysicalInputElementCollection0

- (id)elementAtIndex:(unint64_t)a3
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: index %lu beyond bounds for empty collection.", "-[_GCPhysicalInputElementCollection0 elementAtIndex:]", a3];
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v3);
}

@end