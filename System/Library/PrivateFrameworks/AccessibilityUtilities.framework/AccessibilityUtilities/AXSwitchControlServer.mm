@interface AXSwitchControlServer
+ (id)server;
- (BOOL)_connectIfNecessary;
- (BOOL)_triggerAutomationCommand:(int64_t)command;
- (BOOL)isAutoScanEnabled;
- (BOOL)isDwellEnabled;
- (BOOL)isManualScanEnabled;
- (BOOL)isScannerActive;
- (BOOL)isScannerPaused;
- (BOOL)setPointerPoint:(CGPoint)point;
- (BOOL)triggerCommand:(int64_t)command;
- (CGPoint)headTrackingPoint;
- (CGPoint)pointerPoint;
- (id)currentFocusedElement;
- (id)lastSpokenPhrases;
- (void)_didConnectToClient;
- (void)_wasDisconnectedFromClient;
- (void)_willClearServer;
- (void)clearSpokenPhrases;
@end

@implementation AXSwitchControlServer

+ (id)server
{
  if (server_onceToken_1 != -1)
  {
    +[AXSwitchControlServer server];
  }

  v3 = server_Server_1;

  return v3;
}

uint64_t __31__AXSwitchControlServer_server__block_invoke()
{
  server_Server_1 = objc_alloc_init(AXSwitchControlServer);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_connectIfNecessary
{
  if (_AXSAssistiveTouchScannerEnabled() || (v3 = _AXSAssistiveTouchEnabled()) != 0)
  {
    v5.receiver = self;
    v5.super_class = AXSwitchControlServer;
    LOBYTE(v3) = [(AXServer *)&v5 _connectIfNecessary];
  }

  return v3;
}

- (void)_didConnectToClient
{
  _serviceName = [self _serviceName];
  OUTLINED_FUNCTION_0_1(&dword_18B15E000, v2, v3, "%@ did connect", v4, v5, v6, v7, 2u);
}

- (void)_wasDisconnectedFromClient
{
  _serviceName = [self _serviceName];
  OUTLINED_FUNCTION_0_1(&dword_18B15E000, v2, v3, "%@ was disconnected", v4, v5, v6, v7, 2u);
}

- (void)_willClearServer
{
  _serviceName = [self _serviceName];
  OUTLINED_FUNCTION_0_1(&dword_18B15E000, v2, v3, "%@ will clear server info", v4, v5, v6, v7, 2u);
}

- (BOOL)_triggerAutomationCommand:(int64_t)command
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (![(AXSwitchControlServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v5 = [AXIPCMessage alloc];
  v15 = @"command";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:command];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:6509 payload:v7];

  client = [(AXServer *)self client];
  v10 = [client sendMessage:v8 withError:0];

  payload = [v10 payload];
  v12 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v12 BOOLValue];

  return bOOLValue;
}

- (BOOL)triggerCommand:(int64_t)command
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (![(AXSwitchControlServer *)self _connectIfNecessary])
  {
    return 0;
  }

  if ((command - 1) > 0x1B)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_18B2F8028[command - 1];
  }

  v7 = [AXIPCMessage alloc];
  v16 = @"action";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v17[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [(AXIPCMessage *)v7 initWithKey:6500 payload:v9];

  client = [(AXServer *)self client];
  v12 = [client sendMessage:v10 withError:0];

  payload = [v12 payload];
  v14 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v14 BOOLValue];

  return bOOLValue;
}

- (id)currentFocusedElement
{
  if ([(AXSwitchControlServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:6501 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v6 = [client sendMessage:v4 withError:0];

    payload = [v6 payload];
    v8 = [payload objectForKeyedSubscript:@"result"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)lastSpokenPhrases
{
  if ([(AXSwitchControlServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:6503 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v6 = [client sendMessage:v4 withError:0];

    payload = [v6 payload];
    v8 = [payload objectForKeyedSubscript:@"result"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearSpokenPhrases
{
  if ([(AXSwitchControlServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v3 initWithKey:6511 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v6 withError:0];
  }
}

- (BOOL)isScannerActive
{
  _connectIfNecessary = [(AXSwitchControlServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6507 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (BOOL)isScannerPaused
{
  _connectIfNecessary = [(AXSwitchControlServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6508 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (BOOL)isAutoScanEnabled
{
  _connectIfNecessary = [(AXSwitchControlServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6504 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (BOOL)isManualScanEnabled
{
  _connectIfNecessary = [(AXSwitchControlServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6505 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (BOOL)isDwellEnabled
{
  _connectIfNecessary = [(AXSwitchControlServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6506 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (CGPoint)headTrackingPoint
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(AXSwitchControlServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v5 initWithKey:6510 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v8 = [client sendMessage:v6 withError:0];

    payload = [v8 payload];
    v10 = [payload objectForKeyedSubscript:@"result"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 pointValue];
      v3 = v11;
      v4 = v12;
    }
  }

  v13 = v3;
  v14 = v4;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)pointerPoint
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(AXSwitchControlServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v5 initWithKey:6513 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v8 = [client sendMessage:v6 withError:0];

    payload = [v8 payload];
    v10 = [payload objectForKeyedSubscript:@"result"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 pointValue];
      v3 = v11;
      v4 = v12;
    }
  }

  v13 = v3;
  v14 = v4;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)setPointerPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v17[1] = *MEMORY[0x1E69E9840];
  if (![(AXSwitchControlServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v6 = [MEMORY[0x1E696B098] valueWithPoint:{x, y}];
  v7 = [AXIPCMessage alloc];
  v16 = @"point";
  v17[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [(AXIPCMessage *)v7 initWithKey:6512 payload:v8];

  client = [(AXServer *)self client];
  v11 = [client sendMessage:v9 withError:0];

  payload = [v11 payload];
  v13 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v13 BOOLValue];

  return bOOLValue;
}

@end