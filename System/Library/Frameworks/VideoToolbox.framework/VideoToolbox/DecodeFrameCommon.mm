@interface DecodeFrameCommon
@end

@implementation DecodeFrameCommon

uint64_t __dsrxpc_DecodeFrameCommon_block_invoke_2(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v5 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v5, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) != 0)
    {
      return 4294949291;
    }

    else if (v5 > 0xA7)
    {
      *(*(*(a1 + 32) + 8) + 24) = *(dataPointerOut + 4);
      if (*(v4 + 3))
      {
        return FigMemoryOriginUpdateRecipientStateFromIPCMessageData();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294949290;
    }
  }

  return result;
}

uint64_t __vtDecompressionSessionRemote_DecodeFrameCommon_block_invoke(uint64_t a1)
{
  result = FigAtomicIncrement32();
  if (result == 1)
  {
    result = FigSemaphoreWaitRelative();
  }

  *(*(a1 + 40) + 80) = *(*(a1 + 32) + 32);
  *(*(a1 + 32) + 32) = *(a1 + 40);
  return result;
}

uint64_t __vtDecompressionSessionRemote_DecodeFrameCommon_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 32);
  if (v1)
  {
    v2 = result;
    do
    {
      while (1)
      {
        v3 = v1;
        v1 = v1[10];
        v4 = *(v2 + 40);
        if (v3 == v4)
        {
          v5 = v4[3];
          if (v5)
          {
            _Block_release(v5);
            v4 = *(v2 + 40);
          }

          v6 = v4[4];
          if (v6)
          {
            _Block_release(v6);
            v4 = *(v2 + 40);
          }

          v7 = v4[9];
          if (v7)
          {
            CFRelease(v7);
            *(*(v2 + 40) + 72) = 0;
            v4 = *(v2 + 40);
          }

          v8 = *(v2 + 32);
          v11 = *(v8 + 32);
          v10 = (v8 + 32);
          v9 = v11;
          if (v11 != v4)
          {
            do
            {
              v12 = v9;
              v9 = v9[10];
            }

            while (v9 != v4);
            v10 = v12 + 10;
          }

          *v10 = v9[10];
          free(*(v2 + 40));
          result = FigAtomicDecrement32();
          if (!result)
          {
            break;
          }
        }

        if (!v1)
        {
          return result;
        }
      }

      result = FigSemaphoreSignal();
    }

    while (v1);
  }

  return result;
}

uint64_t __dsrxpc_DecodeFrameCommon_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!result)
  {
    if ((dataPointerOut & 7) != 0)
    {
      return 4294949291;
    }

    else if (lengthAtOffsetOut > 0xA7)
    {
      bzero(dataPointerOut, 0xA8uLL);
      v4 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 40) + 16);
      *(v4 + 2) = 1684366182;
      *(v4 + 6) = *(a1 + 80);
      *(v4 + 2) = *(*(a1 + 48) + 16);
      v4[48] = *(a1 + 32) != 0;
      FigXPCRemoteClientGetServerPID();
      result = FigInMemorySerializerAppendCFDictionary();
      if (!result)
      {
        if (qword_1ED6D41A8 != -1)
        {
          dispatch_once(&qword_1ED6D41A8, &__block_literal_global_21_0);
        }

        return FigInMemorySerializerAppendCMSampleBuffer();
      }
    }

    else
    {
      return 4294949290;
    }
  }

  return result;
}

@end