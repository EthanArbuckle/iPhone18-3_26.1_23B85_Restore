@interface NSExtensionContext(ShareExtension)
- (id)intent;
- (uint64_t)_intents_accessedIntent;
- (void)_intents_setAccessedIntent:()ShareExtension;
@end

@implementation NSExtensionContext(ShareExtension)

- (id)intent
{
  os_unfair_lock_lock(&extentionContextIntentAccessorLock);
  _intents_intent = [self _intents_intent];
  if ([self _intents_accessedIntent])
  {
    v3 = _intents_intent;
  }

  else
  {
    _UUID = [self _UUID];
    bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    if (bundleProxyForCurrentProcess)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = bundleProxyForCurrentProcess;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    protocol = [v7 protocol];
    v9 = [protocol isEqualToString:@"com.apple.share-services"];

    if ((v9 & 1) == 0)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[NSExtensionContext intent] can only be called from a share extension." userInfo:0];
      objc_exception_throw(v17);
    }

    v10 = +[INImageServiceConnection sharedConnection];
    v3 = [v10 fetchShareExtensionIntentForExtensionContextUUID:_UUID];

    [self _intents_setIntent:v3];
    [self _intents_setAccessedIntent:1];
    if (_UUID && v3)
    {
      _className = [v3 _className];
      [INIntent _setSharedExtensionContextUUID:_UUID forIntentClassName:_className];
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (!v3 || ([v3 _className], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v13), v14, (v15 & 1) == 0))
    {
      [INIntent _setSharedExtensionContextUUID:_UUID forIntentClassName:v13];
    }
  }

  os_unfair_lock_unlock(&extentionContextIntentAccessorLock);

  return v3;
}

- (void)_intents_setAccessedIntent:()ShareExtension
{
  v2 = _accessedIntentPropertyKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

- (uint64_t)_intents_accessedIntent
{
  v1 = objc_getAssociatedObject(self, _accessedIntentPropertyKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end