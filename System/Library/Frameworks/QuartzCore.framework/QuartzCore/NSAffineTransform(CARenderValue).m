@interface NSAffineTransform(CARenderValue)
- (_DWORD)CA_copyRenderValue;
- (uint64_t)CA_copyNumericValue:()CARenderValue;
@end

@implementation NSAffineTransform(CARenderValue)

- (uint64_t)CA_copyNumericValue:()CARenderValue
{
  v4 = 0uLL;
  if (a1)
  {
    [a1 transformStruct];
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  return 6;
}

- (_DWORD)CA_copyRenderValue
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 transformStruct];
    v3 = v7;
    v4 = v8;
    v5 = v9;
  }

  else
  {
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v7 = v3;
  v8 = v4;
  v9 = v5;
  return CA::Render::Vector::new_vector(6, &v7, a3);
}

@end