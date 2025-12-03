@interface CIConstColor
+ (id)alloc;
- (BOOL)isEqual:(id)equal;
- (CGColor)cgColor;
- (CGColorSpace)colorSpace;
- (CIConstColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(CGColorSpace *)space;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    components = [(CIConstColor *)self components];
    components2 = [equal components];
    return *components == *components2 && *(components + 1) == components2[1] && *(components + 2) == components2[2] && *(components + 3) == components2[3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [equal isEqual:self];
    }

    else
    {
      return 0;
    }
  }
}

- (unint64_t)hash
{
  numberOfComponents = [(CIConstColor *)self numberOfComponents];
  components = [(CIConstColor *)self components];
  result = numberOfComponents;
  if (numberOfComponents >= 1)
  {
    v6 = numberOfComponents & 0x7FFFFFFF;
    do
    {
      v7 = *components++;
      result = 33 * result + vcvtd_n_s64_f64(v7, 0xAuLL);
      --v6;
    }

    while (v6);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CIConstColor;
  [(CIColor *)&v3 encodeWithCoder:coder];
}

- (CIConstColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(CGColorSpace *)space
{
  v8 = [[CIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v8;
}

@end