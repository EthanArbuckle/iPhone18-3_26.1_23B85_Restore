@interface AXPidSuspensionInfo
+ (id)shared;
- (AXPidSuspensionInfo)init;
- (id)associatedRemotePidCacheForDisplay:(int)a3;
- (id)associatedRemotePidsForDisplay:(int)a3;
- (id)suspendedPidsForDisplay:(int)a3;
- (id)tentativeSuspendedPidsForDisplay:(int)a3;
- (id)timeoutProbationPidsForDisplay:(int)a3;
@end

@implementation AXPidSuspensionInfo

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[AXPidSuspensionInfo shared];
  }

  v3 = shared_Shared;

  return v3;
}

uint64_t __29__AXPidSuspensionInfo_shared__block_invoke()
{
  shared_Shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (AXPidSuspensionInfo)init
{
  v14.receiver = self;
  v14.super_class = AXPidSuspensionInfo;
  v2 = [(AXPidSuspensionInfo *)&v14 init];
  v3 = objc_opt_new();
  probationPids = v2->_probationPids;
  v2->_probationPids = v3;

  v5 = objc_opt_new();
  suspendsPids = v2->_suspendsPids;
  v2->_suspendsPids = v5;

  v7 = objc_opt_new();
  tentativeSuspendedPids = v2->_tentativeSuspendedPids;
  v2->_tentativeSuspendedPids = v7;

  v9 = objc_opt_new();
  associatedRemotePids = v2->_associatedRemotePids;
  v2->_associatedRemotePids = v9;

  v11 = objc_opt_new();
  associatedRemotePidCache = v2->_associatedRemotePidCache;
  v2->_associatedRemotePidCache = v11;

  return v2;
}

- (id)timeoutProbationPidsForDisplay:(int)a3
{
  v3 = *&a3;
  probationPids = self->_probationPids;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)probationPids objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = self->_probationPids;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_probationPids;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

- (id)suspendedPidsForDisplay:(int)a3
{
  v3 = *&a3;
  suspendsPids = self->_suspendsPids;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)suspendsPids objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = self->_suspendsPids;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_suspendsPids;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

- (id)associatedRemotePidCacheForDisplay:(int)a3
{
  v3 = *&a3;
  associatedRemotePidCache = self->_associatedRemotePidCache;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)associatedRemotePidCache objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = self->_associatedRemotePidCache;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_associatedRemotePidCache;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

- (id)tentativeSuspendedPidsForDisplay:(int)a3
{
  v3 = *&a3;
  tentativeSuspendedPids = self->_tentativeSuspendedPids;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)tentativeSuspendedPids objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = self->_tentativeSuspendedPids;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_tentativeSuspendedPids;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

- (id)associatedRemotePidsForDisplay:(int)a3
{
  v3 = *&a3;
  associatedRemotePids = self->_associatedRemotePids;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)associatedRemotePids objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = self->_associatedRemotePids;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_associatedRemotePids;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

@end