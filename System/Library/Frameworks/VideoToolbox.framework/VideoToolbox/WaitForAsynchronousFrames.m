@interface WaitForAsynchronousFrames
@end

@implementation WaitForAsynchronousFrames

uint64_t __dssxpc_WaitForAsynchronousFrames_XPCMessage_block_invoke(uint64_t a1)
{
  v2 = VTDecompressionSessionWaitForAsynchronousFrames(*(a1 + 32));
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "Result", v2);
    xpc_connection_send_message(*(a1 + 48), 0);
  }

  FigXPCRelease();
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  return FigXPCRelease();
}

@end