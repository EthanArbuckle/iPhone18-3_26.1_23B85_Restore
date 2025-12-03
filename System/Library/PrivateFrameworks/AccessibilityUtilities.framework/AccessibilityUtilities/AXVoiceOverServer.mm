@interface AXVoiceOverServer
+ (id)server;
- (BOOL)_connectIfNecessary;
- (BOOL)isBluetoothBrailleDisplayConnected;
- (BOOL)isBrailleInputUIShowing;
- (BOOL)isBrailleScreenInputInScreenAwayMode;
- (BOOL)isHandwritingInputUIShowing;
- (BOOL)isScreenCurtainEnabled;
- (BOOL)triggerCommand:(int64_t)command;
- (BOOL)triggerCommand:(int64_t)command withArgument:(id)argument;
- (BOOL)triggerEventCommand:(id)command;
- (BOOL)triggerGesture:(id)gesture;
- (CGRect)currentCursorFrame;
- (id)currentFocusedElement;
- (id)currentRotorName;
- (id)lastScreenChange;
- (id)lastSoundsPlayed;
- (id)lastSpokenContents;
- (id)lastSpokenPhrases;
- (id)recognizedGestureForTutorial;
- (void)clearLastSoundsPlayed:(id)played;
- (void)clearLastSpokenPhrases:(id)phrases;
- (void)performAutomationTestingCommand:(id)command userInfo:(id)info timeout:(double)timeout completion:(id)completion;
- (void)recognizedGestureForTutorial;
@end

@implementation AXVoiceOverServer

+ (id)server
{
  if (server_onceToken_4 != -1)
  {
    +[AXVoiceOverServer server];
  }

  v3 = server_Server_4;

  return v3;
}

uint64_t __27__AXVoiceOverServer_server__block_invoke()
{
  server_Server_4 = objc_alloc_init(AXVoiceOverServer);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_connectIfNecessary
{
  v3 = _AXSVoiceOverTouchEnabled();
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = AXVoiceOverServer;
    LOBYTE(v3) = [(AXServer *)&v5 _connectIfNecessary];
  }

  return v3;
}

- (id)lastSpokenPhrases
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7002 payload:MEMORY[0x1E695E0F8]];
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

- (void)clearLastSpokenPhrases:(id)phrases
{
  phrasesCopy = phrases;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AXVoiceOverServer_clearLastSpokenPhrases___block_invoke;
  v6[3] = &unk_1E71EB3C8;
  v7 = phrasesCopy;
  v5 = phrasesCopy;
  [(AXVoiceOverServer *)self performAutomationTestingCommand:&unk_1EFE96358 userInfo:0 timeout:v6 completion:10.0];
}

uint64_t __44__AXVoiceOverServer_clearLastSpokenPhrases___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)lastSpokenContents
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7008 payload:MEMORY[0x1E695E0F8]];
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

- (id)lastSoundsPlayed
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7005 payload:MEMORY[0x1E695E0F8]];
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

- (void)clearLastSoundsPlayed:(id)played
{
  playedCopy = played;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AXVoiceOverServer_clearLastSoundsPlayed___block_invoke;
  v6[3] = &unk_1E71EB3C8;
  v7 = playedCopy;
  v5 = playedCopy;
  [(AXVoiceOverServer *)self performAutomationTestingCommand:&unk_1EFE96370 userInfo:0 timeout:v6 completion:10.0];
}

uint64_t __43__AXVoiceOverServer_clearLastSoundsPlayed___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)currentRotorName
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7003 payload:MEMORY[0x1E695E0F8]];
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

- (CGRect)currentCursorFrame
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7016 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v6 = [client sendMessage:v4 withError:0];

    payload = [v6 payload];
    v8 = [payload objectForKeyedSubscript:@"result"];
    v17 = NSRectFromString(v8);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)lastScreenChange
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7004 payload:MEMORY[0x1E695E0F8]];
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

- (id)currentFocusedElement
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7001 payload:MEMORY[0x1E695E0F8]];
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

- (BOOL)triggerGesture:(id)gesture
{
  v15[1] = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v14 = @"gesture";
    v15[0] = gestureCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v7 = [(AXIPCMessage *)v5 initWithKey:7010 payload:v6];

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

- (BOOL)triggerCommand:(int64_t)command
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v5 = [AXIPCMessage alloc];
  v15 = @"command";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:command];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:7000 payload:v7];

  client = [(AXServer *)self client];
  v10 = [client sendMessage:v8 withError:0];

  payload = [v10 payload];
  v12 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v12 BOOLValue];

  return bOOLValue;
}

- (BOOL)triggerCommand:(int64_t)command withArgument:(id)argument
{
  v18[2] = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v7 = [AXIPCMessage alloc];
    v17[0] = @"command";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:command];
    v17[1] = @"argument";
    v18[0] = v8;
    v18[1] = argumentCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v10 = [(AXIPCMessage *)v7 initWithKey:7000 payload:v9];

    client = [(AXServer *)self client];
    v12 = [client sendMessage:v10 withError:0];

    payload = [v12 payload];
    v14 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)triggerEventCommand:(id)command
{
  v15[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if (-[AXVoiceOverServer _connectIfNecessary](self, "_connectIfNecessary") && [commandCopy length])
  {
    v5 = [AXIPCMessage alloc];
    v14 = @"eventCommand";
    v15[0] = commandCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v7 = [(AXIPCMessage *)v5 initWithKey:7013 payload:v6];

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

- (BOOL)isBrailleInputUIShowing
{
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:7006 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v11 = 0;
  v6 = [client sendMessage:v4 withError:&v11];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHandwritingInputUIShowing
{
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:7009 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v11 = 0;
  v6 = [client sendMessage:v4 withError:&v11];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isBluetoothBrailleDisplayConnected
{
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:7011 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v11 = 0;
  v6 = [client sendMessage:v4 withError:&v11];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isScreenCurtainEnabled
{
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:7012 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v11 = 0;
  v6 = [client sendMessage:v4 withError:&v11];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isBrailleScreenInputInScreenAwayMode
{
  if (![(AXVoiceOverServer *)self _connectIfNecessary])
  {
    return 0;
  }

  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:7015 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v11 = 0;
  v6 = [client sendMessage:v4 withError:&v11];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (id)recognizedGestureForTutorial
{
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v3 = [AXIPCMessage alloc];
    v4 = [(AXIPCMessage *)v3 initWithKey:7014 payload:MEMORY[0x1E695E0F8]];
    client = [(AXServer *)self client];
    v13 = 0;
    v6 = [client sendMessage:v4 withError:&v13];
    v7 = v13;

    payload = [v6 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];

    if ([v9 count])
    {
      v10 = [v9 objectAtIndexedSubscript:0];
    }

    else
    {
      v11 = AXLogIPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AXVoiceOverServer *)v7 recognizedGestureForTutorial];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)performAutomationTestingCommand:(id)command userInfo:(id)info timeout:(double)timeout completion:(id)completion
{
  v21[3] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  infoCopy = info;
  completionCopy = completion;
  if ([(AXVoiceOverServer *)self _connectIfNecessary])
  {
    v20[0] = @"command";
    v20[1] = @"userInfo";
    v13 = MEMORY[0x1E695E0F8];
    if (infoCopy)
    {
      v13 = infoCopy;
    }

    v21[0] = commandCopy;
    v21[1] = v13;
    v20[2] = @"timeout";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
    v21[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

    v16 = [[AXIPCMessage alloc] initWithKey:7007 payload:v15];
    client = [(AXServer *)self client];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__AXVoiceOverServer_performAutomationTestingCommand_userInfo_timeout_completion___block_invoke;
    v18[3] = &unk_1E71EA340;
    v19 = completionCopy;
    [client sendAsyncMessage:v16 replyOnQueue:MEMORY[0x1E69E96A0] replyHandler:v18];
  }
}

void __81__AXVoiceOverServer_performAutomationTestingCommand_userInfo_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = [a3 ax_nonRedundantDescription];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v7 = [v5 payload];
    v8 = [v7 objectForKeyedSubscript:@"error"];
    v9 = *(a1 + 32);
    if (v8)
    {
      (*(v9 + 16))(v9, 0, v8);
    }

    else
    {
      v10 = [v11 payload];
      (*(v9 + 16))(v9, v10, 0);
    }
  }
}

- (void)recognizedGestureForTutorial
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Could not connect VoiceOver for tutorial message: %@", &v2, 0xCu);
}

@end