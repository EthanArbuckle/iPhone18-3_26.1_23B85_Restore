@interface SetProperty
@end

@implementation SetProperty

void __hoseSBAR_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = a1[6];
    v5 = *(v2 + 264);
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (v6)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        v8 = *(v6 + 56);
        v9 = v7(v3, *MEMORY[0x277D27340], v4);
      }

      else
      {
        v9 = -19225;
      }
    }

    else
    {
      v9 = -19221;
    }

    *(*(a1[4] + 8) + 24) = v9;
    v10 = *(*(a1[4] + 8) + 24);
    if (v10)
    {
      APSLogErrorAt(v10);
      goto LABEL_14;
    }

    v2 = a1[5];
  }

  v11 = *(v2 + 296);
  v12 = a1[6];
  *(v2 + 296) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  hoseSBAR_setPreferencesOnAudioSession(a1[7], 1);
LABEL_14:
  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[7];
  if (v14)
  {

    CFRelease(v14);
  }
}

void __dataSource_SetProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"PSGDataSource::DevicePSGInfos"))
  {
    *(*(*(a1 + 32) + 8) + 24) = dataSource_SetDevicePSGInfoInternal(*(a1 + 48), *(a1 + 56));
  }

  else if (CFEqual(*(a1 + 40), @"PSGDataSource::LocalPSGInfo"))
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 64);
    v4 = *(v3 + 24);
    if (v2)
    {
      CFRetain(v2);
    }

    *(v3 + 24) = v2;
    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12787;
  }
}

@end