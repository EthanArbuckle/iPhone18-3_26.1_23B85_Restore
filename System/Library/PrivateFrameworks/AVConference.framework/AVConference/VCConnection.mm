@interface VCConnection
- (VCConnection)init;
- (id)getConnectionSelectionPriorities;
- (int64_t)compare:(id)compare isPrimary:(BOOL)primary selectionPolicy:(id *)policy;
- (int64_t)compareConnectionTypePriority:(id)priority selectionPolicy:(id *)policy;
- (int64_t)compareE2EPriority:(id)priority selectionPolicy:(id *)policy;
- (int64_t)compareInterfacePriority:(id)priority isPrimary:(BOOL)primary preferWired:(BOOL)wired;
- (int64_t)compareIpVersionPriority:(id)priority selectionPolicy:(id *)policy;
- (int64_t)compareVpnPriority:(id)priority selectionPolicy:(id *)policy;
- (void)dealloc;
- (void)setLinkFlags:(unsigned __int16)flags;
- (void)setPreviousLinkFlags:(unsigned __int16)flags;
- (void)setPreviousRemoteLinkFlags:(unsigned __int16)flags;
- (void)setRemoteLinkFlags:(unsigned __int16)flags;
@end

@implementation VCConnection

- (VCConnection)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCConnection;
  v2 = [(VCConnection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VCConnection *)v2 setUpVTable];
    v3->_connectionSelectionPriorities = [(VCConnection *)v3 getConnectionSelectionPriorities];
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCConnection;
  [(VCConnection *)&v3 dealloc];
}

- (void)setLinkFlags:(unsigned __int16)flags
{
  v15 = *MEMORY[0x1E69E9840];
  self->_previousLinkFlags = self->_linkFlags;
  self->_linkFlags = flags;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      linkFlags = self->_linkFlags;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnection setLinkFlags:]";
      v11 = 1024;
      v12 = 85;
      v13 = 1024;
      v14 = linkFlags;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set link flags='%08x'", &v7, 0x22u);
    }
  }
}

- (void)setPreviousLinkFlags:(unsigned __int16)flags
{
  v15 = *MEMORY[0x1E69E9840];
  self->_previousLinkFlags = flags;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      previousLinkFlags = self->_previousLinkFlags;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnection setPreviousLinkFlags:]";
      v11 = 1024;
      v12 = 90;
      v13 = 1024;
      v14 = previousLinkFlags;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set previous link flags='%08x'", &v7, 0x22u);
    }
  }
}

- (void)setRemoteLinkFlags:(unsigned __int16)flags
{
  v15 = *MEMORY[0x1E69E9840];
  self->_previousRemoteLinkFlags = self->_remoteLinkFlags;
  self->_remoteLinkFlags = flags;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remoteLinkFlags = self->_remoteLinkFlags;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnection setRemoteLinkFlags:]";
      v11 = 1024;
      v12 = 96;
      v13 = 1024;
      v14 = remoteLinkFlags;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set remote link flags='%08x'", &v7, 0x22u);
    }
  }
}

- (void)setPreviousRemoteLinkFlags:(unsigned __int16)flags
{
  v15 = *MEMORY[0x1E69E9840];
  self->_previousRemoteLinkFlags = flags;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      previousRemoteLinkFlags = self->_previousRemoteLinkFlags;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnection setPreviousRemoteLinkFlags:]";
      v11 = 1024;
      v12 = 101;
      v13 = 1024;
      v14 = previousRemoteLinkFlags;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set previous remote link flags='%08x'", &v7, 0x22u);
    }
  }
}

- (int64_t)compare:(id)compare isPrimary:(BOOL)primary selectionPolicy:(id *)policy
{
  v30 = *MEMORY[0x1E69E9840];
  if (!compare)
  {
    return 1;
  }

  primaryCopy = primary;
  if (!policy->var3 || (result = [(VCConnection *)self compareE2EPriority:compare selectionPolicy:policy]) == 0)
  {
    result = [(VCConnection *)self compareInterfacePriority:compare isPrimary:primaryCopy preferWired:policy->var5];
    if (!result)
    {
      result = [(VCConnection *)self compareConnectionTypePriority:compare selectionPolicy:policy];
      if (!result)
      {
        result = [(VCConnection *)self compareIpVersionPriority:compare selectionPolicy:policy];
        if (!result)
        {
          result = [(VCConnection *)self compareVpnPriority:compare selectionPolicy:policy];
          if (!result)
          {
            connectionUUID = [(VCConnection *)self connectionUUID];
            connectionUUID2 = [compare connectionUUID];
            v12 = [objc_msgSend(connectionUUID "UUIDString")];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                uUIDString = [connectionUUID UUIDString];
                uUIDString2 = [connectionUUID2 UUIDString];
                v18 = 136316418;
                v17 = "Old";
                v19 = v13;
                v21 = "[VCConnection compare:isPrimary:selectionPolicy:]";
                v22 = 1024;
                v20 = 2080;
                if (v12 == -1)
                {
                  v17 = "New";
                }

                v23 = 137;
                v24 = 2112;
                v25 = uUIDString;
                v26 = 2112;
                v27 = uUIDString2;
                v28 = 2080;
                v29 = v17;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: connections %@, and %@ are identical for primary, choosing %s", &v18, 0x3Au);
              }
            }

            if (v12 == -1)
            {
              return 1;
            }

            else
            {
              return -1;
            }
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)compareInterfacePriority:(id)priority isPrimary:(BOOL)primary preferWired:(BOOL)wired
{
  wiredCopy = wired;
  if (primary)
  {
    v8 = @"connectionPrimary";
  }

  else
  {
    v8 = @"connectionSecondary";
  }

  v9 = [-[NSDictionary objectForKeyedSubscript:](self->_connectionSelectionPriorities objectForKeyedSubscript:{@"interfacePriority", "objectForKeyedSubscript:", v8}];
  if (wiredCopy)
  {
    if (VCConnection_IsLocalOnWired(self))
    {
      v10 = @"interfaceWired";
    }

    else if (VCConnection_IsLocalOnWiFiOrWired(self))
    {
      v10 = @"interfaceWiFi";
    }

    else
    {
      v10 = @"interfaceCellular";
    }

    if (VCConnection_IsRemoteOnWired(self))
    {
      v11 = @"interfaceWired";
    }

    else if (VCConnection_IsRemoteOnWiFiOrWired(self))
    {
      v11 = @"interfaceWiFi";
    }

    else
    {
      v11 = @"interfaceCellular";
    }

    if (VCConnection_IsLocalOnWired(priority))
    {
      v12 = @"interfaceWired";
    }

    else if (VCConnection_IsLocalOnWiFiOrWired(priority))
    {
      v12 = @"interfaceWiFi";
    }

    else
    {
      v12 = @"interfaceCellular";
    }

    if (VCConnection_IsRemoteOnWired(priority))
    {
      v13 = @"interfaceWired";
      goto LABEL_34;
    }
  }

  else
  {
    if (VCConnection_IsLocalOnWiFiOrWired(self))
    {
      v10 = @"interfaceWiFi";
    }

    else
    {
      v10 = @"interfaceCellular";
    }

    if (VCConnection_IsRemoteOnWiFiOrWired(self))
    {
      v11 = @"interfaceWiFi";
    }

    else
    {
      v11 = @"interfaceCellular";
    }

    if (VCConnection_IsLocalOnWiFiOrWired(priority))
    {
      v12 = @"interfaceWiFi";
    }

    else
    {
      v12 = @"interfaceCellular";
    }
  }

  if (VCConnection_IsRemoteOnWiFiOrWired(priority))
  {
    v13 = @"interfaceWiFi";
  }

  else
  {
    v13 = @"interfaceCellular";
  }

LABEL_34:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v11), "intValue") + objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v10), "intValue")}];
  result = [v14 compare:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v13), "intValue") + objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v12), "intValue"))}];
  if (!wiredCopy && !result)
  {
    v16 = [v9 objectForKeyedSubscript:v10];
    if (v16 == [v9 objectForKeyedSubscript:v12])
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

- (int64_t)compareConnectionTypePriority:(id)priority selectionPolicy:(id *)policy
{
  if (policy->var0)
  {
    v6 = @"preferRelay";
  }

  else
  {
    v6 = @"preferP2P";
  }

  v7 = [-[NSDictionary objectForKeyedSubscript:](self->_connectionSelectionPriorities objectForKeyedSubscript:{@"connectionTypePriority", "objectForKeyedSubscript:", v6}];
  if (VCConnection_IsRelay(self))
  {
    v8 = @"connectionTypeRelay";
  }

  else
  {
    v8 = @"connectionTypeP2P";
  }

  if (VCConnection_IsRelay(priority))
  {
    v9 = @"connectionTypeRelay";
  }

  else
  {
    v9 = @"connectionTypeP2P";
  }

  v10 = [v7 objectForKeyedSubscript:v8];
  v11 = [v7 objectForKeyedSubscript:v9];

  return [v10 compare:v11];
}

- (int64_t)compareVpnPriority:(id)priority selectionPolicy:(id *)policy
{
  if (!policy->var2)
  {
    return 0;
  }

  if (-[VCConnection isVPN](self, "isVPN") & 1) == 0 && ([priority isVPN])
  {
    return 1;
  }

  if (-[VCConnection isVPN](self, "isVPN") && ![priority isVPN])
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)compareE2EPriority:(id)priority selectionPolicy:(id *)policy
{
  IsEndToEndLink = VCConnection_IsEndToEndLink(self);
  v7 = VCConnection_IsEndToEndLink(priority);
  if (!IsEndToEndLink || (v7 & 1) != 0)
  {
    if (IsEndToEndLink & 1 | ((v7 & 1) == 0))
    {
      return 0;
    }

    v8 = !policy->var4;
    v9 = -1;
  }

  else
  {
    v8 = !policy->var4;
    v9 = 1;
  }

  if (v8)
  {
    return -v9;
  }

  else
  {
    return v9;
  }
}

- (int64_t)compareIpVersionPriority:(id)priority selectionPolicy:(id *)policy
{
  if (policy->var1)
  {
    v6 = @"preferIPv6";
  }

  else
  {
    v6 = @"preferIPv4";
  }

  v7 = [-[NSDictionary objectForKeyedSubscript:](self->_connectionSelectionPriorities objectForKeyedSubscript:{@"networkTypePriority", "objectForKeyedSubscript:", v6}];
  if (VCConnection_IsIPv6(self))
  {
    v8 = @"IPv6";
  }

  else
  {
    v8 = @"IPv4";
  }

  if (VCConnection_IsIPv6(priority))
  {
    v9 = @"IPv6";
  }

  else
  {
    v9 = @"IPv4";
  }

  v10 = [v7 objectForKeyedSubscript:v8];
  v11 = [v7 objectForKeyedSubscript:v9];

  return [v10 compare:v11];
}

- (id)getConnectionSelectionPriorities
{
  v25[3] = *MEMORY[0x1E69E9840];
  v24[0] = @"interfacePriority";
  v20[0] = @"interfaceWired";
  v20[1] = @"interfaceWiFi";
  v21[0] = &unk_1F5799900;
  v21[1] = &unk_1F5799918;
  v20[2] = @"interfaceCellular";
  v21[2] = &unk_1F5799930;
  v22[0] = @"connectionPrimary";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v22[1] = @"connectionSecondary";
  v23[0] = v2;
  v18[0] = @"interfaceWired";
  v18[1] = @"interfaceWiFi";
  v19[0] = &unk_1F5799948;
  v19[1] = &unk_1F5799930;
  v18[2] = @"interfaceCellular";
  v19[2] = &unk_1F5799918;
  v23[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v25[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24[1] = @"connectionTypePriority";
  v15[1] = &unk_1F5799930;
  v16[0] = @"preferP2P";
  v14[0] = @"connectionTypeP2P";
  v14[1] = @"connectionTypeRelay";
  v15[0] = &unk_1F5799918;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[1] = @"preferRelay";
  v17[0] = v3;
  v12[0] = @"connectionTypeP2P";
  v12[1] = @"connectionTypeRelay";
  v13[0] = &unk_1F5799930;
  v13[1] = &unk_1F5799918;
  v17[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v25[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v24[2] = @"networkTypePriority";
  v9[1] = &unk_1F5799930;
  v10[0] = @"preferIPv4";
  v8[0] = @"IPv4";
  v8[1] = @"IPv6";
  v9[0] = &unk_1F5799918;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[1] = @"preferIPv6";
  v11[0] = v4;
  v6[0] = @"IPv4";
  v6[1] = @"IPv6";
  v7[0] = &unk_1F5799930;
  v7[1] = &unk_1F5799918;
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v25[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
}

@end