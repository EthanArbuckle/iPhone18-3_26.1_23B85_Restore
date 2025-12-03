@interface AXSSWordDescriptionManager
+ (id)sharedInstance;
- (NSManagedObjectContext)managedObjectContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)descriptionOfWord:(id)word forLanguage:(id)language;
- (id)languageCode;
@end

@implementation AXSSWordDescriptionManager

void __52__AXSSWordDescriptionManager_zh_descriptionForWord___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 languageDialectCode];
  v6 = [v3 descriptionForCharacter:v4 language:v5];

  if ([v6 length])
  {
    [*(a1 + 40) addObject:v6];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance___onceToken != -1)
  {
    +[AXSSWordDescriptionManager sharedInstance];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = sharedInstance___sharedInstances;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(objc_opt_class());
    v8 = sharedInstance___sharedInstances;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 setObject:v7 forKey:v10];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

uint64_t __44__AXSSWordDescriptionManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstances = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];

  return MEMORY[0x1EEE66BB8]();
}

- (id)descriptionOfWord:(id)word forLanguage:(id)language
{
  wordCopy = word;
  languageCopy = language;
  if ([(__CFString *)languageCopy hasPrefix:@"ja"])
  {
    v7 = +[AXSSWordDescriptionManager_ja sharedInstance];
    v8 = v7;
    v9 = @"ja";
LABEL_6:
    [v7 setLanguageDialectCode:v9];
    goto LABEL_7;
  }

  if (([(__CFString *)languageCopy hasPrefix:@"zh"]& 1) != 0 || [(__CFString *)languageCopy hasPrefix:@"yue"])
  {
    v7 = +[AXSSWordDescriptionManager_zh sharedInstance];
    v8 = v7;
    v9 = languageCopy;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v10 = [v8 descriptionForWord:wordCopy];

  return v10;
}

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    persistentStoreCoordinator = [(AXSSWordDescriptionManager *)self persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v5 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:2];
      v6 = self->_managedObjectContext;
      self->_managedObjectContext = v5;

      [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
    }

    managedObjectContext = self->_managedObjectContext;
  }

  return managedObjectContext;
}

- (id)languageCode
{
  languageDialectCode = [(AXSSWordDescriptionManager *)self languageDialectCode];
  v3 = [languageDialectCode rangeOfString:@"-"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [languageDialectCode substringToIndex:v3];

    languageDialectCode = v4;
  }

  return languageDialectCode;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (!persistentStoreCoordinator)
  {
    managedObjectModel = [(AXSSWordDescriptionManager *)self managedObjectModel];
    languageCode = [(AXSSWordDescriptionManager *)self languageCode];
    v6 = languageCode;
    if (managedObjectModel && [(__CFString *)languageCode length])
    {
      if ([(__CFString *)v6 isEqualToString:@"yue"])
      {

        v6 = @"zh";
      }

      v7 = [@"AXWordDescriptionsData_" stringByAppendingString:v6];
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 URLForResource:v7 withExtension:@"sqlite"];

      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:managedObjectModel];
        v11 = self->_persistentStoreCoordinator;
        self->_persistentStoreCoordinator = v10;

        v12 = MEMORY[0x1E695DF20];
        v13 = *MEMORY[0x1E696A388];
        v14 = *MEMORY[0x1E696A3A0];
        v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
        v16 = [v12 dictionaryWithObjectsAndKeys:{v13, v14, v15, *MEMORY[0x1E695D458], 0}];

        v17 = self->_persistentStoreCoordinator;
        v18 = *MEMORY[0x1E695D4A8];
        v24 = 0;
        v19 = [(NSPersistentStoreCoordinator *)v17 addPersistentStoreWithType:v18 configuration:0 URL:v9 options:v16 error:&v24];
        v20 = v24;

        if (!v19)
        {
          v21 = self->_persistentStoreCoordinator;
          self->_persistentStoreCoordinator = 0;

          localizedDescription = [v20 localizedDescription];
          NSLog(&cfstr_SErrorAddingPe.isa, "[AXSSWordDescriptionManager persistentStoreCoordinator]", localizedDescription);
        }
      }
    }

    persistentStoreCoordinator = self->_persistentStoreCoordinator;
  }

  return persistentStoreCoordinator;
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (!managedObjectModel)
  {
    languageCode = [(AXSSWordDescriptionManager *)self languageCode];
    if ([(__CFString *)languageCode length])
    {
      if ([(__CFString *)languageCode isEqualToString:@"yue"])
      {

        languageCode = @"zh";
      }

      v5 = [@"AXWordDescriptionsData_" stringByAppendingString:languageCode];
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 URLForResource:v5 withExtension:@"momd"];

      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v7];
        v9 = self->_managedObjectModel;
        self->_managedObjectModel = v8;
      }

      else
      {
        NSLog(&cfstr_SFailedToFindM.isa, "[AXSSWordDescriptionManager managedObjectModel]");
      }
    }

    managedObjectModel = self->_managedObjectModel;
  }

  return managedObjectModel;
}

void __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (GetHiraganaSet___onceToken != -1)
  {
    __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_1();
  }

  v39[0] = GetHiraganaSet___hiraganaSet;
  if (GetKatakanaSet___onceToken != -1)
  {
    __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_2();
  }

  v39[1] = GetKatakanaSet___katakanaSet;
  if (GetHalfWidthLatinSet___onceToken != -1)
  {
    __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_3();
  }

  v39[2] = GetHalfWidthLatinSet___halfWidthLatinSet;
  if (GetFullWidthLatinSet___onceToken != -1)
  {
    __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_4();
  }

  v39[3] = GetFullWidthLatinSet___fullWidthLatinSet;
  v38[0] = xmmword_1E8135BB8;
  v38[1] = *off_1E8135BC8;
  if ([v7 _isOnlyIdeographs])
  {
    goto LABEL_36;
  }

  if (![*(*(*(a1 + 64) + 8) + 40) length] || (v8 = *(*(*(a1 + 72) + 8) + 24), v8 > 3))
  {
LABEL_23:
    if ([*(*(*(a1 + 64) + 8) + 40) length])
    {
      v13 = *(*(*(a1 + 72) + 8) + 24);
      if (v13 <= 3)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(v38 + v13), *(*(*(a1 + 64) + 8) + 40)];
        [*(a1 + 40) addObject:v14];
      }
    }

    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v17 = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
    while (![v7 _contentsExclusivelyInCharacterSet:v39[v17]])
    {
      if (++v17 == 4)
      {
        goto LABEL_31;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = v17;
LABEL_31:
    v18 = *(*(*(a1 + 72) + 8) + 24);
    if (v18 <= 3)
    {
      v19 = MEMORY[0x1E696AD60];
      v12 = [*(a1 + 32) _convertString:v7 ifNeededForHiragana:v18 == 0];
      v20 = [v19 stringWithString:v12];
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      goto LABEL_33;
    }

    [*(a1 + 40) addObject:v7];
LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  v9 = v39[v8];
  v10 = v7;
  if (([v10 _contentsExclusivelyInCharacterSet:v9] & 1) == 0)
  {
    if (GetHiraganaSet___onceToken != -1)
    {
      __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_1();
    }

    if (GetHiraganaSet___hiraganaSet != v9)
    {
      if (GetKatakanaSet___onceToken != -1)
      {
        __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke_cold_2();
      }

      if (GetKatakanaSet___katakanaSet != v9)
      {
        goto LABEL_22;
      }
    }

    if (([v10 isEqualToString:@"ー"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"・") & 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = [*(a1 + 32) _convertString:v10 ifNeededForHiragana:*(*(*(a1 + 72) + 8) + 24) == 0];
  [v11 appendString:v12];
LABEL_33:

  if (a3 + a4 != [*(a1 + 48) length])
  {
    goto LABEL_46;
  }

  v23 = 1;
LABEL_37:
  if ([*(*(*(a1 + 64) + 8) + 40) length])
  {
    v24 = *(*(*(a1 + 72) + 8) + 24);
    if (v24 <= 3)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(v38 + v24), *(*(*(a1 + 64) + 8) + 40)];
      [*(a1 + 40) addObject:v25];
    }
  }

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = 0;

  *(*(*(a1 + 72) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if ((v23 & 1) == 0)
  {
    v28 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Entry"];
    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"character == %@", v7];
    [v28 setPredicate:v29];

    v30 = *(a1 + 56);
    v37 = 0;
    v31 = [v30 executeFetchRequest:v28 error:&v37];
    v32 = v37;
    if ([v31 count])
    {
      v33 = [v31 objectAtIndex:0];
      v34 = [v33 valueForKey:@"exemplar"];
      if ([v34 length])
      {
        [*(a1 + 40) addObject:v34];
      }
    }
  }

LABEL_46:
  for (i = 24; i != -8; i -= 8)
  {
  }

  v36 = *MEMORY[0x1E69E9840];
}

@end