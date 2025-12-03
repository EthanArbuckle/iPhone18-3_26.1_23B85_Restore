@interface _LSSpringBoardCall
+ (id)springBoardDeadlockPreventionQueue;
+ (id)springBoardQueue;
- (NSDictionary)launchOptions;
- (_LSSpringBoardCall)callWithCompletionHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)callSpringBoardWithCompletionHandler:(id)handler;
- (void)lieWithCompletionHandler:(id)handler;
- (void)promptAndCallSpringBoardWithCompletionHandler:(id)handler;
- (void)setLaunchOptions:(id)options;
@end

@implementation _LSSpringBoardCall

+ (id)springBoardQueue
{
  if (+[_LSSpringBoardCall(Private) springBoardQueue]::once != -1)
  {
    +[_LSSpringBoardCall(Private) springBoardQueue];
  }

  v3 = +[_LSSpringBoardCall(Private) springBoardQueue]::result;

  return v3;
}

- (NSDictionary)launchOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_launchOptions;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLaunchOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [optionsCopy mutableCopy];
  schemeIfNotFileURL = selfCopy->_schemeIfNotFileURL;
  selfCopy->_schemeIfNotFileURL = 0;

  FBSOpenApplicationOptionKeyPayloadURL = getFBSOpenApplicationOptionKeyPayloadURL();
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)v5 objectForKey:FBSOpenApplicationOptionKeyPayloadURL];
  v10 = v9;
  if (v8 && v9)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      scheme = v10;
      v10 = 0;
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_9;
  }

  if ([v10 isFileURL])
  {
    goto LABEL_9;
  }

  scheme = [v10 scheme];
  v12 = [scheme copy];
  v13 = selfCopy->_schemeIfNotFileURL;
  selfCopy->_schemeIfNotFileURL = v12;

LABEL_8:
LABEL_9:
  if (getBSServiceConnectionEndpointClass())
  {
    v14 = [(NSDictionary *)v5 objectForKey:@"LSTargetBSServiceConnectionEndpointKey"];
    if (v14 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v14 = 0;
    }

    targetServiceConnectionEndpoint = selfCopy->_targetServiceConnectionEndpoint;
    selfCopy->_targetServiceConnectionEndpoint = v14;

    [(NSDictionary *)v5 removeObjectForKey:@"LSTargetBSServiceConnectionEndpointKey"];
  }

  launchOptions = selfCopy->_launchOptions;
  selfCopy->_launchOptions = v5;

  objc_sync_exit(selfCopy);
}

- (_LSSpringBoardCall)callWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSSpringBoardCall callWithCompletionHandler:]");
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if (self->_schemeIfNotFileURL)
  {
    v6 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v6 assertActiveForThisThread];

    clientXPCConnection = [(_LSSpringBoardCall *)self clientXPCConnection];
    bundleIdentifier = [(_LSSpringBoardCall *)self bundleIdentifier];
    schemeIfNotFileURL = self->_schemeIfNotFileURL;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48___LSSpringBoardCall_callWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E6A1E068;
    v12[4] = self;
    v13 = handlerCopy;
    _LSSchemeApprovalFindWithCompletionHandler(clientXPCConnection, bundleIdentifier, schemeIfNotFileURL, 0, v12);
  }

  else
  {
    [(_LSSpringBoardCall *)self callSpringBoardWithCompletionHandler:handlerCopy];
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(_LSSpringBoardCall *)self bundleIdentifier];
  clientXPCConnection = [(_LSSpringBoardCall *)self clientXPCConnection];
  processIdentifier = [clientXPCConnection processIdentifier];
  callCompletionHandlerWhenFullyComplete = [(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete];
  v10 = @"no";
  if (callCompletionHandlerWhenFullyComplete)
  {
    v10 = @"yes";
  }

  v11 = [v3 stringWithFormat:@"<%@ %p> { bundleID = %@, client = %li, blocking = %@ }", v5, self, bundleIdentifier, processIdentifier, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    bundleIdentifier = [(_LSSpringBoardCall *)self bundleIdentifier];
    [v4 setBundleIdentifier:bundleIdentifier];

    launchOptions = [(_LSSpringBoardCall *)self launchOptions];
    [v4 setLaunchOptions:launchOptions];

    clientXPCConnection = [(_LSSpringBoardCall *)self clientXPCConnection];
    [v4 setClientXPCConnection:clientXPCConnection];

    [v4 setCallCompletionHandlerWhenFullyComplete:{-[_LSSpringBoardCall callCompletionHandlerWhenFullyComplete](self, "callCompletionHandlerWhenFullyComplete")}];
  }

  return v4;
}

+ (id)springBoardDeadlockPreventionQueue
{
  if (+[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::onceToken != -1)
  {
    +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue];
  }

  v3 = +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::result;

  return v3;
}

- (void)callSpringBoardWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]");
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  targetServiceConnectionEndpoint = [(_LSSpringBoardCall *)self targetServiceConnectionEndpoint];
  if (targetServiceConnectionEndpoint)
  {
    [getFBSOpenApplicationServiceClass() serviceWithEndpoint:targetServiceConnectionEndpoint];
  }

  else
  {
    [getFBSOpenApplicationServiceClass() serviceWithDefaultShellEndpoint];
  }
  v7 = ;
  if (v7)
  {
    FBSOpenApplicationOptionsClass = getFBSOpenApplicationOptionsClass();
    launchOptions = [(_LSSpringBoardCall *)self launchOptions];
    v10 = [FBSOpenApplicationOptionsClass optionsWithDictionary:launchOptions];

    clientXPCConnection = [(_LSSpringBoardCall *)self clientXPCConnection];

    Helper_x8__OBJC_CLASS___BSProcessHandle = gotLoadHelper_x8__OBJC_CLASS___BSProcessHandle(v12);
    v15 = *(v13 + 1864);
    if (clientXPCConnection)
    {
      clientXPCConnection2 = [(_LSSpringBoardCall *)self clientXPCConnection];
      processHandle = [v15 processHandleForNSXPCConnection:clientXPCConnection2];
    }

    else
    {
      processHandle = [*(v13 + 1864) processHandle];
    }

    if ([(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete])
    {
      MEMORY[0x1865D7C40]();
      springBoardQueue = [objc_opt_class() springBoardQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke;
      block[3] = &unk_1E6A1DFD0;
      v32 = v7;
      selfCopy = self;
      v34 = v10;
      v35 = processHandle;
      v36 = handlerCopy;
      v19 = processHandle;
      v20 = v10;
      dispatch_async(springBoardQueue, block);

      v21 = v32;
    }

    else
    {
      MEMORY[0x1865D7C40]();
      springBoardDeadlockPreventionQueue = [objc_opt_class() springBoardDeadlockPreventionQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_3;
      v26[3] = &unk_1E6A1DFD0;
      v26[4] = self;
      v27 = v7;
      v28 = v10;
      v29 = processHandle;
      v30 = handlerCopy;
      v23 = processHandle;
      v24 = v10;
      dispatch_async(springBoardDeadlockPreventionQueue, v26);

      v21 = v27;
    }
  }

  else
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSpringBoardCall.mm", 300);
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

- (void)lieWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) lieWithCompletionHandler:]");
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  v5 = [(_LSSpringBoardCall *)self copy];
  [v5 setCallCompletionHandlerWhenFullyComplete:1];
  [v5 callWithCompletionHandler:&__block_literal_global_76_0];
  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)promptAndCallSpringBoardWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) promptAndCallSpringBoardWithCompletionHandler:]");
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if ([(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete])
  {
    clientXPCConnection = [(_LSSpringBoardCall *)self clientXPCConnection];
    bundleIdentifier = [(_LSSpringBoardCall *)self bundleIdentifier];
    schemeIfNotFileURL = self->_schemeIfNotFileURL;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77___LSSpringBoardCall_Private__promptAndCallSpringBoardWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E6A1E068;
    v10[4] = self;
    v11 = handlerCopy;
    _LSSchemeApprovalFindWithCompletionHandler(clientXPCConnection, bundleIdentifier, schemeIfNotFileURL, 3, v10);
  }

  else
  {
    [(_LSSpringBoardCall *)self lieWithCompletionHandler:handlerCopy];
  }
}

@end