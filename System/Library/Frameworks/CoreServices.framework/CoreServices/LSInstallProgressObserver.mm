@interface LSInstallProgressObserver
- (LSInstallProgressObserver)initWithConnection:(id)connection;
- (NSString)description;
- (NSXPCConnection)connection;
- (int)pid;
- (unint64_t)hash;
- (void)_lsPing:(id)ping reply:(id)reply;
- (void)addObserver;
- (void)createInstallProgressForApplication:(id)application withPhase:(unint64_t)phase andPublishingString:(id)string reply:(id)reply;
- (void)installationEndedForApplication:(id)application withState:(unint64_t)state;
- (void)installationFailedForApplication:(id)application reply:(id)reply;
- (void)removeObserver;
- (void)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation LSInstallProgressObserver

- (void)addObserver
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _LSProgressLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: adding observer %{public}@", &v6, 0xCu);
  }

  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 addObserver:self];

  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = LSInstallProgressObserver;
  v4 = [(LSInstallProgressObserver *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [v3 stringWithFormat:@"%@ for pid: %d", v4, objc_msgSend(WeakRetained, "processIdentifier")];

  return v6;
}

- (unint64_t)hash
{
  connection = [(LSInstallProgressObserver *)self connection];
  v3 = [connection hash];

  return v3;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (LSInstallProgressObserver)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = LSInstallProgressObserver;
  v5 = [(LSInstallProgressObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LSInstallProgressObserver *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (void)removeObserver
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _LSProgressLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: Removing observer %{public}@", &v6, 0xCu);
  }

  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 removeObserver:self];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_lsPing:(id)ping reply:(id)reply
{
  replyCopy = reply;
  pingCopy = ping;
  v8 = _LSProgressLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSInstallProgressObserver _lsPing:? reply:?];
  }

  replyCopy[2](replyCopy, pingCopy);
}

- (void)createInstallProgressForApplication:(id)application withPhase:(unint64_t)phase andPublishingString:(id)string reply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  applicationCopy = application;
  v12 = +[_LSInstallProgressService sharedInstance];
  [v12 createInstallProgressForApplication:applicationCopy withPhase:phase andPublishingString:stringCopy reply:replyCopy];
}

- (void)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier completion:(id)completion
{
  phaseCopy = phase;
  identifierCopy = identifier;
  completionCopy = completion;
  connection = [(LSInstallProgressObserver *)self connection];
  _xpcConnection = [connection _xpcConnection];
  v13 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.can-send-install-notifications");

  if (!v13)
  {
    v17 = _LSProgressLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LSInstallProgressObserver setProgressProportionsByPhase:? forInstallOfApplicationWithIdentifier:? completion:?];
    }

    v18 = *MEMORY[0x1E696A768];
    v19 = -54;
    v20 = 353;
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v15 = objc_opt_class();
  if (!_LSIsDictionaryWithKeysAndValuesOfClass(phaseCopy, v14, v15))
  {
    v21 = _LSProgressLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [LSInstallProgressObserver setProgressProportionsByPhase:forInstallOfApplicationWithIdentifier:completion:];
    }

    v18 = *MEMORY[0x1E696A768];
    v19 = -50;
    v20 = 349;
LABEL_10:
    v16 = _LSMakeNSErrorImpl(v18, v19, 0, "[LSInstallProgressObserver setProgressProportionsByPhase:forInstallOfApplicationWithIdentifier:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", v20);
    completionCopy[2](completionCopy, v16);
    goto LABEL_11;
  }

  v16 = +[_LSInstallProgressService sharedInstance];
  [v16 setProgressProportionsByPhase:phaseCopy forInstallOfApplicationWithIdentifier:identifierCopy completion:completionCopy];
LABEL_11:
}

- (void)installationEndedForApplication:(id)application withState:(unint64_t)state
{
  applicationCopy = application;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationEndedForApplication:applicationCopy withState:state];
}

- (void)installationFailedForApplication:(id)application reply:(id)reply
{
  replyCopy = reply;
  applicationCopy = application;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationFailedForApplication:applicationCopy];

  replyCopy[2](replyCopy, 1);
}

- (int)pid
{
  connection = [(LSInstallProgressObserver *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (void)_lsPing:(void *)a1 reply:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_5_4(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setProgressProportionsByPhase:forInstallOfApplicationWithIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Refusing to set progress proportions: Bad input %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setProgressProportionsByPhase:(void *)a1 forInstallOfApplicationWithIdentifier:completion:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);

  v6 = *MEMORY[0x1E69E9840];
}

@end