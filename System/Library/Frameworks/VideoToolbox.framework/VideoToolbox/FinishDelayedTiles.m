@interface FinishDelayedTiles
@end

@implementation FinishDelayedTiles

uint64_t __dssxpc_FinishDelayedTiles_block_invoke(uint64_t a1)
{
  VTTileDecompressionSessionFinishDelayedTiles(*(a1 + 32));
  OUTLINED_FUNCTION_17_3();
  if (!FigXPCCreateBasicMessage())
  {
    FigXPCMessageSetInt32();
    xpc_connection_send_message(*(a1 + 48), message);
  }

  FigXPCRelease();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigXPCRelease();
}

@end