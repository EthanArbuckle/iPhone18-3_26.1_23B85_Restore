@interface AXClarityBoardServer
+ (BOOL)isAvailable;
+ (id)server;
- (BOOL)isSystemSleeping;
- (int)_pidFromReply:(id)reply;
- (int)pid;
- (int64_t)_BOOLFromReply:(id)reply;
- (int64_t)_integerFromReply:(id)reply;
- (int64_t)activeInterfaceOrientation;
- (void)_didConnectToClient;
- (void)_wasDisconnectedFromClient;
- (void)activeInterfaceOrientation:(id)orientation;
- (void)goHome;
- (void)pid:(id)pid;
- (void)setOrientation:(int64_t)orientation;
- (void)unlockDevice;
- (void)wakeUpDeviceIfNecessary;
@end

@implementation AXClarityBoardServer

+ (BOOL)isAvailable
{
  mEMORY[0x1E6994660] = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994660] isClarityBoardEnabled];

  return isClarityBoardEnabled;
}

+ (id)server
{
  if ([self isAvailable])
  {
    if (server_onceToken_5 != -1)
    {
      +[AXClarityBoardServer server];
    }

    v2 = server_Server_5;
  }

  else
  {
    commonLog = [MEMORY[0x1E6994620] commonLog];
    if (os_log_type_enabled(commonLog, OS_LOG_TYPE_FAULT))
    {
      +[(AXClarityBoardServer *)commonLog];
    }

    v2 = 0;
  }

  return v2;
}

uint64_t __30__AXClarityBoardServer_server__block_invoke()
{
  server_Server_5 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)activeInterfaceOrientation
{
  if (![(AXServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:AXClarityBoardMessageKeyActiveInterfaceOrientation payload:0];
  client = [(AXServer *)self client];
  v6 = [client sendMessage:v4 withError:0];

  v7 = [(AXClarityBoardServer *)self _integerFromReply:v6];
  return v7;
}

- (void)activeInterfaceOrientation:(id)orientation
{
  orientationCopy = orientation;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v5 initWithKey:AXClarityBoardMessageKeyActiveInterfaceOrientation payload:0];
    client = [(AXServer *)self client];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__AXClarityBoardServer_activeInterfaceOrientation___block_invoke_2;
    v9[3] = &unk_1E71EB3F8;
    v9[4] = self;
    v10 = orientationCopy;
    v8 = orientationCopy;
    [client sendAsyncMessage:v6 replyOnQueue:MEMORY[0x1E69E96A0] replyHandler:v9];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AXClarityBoardServer_activeInterfaceOrientation___block_invoke;
    block[3] = &unk_1E71EA2F0;
    v12 = orientationCopy;
    v6 = orientationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v8 = v12;
  }
}

uint64_t __51__AXClarityBoardServer_activeInterfaceOrientation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _integerFromReply:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (BOOL)isSystemSleeping
{
  if (![(AXServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:AXClarityBoardMessageKeyIsSystemSleeping payload:0];
  client = [(AXServer *)self client];
  v6 = [client sendMessage:v4 withError:0];

  v7 = [(AXClarityBoardServer *)self _BOOLFromReply:v6]!= 0;
  return v7;
}

- (int)pid
{
  result = _ClarityBoardPid;
  if (_ClarityBoardPid == -1)
  {
    if ([(AXServer *)self _connectIfNecessary])
    {
      v4 = [AXIPCMessage alloc];
      v5 = [(AXIPCMessage *)v4 initWithKey:AXClarityBoardMessageKeyPID payload:0];
      client = [(AXServer *)self client];
      v7 = [client sendMessage:v5 withError:0];

      _ClarityBoardPid = [(AXClarityBoardServer *)self _pidFromReply:v7];
      return _ClarityBoardPid;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

- (void)pid:(id)pid
{
  pidCopy = pid;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = _ClarityBoardPid;
    if (_ClarityBoardPid == -1)
    {
      v7 = [AXIPCMessage alloc];
      v6 = [(AXIPCMessage *)v7 initWithKey:AXClarityBoardMessageKeyPID payload:0];
      client = [(AXServer *)self client];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __28__AXClarityBoardServer_pid___block_invoke_3;
      v9[3] = &unk_1E71EA7C8;
      v9[4] = self;
      v10 = pidCopy;
      [client sendAsyncMessage:v6 replyOnQueue:MEMORY[0x1E69E96A0] replyHandler:v9];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__AXClarityBoardServer_pid___block_invoke_2;
      block[3] = &unk_1E71EA318;
      v12 = pidCopy;
      v13 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v6 = v12;
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __28__AXClarityBoardServer_pid___block_invoke;
    v14[3] = &unk_1E71EA2F0;
    v15 = pidCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
    v6 = v15;
  }
}

uint64_t __28__AXClarityBoardServer_pid___block_invoke_3(uint64_t a1, uint64_t a2)
{
  _ClarityBoardPid = [*(a1 + 32) _pidFromReply:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)wakeUpDeviceIfNecessary
{
  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:AXClarityBoardMessageKeyWakeUpDeviceIfNecessary payload:0];
  [(AXServer *)self sendSimpleMessage:v4];
}

- (void)setOrientation:(int64_t)orientation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v6 = AXClarityBoardMessageKeySetOrientation;
  v10 = @"orientation";
  v7 = [MEMORY[0x1E696AD98] numberWithLong:orientation];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [(AXIPCMessage *)v5 initWithKey:v6 payload:v8];
  [(AXServer *)self sendSimpleMessage:v9];
}

- (void)goHome
{
  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:AXClarityBoardMessageKeyGoHome payload:0];
  [(AXServer *)self sendSimpleMessage:v4];
}

- (void)unlockDevice
{
  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:AXClarityBoardMessageKeyUnlockDevice payload:0];
  [(AXServer *)self sendSimpleMessage:v4];
}

- (void)_wasDisconnectedFromClient
{
  v3.receiver = self;
  v3.super_class = AXClarityBoardServer;
  [(AXServer *)&v3 _wasDisconnectedFromClient];
  _ClarityBoardPid = -1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AXSystemAppServerDiedNotification" object:0];
}

- (void)_didConnectToClient
{
  v2.receiver = self;
  v2.super_class = AXClarityBoardServer;
  [(AXServer *)&v2 _didConnectToClient];
  _ClarityBoardPid = -1;
}

- (int64_t)_BOOLFromReply:(id)reply
{
  if (!reply)
  {
    return 0;
  }

  payload = [reply payload];
  v4 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (int64_t)_integerFromReply:(id)reply
{
  if (!reply)
  {
    return 0;
  }

  payload = [reply payload];
  v4 = [payload objectForKeyedSubscript:@"result"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int)_pidFromReply:(id)reply
{
  if (!reply)
  {
    return -1;
  }

  payload = [reply payload];
  v4 = [payload objectForKeyedSubscript:@"result"];
  intValue = [v4 intValue];

  if (intValue)
  {
    return intValue;
  }

  else
  {
    return -1;
  }
}

@end