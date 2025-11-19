@interface BLSHSceneEnvironmentObserver
+ (id)observerWithObserver:(id)a3;
- (BLSHSceneEnvironmentObserver)initWithObserver:(id)a3;
- (NSString)description;
- (void)sceneDidInvalidate:(id)a3;
@end

@implementation BLSHSceneEnvironmentObserver

+ (id)observerWithObserver:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObserver:v4];

  return v5;
}

- (BLSHSceneEnvironmentObserver)initWithObserver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLSHSceneEnvironmentObserver;
  v6 = [(BLSHSceneEnvironmentObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observer, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__BLSHSceneEnvironmentObserver_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = [v4 identityToken];
  v6 = [v4 backlightSceneHostEnvironment];
  [(BLSHSceneEnvironmentObserving *)self->_observer sceneDidInvalidate:v5 environment:v6];
  [v4 removeObserver:self];

  v7 = bls_assertions_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BLSHSceneEnvironmentObserver sceneDidInvalidate:];
  }
}

- (void)sceneDidInvalidate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(&dword_21FD11000, v0, OS_LOG_TYPE_DEBUG, "OSIP:%p sceneDidInvalidate:%{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end