@interface AudioSessionIsActiveDidChangeNotification
@end

@implementation AudioSessionIsActiveDidChangeNotification

void __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E69AFA78]);
  v3 = Value;
  if (Value == *MEMORY[0x1E695E4C0] && *(*(a1 + 40) + 128))
  {
    cf = 0;
    v14 = 0;
    v4 = *(a1 + 48);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5 && (!v5(v4, 0, &v14) ? (v6 = v14 == 0) : (v6 = 1), !v6 && (FigBaseObject = FigPlaybackItemGetFigBaseObject(v14), (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0)))
    {
      v8(FigBaseObject, @"HasEnabledAudio", *MEMORY[0x1E695E480], &cf);
      v9 = cf;
    }

    else
    {
      v9 = 0;
    }

    if (v9 != v3)
    {
      if (*(*(a1 + 40) + 130))
      {
        playerceleste_pauseCurrentlyPlayingMovie(*(a1 + 48), 28);
      }

      if (playerceleste_canCallSetConnectionActive())
      {
        playerceleste_callSetConnectionActive(*(a1 + 48), 0);
      }

      *(*(a1 + 40) + 128) = 0;
      v9 = cf;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v14;
    if (v14)
    {
      if (*(a1 + 48))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v12 = *(DerivedStorage + 200);
        if (v12)
        {
          dispatch_retain(*(DerivedStorage + 200));
        }
      }

      else
      {
        v12 = 0;
      }

      if (qword_1ED4CBA70 != -1)
      {
        __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerceleste_deferItemRelease_block_invoke;
      block[3] = &unk_1E7483B48;
      block[4] = v12;
      block[5] = v10;
      dispatch_async(qword_1ED4CBA68, block);
    }
  }

  else if (Value == *MEMORY[0x1E695E4D0] && !*(*(a1 + 40) + 128))
  {
    if (playerceleste_canCallSetConnectionActive())
    {
      playerceleste_callSetConnectionActive(*(a1 + 48), 1);
    }

    *(*(a1 + 40) + 128) = 1;

    playerceleste_revokePurgeAssertionIfNecessary();
  }
}

@end