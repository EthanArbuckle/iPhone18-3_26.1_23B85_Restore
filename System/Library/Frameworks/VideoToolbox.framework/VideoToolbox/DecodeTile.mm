@interface DecodeTile
@end

@implementation DecodeTile

uint64_t __dssxpc_DecodeTile_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = VTTileDecompressionSessionDecodeTile(*(a1 + 32), *(a1 + 40), *(a1 + 80), *(a1 + 88), *(a1 + 48), *(a1 + 96), *(a1 + 104), *(a1 + 56), &v7);
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "Result", v2);
    xpc_dictionary_set_uint64(0, "DecoderFlags", v7);
    xpc_connection_send_message(*(a1 + 72), 0);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  FigXPCRelease();
  return FigXPCRelease();
}

@end