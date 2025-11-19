@interface DuckAudio
@end

@implementation DuckAudio

uint64_t __carEndpoint_DuckAudio_block_invoke(uint64_t result)
{
  v1 = result;
  if (*(*(result + 40) + 328))
  {
    if (gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __carEndpoint_DuckAudio_block_invoke_cold_1();
      }
    }

    *(*(v1 + 40) + 328) = 0;
  }

  else
  {
    result = carEndpoint_sendCommandInternal(*(result + 48), @"duckAudio", *(result + 56), 0, 0);
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __carEndpoint_DuckAudio_block_invoke_2(uint64_t result)
{
  if (*(*(result + 40) + 264))
  {
    v1 = result;
    result = carEndpoint_getStreamInfoForSubtype();
    if (result)
    {
      v10 = 0;
      v2 = CFGetAllocator(*(v1 + 48));
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 8);
      result = VTable + 8;
      v6 = *(v5 + 48);
      if (v6)
      {
        v6(CMBaseObject, @"AudioFormatInfo", v2, &v10);
        result = v10;
        if (v10)
        {
          LODWORD(v7) = *(APCarPlayAudioFormatInfoGetLatencyInfo(v10) + 8);
          v8 = v7;
          result = APCarPlayAudioFormatInfoGetDescription(v10);
          *(*(*(v1 + 32) + 8) + 24) = (v8 / *result * 1000000000.0);
          v9 = *(v1 + 32);
          if (*(*(v9 + 8) + 24) > 0x1DCD6500uLL)
          {
            if (gLogCategory_APEndpointCarPlay <= 50)
            {
              if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), v9 = *(v1 + 32), result))
              {
                result = LogPrintF();
                v9 = *(v1 + 32);
              }
            }

            *(*(v9 + 8) + 24) = 500000000;
          }
        }
      }
    }
  }

  return result;
}

void __carEndpoint_DuckAudio_block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 224);
  *(v3 + 328) = 1;
  CFRetain(v2);
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = dispatch_time(0, *(*(*(a1 + 32) + 8) + 24));
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(v8 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_DuckAudio_block_invoke_4;
  block[3] = &__block_descriptor_tmp_1165;
  block[4] = v8;
  v13 = v4;
  v11 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v12 = v7;
  dispatch_after(v6, v9, block);
}

void __carEndpoint_DuckAudio_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 224) == *(a1 + 64))
  {
    if (*(v2 + 328))
    {
      carEndpoint_sendCommandInternal(*(a1 + 40), @"unduckAudio", *(a1 + 48), 0, 0);
      *(*(a1 + 32) + 328) = 0;
    }

    else if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_DuckAudio_block_invoke_4_cold_1();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 56);

    CFRelease(v5);
  }
}

@end