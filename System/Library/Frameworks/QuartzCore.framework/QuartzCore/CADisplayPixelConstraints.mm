@interface CADisplayPixelConstraints
- (CADisplayPixelConstraints)initWithConstraints:(const AveragePixelConstraints *)constraints;
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation CADisplayPixelConstraints

- (NSString)debugDescription
{
  if (!self->_n)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p; no constraints>", objc_opt_class(), self];
  }

  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p; nits [", objc_opt_class(), self];
  if (self->_n == 1)
  {
    v4 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 appendFormat:@"%f, ", self->_nits[v6]];
      v6 = v7;
      v4 = self->_n - 1;
      v8 = v4 > v7++;
    }

    while (v8);
  }

  [v3 appendFormat:@"%f] averagePixel [", self->_nits[v4]];
  if (self->_n == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [v3 appendFormat:@"%f, ", self->_apl[v10]];
      v10 = v11;
      v9 = self->_n - 1;
      v8 = v9 > v11++;
    }

    while (v8);
  }

  [v3 appendFormat:@"%f]>", self->_apl[v9]];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_nits);
  free(self->_apl);
  v3.receiver = self;
  v3.super_class = CADisplayPixelConstraints;
  [(CADisplayPixelConstraints *)&v3 dealloc];
}

- (CADisplayPixelConstraints)initWithConstraints:(const AveragePixelConstraints *)constraints
{
  v12 = *MEMORY[0x1E69E9840];
  if (!constraints)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = CADisplayPixelConstraints;
  v4 = [(CADisplayPixelConstraints *)&v11 init];
  if (v4)
  {
    v5 = 4 * constraints->var3;
    v6 = malloc_type_calloc(1uLL, v5, 0x100004052888210uLL);
    v4->_nits = v6;
    memcpy(v6, constraints->var0, v5);
    v7 = 4 * constraints->var3;
    v8 = malloc_type_calloc(1uLL, v7, 0x100004052888210uLL);
    v4->_apl = v8;
    memcpy(v8, constraints->var1, v7);
    v4->_n = constraints->var3;
    v9 = *constraints->var2;
    v4->_weights[2] = constraints->var2[2];
    *v4->_weights = v9;
  }

  return v4;
}

@end