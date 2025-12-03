@interface NSValue(CAPoint3DAdditions)
+ (uint64_t)valueWithCAPoint3D:()CAPoint3DAdditions;
- (double)CAPoint3DValue;
@end

@implementation NSValue(CAPoint3DAdditions)

- (double)CAPoint3DValue
{
  v2[3] = *MEMORY[0x1E69E9840];
  memset(v2, 0, 24);
  [self getValue:v2 size:24];
  return *v2;
}

+ (uint64_t)valueWithCAPoint3D:()CAPoint3DAdditions
{
  v5[3] = *MEMORY[0x1E69E9840];
  *v5 = a2;
  *&v5[1] = a3;
  *&v5[2] = a4;
  return [self valueWithBytes:v5 objCType:"{CAPoint3D=ddd}"];
}

@end