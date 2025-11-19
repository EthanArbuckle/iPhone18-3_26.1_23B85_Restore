@interface _LSSpringBoardCall
+ (id)springBoardDeadlockPreventionQueue;
+ (id)springBoardQueue;
- (NSDictionary)launchOptions;
- (_LSSpringBoardCall)callWithCompletionHandler:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)callSpringBoardWithCompletionHandler:(id)a3;
- (void)lieWithCompletionHandler:(id)a3;
- (void)promptAndCallSpringBoardWithCompletionHandler:(id)a3;
- (void)setLaunchOptions:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_launchOptions;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLaunchOptions:(id)a3
{
  v17 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v17 mutableCopy];
  schemeIfNotFileURL = v4->_schemeIfNotFileURL;
  v4->_schemeIfNotFileURL = 0;

  FBSOpenApplicationOptionKeyPayloadURL = getFBSOpenApplicationOptionKeyPayloadURL();
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)v5 objectForKey:FBSOpenApplicationOptionKeyPayloadURL];
  v10 = v9;
  if (v8 && v9)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = v10;
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

  v11 = [v10 scheme];
  v12 = [v11 copy];
  v13 = v4->_schemeIfNotFileURL;
  v4->_schemeIfNotFileURL = v12;

LABEL_8:
LABEL_9:
  if (getBSServiceConnectionEndpointClass())
  {
    v14 = [(NSDictionary *)v5 objectForKey:@"LSTargetBSServiceConnectionEndpointKey"];
    if (v14 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v14 = 0;
    }

    targetServiceConnectionEndpoint = v4->_targetServiceConnectionEndpoint;
    v4->_targetServiceConnectionEndpoint = v14;

    [(NSDictionary *)v5 removeObjectForKey:@"LSTargetBSServiceConnectionEndpointKey"];
  }

  launchOptions = v4->_launchOptions;
  v4->_launchOptions = v5;

  objc_sync_exit(v4);
}

- (_LSSpringBoardCall)callWithCompletionHandler:(id)a3
{
  v5 = a3;
  _LSAssertRunningInServer("[_LSSpringBoardCall callWithCompletionHandler:]");
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if (self->_schemeIfNotFileURL)
  {
    v6 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v6 assertActiveForThisThread];

    v7 = [(_LSSpringBoardCall *)self clientXPCConnection];
    v8 = [(_LSSpringBoardCall *)self bundleIdentifier];
    schemeIfNotFileURL = self->_schemeIfNotFileURL;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48___LSSpringBoardCall_callWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E6A1E068;
    v12[4] = self;
    v13 = v5;
    _LSSchemeApprovalFindWithCompletionHandler(v7, v8, schemeIfNotFileURL, 0, v12);
  }

  else
  {
    [(_LSSpringBoardCall *)self callSpringBoardWithCompletionHandler:v5];
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_LSSpringBoardCall *)self bundleIdentifier];
  v7 = [(_LSSpringBoardCall *)self clientXPCConnection];
  v8 = [v7 processIdentifier];
  v9 = [(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete];
  v10 = @"no";
  if (v9)
  {
    v10 = @"yes";
  }

  v11 = [v3 stringWithFormat:@"<%@ %p> { bundleID = %@, client = %li, blocking = %@ }", v5, self, v6, v8, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(_LSSpringBoardCall *)self bundleIdentifier];
    [v4 setBundleIdentifier:v5];

    v6 = [(_LSSpringBoardCall *)self launchOptions];
    [v4 setLaunchOptions:v6];

    v7 = [(_LSSpringBoardCall *)self clientXPCConnection];
    [v4 setClientXPCConnection:v7];

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

- (void)callSpringBoardWithCompletionHandler:(id)a3
{
  v5 = a3;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]");
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  v6 = [(_LSSpringBoardCall *)self targetServiceConnectionEndpoint];
  if (v6)
  {
    [getFBSOpenApplicationServiceClass() serviceWithEndpoint:v6];
  }

  else
  {
    [getFBSOpenApplicationServiceClass() serviceWithDefaultShellEndpoint];
  }
  v7 = ;
  if (v7)
  {
    FBSOpenApplicationOptionsClass = getFBSOpenApplicationOptionsClass();
    v9 = [(_LSSpringBoardCall *)self launchOptions];
    v10 = [FBSOpenApplicationOptionsClass optionsWithDictionary:v9];

    v11 = [(_LSSpringBoardCall *)self clientXPCConnection];

    Helper_x8__OBJC_CLASS___BSProcessHandle = gotLoadHelper_x8__OBJC_CLASS___BSProcessHandle(v12);
    v15 = *(v13 + 1864);
    if (v11)
    {
      v16 = [(_LSSpringBoardCall *)self clientXPCConnection];
      v17 = [v15 processHandleForNSXPCConnection:v16];
    }

    else
    {
      v17 = [*(v13 + 1864) processHandle];
    }

    if ([(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete])
    {
      MEMORY[0x1865D7C40]();
      v18 = [objc_opt_class() springBoardQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke;
      block[3] = &unk_1E6A1DFD0;
      v32 = v7;
      v33 = self;
      v34 = v10;
      v35 = v17;
      v36 = v5;
      v19 = v17;
      v20 = v10;
      dispatch_async(v18, block);

      v21 = v32;
    }

    else
    {
      MEMORY[0x1865D7C40]();
      v22 = [objc_opt_class() springBoardDeadlockPreventionQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_3;
      v26[3] = &unk_1E6A1DFD0;
      v26[4] = self;
      v27 = v7;
      v28 = v10;
      v29 = v17;
      v30 = v5;
      v23 = v17;
      v24 = v10;
      dispatch_async(v22, v26);

      v21 = v27;
    }
  }

  else
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSpringBoardCall.mm", 300);
    (*(v5 + 2))(v5, 0, v10);
  }
}

- (void)lieWithCompletionHandler:(id)a3
{
  v7 = a3;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) lieWithCompletionHandler:]");
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  v5 = [(_LSSpringBoardCall *)self copy];
  [v5 setCallCompletionHandlerWhenFullyComplete:1];
  [v5 callWithCompletionHandler:&__block_literal_global_76_0];
  v7[2](v7, 1, 0);
}

- (void)promptAndCallSpringBoardWithCompletionHandler:(id)a3
{
  v5 = a3;
  _LSAssertRunningInServer("[_LSSpringBoardCall(Private) promptAndCallSpringBoardWithCompletionHandler:]");
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"LSSpringBoardCall.mm" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if ([(_LSSpringBoardCall *)self callCompletionHandlerWhenFullyComplete])
  {
    v6 = [(_LSSpringBoardCall *)self clientXPCConnection];
    v7 = [(_LSSpringBoardCall *)self bundleIdentifier];
    schemeIfNotFileURL = self->_schemeIfNotFileURL;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77___LSSpringBoardCall_Private__promptAndCallSpringBoardWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E6A1E068;
    v10[4] = self;
    v11 = v5;
    _LSSchemeApprovalFindWithCompletionHandler(v6, v7, schemeIfNotFileURL, 3, v10);
  }

  else
  {
    [(_LSSpringBoardCall *)self lieWithCompletionHandler:v5];
  }
}

@end