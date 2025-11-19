@interface DSRXPC
@end

@implementation DSRXPC

uint64_t __DSRXPC_PendingFrameInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  DSRXPC_PendingFrameInfoGetTypeID_sDSRXPC_PendingFrameInfoClassID = result;
  return result;
}

@end