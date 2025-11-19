@interface CreateNewConnectionInfo
@end

@implementation CreateNewConnectionInfo

void __figXPC_CreateNewConnectionInfo_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(*(v1 + 216), ".Operation");
  v3 = *(v1 + 216);
  theString = 0;
  v30 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *buffer = 0u;
  v32 = 0u;
  v4 = xpc_dictionary_get_uint64(v3, ".Operation");
  FigXPCMessageCopyCFString(v3, ".PropertyName", &theString);
  if (theString)
  {
    CFStringGetCString(theString, buffer, 128, 0);
  }

  v5 = OpCodeChar(v4, 3u);
  v6 = OpCodeChar(v4, 2u);
  v7 = OpCodeChar(v4, 1u);
  v8 = OpCodeChar(v4, 0);
  asprintf(&v30, "Server %s Opcode '%c%c%c%c' %s", (v1 + 32), v5, v6, v7, v8, buffer);
  v9 = v30;
  v10 = FigCFWeakReferenceLoadAndRetain((v1 + 16));
  if ((uint64 & 0x200000000) != 0)
  {
    free(v9);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    context = dispatch_get_context(*(v1 + 192));
    if (context)
    {
      v12 = context;
      remote_connection = xpc_dictionary_get_remote_connection(context);
      xpc_connection_send_message(remote_connection, v12);
      xpc_release(v12);
      dispatch_set_context(*(v1 + 192), 0);
    }

    if (*(v10[7] + 139) && FigCanTriggerTapToRadar())
    {
      *buffer = 0;
      FigServer_CopyProcessName(*(v1 + 160), buffer);
      v14 = *MEMORY[0x1E695E480];
      v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"hang detected in media related process");
      v16 = *buffer;
      if (!*buffer)
      {
        v16 = @"UNKNOWN";
      }

      v17 = CFStringCreateWithFormat(v14, 0, @"XPC blockage detected impacting client %@", v16);
      v18 = getprogname();
      RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString(v14, @"An XPC blockage was detected in media related process %s, for server %s, serving client process %@. This may result in the process being terminated and subsequently playback, audio, and camera capture may be interrupted or fail.", v18, v1 + 32, *buffer);
      if (in_audio_mx_server_process())
      {
        v20 = 1581675;
      }

      else
      {
        v20 = 1507078;
      }

      FigTriggerTapToRadar(v15, v17, RadarDescriptionString, v20);
      if (RadarDescriptionString)
      {
        CFRelease(RadarDescriptionString);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (*buffer)
      {
        CFRelease(*buffer);
      }
    }

    if (*(v1 + 224))
    {
      v21 = *(v1 + 160);
      getpid();
      *buffer = 0;
      FigSimpleMutexLock(gSelfTerminationLock);
      FigServer_CopyProcessName(v21, buffer);
      if (*buffer)
      {
        CFRelease(*buffer);
        *buffer = 0;
      }

      FigRPCServer_TimeoutCrashReport(v21, v9);
      FigUserCrashWithMessage("****** Self-terminating due to XPC timeout Server %s Client %@ (%d) %s", v22, v23, v24, v25, v26, v27, v28, v1 + 32);
    }

    free(v9);
  }

  CFRelease(v10);
}

@end