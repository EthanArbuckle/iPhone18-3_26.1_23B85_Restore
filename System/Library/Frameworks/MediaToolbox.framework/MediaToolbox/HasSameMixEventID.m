@interface HasSameMixEventID
@end

@implementation HasSameMixEventID

void __fbapop_ruleIsAnotherRPConnected_and_HasSameMixEventID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v5 = *(a3 + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    v8 = *(a1 + 40);
    if (v8 != a3 && cf)
    {
      if (v8 && *(v8 + 68) && (BooleanValue = FigCFDictionaryGetBooleanValue(), BooleanValue == *MEMORY[0x1E695E4D0]) && *(a3 + 68) && FigCFDictionaryGetBooleanValue() == BooleanValue || (v10 = *(a1 + 40)) != 0 && *(v10 + 68) && (v11 = FigCFDictionaryGetBooleanValue(), v11 == *MEMORY[0x1E695E4D0]) && *(a3 + 68) && FigCFDictionaryGetBooleanValue() == v11)
      {
        if (FigCFDictionaryGetValueIfPresent() && FigCFDictionaryGetValueIfPresent() && FigCFEqual())
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }

      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

@end