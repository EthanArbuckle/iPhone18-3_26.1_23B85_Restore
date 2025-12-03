@interface AFClientPluginManager
+ (id)clientPluginManagerWithFactoryInitializationBlock:(id)block;
- (id)speakableNamespaceProviderForAceObject:(id)object;
@end

@implementation AFClientPluginManager

+ (id)clientPluginManagerWithFactoryInitializationBlock:(id)block
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  blockCopy = block;
  v5 = CPSystemRootDirectory();
  v13[0] = v5;
  v13[1] = @"System";
  v13[2] = @"/Library/Assistant/UIPlugins";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v7 = [v3 pathWithComponents:v6];

  v12[0] = @"SiriDomains";
  v12[1] = @"SiriDisambiguationDomains";
  v12[2] = @"SiriProviderDomains";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [(AFPluginManager *)AFClientPluginManager pluginManagerForPath:v7 domainKeys:v8 factoryInitializationBlock:blockCopy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)speakableNamespaceProviderForAceObject:(id)object
{
  objectCopy = object;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__42038;
  v20 = __Block_byref_object_dispose__42039;
  v21 = 0;
  groupIdentifier = [objectCopy groupIdentifier];
  encodedClassName = [objectCopy encodedClassName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__AFClientPluginManager_AceFactorySupport__speakableNamespaceProviderForAceObject___block_invoke;
  v11[3] = &unk_1E7348360;
  v14 = &v16;
  v8 = objectCopy;
  v15 = a2;
  v12 = v8;
  selfCopy = self;
  [(AFPluginManager *)self enumerateFactoryInstancesForDomainKey:@"SiriProviderDomains" groupIdentifier:groupIdentifier classIdentifier:encodedClassName usingBlock:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __83__AFClientPluginManager_AceFactorySupport__speakableNamespaceProviderForAceObject___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ([v11 conformsToProtocol:&unk_1F05BF2C0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v11 speakableNamespaceProviderForAceObject:a1[4]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1[6] + 8) + 40);
    if (v8 == v11)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a1[7] object:a1[5] file:@"AFClientPluginManager.m" lineNumber:49 description:{@"Plugin factory %@ must return a new allocated instance of id<AFSpeakableNamespaceProvider> from speakableNamespaceProviderForAceObject:", objc_opt_class()}];

      v8 = *(*(a1[6] + 8) + 40);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else if (!v8)
    {
      goto LABEL_7;
    }

    if (([v8 conformsToProtocol:&unk_1F05868F0] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a1[7] object:a1[5] file:@"AFClientPluginManager.m" lineNumber:50 description:{@"instance must conform to AFSpeakableNamespaceProvider, %@", *(*(a1[6] + 8) + 40)}];
    }
  }

LABEL_7:
  if (*(*(a1[6] + 8) + 40))
  {
    *a3 = 1;
  }
}

@end