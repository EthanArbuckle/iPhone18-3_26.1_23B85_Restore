@interface VCConnectionSelector
- ($21C794F2A23EEFF9903A5FA3949B7063)serverLinks;
- (BOOL)isPrimaryConnectionSameAsConnection:(id)connection;
- (BOOL)selectPrimaryAndSecondaryWithConnection:(id)connection isEndToEnd:(BOOL)end;
- (VCConnectionSelector)initWithMultiwayEnabled:(BOOL)enabled;
- (id)connectionForGroupType:(unsigned __int8)type isPrimary:(BOOL)primary;
- (void)dealloc;
- (void)selectConnectionForGroupType:(unsigned __int8)type fromConnectionArray:(id)array asPrimary:(BOOL)primary;
- (void)updateConnectionSelectionPolicy:(id *)policy;
- (void)updateConnectionSelectionPolicyWithPreferRelayOverP2P:(BOOL)p preferNonVPN:(BOOL)n preferE2E:(BOOL)e;
- (void)updatePrimaryWithConnection:(id)connection;
- (void)updateSecondaryWithConnection:(id)connection;
- (void)updateSelectedConnectionsForGroupType:(unsigned __int8)type connectionAdded:(id)added;
- (void)updateSelectedConnectionsForGroupType:(unsigned __int8)type connectionRemoved:(id)removed connectionArray:(id)array;
- (void)useConnectionAsPrimary:(id)primary;
@end

@implementation VCConnectionSelector

- (VCConnectionSelector)initWithMultiwayEnabled:(BOOL)enabled
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCConnectionSelector;
  v4 = [(VCConnectionSelector *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isMultiwaySession = enabled;
    v4->_linkPreferenceOrder = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v5->_canUseP2PLinks = 1;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCConnectionSelector;
  [(VCConnectionSelector *)&v3 dealloc];
}

- (void)updatePrimaryWithConnection:(id)connection
{
  if (self && (primaryConnection = self->_primaryConnection) != 0)
  {
    v6 = CFRetain(primaryConnection);
  }

  else
  {
    v6 = 0;
  }

  if ((VCConnection_IsOnSameInterfacesWithConnection(v6) & 1) == 0 && [v6 compare:-[VCConnectionSelector secondaryConnection](self isPrimary:"secondaryConnection") selectionPolicy:{0, &self->_connectionSelectionPolicy}] == 1)
  {
    VCConnection_SetPriority([(VCConnectionSelector *)self secondaryConnection], -1);
    VCConnection_SetPriority(v6, 0);
    [(VCConnectionSelector *)self setSecondaryConnection:v6];
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  VCConnection_SetPriority(v6, -1);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  if (self->_isMultiwaySession)
  {
    if ([(VCConnectionSelector *)self secondaryConnection])
    {
      IsEndToEndLink = VCConnection_IsEndToEndLink(connection);
      if (IsEndToEndLink != VCConnection_IsEndToEndLink([(VCConnectionSelector *)self secondaryConnection]))
      {
        [(VCConnectionSelector *)self setSecondaryConnection:0];
      }
    }
  }

  VCConnection_SetPriority(connection, 2);

  [(VCConnectionSelector *)self useConnectionAsPrimary:connection];
}

- (void)updateSecondaryWithConnection:(id)connection
{
  VCConnection_SetPriority([(VCConnectionSelector *)self secondaryConnection], -1);
  VCConnection_SetPriority(connection, 0);

  [(VCConnectionSelector *)self setSecondaryConnection:connection];
}

- (BOOL)selectPrimaryAndSecondaryWithConnection:(id)connection isEndToEnd:(BOOL)end
{
  v21 = *MEMORY[0x1E69E9840];
  if (self && (primaryConnection = self->_primaryConnection) != 0)
  {
    v8 = CFRetain(primaryConnection);
    if (end)
    {
LABEL_10:
      if ([connection compare:v8 isPrimary:1 selectionPolicy:&self->_connectionSelectionPolicy] == 1)
      {
        [(VCConnectionSelector *)self updatePrimaryWithConnection:connection];
        goto LABEL_12;
      }

      if (VCConnection_IsOnSameInterfacesWithConnection(v8))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136315650;
            v16 = v13;
            v17 = 2080;
            v18 = "[VCConnectionSelector selectPrimaryAndSecondaryWithConnection:isEndToEnd:]";
            v19 = 1024;
            v20 = 215;
            v11 = " [%s] %s:%d HandoverReport: a new connection is added with the same interface combo as the primary connection. Prevent selecting it as secondary connection.";
            goto LABEL_18;
          }
        }
      }

      else if ([connection compare:-[VCConnectionSelector secondaryConnection](self isPrimary:"secondaryConnection") selectionPolicy:{0, &self->_connectionSelectionPolicy}] == 1)
      {
        [(VCConnectionSelector *)self updateSecondaryWithConnection:connection];
LABEL_12:
        v12 = 1;
        if (!v8)
        {
          return v12;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    if (end)
    {
      goto LABEL_10;
    }
  }

  if (![(VCConnectionSelector *)self isPrimaryConnectionSameAsConnection:connection])
  {
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v9;
      v17 = 2080;
      v18 = "[VCConnectionSelector selectPrimaryAndSecondaryWithConnection:isEndToEnd:]";
      v19 = 1024;
      v20 = 209;
      v11 = " [%s] %s:%d HandoverReport: Get the same connection for multiway. Keep using the old connection";
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x1Cu);
    }
  }

LABEL_21:
  v12 = 0;
  if (v8)
  {
LABEL_22:
    CFRelease(v8);
  }

  return v12;
}

- (void)useConnectionAsPrimary:(id)primary
{
  VCConnectionSelector_SetPrimaryConnection(self, primary);

  [(VCConnectionSelector *)self setLastPrimaryConnectionInUse:primary];
}

- (void)updateConnectionSelectionPolicyWithPreferRelayOverP2P:(BOOL)p preferNonVPN:(BOOL)n preferE2E:(BOOL)e
{
  v29 = *MEMORY[0x1E69E9840];
  self->_connectionSelectionPolicy.preferRelayOverP2P = p;
  self->_connectionSelectionPolicy.preferIPv6OverIPv4 = 0;
  self->_connectionSelectionPolicy.preferNonVPN = n;
  self->_connectionSelectionPolicy.e2eCriteriaEnabled = self->_isMultiwaySession;
  self->_connectionSelectionPolicy.preferE2E = e;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      preferRelayOverP2P = self->_connectionSelectionPolicy.preferRelayOverP2P;
      preferIPv6OverIPv4 = self->_connectionSelectionPolicy.preferIPv6OverIPv4;
      preferNonVPN = self->_connectionSelectionPolicy.preferNonVPN;
      e2eCriteriaEnabled = self->_connectionSelectionPolicy.e2eCriteriaEnabled;
      preferE2E = self->_connectionSelectionPolicy.preferE2E;
      v13 = 136316930;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCConnectionSelector updateConnectionSelectionPolicyWithPreferRelayOverP2P:preferNonVPN:preferE2E:]";
      v17 = 1024;
      v18 = 243;
      v19 = 1024;
      v20 = preferRelayOverP2P;
      v21 = 1024;
      v22 = preferIPv6OverIPv4;
      v23 = 1024;
      v24 = preferNonVPN;
      v25 = 1024;
      v26 = e2eCriteriaEnabled;
      v27 = 1024;
      v28 = preferE2E;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectionSelectionPolicy updated: preferRelayOverP2P[%d] preferIPv6OverIPv4[%d] preferNonVPN[%d] e2eCriteriaEnabled[%d] preferE2E[%d]", &v13, 0x3Au);
    }
  }
}

- (void)updateConnectionSelectionPolicy:(id *)policy
{
  v30 = *MEMORY[0x1E69E9840];
  if (policy)
  {
    self->_connectionSelectionPolicy = *policy;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        preferRelayOverP2P = self->_connectionSelectionPolicy.preferRelayOverP2P;
        preferIPv6OverIPv4 = self->_connectionSelectionPolicy.preferIPv6OverIPv4;
        preferNonVPN = self->_connectionSelectionPolicy.preferNonVPN;
        e2eCriteriaEnabled = self->_connectionSelectionPolicy.e2eCriteriaEnabled;
        preferE2E = self->_connectionSelectionPolicy.preferE2E;
        preferWired = self->_connectionSelectionPolicy.preferWired;
        v12 = 136317186;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCConnectionSelector updateConnectionSelectionPolicy:]";
        v16 = 1024;
        v17 = 256;
        v18 = 1024;
        v19 = preferRelayOverP2P;
        v20 = 1024;
        v21 = preferIPv6OverIPv4;
        v22 = 1024;
        v23 = preferNonVPN;
        v24 = 1024;
        v25 = e2eCriteriaEnabled;
        v26 = 1024;
        v27 = preferE2E;
        v28 = 1024;
        v29 = preferWired;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectionSelectionPolicy updated: preferRelayOverP2P=%d preferIPv6OverIPv4=%d preferNonVPN=%d e2eCriteriaEnabled=%d preferE2E=%d preferWired=%d", &v12, 0x40u);
      }
    }
  }

  else
  {
    [VCConnectionSelector updateConnectionSelectionPolicy:];
  }
}

- (void)updateSelectedConnectionsForGroupType:(unsigned __int8)type connectionAdded:(id)added
{
  typeCopy = type;
  v30 = *MEMORY[0x1E69E9840];
  v7 = 48;
  if (!type)
  {
    v7 = 32;
  }

  v8 = (&self->super.isa + v7);
  if ([added compare:*(&self->super.isa + v7) isPrimary:1 selectionPolicy:&self->_connectionSelectionPolicy] == 1)
  {
    if ([*v8 compare:v8[1] isPrimary:0 selectionPolicy:&self->_connectionSelectionPolicy] == 1)
    {

      v8[1] = *v8;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = v8[1];
          if (v11)
          {
            v12 = [objc_msgSend(v11 "description")];
          }

          else
          {
            v12 = "<nil>";
          }

          v20 = 136316162;
          v21 = v9;
          v22 = 2080;
          v23 = "[VCConnectionSelector updateSelectedConnectionsForGroupType:connectionAdded:]";
          v24 = 1024;
          v25 = 272;
          v26 = 2080;
          v27 = v12;
          v28 = 1024;
          v29 = typeCopy;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Updated secondary connection to: %s for group: %d", &v20, 0x2Cu);
        }
      }
    }

    *v8 = added;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*v8)
        {
          v18 = [objc_msgSend(*v8 "description")];
        }

        else
        {
          v18 = "<nil>";
        }

        v20 = 136316162;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCConnectionSelector updateSelectedConnectionsForGroupType:connectionAdded:]";
        v24 = 1024;
        v25 = 276;
        v26 = 2080;
        v27 = v18;
        v28 = 1024;
        v29 = typeCopy;
        v19 = " [%s] %s:%d HandoverReport: Updated primary connection to: %s for group: %d";
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v19, &v20, 0x2Cu);
      }
    }
  }

  else if ([added compare:v8[1] isPrimary:0 selectionPolicy:&self->_connectionSelectionPolicy] == 1)
  {

    v8[1] = added;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v8[1];
        if (v15)
        {
          v16 = [objc_msgSend(v15 "description")];
        }

        else
        {
          v16 = "<nil>";
        }

        v20 = 136316162;
        v21 = v13;
        v22 = 2080;
        v23 = "[VCConnectionSelector updateSelectedConnectionsForGroupType:connectionAdded:]";
        v24 = 1024;
        v25 = 281;
        v26 = 2080;
        v27 = v16;
        v28 = 1024;
        v29 = typeCopy;
        v19 = " [%s] %s:%d HandoverReport: Updated secondary connection to: %s for group: %d";
        goto LABEL_24;
      }
    }
  }
}

- (void)updateSelectedConnectionsForGroupType:(unsigned __int8)type connectionRemoved:(id)removed connectionArray:(id)array
{
  typeCopy = type;
  v28 = *MEMORY[0x1E69E9840];
  v9 = 48;
  if (!type)
  {
    v9 = 32;
  }

  v10 = (&self->super.isa + v9);
  if (VCConnection_Equal(removed, *(&self->super.isa + v9)))
  {

    *v10 = 0;
    [(VCConnectionSelector *)self selectConnectionForGroupType:typeCopy fromConnectionArray:array asPrimary:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*v10)
        {
          v13 = [objc_msgSend(*v10 "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        v18 = 136316162;
        v19 = v11;
        v20 = 2080;
        v21 = "[VCConnectionSelector updateSelectedConnectionsForGroupType:connectionRemoved:connectionArray:]";
        v22 = 1024;
        v23 = 292;
        v24 = 2080;
        v25 = v13;
        v26 = 1024;
        v27 = typeCopy;
        v17 = " [%s] %s:%d HandoverReport: Updated primary connection to: %s for group: %d";
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v17, &v18, 0x2Cu);
      }
    }
  }

  else if (VCConnection_Equal(removed, v10[1]))
  {

    v10[1] = 0;
    [(VCConnectionSelector *)self selectConnectionForGroupType:typeCopy fromConnectionArray:array asPrimary:0];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v10[1];
        if (v15)
        {
          v16 = [objc_msgSend(v15 "description")];
        }

        else
        {
          v16 = "<nil>";
        }

        v18 = 136316162;
        v19 = v14;
        v20 = 2080;
        v21 = "[VCConnectionSelector updateSelectedConnectionsForGroupType:connectionRemoved:connectionArray:]";
        v22 = 1024;
        v23 = 297;
        v24 = 2080;
        v25 = v16;
        v26 = 1024;
        v27 = typeCopy;
        v17 = " [%s] %s:%d HandoverReport: Updated secondary connection to: %s for group: %d";
        goto LABEL_17;
      }
    }
  }
}

- (void)selectConnectionForGroupType:(unsigned __int8)type fromConnectionArray:(id)array asPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v25 = *MEMORY[0x1E69E9840];
  v8 = 48;
  if (!type)
  {
    v8 = 32;
  }

  v9 = (&self->super.isa + v8);
  v10 = (&self->_primaryConnection + v8);
  v19 = v10;
  if (primary)
  {
    v10 = v9;
  }

  v11 = *v10;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [array countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(array);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ((VCConnection_IsEndToEndLink(v16) & 1) == 0 && [v16 compare:v11 isPrimary:primaryCopy selectionPolicy:&self->_connectionSelectionPolicy] == 1)
        {
          v17 = *v9;
          if (primaryCopy)
          {
            v18 = v9;
          }

          else
          {
            if (VCConnection_IsOnSameInterfacesWithConnection(v16))
            {
              continue;
            }

            v18 = v19;
            v17 = *v19;
          }

          *v18 = v16;
        }
      }

      v13 = [array countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v13);
  }
}

- (id)connectionForGroupType:(unsigned __int8)type isPrimary:(BOOL)primary
{
  v4 = 48;
  if (!type)
  {
    v4 = 32;
  }

  v5 = self + v4;
  v6 = 8;
  if (primary)
  {
    v6 = 0;
  }

  v7 = *&v5[v6];

  return v7;
}

- (BOOL)isPrimaryConnectionSameAsConnection:(id)connection
{
  v10 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    if (self && (primaryConnection = self->_primaryConnection) != 0 && (v6 = CFRetain(primaryConnection)) != 0)
    {
      [(VCConnectionSelector *)v6 isPrimaryConnectionSameAsConnection:connection, &v7];
      return v7;
    }

    else
    {
      [VCConnectionSelector isPrimaryConnectionSameAsConnection:?];
      return v8;
    }
  }

  else
  {
    [VCConnectionSelector isPrimaryConnectionSameAsConnection:?];
    return v9;
  }
}

- ($21C794F2A23EEFF9903A5FA3949B7063)serverLinks
{
  dest[2] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_serverLinks, 16, 1, 0);
  v2 = dest[0];
  v3 = dest[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)updateConnectionSelectionPolicy:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    v1 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v9 = 247;
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d new connection selection policy is nil", v4, v5, v6, v7, v8[0]);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v9 = 247;
      _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d new connection selection policy is nil", v8, 0x1Cu);
    }
  }
}

- (void)isPrimaryConnectionSameAsConnection:(_BYTE *)a3 .cold.1(const void *a1, uint64_t a2, _BYTE *a3)
{
  VCConnection_IsEndToEndLink(a1);
  v6 = OUTLINED_FUNCTION_2_15();
  if (v3 == VCConnection_IsEndToEndLink(v6) && (VCConnection_IsLocalOnWiFiOrWired(a1), v7 = OUTLINED_FUNCTION_2_15(), v3 == VCConnection_IsLocalOnWiFiOrWired(v7)) && (VCConnection_IsRemoteOnWiFiOrWired(a1), v8 = OUTLINED_FUNCTION_2_15(), v3 == VCConnection_IsRemoteOnWiFiOrWired(v8)) && (VCConnection_IsLocalOnWired(a1), v9 = OUTLINED_FUNCTION_2_15(), v3 == VCConnection_IsLocalOnWired(v9)) && (VCConnection_IsRemoteOnWired(a1), v10 = OUTLINED_FUNCTION_2_15(), v3 == VCConnection_IsRemoteOnWired(v10)) && (VCConnection_IsRelay(a1), v11 = OUTLINED_FUNCTION_2_15(), v3 == VCConnection_IsRelay(v11)))
  {
    VCConnection_IsIPv6(a1);
    v12 = OUTLINED_FUNCTION_2_15();
    v13 = v3 ^ VCConnection_IsIPv6(v12) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;

  CFRelease(a1);
}

- (void)isPrimaryConnectionSameAsConnection:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16();
        _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_16(&dword_1DB56E000, v8, v9, " [%s] %s:%d current connection is nil", v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
}

- (void)isPrimaryConnectionSameAsConnection:(_BYTE *)a1 .cold.3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16();
        _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_16(&dword_1DB56E000, v8, v9, " [%s] %s:%d new connection is nil", v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
}

@end