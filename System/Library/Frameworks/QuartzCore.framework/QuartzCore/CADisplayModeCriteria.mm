@interface CADisplayModeCriteria
- (CADisplayModeCriteria)init;
- (CGSize)resolution;
- (NSString)hdrMode;
- (void)dealloc;
- (void)setHdrMode:(id)mode;
@end

@implementation CADisplayModeCriteria

- (void)setHdrMode:(id)mode
{
  if ([mode isEqualToString:@"Dolby"])
  {
    v5 = 5;
  }

  else if ([mode isEqualToString:@"HDR10"])
  {
    v5 = 3;
  }

  else
  {
    v5 = [mode isEqualToString:@"SDR"];
  }

  self->_priv->var2 = v5;
}

- (NSString)hdrMode
{
  v2 = self->_priv->var2 - 1;
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E6DEC100 + v2);
  }
}

- (CGSize)resolution
{
  priv = self->_priv;
  width = priv->var0.width;
  height = priv->var0.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_priv);
  v3.receiver = self;
  v3.super_class = CADisplayModeCriteria;
  [(CADisplayModeCriteria *)&v3 dealloc];
}

- (CADisplayModeCriteria)init
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_malloc(0x20uLL, 0x1000040C2192D5FuLL);
  v4 = MEMORY[0x1E695F060];
  self->_priv = v3;
  v3->var0 = *v4;
  priv = self->_priv;
  *(&priv->var1 + 7) = 0.0;
  priv->var1 = 0.0;
  v7.receiver = self;
  v7.super_class = CADisplayModeCriteria;
  return [(CADisplayModeCriteria *)&v7 init];
}

@end