@interface CIConstColor
+ (id)alloc;
- (BOOL)isEqual:(id)a3;
- (CGColor)cgColor;
- (CGColorSpace)colorSpace;
- (CIConstColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(CGColorSpace *)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CIConstColor

+ (id)alloc
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = objc_opt_class();
  [v2 raise:v3 format:{@"Calling Alloc on %@ is not allowed", NSStringFromClass(v4)}];
  return 0;
}

- (CGColorSpace)colorSpace
{
  if (_MergedGlobals != -1)
  {
    [CIConstColor colorSpace];
  }

  return GetDefaultColorSpace(void)::cs;
}

- (CGColor)cgColor
{
  v2 = CGColorCreate([(CIConstColor *)self colorSpace], &self[1]);
  CFAutorelease(v2);
  return v2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CIConstColor *)self components];
    v6 = [a3 components];
    return *v5 == *v6 && *(v5 + 1) == v6[1] && *(v5 + 2) == v6[2] && *(v5 + 3) == v6[3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a3 isEqual:self];
    }

    else
    {
      return 0;
    }
  }
}

- (unint64_t)hash
{
  v3 = [(CIConstColor *)self numberOfComponents];
  v4 = [(CIConstColor *)self components];
  result = v3;
  if (v3 >= 1)
  {
    v6 = v3 & 0x7FFFFFFF;
    do
    {
      v7 = *v4++;
      result = 33 * result + vcvtd_n_s64_f64(v7, 0xAuLL);
      --v6;
    }

    while (v6);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CIConstColor;
  [(CIColor *)&v3 encodeWithCoder:a3];
}

- (CIConstColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(CGColorSpace *)a7
{
  v8 = [[CIColor alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v8;
}

@end