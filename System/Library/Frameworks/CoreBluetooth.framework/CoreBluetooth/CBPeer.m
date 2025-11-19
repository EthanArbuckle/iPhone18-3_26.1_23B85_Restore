@interface CBPeer
- (BOOL)hasTag:(id)a3;
- (CBManager)manager;
- (CBPeer)initWithInfo:(id)a3 manager:(id)a4;
- (id)customProperty:(id)a3;
- (id)customPropertyNames;
- (id)getTags;
- (id)peerStateToString:(int64_t)a3;
- (id)sendInternalSyncMsg:(int)a3 args:(id)a4;
- (unint64_t)hash;
- (void)handleHostStateUpdated:(id)a3;
- (void)handleLinkEncryptionChanged:(id)a3;
- (void)handleMTUChanged:(id)a3;
- (void)handleMsg:(int)a3 args:(id)a4;
- (void)sendInternalMsg:(int)a3 args:(id)a4;
- (void)setCustomProperty:(id)a3 value:(id)a4;
- (void)tag:(id)a3;
- (void)untag:(id)a3;
@end

@implementation CBPeer

- (CBManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (CBPeer)initWithInfo:(id)a3 manager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CBPeer;
  v8 = [(CBPeer *)&v15 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
    v8->_mtuLength = [v11 unsignedIntegerValue];

    v12 = [v6 objectForKeyedSubscript:@"kCBMsgArgPairingState"];
    v8->_pairingState = [v12 integerValue];

    v8->_isLinkEncrypted = 0;
    v8->_hostState = 0;
    v8->_role = -1;
    objc_storeWeak(&v8->_manager, v7);
    v13 = [v6 objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
    v8->_connectedTransport = [v13 unsignedIntegerValue];
  }

  return v8;
}

- (void)handleMsg:(int)a3 args:(id)a4
{
  v6 = a4;
  if ((a3 - 175) < 3)
  {
    [self *off_1E81203B0[a3 - 175]];
LABEL_3:

    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBPeer handleMsg:args:];
  }

  v7 = CBLogComponent;
  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_3;
  }

  [CBScalablePipeManager handleMsg:a3 args:v7];
}

- (id)peerStateToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E81203C8[a3];
  }
}

- (void)handleMTUChanged:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  -[CBPeer setMtuLength:](self, "setMtuLength:", [v4 unsignedIntegerValue]);
}

- (void)handleHostStateUpdated:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgState"];
  -[CBPeer setHostState:](self, "setHostState:", [v4 integerValue]);
}

- (void)handleLinkEncryptionChanged:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgState"];
  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v4 BOOLValue]);
}

- (id)sendInternalSyncMsg:(int)a3 args:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v7 = [(CBPeer *)self identifier];
  [v6 setObject:v7 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v8 = [(CBPeer *)self manager];
  v9 = [v8 sendSyncMsg:v4 args:v6];

  return v9;
}

- (void)sendInternalMsg:(int)a3 args:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v9 = v6;
  v7 = [(CBPeer *)self identifier];
  [v9 setObject:v7 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained sendMsg:v4 args:v9];
}

- (void)tag:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgName", 0}];
  [(CBPeer *)self sendInternalMsg:179 args:v4];
}

- (void)untag:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgName", 0}];
  [(CBPeer *)self sendInternalMsg:180 args:v4];
}

- (BOOL)hasTag:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgName", 0}];
  v5 = [(CBPeer *)self sendInternalSyncMsg:181 args:v4];

  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgData"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)getTags
{
  v2 = [(CBPeer *)self sendInternalSyncMsg:182 args:0];
  v3 = [v2 objectForKeyedSubscript:@"kCBMsgArgData"];

  return v3;
}

- (void)setCustomProperty:(id)a3 value:(id)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgName", a4, @"kCBMsgArgValue", 0}];
  [(CBPeer *)self sendInternalMsg:183 args:v5];
}

- (id)customProperty:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgName", 0}];
  v5 = [(CBPeer *)self sendInternalSyncMsg:184 args:v4];

  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgCustomPropertyValue"];

  return v6;
}

- (id)customPropertyNames
{
  v2 = [(CBPeer *)self sendInternalSyncMsg:185 args:0];
  v3 = [v2 objectForKeyedSubscript:@"kCBMsgArgCustomPropertyNames"];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(CBPeer *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end