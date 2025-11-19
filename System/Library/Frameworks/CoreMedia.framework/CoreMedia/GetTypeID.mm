@interface GetTypeID
@end

@implementation GetTypeID

uint64_t __memoryOrigin_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCB88 = result;
  return result;
}

uint64_t __memoryRecipient_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  memoryRecipient_GetTypeID_sMemoryRecipientTypeID = result;
  return result;
}

uint64_t __figOSEventLinkRemote_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figOSEventLinkRemote_GetTypeID_sFigOSEventLinkRemoteID = result;
  return result;
}

uint64_t __figOSEventLinkMemoryObjects_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figOSEventLinkMemoryObjects_GetTypeID_sFigOSEventLinkMemoryObjectsID = result;
  return result;
}

uint64_t __figOSEventLinkServer_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figOSEventLinkServer_GetTypeID_sFigOSEventLinkServerID = result;
  return result;
}

uint64_t __pixelBufferOrigin_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCD68 = result;
  return result;
}

uint64_t __pixelBufferRecipient_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  pixelBufferRecipient_GetTypeID_sPixelBufferRecipientTypeID = result;
  return result;
}

uint64_t __figRPCTimeoutDetector_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figRPCTimeoutDetector_GetTypeID_sFigRPCTimeoutDetectorID = result;
  return result;
}

uint64_t __figProcessInfo_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figProcessInfo_GetTypeID_sFigProcessInfoID = result;
  return result;
}

void __figProcessStateMonitorRemote_GetTypeID_block_invoke()
{
  qword_1ED4CDA48 = _CFRuntimeRegisterClass();
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigProcessStateMonitorRemoteTrace[1], @"figprocessstatemonitor_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", v0, 0, gFigProcessStateMonitorRemoteTrace);

  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC380, @"figprocessstatemonitor_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 1u, 0, &qword_1ED4CC378);
}

uint64_t __figXPCRemoteClient_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figXPCRemoteClient_GetTypeID_sFigXPCRemoteClientID = result;
  return result;
}

uint64_t __figXPCClientConnectionInfo_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figXPCClientConnectionInfo_GetTypeID_sFigXPCClientConnectionInfoID = result;
  return result;
}

uint64_t __figXPCConnection_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figXPCConnection_GetTypeID_sFigXPCConnectionID = result;
  return result;
}

uint64_t __figXPCPerProcessInfo_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CDB18 = result;
  return result;
}

uint64_t __figXPCServedObject_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figXPCServedObject_GetTypeID_sServedObjectID = result;
  return result;
}

uint64_t __figXPCEnqueuedNotifications_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CDB28 = result;
  return result;
}

uint64_t __figXPCConnectionInfo_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  figXPCConnectionInfo_GetTypeID_sConnectionInfoID = result;
  return result;
}

uint64_t __delegateCallbackParameters_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  delegateCallbackParameters_GetTypeID_sDelegateCallbackParametersTypeID = result;
  return result;
}

@end