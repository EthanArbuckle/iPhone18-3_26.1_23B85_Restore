@interface BLSHSceneEnvironmentObserverToken
+ (id)tokenWithObserver:(id)observer sceneIdentityToken:(id)token;
- (BLSHSceneEnvironmentObserverToken)initWithObserver:(id)observer sceneIdentityToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHSceneEnvironmentObserverToken

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = [builder appendPointer:WeakRetained];

  v6 = [builder appendObject:self->_sceneIdentityToken];
  v7 = [builder hash];

  return v7;
}

+ (id)tokenWithObserver:(id)observer sceneIdentityToken:(id)token
{
  tokenCopy = token;
  observerCopy = observer;
  v8 = [[self alloc] initWithObserver:observerCopy sceneIdentityToken:tokenCopy];

  return v8;
}

- (BLSHSceneEnvironmentObserverToken)initWithObserver:(id)observer sceneIdentityToken:(id)token
{
  observerCopy = observer;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = BLSHSceneEnvironmentObserverToken;
  v8 = [(BLSHSceneEnvironmentObserverToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_sceneIdentityToken, token);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__BLSHSceneEnvironmentObserverToken_isEqual___block_invoke;
  v18[3] = &unk_27841E868;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendPointer:WeakRetained counterpart:v18];

  sceneIdentityToken = self->_sceneIdentityToken;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __45__BLSHSceneEnvironmentObserverToken_isEqual___block_invoke_2;
  v16 = &unk_27841E890;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:sceneIdentityToken counterpart:&v13];
  LOBYTE(sceneIdentityToken) = [v5 isEqual];

  return sceneIdentityToken;
}

id __45__BLSHSceneEnvironmentObserverToken_isEqual___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  return WeakRetained;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __48__BLSHSceneEnvironmentObserverToken_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __48__BLSHSceneEnvironmentObserverToken_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"scene"];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = [v3 appendObject:WeakRetained withName:@"observer"];
}

@end