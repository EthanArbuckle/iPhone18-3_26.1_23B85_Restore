@interface DecodeFrame
@end

@implementation DecodeFrame

uint64_t __dssxpc_DecodeFrame_XPCMessage_block_invoke(uint64_t a1)
{
  LODWORD(value) = 0;
  OUTLINED_FUNCTION_18_2();
  v4 = VTDecompressionSessionDecodeFrameWithOptions(v3, *(v2 + 24), *(a1 + 88), *(a1 + 48), *(a1 + 56), &value);
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "Result", v4);
    xpc_dictionary_set_uint64(0, "DecoderFlags", value);
    OUTLINED_FUNCTION_18_2();
    v6 = *(v5 + 24);
    if (v6)
    {
      CFRelease(v6);
      OUTLINED_FUNCTION_18_2();
      *(v7 + 24) = 0;
    }

    if (!FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage())
    {
      xpc_connection_send_message(*(a1 + 80), 0);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_18_2();
  v9 = *(v8 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  return FigXPCRelease();
}

@end