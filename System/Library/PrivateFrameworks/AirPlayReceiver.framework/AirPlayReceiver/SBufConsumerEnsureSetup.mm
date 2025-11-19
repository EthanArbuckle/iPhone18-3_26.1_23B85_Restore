@interface SBufConsumerEnsureSetup
@end

@implementation SBufConsumerEnsureSetup

void ___SBufConsumerEnsureSetup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dataBuffer = 0;
  cf = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC0898];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  sampleTimingArray.presentationTimeStamp = sampleTimingArray.duration;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  v15 = 0;
  if (!*(v1 + 128))
  {
    goto LABEL_25;
  }

  if (dispatch_source_get_data(*(v1 + 144)) < 1)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v2 = mach_absolute_time();
  v3 = (*(v1 + 80) * (v2 / UpTicksPerSecond()));
  v4 = v3 - *(v1 + 160);
  v15 = *(v1 + 104);
  v5 = v4 * v15;
  v6 = malloc_type_malloc(v4 * v15, 0xD0713017uLL);
  if (!APReceiverAudioSessionReadAudio(*(v1 + 24)))
  {
    CMTimeMake(&sampleTimingArray.presentationTimeStamp, *(v1 + 160) + *(v1 + 168), *(v1 + 80));
    CMTimeMake(&block, 1, *(v1 + 80));
    sampleTimingArray.duration = block;
    *(v1 + 160) = v3;
    v7 = *MEMORY[0x277CBECE8];
    if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v6, v5, *MEMORY[0x277CBECF0], 0, 0, v5, 0, &dataBuffer))
    {
      sampleSizeArray = &v15;
      if ((*(v1 + 92) & 0x20) != 0)
      {
        sampleSizeArray = 0;
      }

      if (CMSampleBufferCreate(v7, dataBuffer, 1u, 0, 0, *(v1 + 120), v4, 1, &sampleTimingArray, (*(v1 + 92) & 0x20) == 0, sampleSizeArray, &cf))
      {
        goto LABEL_25;
      }

      v9 = *(v1 + 128);
      v10 = cf;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v11)
      {
        v12 = v11(v9);
        if (!v12)
        {
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v13)
          {
            v14 = v13(v9, v10);
          }

          else
          {
            v14 = -12782;
          }

          *(v25 + 6) = v14;
LABEL_14:
          _Block_object_dispose(&v24, 8);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_25:
          APSLogErrorAt();
          goto LABEL_15;
        }
      }

      else
      {
        v12 = MEMORY[0x277D85CD0];
      }

      block.value = MEMORY[0x277D85DD0];
      *&block.timescale = 3221225472;
      block.epoch = __APReceiverSBufConsumerPushAudioSBuf_block_invoke;
      v20 = &unk_278C607D0;
      v21 = &v24;
      v22 = v9;
      v23 = v10;
      dispatch_sync(v12, &block);
      v14 = *(v25 + 6);
      goto LABEL_14;
    }
  }

  APSLogErrorAt();
LABEL_16:
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  free(v6);
}

@end