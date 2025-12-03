@interface BLSHSceneEnvironmentObserver
+ (id)observerWithObserver:(id)observer;
- (BLSHSceneEnvironmentObserver)initWithObserver:(id)observer;
- (NSString)description;
- (void)sceneDidInvalidate:(id)invalidate;
@end

@implementation BLSHSceneEnvironmentObserver

+ (id)observerWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[self alloc] initWithObserver:observerCopy];

  return v5;
}

- (BLSHSceneEnvironmentObserver)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = BLSHSceneEnvironmentObserver;
  v6 = [(BLSHSceneEnvironmentObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observer, observer);
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
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  identityToken = [invalidateCopy identityToken];
  backlightSceneHostEnvironment = [invalidateCopy backlightSceneHostEnvironment];
  [(BLSHSceneEnvironmentObserving *)self->_observer sceneDidInvalidate:identityToken environment:backlightSceneHostEnvironment];
  [invalidateCopy removeObserver:self];

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