@interface NSXPCInterface(HealthKit)
- (id)_cachedSetForArrayOfClass:()HealthKit;
- (id)hk_setArrayOfClass:()HealthKit forSelector:argumentIndex:ofReply:;
- (id)hk_setSetOfClass:()HealthKit forSelector:argumentIndex:ofReply:;
@end

@implementation NSXPCInterface(HealthKit)

- (id)hk_setArrayOfClass:()HealthKit forSelector:argumentIndex:ofReply:
{
  v10 = [self _cachedSetForArrayOfClass:?];
  [self setClasses:v10 forSelector:a4 argumentIndex:a5 ofReply:a6];

  return v10;
}

- (id)hk_setSetOfClass:()HealthKit forSelector:argumentIndex:ofReply:
{
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, 0}];
  [self setClasses:v10 forSelector:a4 argumentIndex:a5 ofReply:a6];

  return v10;
}

- (id)_cachedSetForArrayOfClass:()HealthKit
{
  os_unfair_lock_lock(&_cachedSetForArrayOfClass__lock);
  v4 = _cachedSetForArrayOfClass__cache;
  if (!_cachedSetForArrayOfClass__cache)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v6 = _cachedSetForArrayOfClass__cache;
    _cachedSetForArrayOfClass__cache = strongToStrongObjectsMapTable;

    v4 = _cachedSetForArrayOfClass__cache;
  }

  v7 = [v4 objectForKey:a3];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, 0}];
    [_cachedSetForArrayOfClass__cache setObject:v7 forKey:a3];
  }

  os_unfair_lock_unlock(&_cachedSetForArrayOfClass__lock);

  return v7;
}

@end