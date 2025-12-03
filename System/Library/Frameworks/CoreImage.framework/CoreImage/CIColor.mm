@interface CIColor
+ (CIColor)colorWithCGColor:(CGColorRef)c;
+ (CIColor)colorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a;
+ (CIColor)colorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a colorSpace:(CGColorSpaceRef)colorSpace;
+ (CIColor)colorWithString:(NSString *)representation;
- (BOOL)isEqual:(id)equal;
- (CGColor)rgbColor;
- (CGFloat)blue;
- (CGFloat)green;
- (CGFloat)red;
- (CIColor)initWithCGColor:(CGColorRef)c;
- (CIColor)initWithCoder:(id)coder;
- (CIColor)initWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a;
- (CIColor)initWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a colorSpace:(CGColorSpaceRef)colorSpace;
- (CIColor)initWithString:(id)string;
- (NSString)stringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)description;
- (uint64_t)rgbColor;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CIColor

+ (CIColor)colorWithCGColor:(CGColorRef)c
{
  v3 = [[self alloc] initWithCGColor:c];

  return v3;
}

+ (CIColor)colorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a
{
  v6 = [[self alloc] initWithRed:r green:g blue:b alpha:a];

  return v6;
}

+ (CIColor)colorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a colorSpace:(CGColorSpaceRef)colorSpace
{
  v7 = [[self alloc] initWithRed:colorSpace green:r blue:g alpha:b colorSpace:a];

  return v7;
}

+ (CIColor)colorWithString:(NSString *)representation
{
  v3 = [[self alloc] initWithString:representation];

  return v3;
}

- (CIColor)initWithString:(id)string
{
  v15 = *MEMORY[0x1E69E9840];
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v5 = uTF8String;
    v10 = 0;
    v6 = *uTF8String;
    if (v6 == 91 || v6 == 40)
    {
      v5 = uTF8String + 1;
    }

    v7 = 0;
    while (1)
    {
      *(&v11 + v7) = strtod(v5, &v10);
      if (v10 == v5)
      {
        break;
      }

      ++v7;
      v5 = v10;
      if (v7 == 4)
      {
        v8 = v14;
        return [(CIColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
      }
    }

    v8 = 1.0;
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        return [(CIColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
      }

      v8 = v12;
    }

    else if (!v7)
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      return [(CIColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
    }

    v12 = v11;
    v13 = v11;
    return [(CIColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
  }

  return [(CIColor *)self initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
}

- (CIColor)initWithCGColor:(CGColorRef)c
{
  selfCopy = self;
  v12 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    *components = 0u;
    v11 = 0u;
    if (_MergedGlobals != -1)
    {
      [CIConstColor colorSpace];
    }

    v7 = CGColorCreate(GetDefaultColorSpace(void)::cs, components);
    goto LABEL_9;
  }

  v9.receiver = self;
  v9.super_class = CIColor;
  v5 = [(CIColor *)&v9 init];
  selfCopy = v5;
  if (v5)
  {
    priv = v5->_priv;
    if (priv)
    {
      CGColorRelease(priv);
    }

    v7 = CGColorRetain(c);
LABEL_9:
    selfCopy->_priv = v7;
  }

  return selfCopy;
}

- (CIColor)initWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a
{
  if (_MergedGlobals != -1)
  {
    [CIConstColor colorSpace];
  }

  v11 = GetDefaultColorSpace(void)::cs;

  return [(CIColor *)self initWithRed:v11 green:r blue:g alpha:b colorSpace:a];
}

- (CIColor)initWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a colorSpace:(CGColorSpaceRef)colorSpace
{
  components[4] = *MEMORY[0x1E69E9840];
  if (CGColorSpaceGetModel(colorSpace) == kCGColorSpaceModelRGB)
  {
    components[0] = r;
    components[1] = g;
    components[2] = b;
    components[3] = a;
    v13 = CGColorCreate(colorSpace, components);
    v14 = [(CIColor *)self initWithCGColor:v13];
    CGColorRelease(v13);
  }

  else
  {
    v15 = ci_logger_api();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CIColor initWithRed:v15 green:? blue:? alpha:? colorSpace:?];
    }

    return 0;
  }

  return v14;
}

- (void)dealloc
{
  CGColorRelease(self->_priv);
  CGColorRelease(self->_pad[0]);
  v3.receiver = self;
  v3.super_class = CIColor;
  [(CIColor *)&v3 dealloc];
}

- (CGColor)rgbColor
{
  cgColor = [(CIColor *)self cgColor];
  ColorSpace = CGColorGetColorSpace(cgColor);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    return cgColor;
  }

  result = self->_pad[0];
  if (!result)
  {
    if ((atomic_load_explicit(&qword_1ED7C4490, memory_order_acquire) & 1) == 0 && ([CIColor rgbColor]& 1) == 0)
    {
      GetTransformToDefault(void)::transform = MEMORY[0x19EAF4190](GetDefaultColorSpace(void)::cs, 0);
      __cxa_guard_release(&qword_1ED7C4490);
    }

    result = CGColorTransformConvertColor();
    self->_pad[0] = result;
  }

  return result;
}

- (CGFloat)red
{
  rgbColor = [(CIColor *)self rgbColor];
  if (rgbColor)
  {
    return *CGColorGetComponents(rgbColor);
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)green
{
  rgbColor = [(CIColor *)self rgbColor];
  if (rgbColor)
  {
    return CGColorGetComponents(rgbColor)[1];
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)blue
{
  rgbColor = [(CIColor *)self rgbColor];
  if (rgbColor)
  {
    return CGColorGetComponents(rgbColor)[2];
  }

  else
  {
    return 0.0;
  }
}

- (NSString)stringRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  [(CIColor *)self red];
  v5 = v4;
  [(CIColor *)self green];
  v7 = v6;
  [(CIColor *)self blue];
  v9 = v8;
  [(CIColor *)self alpha];
  return [v3 stringWithFormat:@"%g %g %g %g", v5, v7, v9, v10];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  cgColor = [(CIColor *)self cgColor];
  cgColor2 = [equal cgColor];

  return CGColorEqualToColor(cgColor, cgColor2);
}

- (unint64_t)hash
{
  ColorSpace = CGColorGetColorSpace(self->_priv);
  NumberOfComponents = CGColorGetNumberOfComponents(self->_priv);
  Components = CGColorGetComponents(self->_priv);
  v6 = 33 * ColorSpace + NumberOfComponents;
  if (NumberOfComponents >= 1)
  {
    v7 = NumberOfComponents & 0x7FFFFFFF;
    do
    {
      v8 = *Components++;
      v6 = 33 * v6 + vcvtd_n_s64_f64(v8, 0xAuLL);
      --v7;
    }

    while (v7);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CIColor allocWithZone:zone];
  priv = self->_priv;

  return [(CIColor *)v4 initWithCGColor:priv];
}

- (void)encodeWithCoder:(id)coder
{
  rgbColor = [(CIColor *)self rgbColor];
  if (rgbColor)
  {
    v5 = rgbColor;
    Components = CGColorGetComponents(rgbColor);
    v7 = *Components;
    *&v7 = *Components;
    [coder encodeFloat:@"red" forKey:v7];
    v8 = Components[1];
    *&v8 = v8;
    [coder encodeFloat:@"green" forKey:v8];
    v9 = Components[2];
    *&v9 = v9;
    [coder encodeFloat:@"blue" forKey:v9];
    v10 = Components[3];
    *&v10 = v10;
    [coder encodeFloat:@"alpha" forKey:v10];
    CGColorGetColorSpace(v5);
    ID = CGColorSpaceGetID();
    if (ID)
    {

      [coder encodeInt:ID forKey:@"csid"];
    }
  }
}

- (CIColor)initWithCoder:(id)coder
{
  [coder decodeFloatForKey:@"red"];
  v6 = v5;
  [coder decodeFloatForKey:@"green"];
  v8 = v7;
  [coder decodeFloatForKey:@"blue"];
  v10 = v9;
  [coder decodeFloatForKey:@"alpha"];
  v12 = v11;
  if ([coder decodeIntForKey:@"csid"] && (v13 = CGColorSpaceCreateWithID()) != 0)
  {
    v14 = v13;
    v15 = [(CIColor *)self initWithRed:v13 green:v6 blue:v8 alpha:v10 colorSpace:v12];
  }

  else
  {
    v15 = [(CIColor *)self initWithRed:v6 green:v8 blue:v10 alpha:v12];
    v14 = 0;
  }

  CGColorSpaceRelease(v14);
  return v15;
}

- (id)description
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__CIColor_description__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __22__CIColor_description__block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "<CIColor %p ", *(a1 + 32));
  v4 = [*(a1 + 32) numberOfComponents];
  v5 = [*(a1 + 32) components];
  if (v4 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if (v7)
      {
        v8 = " ";
      }

      else
      {
        v8 = "(";
      }

      fprintf(a2, "%s%g", v8, *(v6 + 8 * v7++));
    }

    while ((v4 & 0x7FFFFFFF) != v7);
  }

  fwrite(") ", 2uLL, 1uLL, a2);
  CI::fprintf_cs(a2, [*(a1 + 32) colorSpace], 1);

  return fputc(62, a2);
}

- (id)debugQuickLookObject
{
  v3 = NSClassFromString(&cfstr_Uicolor.isa);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Uid = sel_getUid("colorWithCIColor:");
  if (!Uid)
  {
    return 0;
  }

  return [(objc_class *)v4 performSelector:Uid withObject:self];
}

- (void)initWithRed:(os_log_t)log green:blue:alpha:colorSpace:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIColor initWithRed:green:blue:alpha:colorSpace:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s colorSpace must be kCGColorSpaceModelRGB.", &v1, 0xCu);
}

- (uint64_t)rgbColor
{
  if (!__cxa_guard_acquire(&qword_1ED7C4490))
  {
    return 1;
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_8);
  }

  return 0;
}

@end