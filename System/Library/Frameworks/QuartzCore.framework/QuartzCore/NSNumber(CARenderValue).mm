@interface NSNumber(CARenderValue)
- (_DWORD)CA_copyRenderValue;
- (uint64_t)CA_copyNumericValue:()CARenderValue;
@end

@implementation NSNumber(CARenderValue)

- (_DWORD)CA_copyRenderValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  [a1 doubleValue];
  v4[0] = v1;
  return CA::Render::Vector::new_vector(1, v4, v2);
}

- (uint64_t)CA_copyNumericValue:()CARenderValue
{
  [a1 doubleValue];
  *a3 = v4;
  return 1;
}

@end