@interface CADisplayPreferences
- (CADisplayPreferences)initWithMatchContent:(BOOL)a3 preferredHdrType:(int)a4 prefersHighRefreshRate:(BOOL)a5 prefersVRR:(BOOL)a6;
- (CADisplayPreferences)initWithPreferences:(id)a3;
- (NSString)preferredHdrMode;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setPreferredHdrMode:(id)a3;
@end

@implementation CADisplayPreferences

- (void)setPreferredHdrMode:(id)a3
{
  if ([a3 isEqualToString:@"Dolby"])
  {
    v5 = 5;
  }

  else if ([a3 isEqualToString:@"HDR10"])
  {
    v5 = 3;
  }

  else
  {
    v5 = [a3 isEqualToString:@"SDR"];
  }

  self->_priv->var1 = v5;
}

- (NSString)preferredHdrMode
{
  v2 = self->_priv->var1 - 1;
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E6DEC100 + v2);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CAMutableDisplayPreferences allocWithZone:a3];

  return [(CADisplayPreferences *)v4 initWithPreferences:self];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_priv);
  v3.receiver = self;
  v3.super_class = CADisplayPreferences;
  [(CADisplayPreferences *)&v3 dealloc];
}

- (CADisplayPreferences)initWithPreferences:(id)a3
{
  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once == -1)
  {
    if (a3)
    {
LABEL_3:
      v5 = *(a3 + 1);
      v6 = *(v5 + 1);
      v7 = *v5;
      v8 = v5[8];
      v9 = v5[9];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  v6 = 0;
  v9 = 0;
  v8 = CADeviceSupportsExternalHighRefreshRateAndVRR::b;
LABEL_6:

  return [(CADisplayPreferences *)self initWithMatchContent:v7 & 1 preferredHdrType:v6 prefersHighRefreshRate:v8 & 1 prefersVRR:v9 & 1];
}

- (CADisplayPreferences)initWithMatchContent:(BOOL)a3 preferredHdrType:(int)a4 prefersHighRefreshRate:(BOOL)a5 prefersVRR:(BOOL)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = malloc_type_malloc(0xCuLL, 0x1000040149951FBuLL);
  self->_priv = v11;
  v11->var0 = a3;
  v11->var1 = a4;
  v11->var2 = a5;
  v11->var3 = a6;
  v13.receiver = self;
  v13.super_class = CADisplayPreferences;
  return [(CADisplayPreferences *)&v13 init];
}

@end