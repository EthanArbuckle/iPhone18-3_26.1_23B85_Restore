@interface AFInstanceContext
+ (id)currentContext;
+ (id)defaultContext;
+ (id)effectiveMachServiceName:(id)a3;
- (AFInstanceInfo)info;
- (BOOL)isCurrent;
- (BOOL)isDefault;
- (BOOL)supportsAudioPowerUpdate;
- (BOOL)supportsProxyGroupPlayer;
- (BOOL)supportsTelephony;
- (NSString)audioDeviceIdentifier;
- (NSString)mediaRouteIdentifier;
- (NSString)preferencesSubdomain;
- (id)createXPCConnectionForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5;
- (id)createXPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (id)createXPCListenerForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5;
- (id)createXPCListenerWithMachServiceName:(id)a3;
@end

@implementation AFInstanceContext

+ (id)currentContext
{
  if (currentContext_onceToken != -1)
  {
    dispatch_once(&currentContext_onceToken, &__block_literal_global_2);
  }

  v3 = currentContext_currentContext;

  return v3;
}

+ (id)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    dispatch_once(&defaultContext_onceToken, &__block_literal_global_15909);
  }

  v3 = defaultContext_defaultContext;

  return v3;
}

void __35__AFInstanceContext_currentContext__block_invoke()
{
  v0 = +[AFInstanceContext defaultContext];
  v1 = currentContext_currentContext;
  currentContext_currentContext = v0;
}

void __35__AFInstanceContext_defaultContext__block_invoke()
{
  v0 = objc_alloc_init(AFInstanceContextHost);
  v1 = defaultContext_defaultContext;
  defaultContext_defaultContext = v0;
}

- (BOOL)isCurrent
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:139 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext isCurrent]"}];

  return 0;
}

- (BOOL)isDefault
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:134 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext isDefault]"}];

  return 0;
}

- (AFInstanceInfo)info
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:129 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext info]"}];

  return 0;
}

- (id)createXPCListenerForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:124 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext createXPCListenerForMachService:targetQueue:flags:]"}];

  return 0;
}

- (id)createXPCConnectionForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:119 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext createXPCConnectionForMachService:targetQueue:flags:]"}];

  return 0;
}

- (id)createXPCListenerWithMachServiceName:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:114 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext createXPCListenerWithMachServiceName:]"}];

  return 0;
}

- (id)createXPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:109 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext createXPCConnectionWithMachServiceName:options:]"}];

  return 0;
}

+ (id)effectiveMachServiceName:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"AFInstanceContext.m" lineNumber:104 description:{@"%s is a subclass responsibility.", "+[AFInstanceContext effectiveMachServiceName:]"}];

  return 0;
}

- (BOOL)supportsTelephony
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:199 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) supportsTelephony]"}];

  return 0;
}

- (BOOL)supportsProxyGroupPlayer
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:194 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) supportsProxyGroupPlayer]"}];

  return 0;
}

- (BOOL)supportsAudioPowerUpdate
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:189 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) supportsAudioPowerUpdate]"}];

  return 0;
}

- (NSString)audioDeviceIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:184 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) audioDeviceIdentifier]"}];

  return 0;
}

- (NSString)mediaRouteIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:179 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) mediaRouteIdentifier]"}];

  return 0;
}

- (NSString)preferencesSubdomain
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFInstanceContext.m" lineNumber:174 description:{@"%s is a subclass responsibility.", "-[AFInstanceContext(SubsystemSupport) preferencesSubdomain]"}];

  return 0;
}

@end