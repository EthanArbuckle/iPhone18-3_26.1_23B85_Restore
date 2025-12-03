@interface AGXG18PFamilyLateEvalEvent
- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout;
@end

@implementation AGXG18PFamilyLateEvalEvent

- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout
{
  v5 = *(&self->super.super.super.isa + *MEMORY[0x29EDC55D0]);
  args->var2 = value;
  args->var0 = v5;
  args->var1 = timeout;
  return 65540;
}

@end