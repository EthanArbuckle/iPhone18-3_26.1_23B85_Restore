@interface CAMediaTimingFunction
+ (CAMediaTimingFunction)functionWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y;
+ (CAMediaTimingFunction)functionWithName:(CAMediaTimingFunctionName)name;
+ (void)CAMLParserEndElement:(id)element content:(id)content;
- (CAMediaTimingFunction)initWithCoder:(id)coder;
- (CAMediaTimingFunction)initWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y;
- (Object)CA_copyRenderValue;
- (float)_solveForInput:(float)input;
- (id)description;
- (unint64_t)CA_copyNumericValue:(double *)value;
- (void)_getPoints:(double *)points;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
- (void)getControlPointAtIndex:(size_t)idx values:(float *)ptr;
@end

@implementation CAMediaTimingFunction

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, priv);
  }

  v4.receiver = self;
  v4.super_class = CAMediaTimingFunction;
  [(CAMediaTimingFunction *)&v4 dealloc];
}

- (CAMediaTimingFunction)initWithCoder:(id)coder
{
  [coder decodeFloatForKey:@"c1x"];
  v6 = v5;
  [coder decodeFloatForKey:@"c1y"];
  v8 = v7;
  [coder decodeFloatForKey:@"c2x"];
  v10 = v9;
  [coder decodeFloatForKey:@"c2y"];
  LODWORD(v11) = LODWORD(v12);
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;

  return [(CAMediaTimingFunction *)self initWithControlPoints:v12];
}

- (void)encodeWithCoder:(id)coder
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  [(CAMediaTimingFunction *)self _getPoints:&v8];
  HIDWORD(v4) = DWORD1(v8);
  *&v4 = *&v8;
  [coder encodeFloat:@"c1x" forKey:v4];
  HIDWORD(v5) = HIDWORD(v8);
  *&v5 = *(&v8 + 1);
  [coder encodeFloat:@"c1y" forKey:v5];
  HIDWORD(v6) = DWORD1(v9);
  *&v6 = *&v9;
  [coder encodeFloat:@"c2x" forKey:v6];
  HIDWORD(v7) = HIDWORD(v9);
  *&v7 = *(&v9 + 1);
  [coder encodeFloat:@"c2y" forKey:v7];
}

- (id)description
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0u;
  v4 = 0u;
  [(CAMediaTimingFunction *)self _getPoints:&v3];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g %g; %g %g)", v3, v4];
}

- (void)getControlPointAtIndex:(size_t)idx values:(float *)ptr
{
  v12 = *MEMORY[0x1E69E9840];
  if (idx - 1 < 2)
  {
    memset(v11, 0, sizeof(v11));
    [(CAMediaTimingFunction *)self _getPoints:v11];
    _D0 = vcvt_f32_f64(v11[idx - 1]);
LABEL_7:
    *ptr = _D0;
    return;
  }

  if (idx == 3)
  {
    __asm { FMOV            V0.2S, #1.0 }

    goto LABEL_7;
  }

  if (idx)
  {
    [MEMORY[0x1E695DF30] raise:@"CAMediaTimingFunctionInvalidControlPoint" format:{@"no timing function control point with index: %d", idx}];
  }

  else
  {
    *ptr = 0;
  }
}

- (void)_getPoints:(double *)points
{
  priv = self->_priv;
  v4 = vcvtq_f64_f32(priv[1]);
  *points = vcvtq_f64_f32(*priv);
  *(points + 1) = v4;
}

- (CAMediaTimingFunction)initWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y
{
  v8 = c1y;
  v9 = c1x;
  v10 = 0;
  v17 = *MEMORY[0x1E69E9840];
  c1x = vabds_f32(1.0, c2y);
  v11 = &dword_183E228AC;
  c1y = 0.001;
  while (vabds_f32(*(v11 - 2), v9) >= 0.001 || vabds_f32(*(v11 - 1), v8) >= 0.001 || vabds_f32(*v11, c2x) >= 0.001 || c1x >= 0.001)
  {
    ++v10;
    v11 += 4;
    if (v10 == 5)
    {
      v16.receiver = self;
      v16.super_class = CAMediaTimingFunction;
      v12 = [(CAMediaTimingFunction *)&v16 init:*&c1x];
      if (v12)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v13 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x1000040451B5BE8uLL);
        v12->_priv = v13;
        if (v13)
        {
          *v13 = v9;
          *(v13 + 1) = v8;
          *(v13 + 2) = c2x;
          *(v13 + 3) = c2y;
        }

        else
        {

          return 0;
        }
      }

      return v12;
    }
  }

  v14 = builtin_function(v10);

  return v14;
}

+ (CAMediaTimingFunction)functionWithName:(CAMediaTimingFunctionName)name
{
  if ([(NSString *)name isEqualToString:@"default"])
  {
    v4 = 0;
  }

  else if ([(NSString *)name isEqualToString:@"easeInEaseOut"])
  {
    v4 = 4;
  }

  else if ([(NSString *)name isEqualToString:@"easeIn"])
  {
    v4 = 2;
  }

  else if ([(NSString *)name isEqualToString:@"easeOut"])
  {
    v4 = 3;
  }

  else
  {
    if (![(NSString *)name isEqualToString:@"linear"])
    {
      [MEMORY[0x1E695DF30] raise:@"CAMediaTimingFunctionInvalid" format:{@"unknown timing function name: %@", name}];
      return 0;
    }

    v4 = 1;
  }

  return builtin_function(v4);
}

+ (CAMediaTimingFunction)functionWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y
{
  v10 = [self alloc];
  *&v11 = c1x;
  *&v12 = c1y;
  *&v13 = c2x;
  *&v14 = c2y;
  v15 = [v10 initWithControlPoints:v11 :v12 :v13 :v14];

  return v15;
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  [(CAMediaTimingFunction *)self _getPoints:v5];
  v4 = CACreateStringWithDoubleArray(v5, 4uLL, 0.0001);
  [writer setElementContent:v4];
  CFRelease(v4);
}

- (float)_solveForInput:(float)input
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  [(CAMediaTimingFunction *)self _getPoints:v6];
  return CA::Render::TimingFunction::evaluate(v6, v4, input, 0.00001);
}

+ (void)CAMLParserEndElement:(id)element content:(id)content
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = [content stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  if ([v5 length])
  {
    v6 = [v5 characterAtIndex:0];
    if ((v6 > 0xFF || (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0) && (v6 <= 0x2E ? (v7 = ((1 << v6) & 0x680000000000) == 0) : (v7 = 1), v7))
    {
      v26 = [CAMediaTimingFunction functionWithName:v5];
      if (v26)
      {

        [element setElementValue:v26];
      }

      else
      {
        [element parserError:{@"Unknown timing function: %@", v5}];
      }
    }

    else
    {
      uTF8String = [v5 UTF8String];
      v9 = strlen(uTF8String);
      v10 = &uTF8String[v9];
      v27[0] = uTF8String;
      v11 = x_strtod(uTF8String, v27, &uTF8String[v9]);
      v27[0] = CAML::skip_whitespace(v27[0], v10, v12);
      v13 = x_strtod(v27[0], v27, v10);
      v27[0] = CAML::skip_whitespace(v27[0], v10, v14);
      v15 = x_strtod(v27[0], v27, v10);
      v27[0] = CAML::skip_whitespace(v27[0], v10, v16);
      v17 = x_strtod(v27[0], v27, v10);
      v19 = CAML::skip_whitespace(v27[0], v10, v18);
      v20 = [CAMediaTimingFunction alloc];
      *&v11 = v11;
      LODWORD(v21) = LODWORD(v11);
      *&v13 = v13;
      LODWORD(v22) = LODWORD(v13);
      *&v15 = v15;
      LODWORD(v23) = LODWORD(v15);
      *&v17 = v17;
      LODWORD(v24) = LODWORD(v17);
      v25 = [(CAMediaTimingFunction *)v20 initWithControlPoints:v21];
      [element setElementValue:v25];

      if (v19 < v10)
      {
        if (*v19)
        {
          [element parserWarning:@"Ignoring trailing characters"];
        }
      }
    }
  }

  else
  {

    [element parserError:@"No timing function data"];
  }
}

- (unint64_t)CA_copyNumericValue:(double *)value
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  [(CAMediaTimingFunction *)self _getPoints:&v6];
  v4 = v7;
  *value = v6;
  *(value + 1) = v4;
  return 4;
}

- (Object)CA_copyRenderValue
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  [(CAMediaTimingFunction *)self _getPoints:v4];
  return CA::Render::Vector::new_vector(4, v4, v2);
}

@end