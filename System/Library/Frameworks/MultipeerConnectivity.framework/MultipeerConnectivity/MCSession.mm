@interface MCSession
+ (id)stringForMCSessionSendDataMode:(int64_t)mode;
+ (id)stringForSessionState:(int64_t)state;
- (BOOL)isEncryptionPreferenceCompatible:(int64_t)compatible;
- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peerIDs withMode:(MCSessionSendDataMode)mode error:(NSError *)error;
- (MCSession)init;
- (MCSession)initWithPeer:(MCPeerID *)myPeerID;
- (MCSession)initWithPeer:(MCPeerID *)myPeerID securityIdentity:(NSArray *)identity encryptionPreference:(MCEncryptionPreference)encryptionPreference;
- (NSArray)connectedPeers;
- (NSOutputStream)startStreamWithName:(NSString *)streamName toPeer:(MCPeerID *)peerID error:(NSError *)error;
- (NSProgress)sendResourceAtURL:(NSURL *)resourceURL withName:(NSString *)resourceName toPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler;
- (id)description;
- (id)stringForEncryptionPreference:(int64_t)preference;
- (id)syncDetailedDescription;
- (int64_t)connectedInterfacesForPeer:(id)peer;
- (os_state_data_s)syncStateCapture;
- (unint64_t)syncConnectedPeersCount;
- (void)cancelConnectPeer:(MCPeerID *)peerID;
- (void)cancelIncomingStream:(id)stream fromPeer:(id)peer;
- (void)cancelOutgoingStream:(id)stream toPeer:(id)peer;
- (void)closeDirectConnectionsWithPeer:(id)peer;
- (void)connectPeer:(MCPeerID *)peerID withNearbyConnectionData:(NSData *)data;
- (void)dealloc;
- (void)disconnect;
- (void)logSessionInfo;
- (void)nearbyConnectionDataForPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler;
- (void)peerDidDeclineInvitation:(id)invitation;
- (void)setAWDLDisabled:(BOOL)disabled;
- (void)setHeartbeatTimeout:(unint64_t)timeout;
- (void)setICETimeoutForced:(BOOL)forced;
- (void)setPreferNCMOverEthernet:(BOOL)ethernet;
- (void)startConnectionWithIndirectPID:(unsigned int)d;
- (void)syncCancelIncomingStream:(id)stream fromPeer:(id)peer;
- (void)syncCancelOutgoingStream:(id)stream toPeer:(id)peer;
- (void)syncCloseIncomingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error reason:(int)reason shouldTriggerCancelProgress:(BOOL)progress;
- (void)syncCloseOutgoingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error shouldTriggerCancelProgress:(BOOL)progress;
- (void)syncCloseStreamsForPeer:(id)peer;
- (void)syncConnectPeer:(id)peer withConnectionData:(id)data;
- (void)syncGetConnectionDataForPeerState:(id)state completionHandler:(id)handler;
- (void)syncHandleXDataDataPacket:(char *)packet packetSize:(int)size forPeer:(id)peer state:(id)state;
- (void)syncLogConnectedPeers;
- (void)syncLogMaxConnectedPeers;
- (void)syncPeer:(id)peer changeStateTo:(int64_t)to shouldForceCallback:(BOOL)callback;
- (void)syncSendData:(id)data toPeers:(id)peers withDataMode:(int64_t)mode;
- (void)syncSendXDataConnectionBlobPushToPID:(unsigned int)d connectionBlob:(id)blob;
- (void)syncSendXDataPeerIDPushToPID:(unsigned int)d;
- (void)syncSendXDataStreamCloseFromReceiverToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason;
- (void)syncSendXDataStreamCloseFromSenderToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason;
- (void)syncSendXDataStreamOpenResponseToPID:(unsigned int)d withRequestID:(unsigned int)iD streamID:(unsigned int)streamID;
- (void)syncStartStreamWithName:(id)name toPeer:(id)peer mcFD:(int)d isResource:(BOOL)resource;
@end

@implementation MCSession

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  myPeerID = [(MCSession *)self myPeerID];
  securityIdentity = [(MCSession *)self securityIdentity];
  v8 = [(MCSession *)self stringForEncryptionPreference:[(MCSession *)self encryptionPreference]];
  connectedPeers = [(MCSession *)self connectedPeers];
  [(MCSession *)self delegate];
  v10 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p MyPeerID = %@ SecurityIdentity = %@ EncryptionPreference = %@ ConnectedPeers = %@ Delegate = <%@: %p>>", v5, self, myPeerID, securityIdentity, v8, connectedPeers, NSStringFromClass(v10), -[MCSession delegate](self, "delegate")];
}

- (id)stringForEncryptionPreference:(int64_t)preference
{
  if (preference > 2)
  {
    return @"?";
  }

  else
  {
    return *(&off_278B44128 + preference);
  }
}

- (void)syncHandleXDataDataPacket:(char *)packet packetSize:(int)size forPeer:(id)peer state:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = (size - 4);
  if (size <= 4)
  {
    v7 = mcs_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      v8 = "No content.";
      v9 = v7;
      v10 = 2;
LABEL_13:
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, v8, v20, v10);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v12 = bswap32(*packet);
  incomingStreams = [state incomingStreams];
  v14 = [incomingStreams objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", v12)}];
  if (!v14)
  {
    v18 = mcs_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 67109120;
      v20[1] = v12;
      v8 = "Stream %u not found.";
      v9 = v18;
      v10 = 8;
      goto LABEL_13;
    }

LABEL_14:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = v14;
  if ([v14 state] != 2 && objc_msgSend(v15, "state") != 3)
  {
    goto LABEL_14;
  }

  [objc_msgSend(v15 "incomingBuffer")];
  if (![v15 sourceSuspended])
  {
    goto LABEL_14;
  }

  [v15 setSourceSuspended:0];
  source = [v15 source];
  v17 = *MEMORY[0x277D85DE8];

  dispatch_resume(source);
}

- (void)syncSendXDataStreamOpenResponseToPID:(unsigned int)d withRequestID:(unsigned int)iD streamID:(unsigned int)streamID
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v18 = 1024;
    iDCopy = iD;
    v20 = 1024;
    streamIDCopy = streamID;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamOpenResponse to peer[%08X] requestID[%08X] streamID[%08X].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xCuLL, 0x158A16C7uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 201326741;
    *(v10 + 4) = HIBYTE(iD);
    *(v10 + 5) = BYTE2(iD);
    *(v10 + 6) = BYTE1(iD);
    *(v10 + 7) = iD;
    *(v10 + 8) = HIBYTE(streamID);
    *(v10 + 9) = BYTE2(streamID);
    *(v10 + 10) = BYTE1(streamID);
    *(v10 + 11) = streamID;
    *buf = 0;
    if (AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 12, buf, 0, 0xAu, 1, 0))
    {
      v12 = mcs_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 12);
    v13 = mcs_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataStreamCloseFromSenderToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v18 = 1024;
    iDCopy = iD;
    v20 = 1024;
    v21 = reasonCopy;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamCloseFromSender to peer[%08X] streamID[%08X] closeReason[%d].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xAuLL, 0xA8F8C591uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 167772318;
    *(v10 + 4) = HIBYTE(iD);
    *(v10 + 5) = BYTE2(iD);
    *(v10 + 6) = BYTE1(iD);
    *(v10 + 7) = iD;
    *(v10 + 8) = BYTE1(reasonCopy);
    *(v10 + 9) = reasonCopy;
    *buf = 0;
    if (AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 10, buf, 0, 0xAu, 1, 0))
    {
      v12 = mcs_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 10);
    v13 = mcs_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataStreamCloseFromReceiverToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v18 = 1024;
    iDCopy = iD;
    v20 = 1024;
    v21 = reasonCopy;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamCloseFromReceiver to peer[%08X] streamID[%08X] closeReason[%d].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xAuLL, 0x2117244AuLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 167772319;
    *(v10 + 4) = HIBYTE(iD);
    *(v10 + 5) = BYTE2(iD);
    *(v10 + 6) = BYTE1(iD);
    *(v10 + 7) = iD;
    *(v10 + 8) = BYTE1(reasonCopy);
    *(v10 + 9) = reasonCopy;
    *buf = 0;
    if (AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 10, buf, 0, 0xAu, 1, 0))
    {
      v12 = mcs_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 10);
    v13 = mcs_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataPeerIDPushToPID:(unsigned int)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = mcs_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy2 = d;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "XData: pushing own peerID to non-neighbor peer[%08X].", buf, 8u);
  }

  serializedRepresentation = [(MCPeerID *)[(MCSession *)self myPeerID] serializedRepresentation];
  v7 = [serializedRepresentation length] + 4;
  v8 = malloc_type_malloc(v7, 0xCA25E3ECuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = 168;
    v8[2] = HIBYTE(v7);
    v8[3] = v7;
    memcpy(v8 + 4, [serializedRepresentation bytes], objc_msgSend(serializedRepresentation, "length"));
    *buf = 0;
    if (AGPSessionSendTo(self->_agpSession, &dCopy, 1, v9, v7, buf, 0, 0xAu, 1, 0))
    {
      v10 = mcs_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v9);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v7);
    v11 = mcs_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataConnectionBlobPushToPID:(unsigned int)d connectionBlob:(id)blob
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = mcs_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy2 = d;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "XData: pushing connection data to non-neighbor peer[%08X].", buf, 8u);
  }

  v8 = [blob length] + 4;
  v9 = malloc_type_malloc(v8, 0x24C57CE6uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = 169;
    v9[2] = HIBYTE(v8);
    v9[3] = v8;
    memcpy(v9 + 4, [blob bytes], objc_msgSend(blob, "length"));
    *buf = 0;
    if (AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, v8, buf, 0, 0xAu, 1, 0))
    {
      v11 = mcs_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v10);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v8);
    v12 = mcs_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)syncCloseIncomingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error reason:(int)reason shouldTriggerCancelProgress:(BOOL)progress
{
  progressCopy = progress;
  v34 = *MEMORY[0x277D85DE8];
  v15 = mcs_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    streamCopy = stream;
    v28 = 2112;
    peerCopy = peer;
    v30 = 2112;
    stateCopy = state;
    v32 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Close incoming stream[%@] peer[%@] peerState[%@] error[%@].", buf, 0x2Au);
  }

  [stream setState:4];
  if ([stream source])
  {
    if ([stream sourceSuspended])
    {
      dispatch_resume([stream source]);
    }

    dispatch_source_cancel([stream source]);
  }

  if ([stream url])
  {
    if (progressCopy)
    {
      [objc_msgSend(stream "progress")];
    }

    if (!error)
    {
      if (reason == 1)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Resource transfer cancelled." forKey:*MEMORY[0x277CCA450]];
        v19 = v17;
        v20 = 5;
      }

      else
      {
        if (!reason)
        {
          [objc_msgSend(stream "progress")];
          v16 = [stream url];
          error = 0;
LABEL_18:
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __92__MCSession_syncCloseIncomingStream_forPeer_state_error_reason_shouldTriggerCancelProgress___block_invoke;
          block[3] = &unk_278B43D00;
          block[4] = self;
          block[5] = stream;
          block[6] = peer;
          block[7] = v16;
          block[8] = error;
          dispatch_async(callbackQueue, block);
          [objc_msgSend(stream "observer")];
          [stream setObserver:0];
          goto LABEL_19;
        }

        v21 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Resource transfer interrupted." forKey:*MEMORY[0x277CCA450]];
        v19 = v21;
        v20 = 0;
      }

      error = [v19 errorWithDomain:@"MCSession" code:v20 userInfo:v18];
    }

    v16 = 0;
    goto LABEL_18;
  }

LABEL_19:
  incomingStreams = [state incomingStreams];
  [incomingStreams removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(stream, "streamID"))}];
  [objc_msgSend(state "incomingStreams")];
  v24 = *MEMORY[0x277D85DE8];
}

void __92__MCSession_syncCloseIncomingStream_forPeer_state_error_reason_shouldTriggerCancelProgress___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = 1;
  [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v8 == 1)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) privateDelegate];
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 64);
    *buf = 138413314;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 1024;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Resource from [%@]. Interrupted callback pd(%@) d(%@) prop(%d) error[%@].", buf, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncCloseOutgoingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error shouldTriggerCancelProgress:(BOOL)progress
{
  progressCopy = progress;
  [stream setState:{4, peer}];
  if ([stream url])
  {
    if (progressCopy)
    {
      [objc_msgSend(stream "progress")];
    }

    if ([stream completionHandler])
    {
      completionHandler = [stream completionHandler];
      [stream setCompletionHandler:0];
      callbackQueue = self->_callbackQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__MCSession_syncCloseOutgoingStream_forPeer_state_error_shouldTriggerCancelProgress___block_invoke;
      v15[3] = &unk_278B43D28;
      v15[4] = error;
      v15[5] = completionHandler;
      dispatch_async(callbackQueue, v15);
    }

    if ([stream urlDownloader])
    {
      if ([objc_msgSend(objc_msgSend(stream "urlDownloader")] != 3)
      {
        [objc_msgSend(objc_msgSend(stream "urlDownloader")];
      }

      [stream setUrlDownloader:0];
    }

    [objc_msgSend(stream "observer")];
    [stream setObserver:0];
  }

  else if ([stream source])
  {
    if ([stream sourceSuspended])
    {
      dispatch_resume([stream source]);
    }

    dispatch_source_cancel([stream source]);
  }

  outgoingStreams = [state outgoingStreams];
  [outgoingStreams removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(stream, "streamID"))}];
  [objc_msgSend(state "outgoingStreams")];
}

void __85__MCSession_syncCloseOutgoingStream_forPeer_state_error_shouldTriggerCancelProgress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 40);
}

- (void)syncCloseStreamsForPeer:(id)peer
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_msgSend(v5 "incomingStreams")];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer no longer connected.", *MEMORY[0x277CCA450])}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [objc_msgSend(v6 "incomingStreams")];
            if (v14)
            {
              [(MCSession *)self syncCloseIncomingStream:v14 forPeer:peer state:v6 error:v8 reason:2 shouldTriggerCancelProgress:1];
            }
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    v15 = [objc_msgSend(v6 "outgoingStreams")];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [objc_msgSend(v6 "incomingStreams")];
            if (v21)
            {
              [(MCSession *)self syncCloseOutgoingStream:v21 forPeer:peer state:v6 error:v8 shouldTriggerCancelProgress:1];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v22 = mcs_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      displayName = [peer displayName];
      _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "No peerState object for peer [%@].", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)syncDetailedDescription
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  NSAppendPrintF();
  NSAppendPrintF();
  NSAppendPrintF();
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v17 = sessionID;
  NSAppendPrintF();
  displayNameAndPID = [(MCPeerID *)[(MCSession *)self myPeerID] displayNameAndPID];
  NSAppendPrintF();
  v19 = [(MCSession *)self stringForEncryptionPreference:[(MCSession *)self encryptionPreference]];
  NSAppendPrintF();
  securityIdentity = [(MCSession *)self securityIdentity];
  v5 = "yes";
  if (!securityIdentity)
  {
    v5 = "no";
  }

  v20 = v5;
  NSAppendPrintF();
  v21 = [(NSMutableDictionary *)[(MCSession *)self peerStates] count];
  NSAppendPrintF();
  syncConnectedPeersCount = [(MCSession *)self syncConnectedPeersCount];
  NSAppendPrintF();
  maxPeers = [(MCSession *)self maxPeers];
  NSAppendPrintF();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  peerStates = [(MCSession *)self peerStates];
  v7 = [(NSMutableDictionary *)peerStates countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(peerStates);
        }

        peerStates2 = [-[NSMutableDictionary objectForKey:](-[MCSession peerStates](self peerStates];
        NSAppendPrintF();
      }

      v8 = [(NSMutableDictionary *)peerStates countByEnumeratingWithState:&v25 objects:v30 count:16, peerStates2];
    }

    while (v8);
  }

  [(MCSession *)self gckSession];
  v11 = GCKSessionCopyDetailedDescription();
  if (v11)
  {
    v12 = v11;
    NSAppendPrintF();
    peerStates2 = v12;
    NSAppendPrintF();
    CFRelease(v12);
  }

  [(MCSession *)self agpSession];
  v13 = AGPSessionCopyDetailedDescription();
  if (v13)
  {
    v14 = v13;
    NSAppendPrintF();
    NSAppendPrintF();
    CFRelease(v14);
  }

  result = v29;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (os_state_data_s)syncStateCapture
{
  syncDetailedDescription = [(MCSession *)self syncDetailedDescription];
  if (!syncDetailedDescription)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:syncDetailedDescription format:200 options:0 error:0];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 length];
  v6 = malloc_type_calloc(1uLL, v5 + 200, 0x1000040BEF03554uLL);
  v7 = v6;
  if (v6)
  {
    v6->var0 = 1;
    v6->var1.var1 = v5;
    __strlcpy_chk();
    memcpy(v7->var4, [v4 bytes], v5);
  }

  return v7;
}

- (void)startConnectionWithIndirectPID:(unsigned int)d
{
  v11 = 0;
  v10 = 1350;
  if ((GCKSessionPrepareConnection(self->_gckSession, d) & 0x80000000) != 0)
  {
    v7 = mcs_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MCSession startConnectionWithIndirectPID:];
    }
  }

  else
  {
    v5 = [MCSessionPeerConnectionData connectionDataSegmentWithEncryptionPreference:[(MCSession *)self encryptionPreference] identitySet:[(MCSession *)self securityIdentity]!= 0 gckSessionConnectionDataBytes:v11 gckSessionConnectionDataLength:v10];
    free(v11);
    syncQueue = self->_syncQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__MCSession_startConnectionWithIndirectPID___block_invoke;
    v8[3] = &unk_278B43D50;
    dCopy = d;
    v8[4] = self;
    v8[5] = v5;
    dispatch_async(syncQueue, v8);
  }
}

- (void)syncCancelIncomingStream:(id)stream fromPeer:(id)peer
{
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource transfer cancelled.", *MEMORY[0x277CCA450])}];
  v8 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  -[MCSession syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:](self, "syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:", [peer pid], objc_msgSend(stream, "streamID"), 1);

  [(MCSession *)self syncCloseIncomingStream:stream forPeer:peer state:v8 error:v7 reason:1 shouldTriggerCancelProgress:0];
}

- (void)cancelIncomingStream:(id)stream fromPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MCSession_cancelIncomingStream_fromPeer___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = stream;
  block[6] = peer;
  dispatch_async(syncQueue, block);
}

- (void)syncCancelOutgoingStream:(id)stream toPeer:(id)peer
{
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource transfer cancelled.", *MEMORY[0x277CCA450])}];
  v8 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  -[MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:](self, "syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:", [peer pid], objc_msgSend(stream, "streamID"), 1);

  [(MCSession *)self syncCloseOutgoingStream:stream forPeer:peer state:v8 error:v7 shouldTriggerCancelProgress:0];
}

- (void)cancelOutgoingStream:(id)stream toPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MCSession_cancelOutgoingStream_toPeer___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = stream;
  block[6] = peer;
  dispatch_async(syncQueue, block);
}

- (unint64_t)syncConnectedPeersCount
{
  v15 = *MEMORY[0x277D85DE8];
  allValues = [(NSMutableDictionary *)self->_peerStates allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 2)
        {
          ++v5;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)syncPeer:(id)peer changeStateTo:(int64_t)to shouldForceCallback:(BOOL)callback
{
  callbackCopy = callback;
  v26 = *MEMORY[0x277D85DE8];
  v9 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  if (v9)
  {
    v10 = v9;
    state = [v9 state];
    v12 = mcs_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      displayName = [peer displayName];
      v22 = 2112;
      v23 = [MCSession stringForSessionState:state];
      v24 = 2112;
      v25 = [MCSession stringForSessionState:to];
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "PeerID [%@] change state from [%@] to [%@].", buf, 0x20u);
    }

    if (state != to)
    {
      goto LABEL_8;
    }

    v13 = mcs_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MCSession stringForSessionState:to];
      *buf = 138412290;
      displayName = v14;
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Peer already in state [%@]", buf, 0xCu);
    }

    if (callbackCopy)
    {
LABEL_8:
      if (to)
      {
        [v10 setState:to];
      }

      else
      {
        peerCopy = peer;
        -[NSMutableDictionary removeObjectForKey:](self->_peerIDMap, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(peer, "pid")}]);
        [(NSMutableDictionary *)self->_peerStates removeObjectForKey:peer];
      }

LABEL_15:
      callbackQueue = self->_callbackQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __56__MCSession_syncPeer_changeStateTo_shouldForceCallback___block_invoke;
      v19[3] = &unk_278B43D78;
      v19[4] = self;
      v19[5] = peer;
      v19[6] = to;
      v19[7] = state;
      dispatch_async(callbackQueue, v19);
      if (to)
      {
        if (to == 2)
        {
          [(MCSession *)self setMaxPeers:[(MCSession *)self maxPeers]+ 1];
          [(MCSession *)self syncLogConnectedPeers];
        }
      }

      else if (![(MCSession *)self syncConnectedPeersCount])
      {
        [(MCSession *)self syncLogMaxConnectedPeers];
        [(MCSession *)self setMaxPeers:0];
      }
    }
  }

  else
  {
    if (callbackCopy)
    {
      state = 0;
      goto LABEL_15;
    }

    v15 = mcs_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      displayName = [peer displayName];
      v22 = 2112;
      v23 = [MCSession stringForSessionState:to];
      _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "No peerState for peerID [%@], newState [%@]. Will not callback.", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__MCSession_syncPeer_changeStateTo_shouldForceCallback___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = 1;
  [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v9 == 1)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = [MCSession stringForSessionState:*(a1 + 56)];
    v5 = [MCSession stringForSessionState:*(a1 + 48)];
    v6 = [*(a1 + 32) privateDelegate];
    v7 = [*(a1 + 32) delegate];
    *buf = 138413570;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Peer [%@] changed state from [%@] to [%@]; pd(%@) d(%@) prop(%d).", buf, 0x3Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_406(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = 1;
  [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v8 == 1)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) length];
    v5 = [*(a1 + 32) privateDelegate];
    v6 = [*(a1 + 32) delegate];
    *buf = 138413314;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Incoming packet from [%@] (%lu) - done callback pd(%@) d(%@) prop(%d).", buf, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_422(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = 1;
  [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v7 == 1)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) privateDelegate];
    v5 = [*(a1 + 32) delegate];
    *buf = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Did start receiving resource for peer [%@] dispatched. Callback pd(%@) d(%@) prop(%d).", buf, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_423(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = 1;
  [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v8 == 1)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = [*(a1 + 32) privateDelegate];
    v6 = [*(a1 + 32) delegate];
    *buf = 138413314;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Did receive stream for peer [%@] with name [%@] dispatched. Callback pd(%@) d(%@) prop(%d).", buf, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_424(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 3)
  {
    v2 = write([*(a1 + 32) fd], objc_msgSend(objc_msgSend(*(a1 + 32), "incomingBuffer"), "bytes"), objc_msgSend(objc_msgSend(*(a1 + 32), "incomingBuffer"), "length"));
    if (v2)
    {
      if (v2 < 0)
      {
        if (*__error() == 35 || *__error() == 4 || *__error() == 36)
        {
          dispatch_suspend([*(a1 + 32) source]);
          [*(a1 + 32) setSourceSuspended:1];
          v15 = dispatch_time(0, 1000000000);
          v16 = *(*(a1 + 40) + 96);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2;
          block[3] = &unk_278B43DF0;
          block[4] = *(a1 + 32);
          dispatch_after(v15, v16, block);
        }

        else
        {
          v30 = mcs_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *__error();
            v32 = [*(a1 + 32) name];
            v33 = [*(a1 + 32) streamID];
            *buf = 67109634;
            *v37 = v31;
            *&v37[4] = 2112;
            *&v37[6] = v32;
            *&v37[14] = 1024;
            *&v37[16] = v33;
            _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "Incoming stream: error(%d) stream[%@] %08X.", buf, 0x18u);
          }

          [*(a1 + 32) setState:3];
          dispatch_source_cancel([*(a1 + 32) source]);
          [*(a1 + 40) syncSendXDataStreamCloseFromReceiverToPID:*(a1 + 64) streamID:objc_msgSend(*(a1 + 32) closeReason:{"streamID"), 2}];
        }
      }

      else
      {
        v3 = v2 & 0x7FFFFFFF;
        [objc_msgSend(*(a1 + 32) "incomingBuffer")];
        if (![objc_msgSend(*(a1 + 32) "incomingBuffer")])
        {
          if ([*(a1 + 32) state] == 3)
          {
            v5 = *(a1 + 32);
            v4 = *(a1 + 40);
            v6 = *(a1 + 48);
            v7 = *(a1 + 56);
            v8 = *MEMORY[0x277D85DE8];

            [v4 syncCloseIncomingStream:v5 forPeer:v6 state:v7 error:0 reason:0 shouldTriggerCancelProgress:0];
            return;
          }

          dispatch_suspend([*(a1 + 32) source]);
          [*(a1 + 32) setSourceSuspended:1];
        }

        if ([*(a1 + 32) progress])
        {
          v17 = [*(a1 + 32) progressUnbounded];
          v18 = [*(a1 + 32) progress];
          v19 = v18;
          if (v17)
          {
            v20 = [v18 totalUnitCount];
            v21 = v20 - [objc_msgSend(*(a1 + 32) "progress")];
            v22 = [*(a1 + 32) progress];
            v23 = ([v22 completedUnitCount] + v21 * 0.05);
            v24 = v22;
          }

          else
          {
            v23 = [v18 completedUnitCount] + v3;
            v24 = v19;
          }

          [v24 setCompletedUnitCount:v23];
          v25 = mcs_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [objc_msgSend(*(a1 + 32) "progress")];
            v27 = [objc_msgSend(*(a1 + 32) "progress")];
            v28 = [objc_msgSend(*(a1 + 32) "progress")];
            v29 = [objc_msgSend(*(a1 + 32) "progress")];
            *buf = 134218496;
            *v37 = v26;
            *&v37[8] = 2048;
            *&v37[10] = v27;
            *&v37[18] = 2048;
            v38 = v28 / v29;
            _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "Incoming stream - progress update (%lld / %lld = %.3lf).", buf, 0x20u);
          }
        }
      }

      v34 = *MEMORY[0x277D85DE8];
      return;
    }

    [*(a1 + 32) setState:3];
    dispatch_source_cancel([*(a1 + 32) source]);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) streamID];
    v12 = *MEMORY[0x277D85DE8];

    [v10 syncSendXDataStreamCloseFromReceiverToPID:v9 streamID:v11 closeReason:1];
  }

  else
  {
    dispatch_suspend([*(a1 + 32) source]);
    v13 = *(a1 + 32);
    v14 = *MEMORY[0x277D85DE8];

    [v13 setSourceSuspended:1];
  }
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    result = [*(a1 + 32) sourceSuspended];
    if (result)
    {
      dispatch_resume([*(a1 + 32) source]);
      v3 = *(a1 + 32);

      return [v3 setSourceSuspended:0];
    }
  }

  return result;
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_425(uint64_t a1)
{
  close([*(a1 + 32) fd]);
  dispatch_release(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 setSource:0];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_suspend([*(a1 + 32) source]);
  [*(a1 + 32) setSourceSuspended:1];
  if ([*(a1 + 32) state] == 2)
  {
    v2 = (v24 - ((AGPSessionMaximumSegmentSize(1) + 15) & 0x1FFFFFFF0));
    v3 = [*(a1 + 32) fd];
    v4 = AGPSessionMaximumSegmentSize(1);
    v5 = read(v3, v2 + 1, v4 - 4);
    if (v5)
    {
      v6 = mcs_log();
      v7 = v6;
      if (v5 < 0)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_2();
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 32) name];
          v9 = v5 + 4;
          *buf = 138412802;
          v30 = v8;
          v31 = 1024;
          v32 = v5;
          v33 = 1024;
          v34 = v5 + 4;
          _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing stream [%@]: read %d bytes to send (total %d).", buf, 0x18u);
        }

        else
        {
          v9 = v5 + 4;
        }

        v16 = [*(a1 + 32) streamID];
        *v2 = bswap32(v16);
        *buf = 0;
        v17 = [objc_msgSend(*(a1 + 32) "peerID")];
        v27 = v16;
        v28 = v17;
        v18 = *(a1 + 40);
        v19 = *(v18 + 80);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_427;
        v24[3] = &unk_278B43E40;
        v25 = v17;
        v26 = v5;
        v20 = *(a1 + 32);
        v24[4] = v18;
        v24[5] = v20;
        if (AGPSessionSendTo(v19, &v28, 1, v2, v9, buf, 0, 0xAu, 1, v24))
        {
          v21 = mcs_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_1(buf);
          }
        }

        if ([*(a1 + 32) progress])
        {
          v22 = [*(a1 + 32) progress];
          [v22 setCompletedUnitCount:{objc_msgSend(v22, "completedUnitCount") + (v5 & 0x7FFFFFFF)}];
        }
      }
    }

    else
    {
      [*(a1 + 32) setState:3];
      dispatch_resume([*(a1 + 32) source]);
      dispatch_source_cancel([*(a1 + 32) source]);
      [*(a1 + 40) syncSendXDataStreamCloseFromSenderToPID:*(a1 + 48) streamID:*(a1 + 52) closeReason:0];
      v13 = mcs_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) name];
        v15 = [*(a1 + 32) streamID];
        *buf = 138412546;
        v30 = v14;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Streaming: closing stream[%@] %08X.", buf, 0x12u);
      }
    }
  }

  else
  {
    v10 = mcs_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) name];
      v12 = [*(a1 + 32) streamID];
      *buf = 138412546;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Streaming: stream not open for sending [%@] %08X.", buf, 0x12u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_427(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v6 = a1[3].i64[0];
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = a1[2].i64[0];
  v4[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_428;
  v4[3] = &unk_278B43E40;
  v3 = *(v2 + 96);
  v5 = v1;
  v7 = a1[3].i32[2];
  dispatch_async(v3, v4);
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_428(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = mcs_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 52) + 4;
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) state];
    v10[0] = 67109890;
    v10[1] = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing stream source to participant [%08X]: segment (%d) put on wire for stream [%@] state [%d].", v10, 0x1Eu);
  }

  if ([*(a1 + 32) progress] && (v7 = objc_msgSend(objc_msgSend(*(a1 + 32), "progress"), "completedUnitCount"), v7 == objc_msgSend(objc_msgSend(*(a1 + 32), "progress"), "totalUnitCount")))
  {
    [*(a1 + 32) setState:3];
    dispatch_resume([*(a1 + 32) source]);
    dispatch_source_cancel([*(a1 + 32) source]);
    result = [*(a1 + 40) syncSendXDataStreamCloseFromSenderToPID:*(a1 + 48) streamID:*(a1 + 56) closeReason:0];
  }

  else
  {
    result = [*(a1 + 32) source];
    if (result)
    {
      result = [*(a1 + 32) state];
      if (result == 2)
      {
        dispatch_resume([*(a1 + 32) source]);
        result = [*(a1 + 32) setSourceSuspended:0];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_429(uint64_t a1)
{
  close([*(a1 + 32) fd]);
  dispatch_release(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 setSource:0];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_431(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 > [*(*(a1 + 32) + 48) pid])
  {
    [*(a1 + 32) startConnectionWithIndirectPID:*(a1 + 48)];
  }

  v3 = *(*(a1 + 32) + 72);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) hasIdentitySet];
  v6 = *(a1 + 52);
  [objc_msgSend(*(a1 + 40) "gckSessionConnectionData")];
  [objc_msgSend(*(a1 + 40) "gckSessionConnectionData")];
  v7 = GCKSessionEstablishConnection(v3, v4, v5, v6);
  if (v7 < 0)
  {
    v8 = v7;
    v9 = mcs_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Mesh establishment failed (%08lX).", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_432(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_433;
  v10[3] = &unk_278B43EB8;
  v10[4] = *(a1 + 40);
  v11 = a2;
  dispatch_async(v4, v10);
  v5 = mcs_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 48) displayName];
    v7 = "NOT accepted";
    if (a2)
    {
      v7 = "accepted";
    }

    *buf = 138412546;
    v13 = v6;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Certificate from peer [%@] is %s.", buf, 0x16u);
  }

  result = GCKSessionCertificateDecision(*(*(a1 + 32) + 72), [*(a1 + 48) pid], a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_433(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) setCertificateDecision:v1];
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_437(uint64_t a1)
{
  v3 = 1;
  [*(a1 + 32) privateDelegate];
  if (objc_opt_respondsToSelector() & 1) == 0 || (result = [objc_msgSend(*(a1 + 32) "privateDelegate")], (v3))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      return [objc_msgSend(*(a1 + 32) "delegate")];
    }

    else
    {
      return (*(*(a1 + 56) + 16))();
    }
  }

  return result;
}

- (MCSession)init
{
  v3.receiver = self;
  v3.super_class = MCSession;
  [(MCSession *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCSession)initWithPeer:(MCPeerID *)myPeerID
{
  v5 = dyld_get_program_sdk_version() >> 16 > 8;

  return [(MCSession *)self initWithPeer:myPeerID securityIdentity:0 encryptionPreference:v5];
}

- (MCSession)initWithPeer:(MCPeerID *)myPeerID securityIdentity:(NSArray *)identity encryptionPreference:(MCEncryptionPreference)encryptionPreference
{
  v45 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = MCSession;
  v8 = [(MCSession *)&v32 init];
  if (!v8)
  {
    goto LABEL_22;
  }

  if (!myPeerID)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    [v9 raise:*MEMORY[0x277CBE660] format:{@"A nil %@ object passed to %@", v11, NSStringFromClass(v12)}];
  }

  v8->_gckSession = 0xFFFFFFFFLL;
  p_gckSession = &v8->_gckSession;
  v8->_agpSession = 0xFFFFFFFFLL;
  v8->_sessionID = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  v14 = [(MCPeerID *)myPeerID pid];
  v8->_gckPID = v14;
  if (GCKSessionCreate(v14, identity, GCKEventListenerForMCSession, v8, v8->_sessionID, &v8->_gckSession))
  {
    v15 = mcs_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

LABEL_13:
    if (v8->_agpSession != 0xFFFFFFFFLL)
    {
      AGPSessionRelease();
    }

    if (*p_gckSession != 0xFFFFFFFFLL)
    {
      GCKSessionRelease();
    }

    syncQueue = v8->_syncQueue;
    if (syncQueue)
    {
      dispatch_release(syncQueue);
    }

    callbackQueue = v8->_callbackQueue;
    if (callbackQueue)
    {
      dispatch_release(callbackQueue);
    }

    v8 = 0;
    goto LABEL_22;
  }

  v8->_syncQueue = dispatch_queue_create("com.apple.MCSession.syncQueue", 0);
  v8->_callbackQueue = dispatch_queue_create("com.apple.MCSession.callbackQueue", 0);
  gckSession = v8->_gckSession;
  gckPID = v8->_gckPID;
  if (AGPSessionCreate())
  {
    v18 = mcs_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

    goto LABEL_13;
  }

  v19 = *p_gckSession;
  if (GCKSessionStartEventCallbacks())
  {
    v20 = mcs_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

    goto LABEL_13;
  }

  v8->_myPeerID = [(MCPeerID *)myPeerID copy];
  v8->_securityIdentity = [(NSArray *)identity copy];
  v8->_encryptionPreference = encryptionPreference;
  v8->_peerIDMap = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8->_peerStates = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8->_connectionPendingPeerEvents = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = mcs_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = v8->_sessionID;
    displayNameAndPID = [(MCPeerID *)v8->_myPeerID displayNameAndPID];
    if (v8->_securityIdentity)
    {
      v28 = "yes";
    }

    else
    {
      v28 = "no";
    }

    v29 = [(MCSession *)v8 stringForEncryptionPreference:v8->_encryptionPreference];
    *buf = 136316418;
    v34 = "Oct 10 2025";
    v35 = 2080;
    v36 = "23:44:31";
    v37 = 2112;
    v38 = sessionID;
    v39 = 2112;
    v40 = displayNameAndPID;
    v41 = 2080;
    v42 = v28;
    v43 = 2112;
    v44 = v29;
    _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "MCSession init done! [MCS: %s - %s, sessionID=%@ peerID=%@ securityIdentity=%s encryptionPreference=%@].", buf, 0x3Eu);
  }

  objc_initWeak(buf, v8);
  v30 = v8->_syncQueue;
  objc_copyWeak(&v31, buf);
  v8->_stateHandle = os_state_add_handler();
  [(MCSession *)v8 logSessionInfo];
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __64__MCSession_initWithPeer_securityIdentity_encryptionPreference___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak syncStateCapture];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_agpSession != 0xFFFFFFFFLL)
  {
    AGPSessionRelease();
  }

  if (self->_gckSession != 0xFFFFFFFFLL)
  {
    GCKSessionRelease();
  }

  allValues = [(NSMutableDictionary *)self->_peerStates allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        -[MCSession syncCloseStreamsForPeer:](self, "syncCloseStreamsForPeer:", [*(*(&v10 + 1) + 8 * i) peerID]);
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_privateDelegate, 0);
  v9.receiver = self;
  v9.super_class = MCSession;
  [(MCSession *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncGetConnectionDataForPeerState:(id)state completionHandler:(id)handler
{
  v13 = 0;
  v12 = 1350;
  if ((GCKSessionPrepareConnection(self->_gckSession, [objc_msgSend(state "peerID")]) & 0x80000000) != 0)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to create connection data.", *MEMORY[0x277CCA450])}];
    v7 = 0;
    v9 = 0;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = [MCSessionPeerConnectionData connectionDataSegmentWithEncryptionPreference:[(MCSession *)self encryptionPreference] identitySet:[(MCSession *)self securityIdentity]!= 0 gckSessionConnectionDataBytes:v13 gckSessionConnectionDataLength:v12];
    free(v13);
  }

  [state setNearbyConnectionData:v7];
  v8 = 0;
  v9 = v7;
LABEL_5:
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MCSession_syncGetConnectionDataForPeerState_completionHandler___block_invoke;
  block[3] = &unk_278B43F58;
  block[5] = v8;
  block[6] = handler;
  block[4] = v9;
  dispatch_async(callbackQueue, block);
}

- (void)nearbyConnectionDataForPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler
{
  v6 = [completionHandler copy];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke;
  block[3] = &unk_278B43F80;
  block[4] = self;
  block[5] = peerID;
  block[6] = v6;
  dispatch_async(syncQueue, block);
}

void __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if ([(MCSessionPeerState *)v2 nearbyConnectionData])
    {
      v4 = *(*(a1 + 32) + 120);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke_2;
      v8[3] = &unk_278B43D28;
      v5 = *(a1 + 48);
      v8[4] = v3;
      v8[5] = v5;
      dispatch_async(v4, v8);
      return;
    }
  }

  else
  {
    v3 = [[MCSessionPeerState alloc] initWithPeer:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 88) setObject:*(a1 + 40) forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(*(a1 + 40), "pid"))}];
  [*(*(a1 + 32) + 104) setObject:v3 forKey:*(a1 + 40)];
  [*(a1 + 32) syncPeer:*(a1 + 40) changeStateTo:1 shouldForceCallback:0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  [v6 syncGetConnectionDataForPeerState:v3 completionHandler:v7];
}

uint64_t __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) nearbyConnectionData];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (BOOL)isEncryptionPreferenceCompatible:(int64_t)compatible
{
  encryptionPreference = [(MCSession *)self encryptionPreference];
  if (compatible == 1 && encryptionPreference == MCEncryptionNone)
  {
    return 0;
  }

  encryptionPreference2 = [(MCSession *)self encryptionPreference];
  return compatible != 2 || encryptionPreference2 != MCEncryptionRequired;
}

- (void)syncConnectPeer:(id)peer withConnectionData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  v8 = v7;
  if (v7)
  {
    if ([v7 state] != 1)
    {
      v9 = mcs_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v10 = "Peer needs to be in Connecting state to connect.";
        goto LABEL_12;
      }

LABEL_25:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }

    if ([v8 connectPeerCalled])
    {
      v9 = mcs_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v10 = "ConnectPeer already called.";
LABEL_12:
        _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, v10, &v22, 2u);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  v11 = [[MCSessionPeerConnectionData alloc] initWithConnectionDataBlob:data];
  if (!v11)
  {
    v14 = mcs_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncConnectPeer:peer withConnectionData:?];
    }

    goto LABEL_24;
  }

  v12 = v11;
  if (![(MCSession *)self isEncryptionPreferenceCompatible:[(MCSessionPeerConnectionData *)v11 encryptionPreference]])
  {
    v15 = mcs_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      displayName = [peer displayName];
      v24 = 2112;
      v25 = [(MCSession *)self stringForEncryptionPreference:[(MCSessionPeerConnectionData *)v12 encryptionPreference]];
      _os_log_error_impl(&dword_239FB7000, v15, OS_LOG_TYPE_ERROR, "Peer [%@] has incompatible encryption preference [%@].", &v22, 0x16u);
    }

    goto LABEL_24;
  }

  v13 = [(MCSession *)self encryptionPreference]!= MCEncryptionNone && [(MCSessionPeerConnectionData *)v12 encryptionPreference]!= 2;
  gckSession = self->_gckSession;
  v17 = [peer pid];
  hasIdentitySet = [(MCSessionPeerConnectionData *)v12 hasIdentitySet];
  [(NSData *)[(MCSessionPeerConnectionData *)v12 gckSessionConnectionData] bytes];
  [(NSData *)[(MCSessionPeerConnectionData *)v12 gckSessionConnectionData] length];
  if ((GCKSessionEstablishConnection(gckSession, v17, hasIdentitySet, v13) & 0x80000000) != 0)
  {
    v20 = mcs_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncConnectPeer:withConnectionData:];
    }

LABEL_24:
    [(MCSession *)self syncPeer:peer changeStateTo:0 shouldForceCallback:0];
    goto LABEL_25;
  }

  v19 = *MEMORY[0x277D85DE8];

  [v8 setConnectPeerCalled:1];
}

- (void)connectPeer:(MCPeerID *)peerID withNearbyConnectionData:(NSData *)data
{
  v6 = [(NSData *)data copy];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MCSession_connectPeer_withNearbyConnectionData___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = peerID;
  block[6] = v6;
  dispatch_async(syncQueue, block);
}

- (void)cancelConnectPeer:(MCPeerID *)peerID
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__MCSession_cancelConnectPeer___block_invoke;
  v4[3] = &unk_278B43C60;
  v4[4] = self;
  v4[5] = peerID;
  dispatch_async(syncQueue, v4);
}

uint64_t __31__MCSession_cancelConnectPeer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [*(a1 + 40) pid];

  return GCKSessionDisposeConnection(v1, v2);
}

- (void)syncSendData:(id)data toPeers:(id)peers withDataMode:(int64_t)mode
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  modeCopy = mode;
  v7 = mode == 1;
  v25 = 0u;
  v26 = 0u;
  v8 = [peers countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(peers);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v22 = 0;
        v21 = [v12 pid];
        v13 = mcs_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [data length];
          *buf = 134218496;
          v28 = v14;
          v29 = 1024;
          v30 = v21;
          v31 = 1024;
          v32 = modeCopy;
          _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Sending %ld bytes of data to participant %u, mode=%d.", buf, 0x18u);
        }

        v15 = AGPSessionSendTo(self->_agpSession, &v21, 1, [data bytes], objc_msgSend(data, "length"), &v22, v7, 5u, 1, 0);
        if (v15)
        {
          v16 = v15;
          v17 = mcs_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v28) = v16;
            _os_log_error_impl(&dword_239FB7000, v17, OS_LOG_TYPE_ERROR, "AGPSendTo failed with status=%08X.", buf, 8u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [peers countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peerIDs withMode:(MCSessionSendDataMode)mode error:(NSError *)error
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = [(NSData *)data copy];
  if (!v10)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid data parameter.", *MEMORY[0x277CCA450])}];
    }

    v19 = mcs_log();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *v28 = 0;
    v20 = "Failed to send data because data is nil.";
    goto LABEL_20;
  }

  v11 = v10;
  if (![(NSArray *)peerIDs count])
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid peerIDs parameter.", *MEMORY[0x277CCA450])}];
    }

    v19 = mcs_log();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *v28 = 0;
    v20 = "Failed to send data because no recipients are specified.";
LABEL_20:
    _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, v20, v28, 2u);
LABEL_21:
    v21 = 0;
    goto LABEL_24;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *v28 = 0;
  v29 = v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MCSession_sendData_toPeers_withMode_error___block_invoke;
  block[3] = &unk_278B43FA8;
  block[4] = peerIDs;
  block[5] = self;
  block[6] = &v34;
  block[7] = v28;
  dispatch_sync(syncQueue, block);
  v13 = *(v35 + 24);
  if (v13 == 1)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCACA8];
      if ([*(v29 + 5) count] <= 1)
      {
        v15 = @"Peers";
      }

      else
      {
        v15 = @"Peer";
      }

      v16 = [v14 stringWithFormat:@"%@ %@ not connected", v15, objc_msgSend(objc_msgSend(*(v29 + 5), "valueForKey:", @"displayName", "componentsJoinedByString:", @", ")];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v16, *MEMORY[0x277CCA450])}];
    }

    v17 = mcs_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [objc_msgSend(*(v29 + 5) valueForKey:{@"displayName", "componentsJoinedByString:", @", "}];
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Failed to send data because recipients %@ are not connected.", buf, 0xCu);
    }
  }

  else
  {
    copyDeep_MC = [(NSArray *)peerIDs copyDeep_MC];
    v23 = self->_syncQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __45__MCSession_sendData_toPeers_withMode_error___block_invoke_479;
    v26[3] = &unk_278B43FD0;
    v26[4] = self;
    v26[5] = v11;
    v26[6] = copyDeep_MC;
    v26[7] = mode;
    dispatch_async(v23, v26);
  }

  v21 = v13 ^ 1;
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v34, 8);
LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __45__MCSession_sendData_toPeers_withMode_error___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([objc_msgSend(*(a1[5] + 104) objectForKey:{*(*(&v8 + 1) + 8 * v6)), "state"}] != 2)
        {
          *(*(a1[6] + 8) + 24) = 1;
          [*(*(a1[7] + 8) + 40) addObject:a1[4]];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)connectedPeers
{
  array = [MEMORY[0x277CBEB18] array];
  syncQueue = self->_syncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__MCSession_connectedPeers__block_invoke;
  v6[3] = &unk_278B43C60;
  v6[4] = self;
  v6[5] = array;
  dispatch_sync(syncQueue, v6);
  return array;
}

uint64_t __27__MCSession_connectedPeers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 state] == 2)
        {
          [*(a1 + 40) addObject:{objc_msgSend(v7, "peerID")}];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSProgress)sendResourceAtURL:(NSURL *)resourceURL withName:(NSString *)resourceName toPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v11 = objc_alloc_init(MCSessionStream);
  -[MCSessionStream setProgress:](v11, "setProgress:", [MEMORY[0x277CCAC48] progressWithTotalUnitCount:0]);
  [(MCSessionStream *)v11 setUrl:resourceURL];
  [(MCSessionStream *)v11 setName:resourceName];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke;
  block[3] = &unk_278B43FF8;
  block[4] = self;
  block[5] = peerID;
  block[8] = &v40;
  block[9] = &v36;
  block[6] = resourceName;
  block[7] = v11;
  dispatch_sync(syncQueue, block);
  if (*(v41 + 24) == 1)
  {
    v13 = mcs_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
    }

    callbackQueue = self->_callbackQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_480;
    v34[3] = &unk_278B44020;
    v34[4] = completionHandler;
    dispatch_async(callbackQueue, v34);
    v15 = self->_syncQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2;
    v33[3] = &unk_278B43C88;
    v33[4] = self;
    v33[5] = peerID;
    v33[6] = resourceName;
    v16 = v33;
  }

  else
  {
    if (*(v37 + 24) != 1)
    {
      if ([(NSURL *)resourceURL isFileURL])
      {
        v20 = [(NSString *)resourceName copy];
        [(MCSessionStream *)v11 setCompletionHandler:completionHandler];
        v21 = self->_syncQueue;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3;
        v30[3] = &unk_278B43D00;
        v30[4] = resourceURL;
        v30[5] = self;
        v30[6] = v11;
        v30[7] = v20;
        v30[8] = peerID;
        dispatch_async(v21, v30);

        progress = [(MCSessionStream *)v11 progress];
      }

      else
      {
        if (![(NSString *)[(NSURL *)resourceURL scheme] hasPrefix:@"http"]&& ![(NSString *)[(NSURL *)resourceURL scheme] hasPrefix:@"https"])
        {
          v25 = mcs_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
          }

          v26 = self->_callbackQueue;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_506;
          v28[3] = &unk_278B44020;
          v28[4] = completionHandler;
          dispatch_async(v26, v28);
          v15 = self->_syncQueue;
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_510;
          v27[3] = &unk_278B43C88;
          v27[4] = self;
          v27[5] = peerID;
          v27[6] = resourceName;
          v16 = v27;
          goto LABEL_9;
        }

        [(MCSessionStream *)v11 setCompletionHandler:completionHandler];
        v23 = self->_syncQueue;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_504;
        v29[3] = &unk_278B43DC8;
        v29[4] = self;
        v29[5] = resourceURL;
        v29[6] = v11;
        v29[7] = peerID;
        dispatch_async(v23, v29);
        progress = [(MCSessionStream *)v11 progress];
      }

      v19 = progress;
      goto LABEL_16;
    }

    v17 = mcs_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
    }

    v18 = self->_callbackQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_484;
    v32[3] = &unk_278B44020;
    v32[4] = completionHandler;
    dispatch_async(v18, v32);
    v15 = self->_syncQueue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_488;
    v31[3] = &unk_278B43C88;
    v31[4] = self;
    v31[5] = peerID;
    v31[6] = resourceName;
    v16 = v31;
  }

LABEL_9:
  dispatch_async(v15, v16);
  v19 = 0;
LABEL_16:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  return v19;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  result = [v2 state];
  if (result != 2)
  {
    v4 = a1[8];
    goto LABEL_6;
  }

  result = [objc_msgSend(v2 "outgoingStreams")];
  if (result || (result = [objc_msgSend(v2 "outgoingStreamRequests")]) != 0)
  {
    v4 = a1[9];
LABEL_6:
    *(*(v4 + 8) + 24) = 1;
    return result;
  }

  v5 = [v2 outgoingStreamRequests];
  v7 = a1[6];
  v6 = a1[7];

  return [v5 setObject:v6 forKey:v7];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_480(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer not connected.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_484(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource with same name already exists.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_488(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = open([*(a1 + 32) fileSystemRepresentation], 0);
  if (v3 == -1)
  {
    v11 = mcs_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_2(v2);
    }

    v12 = *(*(a1 + 40) + 120);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_493;
    v21[3] = &unk_278B43DF0;
    v21[4] = *(a1 + 48);
    dispatch_async(v12, v21);
  }

  else
  {
    v4 = v3;
    memset(&v23, 0, sizeof(v23));
    if (fstat(v3, &v23) == -1)
    {
      close(v4);
      v5 = mcs_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_1();
      }

      v6 = *(*(a1 + 40) + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_489;
      block[3] = &unk_278B43DF0;
      block[4] = *(a1 + 48);
      dispatch_async(v6, block);
    }

    v7 = fcntl(v4, 3, 0);
    if (v7 != -1)
    {
      fcntl(v4, 4, v7 | 4u);
    }

    fcntl(v4, 73, 1);
    [objc_msgSend(*(a1 + 48) "progress")];
    v8 = mcs_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [objc_msgSend(*(a1 + 48) "progress")];
      *buf = 138412546;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "About to send file [%@] of size [%lld].", buf, 0x16u);
    }

    [*(a1 + 40) syncStartStreamWithName:*(a1 + 56) toPeer:*(a1 + 64) mcFD:v4 isResource:1];
  }

  v13 = [MCResourceProgressObserver alloc];
  v14 = [*(a1 + 48) name];
  v15 = [*(a1 + 48) progress];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_497;
  v18[3] = &unk_278B43C88;
  v19 = *(a1 + 40);
  v20 = *(a1 + 64);
  v16 = [(MCResourceProgressObserver *)v13 initWithName:v14 progress:v15 cancelHandler:v18];
  [*(a1 + 48) setObserver:v16];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_489(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Failed to stat file.", *MEMORY[0x277CCA450])}];
  result = [*(a1 + 32) completionHandler];
  if (result)
  {
    v4 = [*(a1 + 32) completionHandler];
    (*(v4 + 16))(v4, v2);
    v5 = *(a1 + 32);

    return [v5 setCompletionHandler:0];
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_493(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot open file.", *MEMORY[0x277CCA450])}];
  result = [*(a1 + 32) completionHandler];
  if (result)
  {
    v4 = [*(a1 + 32) completionHandler];
    (*(v4 + 16))(v4, v2);
    v5 = *(a1 + 32);

    return [v5 setCompletionHandler:0];
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_504(uint64_t a1)
{
  [*(a1 + 48) setUrlDownloader:{-[MCResourceDownloader initWithSession:resourceUrl:name:peerID:]([MCResourceDownloader alloc], "initWithSession:resourceUrl:name:peerID:", *(a1 + 32), *(a1 + 40), objc_msgSend(*(a1 + 48), "name"), *(a1 + 56))}];
  v2 = [MCResourceProgressObserver alloc];
  v3 = [*(a1 + 48) name];
  v4 = [*(a1 + 48) progress];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_4;
  v6[3] = &unk_278B43C88;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  return [*(a1 + 48) setObserver:{-[MCResourceProgressObserver initWithName:progress:cancelHandler:](v2, "initWithName:progress:cancelHandler:", v3, v4, v6)}];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_506(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unsupported resource type.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_510(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

- (void)disconnect
{
  v3 = mcs_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting from session.", v5, 2u);
  }

  gckSession = self->_gckSession;
  GCKSessionDisposeAllConnections();
}

- (void)syncStartStreamWithName:(id)name toPeer:(id)peer mcFD:(int)d isResource:(BOOL)resource
{
  resourceCopy = resource;
  v36 = *MEMORY[0x277D85DE8];
  v11 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  if (!v11)
  {
    NSLog(&cfstr_UnknownPeer.isa, peer);
    v17 = mcs_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncStartStreamWithName:toPeer:mcFD:isResource:];
    }

    goto LABEL_13;
  }

  v12 = v11;
  uTF8String = [name UTF8String];
  v14 = strlen(uTF8String);
  v15 = v14;
  if (v14 >= 0x8000)
  {
    NSLog(&cfstr_StreamNameTooL.isa, name);
    v16 = mcs_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v33 = name;
      _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Stream name [%@] too long.", buf, 0xCu);
    }

LABEL_12:
    [objc_msgSend(v12 "outgoingStreamRequests")];
LABEL_13:
    close(d);
    goto LABEL_14;
  }

  v18 = v14 + 12;
  v19 = malloc_type_malloc((v14 + 12), 0x570EBDDBuLL);
  if (!v19)
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v18);
    v22 = mcs_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }

    goto LABEL_12;
  }

  v20 = v19;
  dCopy = d;
  if (resourceCopy)
  {
    v21 = [objc_msgSend(v12 "outgoingStreamRequests")];
  }

  else
  {
    v21 = objc_alloc_init(MCSessionStream);
  }

  v24 = v21;
  *v20 = -108;
  v20[1] = resourceCopy;
  v20[2] = HIBYTE(v18);
  v20[3] = v18;
  newStreamOpenRequestID = [v12 newStreamOpenRequestID];
  *(v20 + 1) = bswap32(newStreamOpenRequestID);
  if (resourceCopy)
  {
    v20[8] = [(NSProgress *)[(MCSessionStream *)v24 progress] totalUnitCount]>> 24;
    v20[9] = [(NSProgress *)[(MCSessionStream *)v24 progress] totalUnitCount]>> 16;
    v20[10] = [(NSProgress *)[(MCSessionStream *)v24 progress] totalUnitCount]>> 8;
    totalUnitCount = [(NSProgress *)[(MCSessionStream *)v24 progress] totalUnitCount];
  }

  else
  {
    totalUnitCount = 0;
    v20[10] = 0;
    *(v20 + 4) = 0;
  }

  v20[11] = totalUnitCount;
  memcpy(v20 + 12, uTF8String, v15);
  v31 = 0;
  v30 = [peer pid];
  if (AGPSessionSendTo(self->_agpSession, &v30, 1, v20, v18, &v31, 0, 0xAu, 1, 0))
  {
    v26 = mcs_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
    }
  }

  [(MCSessionStream *)v24 setName:name];
  [(MCSessionStream *)v24 setPeerID:peer];
  [(MCSessionStream *)v24 setState:1];
  [(MCSessionStream *)v24 setFd:dCopy];
  [objc_msgSend(v12 "outgoingStreamRequests")];
  [objc_msgSend(v12 "outgoingStreamRequests")];
  v27 = mcs_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v33 = newStreamOpenRequestID;
    *&v33[4] = 2112;
    *&v33[6] = name;
    v34 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v27, OS_LOG_TYPE_DEFAULT, "Streaming: sent open request: requestID[%u] stream[%@] peer[%@].", buf, 0x1Cu);
  }

  free(v20);
LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
}

- (NSOutputStream)startStreamWithName:(NSString *)streamName toPeer:(MCPeerID *)peerID error:(NSError *)error
{
  v47 = *MEMORY[0x277D85DE8];
  if (streamName && peerID && [(NSString *)streamName length]&& [(NSString *)streamName lengthOfBytesUsingEncoding:4]< 0x8000)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__MCSession_startStreamWithName_toPeer_error___block_invoke;
    block[3] = &unk_278B44048;
    block[4] = self;
    block[5] = peerID;
    block[6] = streamName;
    block[7] = &v34;
    block[8] = &v30;
    dispatch_sync(syncQueue, block);
    if (*(v35 + 24) == 1)
    {
      v12 = mcs_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
      }

      if (error)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer not connected.", *MEMORY[0x277CCA450])}];
LABEL_25:
        v10 = 0;
        *error = v13;
LABEL_38:
        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(&v34, 8);
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (*(v31 + 24) == 1)
    {
      v14 = mcs_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MCSession startStreamWithName:toPeer:error:];
      }

      if (error)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Stream with same name already exists.", *MEMORY[0x277CCA450])}];
        goto LABEL_25;
      }

LABEL_26:
      v10 = 0;
      goto LABEL_38;
    }

    if (pipe(v46))
    {
      v15 = mcs_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        [MCSession startStreamWithName:v16 toPeer:buf error:v15];
      }

      if (error)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot create pipe.", *MEMORY[0x277CCA450])}];
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v17 = v46[0];
    fcntl(v46[1], 73, 1);
    v18 = *MEMORY[0x277CBECE8];
    v19 = _CFWriteStreamCreateFromFileDescriptor();
    if (v19)
    {
      v20 = [(NSString *)streamName copy];
      v21 = self->_syncQueue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __46__MCSession_startStreamWithName_toPeer_error___block_invoke_527;
      v27[3] = &unk_278B44070;
      v28 = v17;
      v27[4] = self;
      v27[5] = v20;
      v27[6] = peerID;
      dispatch_async(v21, v27);

      if (!error)
      {
LABEL_35:
        v24 = mcs_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v39 = streamName;
          v40 = 2112;
          v41 = peerID;
          v42 = 2048;
          v43 = v19;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Stream (%@) started with peer (%@) [%p / %@].", buf, 0x2Au);
        }

        v10 = v19;
        goto LABEL_38;
      }

      v22 = 0;
    }

    else
    {
      v23 = mcs_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [MCSession startStreamWithName:toPeer:error:];
      }

      if (!error)
      {
        goto LABEL_35;
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot create NSOutputStream.", *MEMORY[0x277CCA450])}];
    }

    *error = v22;
    goto LABEL_35;
  }

  v9 = mcs_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MCSession startStreamWithName:toPeer:error:];
  }

  v10 = 0;
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid parameter.", *MEMORY[0x277CCA450])}];
  }

LABEL_39:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __46__MCSession_startStreamWithName_toPeer_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  result = [v2 state];
  if (result != 2)
  {
    v4 = a1[7];
    goto LABEL_6;
  }

  result = [objc_msgSend(v2 "outgoingStreams")];
  if (result || (result = [objc_msgSend(v2 "outgoingStreamRequests")]) != 0)
  {
    v4 = a1[8];
LABEL_6:
    *(*(v4 + 8) + 24) = 1;
    return result;
  }

  v5 = [v2 outgoingStreamRequests];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = a1[6];

  return [v5 setObject:v6 forKey:v7];
}

uint64_t __46__MCSession_startStreamWithName_toPeer_error___block_invoke_527(uint64_t a1)
{
  v2 = fcntl(*(a1 + 56), 3, 0);
  if (v2 != -1)
  {
    fcntl(*(a1 + 56), 4, v2 | 4u);
  }

  fcntl(*(a1 + 56), 73, 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v3 syncStartStreamWithName:v4 toPeer:v5 mcFD:v6 isResource:0];
}

- (void)logSessionInfo
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v6[0] = sessionID;
  v5[1] = @"localPeer";
  v6[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MCSession gckPID](self, "gckPID")}];
  v5[2] = @"auth";
  v6[2] = [MEMORY[0x277CCABB0] numberWithInt:{-[MCSession securityIdentity](self, "securityIdentity") != 0}];
  v5[3] = @"cryptPref";
  v6[3] = [MEMORY[0x277CCABB0] numberWithInteger:{-[MCSession encryptionPreference](self, "encryptionPreference")}];
  MCDashboardLogJSON([MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4], 0, @"SessionInfo");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)syncLogConnectedPeers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v5[1] = @"peersCnt";
  v6[0] = sessionID;
  v6[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MCSession syncConnectedPeersCount](self, "syncConnectedPeersCount") + 1}];
  MCDashboardLogJSON([MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2], 0, @"ConnectedPeers");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)syncLogMaxConnectedPeers
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v6[1] = @"maxPeersCnt";
  v7[0] = sessionID;
  v7[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MCSession maxPeers](self, "maxPeers")}];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  MCMetricsLog(@"com.apple.multipeerconnectivity.mcsession.maxconnectedpeers", v4, 0);
  MCDashboardLogJSON(v4, 0, @"MaxConnectedPeers");
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSessionState:(int64_t)state
{
  if (state > 2)
  {
    return @"?";
  }

  else
  {
    return off_278B44178[state];
  }
}

+ (id)stringForMCSessionSendDataMode:(int64_t)mode
{
  v3 = @"?";
  if (mode == 1)
  {
    v3 = @"Unreliable";
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return @"Reliable";
  }
}

- (void)peerDidDeclineInvitation:(id)invitation
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = mcs_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    displayName = [invitation displayName];
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Peer [%@] declined invitation.", buf, 0xCu);
  }

  syncQueue = self->_syncQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__MCSession_Private__peerDidDeclineInvitation___block_invoke;
  v8[3] = &unk_278B43C60;
  v8[4] = self;
  v8[5] = invitation;
  dispatch_async(syncQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__MCSession_Private__peerDidDeclineInvitation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  if (!v2 || (result = [v2 state], result != 2))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 syncPeer:v5 changeStateTo:0 shouldForceCallback:1];
  }

  return result;
}

- (int64_t)connectedInterfacesForPeer:(id)peer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MCSession_Private__connectedInterfacesForPeer___block_invoke;
  block[3] = &unk_278B44098;
  block[4] = self;
  block[5] = peer;
  block[6] = &v7;
  dispatch_sync(syncQueue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __49__MCSession_Private__connectedInterfacesForPeer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [*(a1 + 40) pid];
  v4 = (*(*(a1 + 48) + 8) + 24);

  return GCKSessionGetInterfacesForParticipant(v2, v3, v4);
}

- (void)setHeartbeatTimeout:(unint64_t)timeout
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__MCSession_Private__setHeartbeatTimeout___block_invoke;
  v4[3] = &unk_278B440C0;
  v4[4] = self;
  v4[5] = timeout;
  dispatch_async(syncQueue, v4);
}

- (void)setAWDLDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v9 = *MEMORY[0x277D85DE8];
  self->_AWDLDisabled = disabled;
  GCKSessionSetAWDLDisabled(self->_gckSession, disabled);
  v4 = mcs_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    if (disabledCopy)
    {
      v5 = "yes";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "AWDLDisabled set to %s.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPreferNCMOverEthernet:(BOOL)ethernet
{
  ethernetCopy = ethernet;
  v9 = *MEMORY[0x277D85DE8];
  self->_preferNCMOverEthernet = ethernet;
  GCKSessionSetPreferNCMOverEthernet(self->_gckSession, ethernet);
  v4 = mcs_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    if (ethernetCopy)
    {
      v5 = "yes";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Prefer NCM over Ethernet set to %s.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setICETimeoutForced:(BOOL)forced
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__MCSession_Testing__setICETimeoutForced___block_invoke;
  v4[3] = &unk_278B43EB8;
  v4[4] = self;
  forcedCopy = forced;
  dispatch_async(syncQueue, v4);
}

- (void)closeDirectConnectionsWithPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__MCSession_Testing__closeDirectConnectionsWithPeer___block_invoke;
  v4[3] = &unk_278B43C60;
  v4[4] = self;
  v4[5] = peer;
  dispatch_async(syncQueue, v4);
}

uint64_t __53__MCSession_Testing__closeDirectConnectionsWithPeer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [*(a1 + 40) pid];

  return GCKSessionCloseDirectConnectionsWithPeer(v1, v2);
}

- (void)syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncSendXDataPeerIDPushToPID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startConnectionWithIndirectPID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.2(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.3(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.4(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:freeEventWhenDone:.cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 streamID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.6(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.7(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.8(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.9(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:freeEventWhenDone:.cold.10(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 name];
  [a1 streamID];
  [a1 state];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.12(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.13(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.14()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.15()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.16()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.17(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.18(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.19()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:(uint64_t)a2 freeEventWhenDone:(uint64_t)a3 .cold.21(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  objc_end_catch();
  v4 = mcs_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_error_impl(&dword_239FB7000, v4, OS_LOG_TYPE_ERROR, "PeerID push - failed to create peerID from data [%@].", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.22(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleNetworkEvent:(unsigned int *)a1 pid:freeEventWhenDone:.cold.23(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_1(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)syncConnectPeer:withConnectionData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncConnectPeer:(void *)a1 withConnectionData:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 displayName];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncStartStreamWithName:toPeer:mcFD:isResource:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithName:(int *)a1 toPeer:(uint8_t *)buf error:(os_log_t)log .cold.1(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_239FB7000, log, OS_LOG_TYPE_ERROR, "Cannot create pipe (%d).", buf, 8u);
}

- (void)startStreamWithName:toPeer:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startStreamWithName:toPeer:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithName:toPeer:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end