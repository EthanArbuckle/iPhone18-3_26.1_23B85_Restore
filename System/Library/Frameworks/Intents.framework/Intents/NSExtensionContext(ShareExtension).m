@interface NSExtensionContext(ShareExtension)
- (id)intent;
- (uint64_t)_intents_accessedIntent;
- (void)_intents_setAccessedIntent:()ShareExtension;
@end

@implementation NSExtensionContext(ShareExtension)

- (id)intent
{
  os_unfair_lock_lock(&extentionContextIntentAccessorLock);
  v2 = [a1 _intents_intent];
  if ([a1 _intents_accessedIntent])
  {
    v3 = v2;
  }

  else
  {
    v4 = [a1 _UUID];
    v5 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
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

    v8 = [v7 protocol];
    v9 = [v8 isEqualToString:@"com.apple.share-services"];

    if ((v9 & 1) == 0)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[NSExtensionContext intent] can only be called from a share extension." userInfo:0];
      objc_exception_throw(v17);
    }

    v10 = +[INImageServiceConnection sharedConnection];
    v3 = [v10 fetchShareExtensionIntentForExtensionContextUUID:v4];

    [a1 _intents_setIntent:v3];
    [a1 _intents_setAccessedIntent:1];
    if (v4 && v3)
    {
      v11 = [v3 _className];
      [INIntent _setSharedExtensionContextUUID:v4 forIntentClassName:v11];
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (!v3 || ([v3 _className], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v13), v14, (v15 & 1) == 0))
    {
      [INIntent _setSharedExtensionContextUUID:v4 forIntentClassName:v13];
    }
  }

  os_unfair_lock_unlock(&extentionContextIntentAccessorLock);

  return v3;
}

- (void)_intents_setAccessedIntent:()ShareExtension
{
  v2 = _accessedIntentPropertyKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, v2, v3, 1);
}

- (uint64_t)_intents_accessedIntent
{
  v1 = objc_getAssociatedObject(a1, _accessedIntentPropertyKey);
  v2 = [v1 BOOLValue];

  return v2;
}

@end