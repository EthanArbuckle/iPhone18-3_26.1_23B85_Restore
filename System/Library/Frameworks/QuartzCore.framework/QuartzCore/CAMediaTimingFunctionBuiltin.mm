@interface CAMediaTimingFunctionBuiltin
- (CAMediaTimingFunctionBuiltin)initWithCoder:(id)coder;
- (id)description;
- (void)_getPoints:(double *)points;
- (void)encodeWithCAMLWriter:(id)writer;
@end

@implementation CAMediaTimingFunctionBuiltin

- (id)description
{
  v5 = *MEMORY[0x1E69E9840];
  index = self->_index;
  if (index < 5)
  {
    return off_1E6DECB78[index];
  }

  v4.receiver = self;
  v4.super_class = CAMediaTimingFunctionBuiltin;
  return [(CAMediaTimingFunction *)&v4 description];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v4 = [(CAMediaTimingFunctionBuiltin *)self description];

  [writer setElementContent:v4];
}

- (CAMediaTimingFunctionBuiltin)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  if ([coder containsValueForKey:@"index"])
  {
    v5 = [coder decodeIntForKey:@"index"];

    v6 = builtin_function(v5);

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAMediaTimingFunctionBuiltin;
    return [(CAMediaTimingFunction *)&v8 initWithCoder:coder];
  }
}

- (void)_getPoints:(double *)points
{
  v3 = (&function_values + 16 * self->_index);
  *points = vcvtq_f64_f32(*v3);
  points[2] = v3[1].f32[0];
  points[3] = 1.0;
}

@end