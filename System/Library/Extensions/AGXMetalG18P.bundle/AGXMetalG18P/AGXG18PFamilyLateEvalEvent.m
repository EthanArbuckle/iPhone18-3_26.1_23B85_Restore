@interface AGXG18PFamilyLateEvalEvent
- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5;
@end

@implementation AGXG18PFamilyLateEvalEvent

- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5
{
  v5 = *(&self->super.super.super.isa + *MEMORY[0x29EDC55D0]);
  a3->var2 = a4;
  a3->var0 = v5;
  a3->var1 = a5;
  return 65540;
}

@end