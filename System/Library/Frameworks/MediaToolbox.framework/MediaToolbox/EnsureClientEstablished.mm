@interface EnsureClientEstablished
@end

@implementation EnsureClientEstablished

void __remoteXPCAIG_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"AssetImageGenerator_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCopyPrimaryConnection();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      FigXPCConnectionSetCustomServerTimeoutPerConnection();
      CFRelease(0);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t __remoteXPCMutableMovieClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaplaybackd();
  }

  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __frbs_EnsureClientEstablished_block_invoke()
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  _MergedGlobals_67 = result;
  return result;
}

uint64_t __remoteXPCCPEClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __aptapR_EnsureClientEstablished_block_invoke()
{
  if (FigRemote_ShouldConnectToAirplayd())
  {
    result = FigXPCRemoteClientCreate();
  }

  else
  {
    __aptapR_EnsureClientEstablished_block_invoke_cold_1(&v1);
    result = v1;
  }

  aptapR_EnsureClientEstablished_err = result;
  return result;
}

uint64_t __aptapR_EnsureClientEstablished_block_invoke_2()
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  aptapR_EnsureClientEstablished_err = result;
  return result;
}

void __remoteSampleGenerator_EnsureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"SampleGenerator_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  _MergedGlobals_91 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __remoteXPCVisualContextClient_EnsureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"VisualContext_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  _MergedGlobals_97 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t __remoteXPCMutableCompositionClient_EnsureClientEstablished_block_invoke()
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  remoteXPCMutableCompositionClient_EnsureClientEstablished_err = result;
  return result;
}

void __remoteXPCAssetClient_EnsureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"Asset_ServerConnectionDied");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633C8], *MEMORY[0x1E695E4D0]);
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  _MergedGlobals_120 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __remoteXPCCPEProtectorClient_EnsureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"CPEProtector_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  _MergedGlobals_138 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t __remoteXPCFigCaptionGroupConverterClient_EnsureClientEstablished_block_invoke()
{
  result = FigXPCRemoteClientCreate();
  _MergedGlobals_145 = result;
  if (result)
  {
    return __remoteXPCFigCaptionGroupConverterClient_EnsureClientEstablished_block_invoke_cold_1();
  }

  return result;
}

void __remoteVideoCompositor_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"VideoCompositor_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __remoteXPCPlayerClient_EnsureClientEstablished_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  qword_1ED4CA8B0 = MEMORY[0x1E69E96A0];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  FigCFDictionarySetInt32();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  dword_1ED4CA894 = FigXPCRemoteClientCreate();
  if (!dword_1ED4CA894)
  {
    dword_1ED4CA894 = FigXPCPlaybackCoordinatorClientStartAsSubclient(qword_1ED4CA8A0, @"ServerConnectionDied");
    if (!dword_1ED4CA894)
    {
      dword_1ED4CA894 = FigImageQueueGaugeXPCRemoteStartAsSubClient(qword_1ED4CA8A0);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t __aptapR_EnsureClientEstablished_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __remoteXPCFigCaptionGroupConverterClient_EnsureClientEstablished_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  _MergedGlobals_145 = result;
  return result;
}

@end