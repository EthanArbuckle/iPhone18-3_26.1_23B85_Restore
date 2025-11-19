@interface CAMediaTimingFunctionBuiltin
- (CAMediaTimingFunctionBuiltin)initWithCoder:(id)a3;
- (id)description;
- (void)_getPoints:(double *)a3;
- (void)encodeWithCAMLWriter:(id)a3;
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

- (void)encodeWithCAMLWriter:(id)a3
{
  v4 = [(CAMediaTimingFunctionBuiltin *)self description];

  [a3 setElementContent:v4];
}

- (CAMediaTimingFunctionBuiltin)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a3 containsValueForKey:@"index"])
  {
    v5 = [a3 decodeIntForKey:@"index"];

    v6 = builtin_function(v5);

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAMediaTimingFunctionBuiltin;
    return [(CAMediaTimingFunction *)&v8 initWithCoder:a3];
  }
}

- (void)_getPoints:(double *)a3
{
  v3 = (&function_values + 16 * self->_index);
  *a3 = vcvtq_f64_f32(*v3);
  a3[2] = v3[1].f32[0];
  a3[3] = 1.0;
}

@end