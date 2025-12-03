@interface CADisplayPreferences
- (CADisplayPreferences)initWithMatchContent:(BOOL)content preferredHdrType:(int)type prefersHighRefreshRate:(BOOL)rate prefersVRR:(BOOL)r;
- (CADisplayPreferences)initWithPreferences:(id)preferences;
- (NSString)preferredHdrMode;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setPreferredHdrMode:(id)mode;
@end

@implementation CADisplayPreferences

- (void)setPreferredHdrMode:(id)mode
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CAMutableDisplayPreferences allocWithZone:zone];

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

- (CADisplayPreferences)initWithPreferences:(id)preferences
{
  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once == -1)
  {
    if (preferences)
    {
LABEL_3:
      v5 = *(preferences + 1);
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
    if (preferences)
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

- (CADisplayPreferences)initWithMatchContent:(BOOL)content preferredHdrType:(int)type prefersHighRefreshRate:(BOOL)rate prefersVRR:(BOOL)r
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = malloc_type_malloc(0xCuLL, 0x1000040149951FBuLL);
  self->_priv = v11;
  v11->var0 = content;
  v11->var1 = type;
  v11->var2 = rate;
  v11->var3 = r;
  v13.receiver = self;
  v13.super_class = CADisplayPreferences;
  return [(CADisplayPreferences *)&v13 init];
}

@end