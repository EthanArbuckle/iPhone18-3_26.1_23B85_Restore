@interface MXExtensionManager
@end

@implementation MXExtensionManager

void __29___MXExtensionManager__queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.maps._MXExtensionManager", v2);
  v1 = _queue_queue;
  _queue_queue = v0;
}

uint64_t __83___MXExtensionManager_Ridesharing___maps_lookupPolicyForRidesharingNonUIExtensions__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 extensionPointIdentifier];
  v5 = [v4 isEqual:*MEMORY[0x1E696E580]];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [*(a1 + 32) _maps_ridesharingRequiredIntentClassesForNonUIHandling];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([v3 canSupportIntentClass:*(*(&v11 + 1) + 8 * i)])
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __90___MXExtensionManager_Ridesharing___maps_lookupPolicyForEnabledRidesharingNonUIExtensions__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEnabled] && (objc_msgSend(v3, "extensionPointIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", *MEMORY[0x1E696E580]), v4, v5))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [*(a1 + 32) _maps_ridesharingRequiredIntentClassesForNonUIHandling];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([v3 canSupportIntentClass:*(*(&v11 + 1) + 8 * i)])
          {
            v7 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __102___MXExtensionManager__lookupPolicyForExtensionWithContainingAppIdentifiers_supportsIntentClassNames___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionPointIdentifier];
  if ([v4 isEqualToString:*MEMORY[0x1E696E580]])
  {
  }

  else
  {
    v5 = [v3 extensionPointIdentifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E696E588]];

    if (!v6)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v7 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __102___MXExtensionManager__lookupPolicyForExtensionWithContainingAppIdentifiers_supportsIntentClassNames___block_invoke_2;
  v17 = &unk_1E76CA580;
  v19 = &v20;
  v8 = v3;
  v18 = v8;
  [v7 enumerateObjectsUsingBlock:&v14];
  v9 = [*(a1 + 40) count];
  v10 = (v9 == 0) & v21[3];
  if (v9 && (v21[3] & 1) != 0)
  {
    v11 = *(a1 + 40);
    v12 = [v8 _containingAppIdentifer];
    v10 = [v11 containsObject:v12];
  }

  _Block_object_dispose(&v20, 8);
LABEL_9:

  return v10;
}

uint64_t __102___MXExtensionManager__lookupPolicyForExtensionWithContainingAppIdentifiers_supportsIntentClassNames___block_invoke_2(uint64_t a1, NSString *aClassName)
{
  v3 = NSClassFromString(aClassName);
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    result = [*(a1 + 32) canSupportIntentClass:v3];
    v4 = *(*(a1 + 40) + 8);
  }

  else
  {
    result = 0;
  }

  *(v4 + 24) = result;
  return result;
}

uint64_t __63___MXExtensionManager__lookupPolicyForExtensionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __64___MXExtensionManager_lookupPolicyForExtensionWithCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 capabilities];
  v4 = [v2 isSubsetOfSet:v3];

  return v4;
}

uint64_t __62___MXExtensionManager_lookupPolicyForExtensionWithCapability___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 capabilities];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __70___MXExtensionManager_managerWithExtensionLookupPolicy_updateHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) extensionProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70___MXExtensionManager_managerWithExtensionLookupPolicy_updateHandler___block_invoke_2;
  v4[3] = &unk_1E76CA530;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  v3 = [v2 addExtensionsUpdateHandler:v4];
  [*(a1 + 32) setMatchingContext:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70___MXExtensionManager_managerWithExtensionLookupPolicy_updateHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _applyExtensionPredicateWithExtensionsIfNeeded:v6];

  (*(*(a1 + 32) + 16))();
}

void __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) extensionProvider];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_2;
  v7 = &unk_1E76CA508;
  objc_copyWeak(&v8, &location);
  v3 = [v2 addExtensionsUpdateHandler:&v4];
  [*(a1 + 32) setMatchingContext:{v3, v4, v5, v6, v7}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _applyExtensionPredicateWithExtensionsIfNeeded:v6];

  if (v5)
  {
    v9 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v10 = __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_3;
    v11 = v5;
  }

  else
  {
    v9 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v10 = __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_4;
    v11 = v8;
  }

  v9[2] = v10;
  v9[3] = &unk_1E76CD810;
  v9[4] = WeakRetained;
  v9[5] = v11;
  v12 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extensionManager:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extensionManager:*(a1 + 32) didUpdateAvailableExtensions:*(a1 + 40)];
}

@end