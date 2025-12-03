@interface CBPeer
- (BOOL)hasTag:(id)tag;
- (CBManager)manager;
- (CBPeer)initWithInfo:(id)info manager:(id)manager;
- (id)customProperty:(id)property;
- (id)customPropertyNames;
- (id)getTags;
- (id)peerStateToString:(int64_t)string;
- (id)sendInternalSyncMsg:(int)msg args:(id)args;
- (unint64_t)hash;
- (void)handleHostStateUpdated:(id)updated;
- (void)handleLinkEncryptionChanged:(id)changed;
- (void)handleMTUChanged:(id)changed;
- (void)handleMsg:(int)msg args:(id)args;
- (void)sendInternalMsg:(int)msg args:(id)args;
- (void)setCustomProperty:(id)property value:(id)value;
- (void)tag:(id)tag;
- (void)untag:(id)untag;
@end

@implementation CBPeer

- (CBManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (CBPeer)initWithInfo:(id)info manager:(id)manager
{
  infoCopy = info;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CBPeer;
  v8 = [(CBPeer *)&v15 init];
  if (v8)
  {
    v9 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
    v8->_mtuLength = [v11 unsignedIntegerValue];

    v12 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgPairingState"];
    v8->_pairingState = [v12 integerValue];

    v8->_isLinkEncrypted = 0;
    v8->_hostState = 0;
    v8->_role = -1;
    objc_storeWeak(&v8->_manager, managerCopy);
    v13 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
    v8->_connectedTransport = [v13 unsignedIntegerValue];
  }

  return v8;
}

- (void)handleMsg:(int)msg args:(id)args
{
  argsCopy = args;
  if ((msg - 175) < 3)
  {
    [self *off_1E81203B0[msg - 175]];
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

  [CBScalablePipeManager handleMsg:msg args:v7];
}

- (id)peerStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E81203C8[string];
  }
}

- (void)handleMTUChanged:(id)changed
{
  v4 = [changed objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  -[CBPeer setMtuLength:](self, "setMtuLength:", [v4 unsignedIntegerValue]);
}

- (void)handleHostStateUpdated:(id)updated
{
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgState"];
  -[CBPeer setHostState:](self, "setHostState:", [v4 integerValue]);
}

- (void)handleLinkEncryptionChanged:(id)changed
{
  v4 = [changed objectForKeyedSubscript:@"kCBMsgArgState"];
  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v4 BOOLValue]);
}

- (id)sendInternalSyncMsg:(int)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  identifier = [(CBPeer *)self identifier];
  [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  manager = [(CBPeer *)self manager];
  v9 = [manager sendSyncMsg:msgCopy args:argsCopy];

  return v9;
}

- (void)sendInternalMsg:(int)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v9 = argsCopy;
  identifier = [(CBPeer *)self identifier];
  [v9 setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained sendMsg:msgCopy args:v9];
}

- (void)tag:(id)tag
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{tag, @"kCBMsgArgName", 0}];
  [(CBPeer *)self sendInternalMsg:179 args:v4];
}

- (void)untag:(id)untag
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{untag, @"kCBMsgArgName", 0}];
  [(CBPeer *)self sendInternalMsg:180 args:v4];
}

- (BOOL)hasTag:(id)tag
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{tag, @"kCBMsgArgName", 0}];
  v5 = [(CBPeer *)self sendInternalSyncMsg:181 args:v4];

  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgData"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)getTags
{
  v2 = [(CBPeer *)self sendInternalSyncMsg:182 args:0];
  v3 = [v2 objectForKeyedSubscript:@"kCBMsgArgData"];

  return v3;
}

- (void)setCustomProperty:(id)property value:(id)value
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{property, @"kCBMsgArgName", value, @"kCBMsgArgValue", 0}];
  [(CBPeer *)self sendInternalMsg:183 args:v5];
}

- (id)customProperty:(id)property
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{property, @"kCBMsgArgName", 0}];
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
  identifier = [(CBPeer *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end