@interface EnsureClientEstablished
@end

@implementation EnsureClientEstablished

void __cryptorRemote_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v5[0] = 1;
  v5[1] = cryptorRemote_DeadConnectionCallback;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"FigCPECryptor_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    if (FigRemote_ShouldConnectToMediaplaybackd())
    {
      v4 = "com.apple.coremedia.mediaplaybackd.figcpecryptor.xpc";
    }

    else
    {
      v4 = "com.apple.coremedia.figcpecryptor";
    }

    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate(v4, v5, 0, &_MergedGlobals_14);
    CFRelease(v3);
  }

  else
  {
    __cryptorRemote_EnsureClientEstablished_block_invoke_cold_1(a1);
  }
}

void __remoteVirtualCaptureCardClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"FigVirtualCaptureCard_ServerConnectionDied");
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate("com.apple.coremedia.figvirtualcapturecard.xpc", kFigVirtualCaptureCardNotification_ServerConnectionDied_block_invoke_callbacks, v3, &gFigVirtualCaptureCardRemoteClient);

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16150;
  }
}

void __figEndpointStreamRemoteXPC_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"EndpointStream_ServerConnectionDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate("com.apple.coremedia.endpointstream.xpc", kFigEndpointStreamNotification_ServerConnectionDied_block_invoke_clientCallbacks, Mutable, &gFigEndpointStreamRemoteClient);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __figEndpointMessengerRemoteXPC_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"Endpoint_ServerConnectionDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate("com.apple.coremedia.endpointmessenger.xpc", kFigEndpointMessengerNotification_ServerConnectionDied_block_invoke_clientCallbacks, Mutable, &gFigEndpointMessengerRemoteClient);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __figCustomURLLoaderRemote_EnsureClientEstablished_block_invoke()
{
  v2[0] = 3;
  v2[1] = figCustomURLLoaderRemote_DeadConnectionCallback;
  v3 = 0u;
  v4 = 0u;
  v5 = figCustomURLLoaderRemote_serverStatePurged;
  v6 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"CustomURLHandler_ServerConnectionDied");
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v1 = "com.apple.coremedia.mediaplaybackd.customurlloader.xpc";
  }

  else
  {
    v1 = "com.apple.coremedia.customurlloader.xpc";
  }

  _MergedGlobals_40 = FigXPCRemoteClientCreate(v1, v2, Mutable, &qword_1ED4CCBD8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"EndpointPlaybackSession_ServerConnectionDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate("com.apple.coremedia.endpointplaybacksession.xpc", kFigEndpointPlaybackSessionNotification_ServerConnectionDied_block_invoke_clientCallbacks, Mutable, &gFigEndpointPlaybackSessionRemoteClient);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"EndpointRemoteControlSession_ServerConnectionDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate("com.apple.coremedia.endpointremotecontrolsession.xpc", kFigEndpointRemoteControlSessionNotification_ServerConnectionDied_block_invoke_clientCallbacks, Mutable, &gFigEndpointRemoteControlSessionRemoteClient);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t __remoteClient_EnsureClientEstablished_block_invoke()
{
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = 1;
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v0 = "com.apple.coremedia.mediaplaybackd.controlcommands.xpc";
  }

  else
  {
    v0 = "com.apple.coremedia.logging.xpc";
  }

  result = FigXPCRemoteClientCreate(v0, &v2, 0, &qword_1ED4CDC38);
  _MergedGlobals_74 = result;
  return result;
}

size_t __cryptorRemote_EnsureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5DuLL, "<<< FigCPECryptorRemote >>>", 0x2A3, v3, v4, v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end