@interface AVAudioUnitComponentManager
+ (AVAudioUnitComponentManager)sharedAudioUnitComponentManager;
+ (void)privateAllocInitSingleton;
- (AVAudioUnitComponentManager)init;
- (NSArray)componentsMatchingDescription:(AudioComponentDescription *)desc;
- (NSArray)componentsMatchingPredicate:(NSPredicate *)predicate;
- (NSArray)componentsPassingTest:(void *)testHandler;
- (NSArray)standardLocalizedTagNames;
- (NSArray)tagNames;
- (void)localeChanged:(id)a3;
- (void)registrationsChanged:(id)a3;
@end

@implementation AVAudioUnitComponentManager

+ (void)privateAllocInitSingleton
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___AVAudioUnitComponentManager;
  v2 = [objc_msgSendSuper2(&v4 allocWithZone_];
  v3 = gAVAudioUnitComponentManager;
  gAVAudioUnitComponentManager = v2;
}

+ (AVAudioUnitComponentManager)sharedAudioUnitComponentManager
{
  pthread_once(&gAVAudioUnitComponentManagerInitOnce, AVAudioUnitComponentManagerInitOnce);
  v2 = gAVAudioUnitComponentManager;

  return v2;
}

- (NSArray)componentsMatchingDescription:(AudioComponentDescription *)desc
{
  v23 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = *(self->_impl + 1);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v16 = *&desc->componentType;
        componentFlagsMask = desc->componentFlagsMask;
        if ([v12 isComponentDescriptionMatch:&v16])
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  std::mutex::unlock((impl + 32));
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSArray)componentsPassingTest:(void *)testHandler
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = testHandler;
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = *(self->_impl + 1);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (v4[2](v4, v12, &v20))
      {
        [v7 addObject:{v12, v16}];
      }

      if (v20)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  std::mutex::unlock((impl + 32));
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSArray)componentsMatchingPredicate:(NSPredicate *)predicate
{
  v4 = predicate;
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = [*(self->_impl + 1) filteredArrayUsingPredicate:v4];
  std::mutex::unlock((impl + 32));

  return v6;
}

- (NSArray)standardLocalizedTagNames
{
  impl = self->_impl;
  v3 = *(impl + 3);
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&standardTagNamesKeys count:22];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(impl + 3);
    *(impl + 3) = v5;

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.audio.units.Components"];
    if (v7)
    {
      for (i = 0; [v4 count] > i; ++i)
      {
        v9 = [v4 objectAtIndex:i];
        v10 = [v7 localizedStringForKey:v9 value:&stru_1F384E730 table:@"AudioUnitTags"];
        [*(impl + 3) addObject:v10];
      }
    }

    v3 = *(impl + 3);
  }

  v11 = v3;
  v12 = [v11 copy];

  return v12;
}

- (NSArray)tagNames
{
  v2 = [*(self->_impl + 2) copy];

  return v2;
}

- (void)registrationsChanged:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:*(impl + 1)];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  memset(&inDesc, 0, sizeof(inDesc));
  for (i = AudioComponentFindNext(0, &inDesc); i; i = AudioComponentFindNext(i, &inDesc))
  {
    memset(&outDesc, 0, sizeof(outDesc));
    AudioComponentGetDescription(i, &outDesc);
    if (HIWORD(outDesc.componentType) == 24949)
    {
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        v9 = *v32;
        while (2)
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v31 + 1) + 8 * j);
            if ([v11 audioComponent] == i)
            {
              if (v11)
              {
                [v11 audioComponentDescription];
              }

              else
              {
                v28 = 0uLL;
                v29 = 0;
              }

              *&v30.componentType = v28;
              v27 = *&outDesc.componentType;
              if (v28 == *&outDesc.componentType && DWORD2(v28) == outDesc.componentManufacturer)
              {
                [v23 removeObject:v11];
                v14 = v11;

                goto LABEL_20;
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v13 = [AVAudioUnitComponent alloc];
      v30 = outDesc;
      v14 = [(AVAudioUnitComponent *)v13 initWithComponentDescription:&v30 withAVAUManagerImpl:impl];
      [v22 addObject:v14];
LABEL_20:
      v15 = MEMORY[0x1E695DFD8];
      v16 = [(AVAudioUnitComponent *)v14 allTagNames];
      v17 = [v15 setWithArray:v16];

      [v5 unionSet:v17];
    }
  }

  if ([v22 count] || objc_msgSend(v23, "count"))
  {
    [v4 removeObjectsInArray:v23];
    [v4 addObjectsFromArray:v22];
    std::mutex::lock((impl + 32));
    [*(impl + 1) removeAllObjects];
    [*(impl + 1) addObjectsFromArray:v4];
    [*(impl + 2) removeAllObjects];
    v18 = *(impl + 2);
    v19 = [v5 allObjects];
    [v18 addObjectsFromArray:v19];

    std::mutex::unlock((impl + 32));
  }

  v24 = [MEMORY[0x1E696AD88] defaultCenter];
  [v24 postNotificationName:@"AVAudioUnitComponentManagerRegistrationsChangedNotification" object:self];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)localeChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v5 = *(self->_impl + 1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) localeChanged];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  std::mutex::unlock((impl + 32));
  v10 = *MEMORY[0x1E69E9840];
}

- (AVAudioUnitComponentManager)init
{
  v3.receiver = self;
  v3.super_class = AVAudioUnitComponentManager;
  if ([(AVAudioUnitComponentManager *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end