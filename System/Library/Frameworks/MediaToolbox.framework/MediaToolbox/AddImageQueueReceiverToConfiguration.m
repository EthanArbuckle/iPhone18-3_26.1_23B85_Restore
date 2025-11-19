@interface AddImageQueueReceiverToConfiguration
@end

@implementation AddImageQueueReceiverToConfiguration

CFIndex __videoReceiver_AddImageQueueReceiverToConfiguration_block_invoke(uint64_t a1)
{
  result = FigDataChannelConfigurationGetChannelCount(*(a1 + 40));
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    while (1)
    {
      while (1)
      {
        result = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(*(a1 + 40), v4);
        if (result == 1)
        {
          break;
        }

        if (++v4 >= v3)
        {
          return result;
        }
      }

      FigDataChannelConfigurationGetCAImageQueueIDAtIndex();
      if (!videoReceiver_getImageQueueReceiverByIDOnSyncQueue())
      {
        break;
      }

      result = FigDataChannelConfigurationSetCAImageQueueReceiverAtIndex(*(a1 + 40), v4);
      *(*(*(a1 + 32) + 8) + 24) = result;
      ++v4;
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 < v3;
      }

      if (!v5)
      {
        return result;
      }
    }

    result = FigSignalErrorAtGM();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end