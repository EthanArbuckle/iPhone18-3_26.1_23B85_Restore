@interface VCConnectionManagerLegacy
- (BOOL)shouldAcceptDataFromSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3;
- (BOOL)shouldNominateConnection:(id)a3;
- (VCConnectionManagerLegacy)init;
- (id)getPrimaryConnectionToBeCompared;
- (id)getSecondaryConnectionToBeCompared;
- (int)addConnection:(id)a3;
- (int)nominateConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8;
- (int)removeConnection:(id)a3;
- (int)removeConnectionWithIPPort:(tagIPPORT *)a3 isLocalInterface:(BOOL)a4;
- (int)removeConnectionWithIPPortInternal:(tagIPPORT *)a3 isLocalInterface:(BOOL)a4;
- (int)shouldNominateCandidatePair:(tagCANDIDATEPAIR *)a3 interfaceMask:(int)a4 nominated:(int *)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8;
- (int)shouldNominateCandidatePairInternal:(tagCANDIDATEPAIR *)a3 interfaceMask:(int)a4 nominated:(int *)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8;
- (int)updateStateWithCurrentConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5 demote:(int *)a6 replaceOnly:(int *)a7;
- (void)dealloc;
- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4;
- (void)setUpVTable;
- (void)updateCellularMTU:(int)a3;
- (void)updateCellularTech:(int)a3 forLocalInterface:(BOOL)a4;
@end

@implementation VCConnectionManagerLegacy

- (void)setUpVTable
{
  self->super._vTable.copyConnection = _VCConnectionManagerLegacy_CopyConnection;
  self->super._vTable.updateConnectionForDuplication = _VCConnectionManagerLegacy_UpdateConnectionForDuplication;
  self->super._vTable.synchronizeParticipantGenerationCounter = _VCConnectionManagerLegacy_SynchronizeParticipantGenerationCounter;
  self->super._vTable.isSourceOnCellularIPv6 = _VCConnectionManagerLegacy_IsSourceOnCellularIPv6;
  self->super._vTable.copyPrimaryConnection = _VCConnectionManagerLegacy_CopyPrimaryConnection;
  self->super._vTable.setPrimaryConnection = _VCConnectionManagerLegacy_SetPrimaryConnection;
  self->super._vTable.updatePacketAndByteCount = _VCConnectionManagerLegacy_UpdatePacketAndByteCount;
  self->super._vTable.updatePersistentPacketCounts = _VCConnectionManagerLegacy_UpdatePersistentPacketCounts;
  self->super._vTable.addLinkProbingTelemetry = _VCConnectionManagerIDS_AddLinkProbingTelemetry;
}

- (VCConnectionManagerLegacy)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCConnectionManagerLegacy;
  return [(VCConnectionManager *)&v3 init];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCConnectionManagerLegacy;
  [(VCConnectionManager *)&v3 dealloc];
}

- (int)shouldNominateCandidatePair:(tagCANDIDATEPAIR *)a3 interfaceMask:(int)a4 nominated:(int *)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8
{
  v12 = *&a4;
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  LODWORD(a8) = [(VCConnectionManagerLegacy *)self shouldNominateCandidatePairInternal:a3 interfaceMask:v12 nominated:a5 demote:a6 connectionPriority:a7 replaceOnly:a8];
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return a8;
}

- (int)addConnection:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    pthread_rwlock_wrlock(&self->super._stateRWlock);
    isInitialConnectionEstablished = self->super._isInitialConnectionEstablished;
    if (*([v3 connectionResult] + 296))
    {
      v6 = [(VCConnectionManagerLegacy *)self pendingPrimaryConnection];
      if (!v6)
      {
        v8 = 3;
LABEL_16:
        VCConnection_SetPriority(v3, v8);
        [(VCConnectionManagerLegacy *)self setPendingPrimaryConnection:0];
        v16 = [(VCConnectionManager *)self lastPrimaryConnectionInUse];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v52 = v17;
            v53 = 2080;
            v54 = "[VCConnectionManagerLegacy addConnection:]";
            v55 = 1024;
            v56 = 160;
            v57 = 2080;
            v58 = [objc_msgSend(v3 "description")];
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: set a PRIMARY connection %s", buf, 0x26u);
          }
        }

        [(VCConnectionManager *)self useConnectionAsPrimary:v3];
        [(NSMutableArray *)self->super._connectionArray addObject:v3];
        if (v16)
        {
          v19 = [(VCConnectionManagerLegacy *)self pendingSecondaryConnection];
          if (v19)
          {
            v20 = v19;
            if (([(VCConnectionProtocol *)v19 waitToBeNominated]& 1) == 0)
            {
              [(VCConnectionManager *)self setSecondaryConnection:v20];
              [(VCConnectionManagerLegacy *)self setPendingSecondaryConnection:0];
            }
          }
        }

        goto LABEL_42;
      }

      v7 = v6;
      if (VCConnection_Equal(v3, v6))
      {
        v8 = VCConnection_Priority(v7);
        goto LABEL_16;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v52 = v21;
          v53 = 2080;
          v54 = "[VCConnectionManagerLegacy addConnection:]";
          v55 = 1024;
          v56 = 174;
          v57 = 2080;
          v58 = [objc_msgSend(v3 "description")];
          v59 = 2080;
          v60 = [-[VCConnectionProtocol description](v7 "description")];
          v23 = " [%s] %s:%d HandoverReport: new connection %s is not the pending primary %s";
LABEL_36:
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x30u);
        }
      }
    }

    else
    {
      v10 = [(VCConnectionManagerLegacy *)self pendingSecondaryConnection];
      if (VCConnection_Equal(v3, v10))
      {
        v11 = VCConnectionManager_CopyPrimaryConnection(self);
        if (v11)
        {
          v12 = v11;
          v13 = VCConnection_Priority(v10);
          VCConnection_SetPriority(v3, v13);
          [(VCConnectionManagerLegacy *)self setPendingSecondaryConnection:0];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v52 = v14;
              v53 = 2080;
              v54 = "[VCConnectionManagerLegacy addConnection:]";
              v55 = 1024;
              v56 = 204;
              v57 = 2080;
              v58 = [objc_msgSend(v3 "description")];
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: set a SECONDARY connection %s", buf, 0x26u);
            }
          }

          [(VCConnectionManager *)self setSecondaryConnection:v3];
          CFRelease(v12);
        }

        else
        {
          [v3 setWaitToBeNominated:0];
          [(VCConnectionManagerLegacy *)self setPendingSecondaryConnection:v3];
          v3 = [v3 copy];
          VCConnection_SetPriority(v3, 2);
          *([v3 connectionResult] + 296) = 0;
          [(VCConnectionManager *)self useConnectionAsPrimary:v3];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v3)
              {
                v29 = [objc_msgSend(v3 "description")];
              }

              else
              {
                v29 = "<nil>";
              }

              *buf = 136315906;
              v52 = v27;
              v53 = 2080;
              v54 = "[VCConnectionManagerLegacy addConnection:]";
              v55 = 1024;
              v56 = 196;
              v57 = 2080;
              v58 = v29;
              _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Secondary nomination response comes back first. Use connection %s as a temporary primary", buf, 0x26u);
            }
          }
        }

        [(NSMutableArray *)self->super._connectionArray addObject:v3];
        v16 = 0;
LABEL_42:
        v30 = VCConnectionManager_CopyPrimaryConnection(self);
        v31 = VCConnection_Priority(v3);
        if (VRTraceGetErrorLogLevelForModule() < 6 || (v48 = VRTraceErrorLogLevelToCSTR(), v32 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
        {
LABEL_64:
          if (v30)
          {
            CFRelease(v30);
          }

          NumberOfConnectionsInternal = VCConnectionManager_GetNumberOfConnectionsInternal(self);
          VTP_SetAFRCConnectionNumber(NumberOfConnectionsInternal);
          v39 = VCConnectionManager_CopyPrimaryConnection(self);
          [(VCConnectionManager *)self checkpointPrimaryConnection:v39];
          if (v16)
          {
            [(VCConnectionManager *)self primaryConnectionChanged:v39 oldPrimaryConnection:v16];
          }

          else if (v31 == 2)
          {
            IsLocalOnCellular = VCConnection_IsLocalOnCellular(v3);
            VCConnectionManager_UseCellPrimaryInterface(self, IsLocalOnCellular);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          delegateQueue = self->super._delegateQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __43__VCConnectionManagerLegacy_addConnection___block_invoke;
          block[3] = &unk_1E85F37C8;
          block[4] = self;
          block[5] = v3;
          v50 = !isInitialConnectionEstablished;
          dispatch_async(delegateQueue, block);
          if (!self->super._isInitialConnectionEstablished)
          {
            self->super._isInitialConnectionEstablished = 1;
          }

          if (self->super._duplicationPending && VCConnectionManager_GetNumberOfConnectionsInternal(self) >= 2)
          {
            VCConnectionManager_SetDuplicationEnabledInternal(self, 1);
          }

          [(VCConnectionManagerLegacy *)self reportConnection:v3 isInitialConnection:!isInitialConnectionEstablished];
          [(VCConnectionManager *)self reportConnectionUpdateWithRespCode:0];
          pthread_rwlock_unlock(&self->super._stateRWlock);
          return 0;
        }

        if ((v31 & 0xFFFFFFFD) == 1)
        {
          v33 = "OPTIMAL";
        }

        else
        {
          v33 = "";
        }

        v34 = "SECONDARY";
        if (v31 > 1)
        {
          v34 = "PRIMARY";
        }

        v45 = v34;
        v46 = v33;
        if (v3)
        {
          v44 = [objc_msgSend(v3 "description")];
          if (v30)
          {
LABEL_51:
            v43 = [objc_msgSend(v30 "description")];
LABEL_54:
            v47 = isInitialConnectionEstablished;
            if ([(VCConnectionManager *)self secondaryConnection])
            {
              v35 = [-[VCConnectionProtocol description](-[VCConnectionManager secondaryConnection](self "secondaryConnection")];
            }

            else
            {
              v35 = "<nil>";
            }

            if ([(VCConnectionManagerLegacy *)self pendingPrimaryConnection])
            {
              v36 = [-[VCConnectionProtocol description](-[VCConnectionManagerLegacy pendingPrimaryConnection](self "pendingPrimaryConnection")];
            }

            else
            {
              v36 = "<nil>";
            }

            if ([(VCConnectionManagerLegacy *)self pendingSecondaryConnection])
            {
              v37 = [-[VCConnectionProtocol description](-[VCConnectionManagerLegacy pendingSecondaryConnection](self "pendingSecondaryConnection")];
            }

            else
            {
              v37 = "<nil>";
            }

            *buf = 136317442;
            v52 = v48;
            v53 = 2080;
            v54 = "[VCConnectionManagerLegacy addConnection:]";
            v55 = 1024;
            v56 = 226;
            v57 = 2080;
            v58 = v46;
            v59 = 2080;
            v60 = v45;
            v61 = 2080;
            v62 = v44;
            v63 = 2080;
            v64 = v43;
            v65 = 2080;
            v66 = v35;
            v67 = 2080;
            v68 = v36;
            v69 = 2080;
            v70 = v37;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Add result %s %s connection %s. Primary %s; Secondary: %s; Pending primary: %s; Pending secondary: %s", buf, 0x62u);
            isInitialConnectionEstablished = v47;
            goto LABEL_64;
          }
        }

        else
        {
          v44 = "<nil>";
          if (v30)
          {
            goto LABEL_51;
          }
        }

        v43 = "<nil>";
        goto LABEL_54;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [objc_msgSend(v3 "description")];
          if (v10)
          {
            v26 = [-[VCConnectionProtocol description](v10 "description")];
          }

          else
          {
            v26 = "<nil>";
          }

          *buf = 136316162;
          v52 = v24;
          v53 = 2080;
          v54 = "[VCConnectionManagerLegacy addConnection:]";
          v55 = 1024;
          v56 = 211;
          v57 = 2080;
          v58 = v25;
          v59 = 2080;
          v60 = v26;
          v23 = " [%s] %s:%d HandoverReport: new connection %s is not the pending secondary %s";
          goto LABEL_36;
        }
      }
    }

    v9 = -2144796671;
    pthread_rwlock_unlock(&self->super._stateRWlock);
    return v9;
  }

  v9 = -2144796671;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManagerLegacy addConnection:];
    }
  }

  return v9;
}

uint64_t __43__VCConnectionManagerLegacy_addConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 connectionCallback:v3 isInitialConnection:v4];
}

- (int)removeConnection:(id)a3
{
  if (a3)
  {
    v4 = [a3 connectionResult] + 28;

    return [(VCConnectionManagerLegacy *)self removeConnectionWithIPPort:v4 isLocalInterface:1];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCConnectionManagerLegacy removeConnection:];
      }
    }

    return -2144796671;
  }
}

- (int)removeConnectionWithIPPort:(tagIPPORT *)a3 isLocalInterface:(BOOL)a4
{
  v4 = a4;
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  LODWORD(v4) = [(VCConnectionManagerLegacy *)self removeConnectionWithIPPortInternal:a3 isLocalInterface:v4];
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v4;
}

- (int)removeConnectionWithIPPortInternal:(tagIPPORT *)a3 isLocalInterface:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  memset(v34, 0, sizeof(v34));
  IPPORTToStringWithSize();
  v7 = [(VCConnectionManager *)self secondaryConnection];
  v8 = v7;
  if (v7)
  {
    if (v4)
    {
      if (([(VCConnectionProtocol *)v7 isLocalIPPort:a3]& 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!VCConnectionLegacy_IsRemoteIPPort(v7, a3))
    {
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [-[VCConnectionProtocol description](v8 "description")];
        *v26 = 136316418;
        v12 = "REMOTE";
        *&v26[4] = v9;
        *&v26[14] = "[VCConnectionManagerLegacy removeConnectionWithIPPortInternal:isLocalInterface:]";
        *&v26[22] = 1024;
        *&v26[12] = 2080;
        if (v4)
        {
          v12 = "LOCAL";
        }

        v27 = 304;
        v28 = 2080;
        v29 = v11;
        v30 = 2080;
        v31 = v12;
        v32 = 2080;
        v33 = v34;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: removed SECONDARY connection %s due to %s IPPort %s change", v26, 0x3Au);
      }
    }

    [(VCConnectionManager *)self setSecondaryConnection:0, *v26, *&v26[16]];
    v8 = 0;
  }

LABEL_12:
  v13 = [(VCConnectionManager *)self lastPrimaryConnectionInUse];
  v14 = v13;
  if (v4)
  {
    if (([(VCConnectionProtocol *)v13 isLocalIPPort:a3]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (!VCConnectionLegacy_IsRemoteIPPort(v13, a3))
  {
LABEL_32:
    v22 = 0;
    v8 = 0;
    goto LABEL_36;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v17 = [-[VCConnectionProtocol description](v14 "description")];
      }

      else
      {
        v17 = "<nil>";
      }

      v18 = "REMOTE";
      *v26 = 136316418;
      *&v26[4] = v15;
      *&v26[12] = 2080;
      *&v26[14] = "[VCConnectionManagerLegacy removeConnectionWithIPPortInternal:isLocalInterface:]";
      if (v4)
      {
        v18 = "LOCAL";
      }

      *&v26[22] = 1024;
      v27 = 314;
      v28 = 2080;
      v29 = v17;
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = v34;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: removed PRIMARY connection %s due to %s IPPort %s change", v26, 0x3Au);
    }
  }

  VCConnectionManager_SetPrimaryConnection(self);
  if (!v8)
  {
    VCConnectionManager_UseCellPrimaryInterface(self, 0);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCConnectionManagerLegacy removeConnectionWithIPPortInternal:isLocalInterface:];
      }
    }

    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v21 = [-[VCConnectionProtocol description](v14 "description")];
      }

      else
      {
        v21 = "<nil>";
      }

      v23 = [-[VCConnectionProtocol description](v8 description];
      *v26 = 136316418;
      *&v26[4] = v19;
      *&v26[12] = 2080;
      *&v26[14] = "[VCConnectionManagerLegacy removeConnectionWithIPPortInternal:isLocalInterface:]";
      *&v26[22] = 1024;
      v27 = 322;
      v28 = 2080;
      v29 = v21;
      v30 = 2080;
      v31 = v23;
      v32 = 2080;
      v33 = v34;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: replace primary connection %s with new primary %s due to removed IPPort %s", v26, 0x3Au);
    }
  }

  [(VCConnectionManager *)self promoteSecondaryConnectionToPrimary:v8, *v26, *&v26[8]];
  v22 = 1;
  *([(VCConnectionProtocol *)v8 connectionResult]+ 296) = 1;
LABEL_36:
  NumberOfConnectionsInternal = VCConnectionManager_GetNumberOfConnectionsInternal(self);
  VTP_SetAFRCConnectionNumber(NumberOfConnectionsInternal);
  if (v22)
  {
    [(VCConnectionManager *)self checkpointPrimaryConnection:v8];
    [(VCConnectionManager *)self primaryConnectionChanged:v8 oldPrimaryConnection:v14];
    [(VCConnectionManagerLegacy *)self reportConnection:v8 isInitialConnection:0];
  }

  return 0;
}

- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  VCConnection_Priority(a3);
  v7 = VCConnection_LocalCellTech(a3);
  v8 = VCConnection_RemoteCellTech(a3);
  *&v46[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[1] = v9;
  *v46 = v9;
  v45[0] = v9;
  *(v44 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = v9;
  v44[0] = v9;
  v43[0] = v9;
  *(v42 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v41[1] = v9;
  v42[0] = v9;
  v41[0] = v9;
  if (self->super._reportingAgent)
  {
    v10 = v8;
    v31 = v4;
    v11 = [a3 connectionResult];
    v12 = vcvtd_n_f64_u32(*(v11 + 268), 0x10uLL);
    IPPORTToStringWithSize();
    IPPORTToStringWithSize();
    IPPORTToStringWithSize();
    v13 = *(v11 + 268);
    IsRelay = VCConnection_IsRelay(a3);
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"connectionResultCallback %s/%s (rtt: %f cell: %d/%d v6/rel: %d/%d)  RTT=%d/%d", v45, v43, *&v12, v7, v10, VCConnection_IsIPv6(a3), IsRelay, v13, (v12 * 1000.0)];
    if (IsRelay)
    {
      v15 = "relay";
    }

    else
    {
      v15 = "p2p";
    }

    VCConnection_IsLocalOnCellular(a3);
    v16 = CelltechToStr();
    VCConnection_IsRemoteOnCellular(a3);
    v17 = CelltechToStr();
    relayConnectionID = self->_relayConnectionID;
    EyeContactEnabledBoolValue = VCDefaults_Prod_GetEyeContactEnabledBoolValue(1);
    v39[0] = @"ConnectionType";
    v40[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    v39[1] = @"LocalCandidate";
    v40[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45];
    v39[2] = @"RemoteCandidate";
    v40[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
    v39[3] = @"LocalInterfaceType";
    v40[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    v39[4] = @"RemoteInterfaceType";
    v40[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v39[5] = @"relayServer";
    v40[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v43];
    v39[6] = @"relayType";
    v40[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "type")}];
    v39[7] = @"VPN";
    v20 = [a3 isVPN];
    v21 = &unk_1F57999F0;
    if (v20)
    {
      v21 = &unk_1F57999D8;
    }

    v22 = @"Unknown";
    if (relayConnectionID)
    {
      v22 = relayConnectionID;
    }

    v40[7] = v21;
    v40[8] = v22;
    v39[8] = @"IDSToken";
    v39[9] = @"VPCENABLED";
    v40[9] = [MEMORY[0x1E696AD98] numberWithBool:EyeContactEnabledBoolValue];
    v39[10] = @"EndToEnd";
    v23 = MEMORY[0x1E696AEC0];
    if (VCConnection_IsEndToEndLink(a3))
    {
      v24 = "1";
    }

    else
    {
      v24 = "0";
    }

    v40[10] = [v23 stringWithUTF8String:v24];
    v25 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:{11), "mutableCopy"}];
    VCConnectionManager_AddTelemetryForConnection(self, a3, v25);
    reportingGenericEvent();

    if (v30)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = "[VCConnectionManagerLegacy reportConnection:isInitialConnection:]";
          v35 = 1024;
          v36 = 406;
          v37 = 2080;
          v38 = [objc_msgSend(v30 "description")];
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d reportConnection: %s", buf, 0x26u);
        }
      }
    }

    if (v31)
    {
      memset(buf, 170, 18);
      if (!Get80211BSSID())
      {
        strncpy(__dst, buf, 8uLL);
        __dst[8] = 0;
        reportingLog();
      }
    }

    v32.receiver = self;
    v32.super_class = VCConnectionManagerLegacy;
    [(VCConnectionManager *)&v32 reportConnection:a3 isInitialConnection:v31];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "[VCConnectionManagerLegacy reportConnection:isInitialConnection:]";
      v35 = 1024;
      v36 = 363;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d reportConnection: reportingAgent is nil, can not report connections", buf, 0x1Cu);
    }
  }
}

- (int)nominateConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8
{
  v11 = *&a5;
  v12 = a4;
  if (a4)
  {
    if ([(VCConnectionManager *)self isOptimalConnection:a3 asPrimary:1 interfaceMask:*&a5])
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = [(VCConnectionManager *)self isOptimalConnection:a3 asPrimary:a4 interfaceMask:*&a5];
  }

  *a7 = v15;
  VCConnection_SetPriority(a3, v15);

  return [(VCConnectionManagerLegacy *)self updateStateWithCurrentConnection:a3 asPrimary:v12 interfaceMask:v11 demote:a6 replaceOnly:a8];
}

- (BOOL)shouldNominateConnection:(id)a3
{
  v5 = [(VCConnectionManagerLegacy *)self getPrimaryConnectionToBeCompared];
  v6 = [(VCConnectionManagerLegacy *)self getSecondaryConnectionToBeCompared];
  if (!v5)
  {
    return 1;
  }

  v7 = v6;
  if ([a3 isOnSameIPPortWithConnection:v5])
  {
    return 0;
  }

  else
  {
    return [a3 isOnSameIPPortWithConnection:v7] ^ 1;
  }
}

- (int)updateStateWithCurrentConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5 demote:(int *)a6 replaceOnly:(int *)a7
{
  v9 = *&a5;
  v10 = a4;
  v13 = [(VCConnectionManagerLegacy *)self getPrimaryConnectionToBeCompared];
  v14 = [(VCConnectionManagerLegacy *)self getSecondaryConnectionToBeCompared];
  if (v10)
  {
    if (v13)
    {
      if (v14)
      {
        v15 = [(VCConnectionManager *)self isBetterConnection:v13 asPrimary:0];
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 0;
        }

        v17 = !v15;
      }

      else
      {
        v17 = VCConnection_IsOnSameInterfacesWithConnection(a3);
        if (v17)
        {
          v16 = 0;
        }

        else
        {
          v16 = 2;
        }
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *a6 = v16;
    *a7 = v17;
    if ((*a6 & 0xFFFFFFFE) == 2)
    {
      VCConnection_SetPriority(v13, [(VCConnectionManager *)self isOptimalConnection:v13 asPrimary:0 interfaceMask:v9]);
      [(VCConnectionManagerLegacy *)self setPendingSecondaryConnection:v13];
    }

    [a3 setWaitToBeNominated:1];
    [(VCConnectionManagerLegacy *)self setPendingPrimaryConnection:a3];
  }

  else
  {
    v18 = v14 != 0;
    *a6 = v18;
    *a7 = v18;
    [a3 setWaitToBeNominated:1];
    [(VCConnectionManagerLegacy *)self setPendingSecondaryConnection:a3];
  }

  return 0;
}

- (id)getPrimaryConnectionToBeCompared
{
  result = [(VCConnectionManagerLegacy *)self pendingPrimaryConnection];
  if (!result)
  {
    v4 = VCConnectionManager_CopyPrimaryConnection(self);

    return v4;
  }

  return result;
}

- (id)getSecondaryConnectionToBeCompared
{
  result = [(VCConnectionManagerLegacy *)self pendingSecondaryConnection];
  if (!result)
  {

    return [(VCConnectionManager *)self secondaryConnection];
  }

  return result;
}

- (void)updateCellularMTU:(int)a3
{
  v3 = *&a3;
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  v5 = VCConnectionManager_CopyPrimaryConnection(self);
  [v5 setConnectionMTU:v3];
  if (v5)
  {
    CFRelease(v5);
  }

  [(VCConnectionProtocol *)[(VCConnectionManager *)self secondaryConnection] setConnectionMTU:v3];
  [(VCConnectionProtocol *)[(VCConnectionManagerLegacy *)self pendingPrimaryConnection] setConnectionMTU:v3];
  [(VCConnectionProtocol *)[(VCConnectionManagerLegacy *)self pendingSecondaryConnection] setConnectionMTU:v3];

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)updateCellularTech:(int)a3 forLocalInterface:(BOOL)a4
{
  v4 = a4;
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  v6 = VCConnectionManager_CopyPrimaryConnection(self);
  v7 = v6;
  if (!v4)
  {
    VCConnection_SetRemoteCellTech(v6);
    VCConnection_SetRemoteCellTech([(VCConnectionManager *)self secondaryConnection]);
    VCConnection_SetRemoteCellTech([(VCConnectionManagerLegacy *)self pendingPrimaryConnection]);
    VCConnection_SetRemoteCellTech([(VCConnectionManagerLegacy *)self pendingSecondaryConnection]);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  VCConnection_SetLocalCellTech(v6);
  VCConnection_SetLocalCellTech([(VCConnectionManager *)self secondaryConnection]);
  VCConnection_SetLocalCellTech([(VCConnectionManagerLegacy *)self pendingPrimaryConnection]);
  VCConnection_SetLocalCellTech([(VCConnectionManagerLegacy *)self pendingSecondaryConnection]);
  if (v7)
  {
LABEL_5:
    CFRelease(v7);
  }

LABEL_6:

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (BOOL)shouldAcceptDataFromSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectionArray = self->super._connectionArray;
  v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(connectionArray);
        }

        if (VCConnection_MatchesSourceDestinationInfo(*(*(&v13 + 1) + 8 * i), a3))
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v10;
}

- (int)shouldNominateCandidatePairInternal:(tagCANDIDATEPAIR *)a3 interfaceMask:(int)a4 nominated:(int *)a5 demote:(int *)a6 connectionPriority:(int *)a7 replaceOnly:(int *)a8
{
  v44 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  v13 = [[VCConnectionLegacy alloc] initWithCandidatePair:a3];
  if ([OUTLINED_FUNCTION_1_7() shouldNominateConnection:?] && ((objc_msgSend(OUTLINED_FUNCTION_1_7(), "isBetterConnection:asPrimary:") & 1) != 0 || (-[VCConnectionManagerLegacy getPrimaryConnectionToBeCompared](self, "getPrimaryConnectionToBeCompared"), (VCConnection_IsOnSameInterfacesWithConnection(v13) & 1) == 0) && objc_msgSend(OUTLINED_FUNCTION_1_7(), "isBetterConnection:asPrimary:")))
  {
    *a5 = 1;
    v14 = [OUTLINED_FUNCTION_1_7() nominateConnection:? asPrimary:? interfaceMask:? demote:? connectionPriority:? replaceOnly:?];
    if (v14 < 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *a5;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v17 = MEMORY[0x1E6986650];
  if (v15)
  {
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_27;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *v17;
    if (!os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    if (v13)
    {
      v20 = [(NSString *)[(VCConnectionLegacy *)v13 description] UTF8String];
    }

    else
    {
      v20 = "<nil>";
    }

    v24 = *a7;
    v25 = "OPTIMAL";
    v26 = *a6;
    v27 = *a8;
    if ((*a7 & 0xFFFFFFFD) != 1)
    {
      v25 = "";
    }

    *v40 = 136316930;
    *&v40[4] = v18;
    if (v24 <= 1)
    {
      v28 = "SECONDARY";
    }

    else
    {
      v28 = "PRIMARY";
    }

    *&v40[12] = 2080;
    *&v40[14] = "[VCConnectionManagerLegacy shouldNominateCandidatePairInternal:interfaceMask:nominated:demote:connectionPriority:replaceOnly:]";
    *&v40[22] = 1024;
    LODWORD(v41) = 112;
    WORD2(v41) = 2080;
    *(&v41 + 6) = v20;
    HIWORD(v41) = 2080;
    v42 = v25;
    *v43 = 2080;
    *&v43[2] = v28;
    *&v43[10] = 1024;
    *&v43[12] = v26;
    *&v43[16] = 1024;
    *&v43[18] = v27;
    v29 = " [%s] %s:%d HandoverReport: DID nominate connection %s as %s %s connection. Demote current: %d, replace current: %d";
    v30 = v19;
    v31 = 70;
  }

  else
  {
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_27;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *v17;
    if (!os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    if (v13)
    {
      v23 = [(NSString *)[(VCConnectionLegacy *)v13 description] UTF8String];
    }

    else
    {
      v23 = "<nil>";
    }

    *v40 = 136315906;
    *&v40[4] = v21;
    *&v40[12] = 2080;
    *&v40[14] = "[VCConnectionManagerLegacy shouldNominateCandidatePairInternal:interfaceMask:nominated:demote:connectionPriority:replaceOnly:]";
    *&v40[22] = 1024;
    LODWORD(v41) = 114;
    WORD2(v41) = 2080;
    *(&v41 + 6) = v23;
    v29 = " [%s] %s:%d HandoverReport: DID NOT nominate connection %s";
    v30 = v22;
    v31 = 38;
  }

  _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, v40, v31);
LABEL_27:
  v32 = VCConnectionManager_CopyPrimaryConnection(self);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v32)
      {
        v35 = [objc_msgSend(v32 "description")];
      }

      else
      {
        v35 = "<nil>";
      }

      if ([(VCConnectionManager *)self secondaryConnection:*v40])
      {
        v36 = [-[VCConnectionProtocol description](-[VCConnectionManager secondaryConnection](self "secondaryConnection")];
      }

      else
      {
        v36 = "<nil>";
      }

      if ([(VCConnectionManagerLegacy *)self pendingPrimaryConnection])
      {
        v37 = [-[VCConnectionProtocol description](-[VCConnectionManagerLegacy pendingPrimaryConnection](self "pendingPrimaryConnection")];
      }

      else
      {
        v37 = "<nil>";
      }

      if ([(VCConnectionManagerLegacy *)self pendingSecondaryConnection])
      {
        v38 = [-[VCConnectionProtocol description](-[VCConnectionManagerLegacy pendingSecondaryConnection](self "pendingSecondaryConnection")];
      }

      else
      {
        v38 = "<nil>";
      }

      *v40 = 136316674;
      *&v40[4] = v33;
      *&v40[12] = 2080;
      *&v40[14] = "[VCConnectionManagerLegacy shouldNominateCandidatePairInternal:interfaceMask:nominated:demote:connectionPriority:replaceOnly:]";
      *&v40[22] = 1024;
      LODWORD(v41) = 122;
      WORD2(v41) = 2080;
      *(&v41 + 6) = v35;
      HIWORD(v41) = 2080;
      v42 = v36;
      *v43 = 2080;
      *&v43[2] = v37;
      *&v43[10] = 2080;
      *&v43[12] = v38;
      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Finished nominating a candidate pair. Primary %s; Secondary: %s; Pending primary: %s; Pending secondary %s", v40, 0x44u);
    }
  }

  if (v32)
  {
    CFRelease(v32);
  }

LABEL_44:

  return v14;
}

- (void)addConnection:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCConnectionManagerLegacy addConnection:]";
  v5 = 1024;
  v6 = 133;
  v7 = v0;
  v8 = "[VCConnectionManagerLegacy addConnection:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d HandoverReport: %s received a nil VCConnection!", v2, 0x26u);
}

- (void)removeConnection:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCConnectionManagerLegacy removeConnection:]";
  v5 = 1024;
  v6 = 270;
  v7 = v0;
  v8 = "[VCConnectionManagerLegacy removeConnection:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d HandoverReport: %s received a nil VCConnection!", v2, 0x26u);
}

- (void)removeConnectionWithIPPortInternal:isLocalInterface:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCConnectionManagerLegacy removeConnectionWithIPPortInternal:isLocalInterface:]";
  v5 = 1024;
  v6 = 331;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d HandoverReport: no available connection after interface change", v2, 0x1Cu);
}

@end