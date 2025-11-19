@interface LSInstallProgressObserver
- (LSInstallProgressObserver)initWithConnection:(id)a3;
- (NSString)description;
- (NSXPCConnection)connection;
- (int)pid;
- (unint64_t)hash;
- (void)_lsPing:(id)a3 reply:(id)a4;
- (void)addObserver;
- (void)createInstallProgressForApplication:(id)a3 withPhase:(unint64_t)a4 andPublishingString:(id)a5 reply:(id)a6;
- (void)installationEndedForApplication:(id)a3 withState:(unint64_t)a4;
- (void)installationFailedForApplication:(id)a3 reply:(id)a4;
- (void)removeObserver;
- (void)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 completion:(id)a5;
@end

@implementation LSInstallProgressObserver

- (void)addObserver
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _LSProgressLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
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
  v2 = [(LSInstallProgressObserver *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (LSInstallProgressObserver)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LSInstallProgressObserver;
  v5 = [(LSInstallProgressObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LSInstallProgressObserver *)v5 setConnection:v4];
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
    v7 = self;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: Removing observer %{public}@", &v6, 0xCu);
  }

  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 removeObserver:self];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_lsPing:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _LSProgressLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSInstallProgressObserver _lsPing:? reply:?];
  }

  v6[2](v6, v7);
}

- (void)createInstallProgressForApplication:(id)a3 withPhase:(unint64_t)a4 andPublishingString:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = +[_LSInstallProgressService sharedInstance];
  [v12 createInstallProgressForApplication:v11 withPhase:a4 andPublishingString:v10 reply:v9];
}

- (void)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LSInstallProgressObserver *)self connection];
  v12 = [v11 _xpcConnection];
  v13 = _LSCheckEntitlementForXPCConnection(v12, @"com.apple.private.coreservices.can-send-install-notifications");

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
  if (!_LSIsDictionaryWithKeysAndValuesOfClass(v8, v14, v15))
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
    v10[2](v10, v16);
    goto LABEL_11;
  }

  v16 = +[_LSInstallProgressService sharedInstance];
  [v16 setProgressProportionsByPhase:v8 forInstallOfApplicationWithIdentifier:v9 completion:v10];
LABEL_11:
}

- (void)installationEndedForApplication:(id)a3 withState:(unint64_t)a4
{
  v5 = a3;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationEndedForApplication:v5 withState:a4];
}

- (void)installationFailedForApplication:(id)a3 reply:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationFailedForApplication:v5];

  v7[2](v7, 1);
}

- (int)pid
{
  v2 = [(LSInstallProgressObserver *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
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