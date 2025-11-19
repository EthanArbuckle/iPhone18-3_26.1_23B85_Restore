@interface VCTransport
+ (VCTransport)sharedInstance;
- (BOOL)ipPortStillExists:(tagIPPORT *)a3 requiresWifi:(BOOL)a4;
- (VCTransport)init;
- (id)getRemoteCIDForDstIPPort:(tagIPPORT *)a3 callID:(unsigned int)a4;
- (int)detailedErrorCodeForConnectionWithCallID:(unsigned int)a3;
- (int)getConnectionDataForCallID:(unsigned int)a3 version:(unsigned __int8)a4 useCompressedData:(BOOL)a5 pConnectionData:(void *)a6 connectDataSizeInBytes:(int *)a7 relayDictionary:(__CFDictionary *)a8 interfaceUpdate:(BOOL)a9 nonCellularCandidateTimeout:(double)a10;
- (int)sendData:(id)a3 localCallID:(unsigned int)a4 remoteCallID:(unsigned int)a5 encrypted:(BOOL)a6 OFTType:(int)a7;
- (int)sendUDPPacketReliableEncrypted:(id)a3 localIPPort:(tagIPPORT *)a4 destinationIPPort:(tagIPPORT *)a5 oftType:(int)a6;
- (int)startConnectionCheckForCallID:(unsigned int)a3 remoteConnectionDataBlob:(id)a4 relayDictionary:(id)a5 iceTimeout:(double)a6 securityIdentity:(__SecIdentity *)a7 skeState:(SKEStateOpaque *)a8 usedRelay:(int *)a9;
- (int)updateInterfaceList:(unsigned int)a3 shouldFilterCellInterface:(BOOL)a4 isUpdateNeeded:(int *)a5;
- (void)dealloc;
- (void)iceConnectedForCallID:(unsigned int)a3 result:(tagCONNRESULT *)a4 didReceivePacket:(int)a5 useRelay:(int)a6 secretKey:(__CFData *)a7 skeResult:(int)a8;
- (void)iceNewCandidatesForCallID:(unsigned int)a3 blob:(char *)a4 size:(int)a5 newCandidateVersion:(unsigned __int16)a6;
- (void)iceRemoveIPPort:(tagIPPORT *)a3 forCallID:(unsigned int)a4 isLocalInterface:(BOOL)a5;
- (void)iceShouldNominateNewCandidate:(tagCANDIDATEPAIR *)a3 forCallID:(unsigned int)a4 interfaceMask:(int)a5 nominated:(int *)a6 demote:(int *)a7 connectionPriority:(int *)a8 replaceOnly:(int *)a9;
- (void)receivedDataPacket:(char *)a3 length:(int)a4 forCallID:(unsigned int)a5 encrypted:(BOOL)a6 OFTType:(int)a7;
- (void)registerDataReceivedHandler:(id)a3 forCallID:(unsigned int)a4;
- (void)registerICEBlockForCallID:(unsigned int)a3 connectedBlock:(id)a4 newCandidatesBlock:(id)a5 newNominationBlock:(id)a6 removeIPPortBlock:(id)a7;
@end

@implementation VCTransport

- (VCTransport)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCTransport;
  v2 = [(VCTransport *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:v2];
    v7[0] = v3;
    v7[1] = MEMORY[0x1E695D7C8];
    v7[2] = MEMORY[0x1E695D7C0];
    TPCreateHandle(v2 + 1, 0, 0, 0, VCTransportICEConnected, VCTransportICENewCandidates, VCTransportICEShouldNominate, VCTransportICERemoveIPPort, v3, VCDataPacketReceivedCallback, v7);

    *(v2 + 2) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    *(v2 + 3) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCTransport.delegateQueue", 0, CustomRootQueue);
    *(v2 + 4) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v5 = VCDispatchQueue_GetCustomRootQueue(58);
    *(v2 + 5) = dispatch_queue_create_with_target_V2("com.apple.VideoConference.vctransport.dataReceivedHandlerQueue", 0, v5);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  TPSetDataPacketReceivedCallback(self->tpHandle, 0, 0);
  TPCloseHandle();

  dispatch_release(self->delegateQueue);
  dispatch_release(self->dataReceivedHandlerQueue);
  v3.receiver = self;
  v3.super_class = VCTransport;
  [(VCTransport *)&v3 dealloc];
}

+ (VCTransport)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  Weak = objc_loadWeak(&gVCTransportInstance);
  if (!Weak)
  {
    v4 = objc_alloc_init(VCTransport);
    objc_storeWeak(&gVCTransportInstance, v4);
    Weak = v4;
  }

  objc_sync_exit(v2);
  return Weak;
}

- (void)registerICEBlockForCallID:(unsigned int)a3 connectedBlock:(id)a4 newCandidatesBlock:(id)a5 newNominationBlock:(id)a6 removeIPPortBlock:(id)a7
{
  v10 = *MEMORY[0x1E69E9840];
  delegateQueue = self->delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCTransport_registerICEBlockForCallID_connectedBlock_newCandidatesBlock_newNominationBlock_removeIPPortBlock___block_invoke;
  block[3] = &unk_1E85FA0A8;
  v9 = a3;
  block[6] = a5;
  block[7] = a6;
  block[8] = a7;
  block[4] = self;
  block[5] = a4;
  dispatch_async(delegateQueue, block);
}

void __112__VCTransport_registerICEBlockForCallID_connectedBlock_newCandidatesBlock_newNominationBlock_removeIPPortBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 72)];
  if (*(a1 + 40) || *(a1 + 48) || *(a1 + 56) || *(a1 + 64))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v4 = *(a1 + 40);
    v13 = v3;
    if (v4)
    {
      v5 = _Block_copy(v4);
      [v13 setObject:v5 forKeyedSubscript:@"NewConnection"];
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = _Block_copy(v6);
      [v13 setObject:v7 forKeyedSubscript:@"NewCandidates"];
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = _Block_copy(v8);
      [v13 setObject:v9 forKeyedSubscript:@"NewNomination"];
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = _Block_copy(v10);
      [v13 setObject:v11 forKeyedSubscript:@"RemoveIPPort"];
    }

    [*(*(a1 + 32) + 16) setObject:v13 forKeyedSubscript:v2];
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);

    [v12 removeObjectForKey:v2];
  }
}

- (int)updateInterfaceList:(unsigned int)a3 shouldFilterCellInterface:(BOOL)a4 isUpdateNeeded:(int *)a5
{
  v6 = a4;
  v7 = *&a3;
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  objc_sync_enter(self);
  LODWORD(a5) = TPUpdateInterfaceList(self->tpHandle, v7, a5, v6, v10);
  objc_sync_exit(self);
  return a5;
}

- (void)iceConnectedForCallID:(unsigned int)a3 result:(tagCONNRESULT *)a4 didReceivePacket:(int)a5 useRelay:(int)a6 secretKey:(__CFData *)a7 skeResult:(int)a8
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v15 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    memcpy(v15, a4, 0x140uLL);
  }

  else
  {
    v15 = 0;
  }

  delegateQueue = self->delegateQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__VCTransport_iceConnectedForCallID_result_didReceivePacket_useRelay_secretKey_skeResult___block_invoke;
  v17[3] = &unk_1E85F7FD0;
  v17[4] = self;
  v17[5] = v15;
  v18 = a3;
  v19 = a5;
  v17[6] = a7;
  v20 = a6;
  v21 = a8;
  dispatch_async(delegateQueue, v17);
}

void __90__VCTransport_iceConnectedForCallID_result_didReceivePacket_useRelay_secretKey_skeResult___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 56))), "objectForKeyedSubscript:", @"NewConnection"}];
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 60) != 0, *(a1 + 64) != 0, *(a1 + 48), *(a1 + 68));
  }

  v3 = *(a1 + 40);

  free(v3);
}

- (void)iceNewCandidatesForCallID:(unsigned int)a3 blob:(char *)a4 size:(int)a5 newCandidateVersion:(unsigned __int16)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:a5];
  delegateQueue = self->delegateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__VCTransport_iceNewCandidatesForCallID_blob_size_newCandidateVersion___block_invoke;
  v11[3] = &unk_1E85F8C50;
  v12 = a3;
  v11[4] = self;
  v11[5] = v9;
  v13 = a6;
  dispatch_async(delegateQueue, v11);
}

uint64_t __71__VCTransport_iceNewCandidatesForCallID_blob_size_newCandidateVersion___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "objectForKeyedSubscript:", @"NewCandidates"}];
  if (result)
  {
    v2 = *(result + 16);

    return v2();
  }

  return result;
}

- (void)iceShouldNominateNewCandidate:(tagCANDIDATEPAIR *)a3 forCallID:(unsigned int)a4 interfaceMask:(int)a5 nominated:(int *)a6 demote:(int *)a7 connectionPriority:(int *)a8 replaceOnly:(int *)a9
{
  v13 = *MEMORY[0x1E69E9840];
  delegateQueue = self->delegateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117__VCTransport_iceShouldNominateNewCandidate_forCallID_interfaceMask_nominated_demote_connectionPriority_replaceOnly___block_invoke;
  v10[3] = &unk_1E85F7F08;
  v10[4] = self;
  v10[5] = a3;
  v11 = a4;
  v12 = a5;
  v10[6] = a6;
  v10[7] = a7;
  v10[8] = a8;
  v10[9] = a9;
  dispatch_sync(delegateQueue, v10);
}

void __117__VCTransport_iceShouldNominateNewCandidate_forCallID_interfaceMask_nominated_demote_connectionPriority_replaceOnly___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 80))), "objectForKeyedSubscript:", @"NewNomination"}];
  if (v1)
  {
    v2 = *(v1 + 16);

    v2();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransport iceShouldNominateNewCandidate:forCallID:interfaceMask:nominated:demote:connectionPriority:replaceOnly:]_block_invoke";
      v9 = 1024;
      v10 = 261;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d iceNewNominationBlock didn't exist", &v5, 0x1Cu);
    }
  }
}

- (void)iceRemoveIPPort:(tagIPPORT *)a3 forCallID:(unsigned int)a4 isLocalInterface:(BOOL)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4810000000;
  v10[3] = &unk_1DBF04739;
  v5 = *&a3->szIfName[12];
  v11 = *&a3->iFlags;
  v12 = v5;
  v13 = *&a3->IP.abIPv6[12];
  delegateQueue = self->delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCTransport_iceRemoveIPPort_forCallID_isLocalInterface___block_invoke;
  block[3] = &unk_1E85FA0D0;
  v8 = a4;
  block[4] = self;
  block[5] = v10;
  v9 = a5;
  dispatch_async(delegateQueue, block);
  _Block_object_dispose(v10, 8);
}

void __58__VCTransport_iceRemoveIPPort_forCallID_isLocalInterface___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "objectForKeyedSubscript:", @"RemoveIPPort"}];
  if (v1)
  {
    v2 = *(v1 + 16);

    v2();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransport iceRemoveIPPort:forCallID:isLocalInterface:]_block_invoke";
      v9 = 1024;
      v10 = 277;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d iceRemoveIPPortBlock didn't exist", &v5, 0x1Cu);
    }
  }
}

- (void)registerDataReceivedHandler:(id)a3 forCallID:(unsigned int)a4
{
  v7 = *MEMORY[0x1E69E9840];
  dataReceivedHandlerQueue = self->dataReceivedHandlerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCTransport_registerDataReceivedHandler_forCallID___block_invoke;
  v5[3] = &unk_1E85FA0F8;
  v5[4] = self;
  v5[5] = a3;
  v6 = a4;
  dispatch_async(dataReceivedHandlerQueue, v5);
}

void __53__VCTransport_registerDataReceivedHandler_forCallID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = _Block_copy(v2);
    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];

    _Block_release(v3);
  }

  else
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];

    [v4 removeObjectForKey:v5];
  }
}

- (void)receivedDataPacket:(char *)a3 length:(int)a4 forCallID:(unsigned int)a5 encrypted:(BOOL)a6 OFTType:(int)a7
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:a4];
  dataReceivedHandlerQueue = self->dataReceivedHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCTransport_receivedDataPacket_length_forCallID_encrypted_OFTType___block_invoke;
  block[3] = &unk_1E85F63A0;
  block[4] = self;
  block[5] = v11;
  v16 = a6;
  v14 = a5;
  v15 = a7;
  dispatch_async(dataReceivedHandlerQueue, block);
}

uint64_t __69__VCTransport_receivedDataPacket_length_forCallID_encrypted_OFTType___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (result)
  {
    v2 = *(result + 16);

    return v2();
  }

  return result;
}

- (id)getRemoteCIDForDstIPPort:(tagIPPORT *)a3 callID:(unsigned int)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  if ((TPGetRemoteCIDForDstIPPort() & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:8];
  }
}

- (int)getConnectionDataForCallID:(unsigned int)a3 version:(unsigned __int8)a4 useCompressedData:(BOOL)a5 pConnectionData:(void *)a6 connectDataSizeInBytes:(int *)a7 relayDictionary:(__CFDictionary *)a8 interfaceUpdate:(BOOL)a9 nonCellularCandidateTimeout:(double)a10
{
  v13 = a5;
  v14 = a4;
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  LODWORD(v18) = a9;
  return TPGetConnectionData(self->tpHandle, v14, a3, v13, a6, a7, 1, 0, "static", 0, a8, v18, v19);
}

- (int)detailedErrorCodeForConnectionWithCallID:(unsigned int)a3
{
  if (TPGetConnErrorCode() >= 0)
  {
    return 400;
  }

  else
  {
    return 400;
  }
}

- (int)startConnectionCheckForCallID:(unsigned int)a3 remoteConnectionDataBlob:(id)a4 relayDictionary:(id)a5 iceTimeout:(double)a6 securityIdentity:(__SecIdentity *)a7 skeState:(SKEStateOpaque *)a8 usedRelay:(int *)a9
{
  v14 = *&a3;
  v16 = [a4 length];
  v17 = malloc_type_malloc(v16, 0x100004077774924uLL);
  [a4 getBytes:v17 length:v16];
  LODWORD(a9) = TPStartConnectionCheck(a6, self->tpHandle, v14, v17, v16, 0, a5, a9, a7);
  free(v17);
  return a9;
}

- (BOOL)ipPortStillExists:(tagIPPORT *)a3 requiresWifi:(BOOL)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  TPGetInterfaceStillExists(self->tpHandle, a3, &v5);
  return v5 != 0;
}

- (int)sendUDPPacketReliableEncrypted:(id)a3 localIPPort:(tagIPPORT *)a4 destinationIPPort:(tagIPPORT *)a5 oftType:(int)a6
{
  tpHandle = self->tpHandle;
  v11 = [a3 bytes];
  v12 = [a3 length];

  return TPSendUDPPacketARPL(tpHandle, v11, v12, a4, &a5->iFlags, a6, 1, 1);
}

- (int)sendData:(id)a3 localCallID:(unsigned int)a4 remoteCallID:(unsigned int)a5 encrypted:(BOOL)a6 OFTType:(int)a7
{
  tpHandle = self->tpHandle;
  v13 = [a3 bytes];
  v14 = [a3 length];

  return TPSendUDPDataPacket(tpHandle, v13, v14, a4, a5, a6, a7);
}

@end