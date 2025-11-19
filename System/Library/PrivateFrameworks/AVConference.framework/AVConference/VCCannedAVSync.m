@interface VCCannedAVSync
+ (id)sharedCannedAVSync;
- (VCCannedAVSync)init;
- (void)addStreamWithCount:(int)a3 rate:(double)a4;
@end

@implementation VCCannedAVSync

- (VCCannedAVSync)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCannedAVSync;
  result = [(VCCannedAVSync *)&v3 init];
  if (result)
  {
    *&result->_base = xmmword_1DBD4F8B0;
  }

  return result;
}

- (void)addStreamWithCount:(int)a3 rate:(double)a4
{
  modulo = a3 / a4;
  if (self->_modulo < modulo)
  {
    modulo = self->_modulo;
  }

  self->_modulo = modulo;
}

+ (id)sharedCannedAVSync
{
  if (sharedCannedAVSync_sDispatchOnceToken != -1)
  {
    +[VCCannedAVSync sharedCannedAVSync];
  }

  return sharedCannedAVSync_sSharedCannedAVSync;
}

VCCannedAVSync *__36__VCCannedAVSync_sharedCannedAVSync__block_invoke()
{
  result = objc_alloc_init(VCCannedAVSync);
  sharedCannedAVSync_sSharedCannedAVSync = result;
  return result;
}

@end