@interface AXAssistiveTouchServer
+ (id)server;
- (BOOL)_connectIfNecessary;
- (BOOL)home;
- (BOOL)isMenuOpen;
- (BOOL)setPointerPosition:(CGPoint)position;
- (BOOL)tapMenuItem:(id)item;
- (CGPoint)getMenuItemPosition:(id)position;
- (CGPoint)getNubbitPosition;
- (CGPoint)getPointerPosition;
- (id)currentBubbleElement;
- (id)menuItems;
- (void)_didConnectToClient;
- (void)_wasDisconnectedFromClient;
- (void)_willClearServer;
- (void)closeMenu;
- (void)menuAction:(id)action;
- (void)openMenu;
- (void)pointerClick;
- (void)setNubbitPosition:(CGPoint)position;
- (void)virtualPointer:(BOOL)pointer;
@end

@implementation AXAssistiveTouchServer

+ (id)server
{
  if (server_onceToken_3 != -1)
  {
    +[AXAssistiveTouchServer server];
  }

  v3 = server_Server_3;

  return v3;
}

uint64_t __32__AXAssistiveTouchServer_server__block_invoke()
{
  server_Server_3 = objc_alloc_init(AXAssistiveTouchServer);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_connectIfNecessary
{
  if (_AXSAssistiveTouchScannerEnabled() || (v3 = _AXSAssistiveTouchEnabled()) != 0)
  {
    v5.receiver = self;
    v5.super_class = AXAssistiveTouchServer;
    LOBYTE(v3) = [(AXServer *)&v5 _connectIfNecessary];
  }

  return v3;
}

- (void)_didConnectToClient
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AXSwitchControlServer *)self _didConnectToClient];
  }
}

- (void)_wasDisconnectedFromClient
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AXSwitchControlServer *)self _wasDisconnectedFromClient];
  }
}

- (void)_willClearServer
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AXSwitchControlServer *)self _willClearServer];
  }
}

- (BOOL)home
{
  _connectIfNecessary = [(AXAssistiveTouchServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6002 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (CGPoint)getNubbitPosition
{
  v3 = -1.0;
  v4 = -1.0;
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v5 initWithKey:6023 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v8 = [client sendMessage:v6 withError:0];

    payload = [v8 payload];
    v10 = [payload objectForKeyedSubscript:@"result"];
    [v10 axCGPointValue];
    v3 = v11;
    v4 = v12;
  }

  v13 = v3;
  v14 = v4;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setNubbitPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v6 = [AXIPCMessage alloc];
    v13 = @"action";
    *v12 = x;
    *&v12[1] = y;
    v7 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"{CGPoint=dd}"];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:6024 payload:v8];

    client = [(AXServer *)self client];
    v11 = [client sendMessage:v9 withError:0];
  }
}

- (void)openMenu
{
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v3 initWithKey:6020 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v6 withError:0];
  }
}

- (void)closeMenu
{
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v3 initWithKey:6021 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v6 withError:0];
  }
}

- (BOOL)isMenuOpen
{
  _connectIfNecessary = [(AXAssistiveTouchServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [AXIPCMessage alloc];
    v5 = [(AXIPCMessage *)v4 initWithKey:6022 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v7 = [client sendMessage:v5 withError:0];

    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];

    LOBYTE(_connectIfNecessary) = bOOLValue;
  }

  return _connectIfNecessary;
}

- (id)menuItems
{
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:6025 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v6 = [client sendMessage:v4 withError:0];

    payload = [v6 payload];
    v8 = [payload objectForKeyedSubscript:@"result"];
    stringValue = [v8 stringValue];

    v10 = [stringValue componentsSeparatedByString:@"|"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)tapMenuItem:(id)item
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v14 = @"action";
    v15[0] = itemCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v7 = [(AXIPCMessage *)v5 initWithKey:6026 payload:v6];

    client = [(AXServer *)self client];
    v9 = [client sendMessage:v7 withError:0];

    payload = [v9 payload];
    v11 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)menuAction:(id)action
{
  v11[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"action";
    v11[0] = actionCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [(AXIPCMessage *)v5 initWithKey:6027 payload:v6];

    client = [(AXServer *)self client];
    v9 = [client sendMessage:v7 withError:0];
  }
}

- (CGPoint)getMenuItemPosition:(id)position
{
  v19[1] = *MEMORY[0x1E69E9840];
  positionCopy = position;
  v5 = -1.0;
  v6 = -1.0;
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v7 = [AXIPCMessage alloc];
    v18 = @"action";
    v19[0] = positionCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [(AXIPCMessage *)v7 initWithKey:6033 payload:v8];

    client = [(AXServer *)self client];
    v11 = [client sendMessage:v9 withError:0];

    payload = [v11 payload];
    v13 = [payload objectForKeyedSubscript:@"result"];
    [v13 axCGPointValue];
    v5 = v14;
    v6 = v15;
  }

  v16 = v5;
  v17 = v6;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)virtualPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v11 = @"action";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:pointerCopy];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:6028 payload:v7];

    client = [(AXServer *)self client];
    v10 = [client sendMessage:v8 withError:0];
  }
}

- (CGPoint)getPointerPosition
{
  v3 = -1.0;
  v4 = -1.0;
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v5 initWithKey:6029 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v8 = [client sendMessage:v6 withError:0];

    payload = [v8 payload];
    v10 = [payload objectForKeyedSubscript:@"result"];
    [v10 axCGPointValue];
    v3 = v11;
    v4 = v12;
  }

  v13 = v3;
  v14 = v4;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)setPointerPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v18[1] = *MEMORY[0x1E69E9840];
  if (![(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v6 = [AXIPCMessage alloc];
  v17 = @"action";
  *v16 = x;
  *&v16[1] = y;
  v7 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  v18[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [(AXIPCMessage *)v6 initWithKey:6030 payload:v8];

  client = [(AXServer *)self client];
  v11 = [client sendMessage:v9 withError:0];

  payload = [v11 payload];
  v13 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v13 BOOLValue];

  return bOOLValue;
}

- (void)pointerClick
{
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v6 = [(AXIPCMessage *)v3 initWithKey:6032 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v6 withError:0];
  }
}

- (id)currentBubbleElement
{
  if ([(AXAssistiveTouchServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:6031 payload:MEMORY[0x1E695E0F8]];
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

@end