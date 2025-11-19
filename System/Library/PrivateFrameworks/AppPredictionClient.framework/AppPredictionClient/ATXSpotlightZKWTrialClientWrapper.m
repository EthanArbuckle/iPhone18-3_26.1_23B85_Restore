@interface ATXSpotlightZKWTrialClientWrapper
+ (id)sharedInstance;
- (ATXSpotlightZKWTrialClientWrapper)initWithClientIdentifier:(int)a3;
- (BOOL)matchesAlternateRecentsControlCodePath;
- (BOOL)matchesAlternateRecentsTreatmentCodePath;
- (BOOL)matchesSuggestionsMaxCount;
- (BOOL)nsuaSuggestions;
- (BOOL)showNSUASuggestionsAsAppLaunches;
- (id)codePathForAlternateRecentsControl;
- (id)codePathForAlternateRecentsTreatment;
- (id)codePathIdForSuggestionsMaxCount;
- (id)codepathIDs;
- (int64_t)alternateRecentsRanking;
- (int64_t)suggestionsMaxCount;
- (void)updateFactors;
@end

@implementation ATXSpotlightZKWTrialClientWrapper

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_2 != -1)
  {
    +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_14;

  return v3;
}

void __51__ATXSpotlightZKWTrialClientWrapper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXSpotlightZKWTrialClientWrapper alloc] initWithClientIdentifier:232];
  v2 = sharedInstance__pasExprOnceResult_14;
  sharedInstance__pasExprOnceResult_14 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__ATXSpotlightZKWTrialClientWrapper_updateFactors__block_invoke;
  v3[3] = &unk_1E80C5880;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __50__ATXSpotlightZKWTrialClientWrapper_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXSpotlightZKWTrialClientWrapper: Updating factors", v14, 2u);
  }

  [*(a1 + 32) refreshEnrollmentInformation];
  v5 = [*(a1 + 32) stringForFactor:@"codepathIDs"];
  v6 = [v5 uppercaseString];
  v7 = v3[1];
  v3[1] = v6;

  v8 = [*(a1 + 32) longForFactor:@"ZKWSuggestionsMaxCount"];
  v9 = [v8 longValue];
  v10 = 4;
  if (v9)
  {
    v10 = v9;
  }

  v3[2] = v10;

  v11 = [*(a1 + 32) BOOLForFactor:@"ZKWNSUASuggestions"];
  *(v3 + 24) = [v11 BOOLValue];

  v12 = [*(a1 + 32) BOOLForFactor:@"ZKWShowNSUASuggestionsAsAppLaunches"];
  *(v3 + 25) = [v12 BOOLValue];

  v13 = [*(a1 + 32) longForFactor:@"ZKWAlternateRecentsRanking"];
  v3[4] = [v13 longValue];
}

- (int64_t)alternateRecentsRanking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__ATXSpotlightZKWTrialClientWrapper_alternateRecentsRanking__block_invoke;
  v5[3] = &unk_1E80C58A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ATXSpotlightZKWTrialClientWrapper)initWithClientIdentifier:(int)a3
{
  v9.receiver = self;
  v9.super_class = ATXSpotlightZKWTrialClientWrapper;
  v3 = [(ATXTrialClientWrapper *)&v9 initWithClientIdentifier:*&a3 namespaceName:@"SPOTLIGHT_UI"];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69C5D60]);
    v5 = objc_opt_new();
    v6 = [v4 initWithGuardedData:v5];
    lock = v3->_lock;
    v3->_lock = v6;

    [(ATXSpotlightZKWTrialClientWrapper *)v3 updateFactors];
  }

  return v3;
}

- (id)codePathIdForSuggestionsMaxCount
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9FDF73BF-DFFD-48E8-81C9-13570F689942"];

  return v2;
}

- (BOOL)matchesSuggestionsMaxCount
{
  v3 = [(ATXSpotlightZKWTrialClientWrapper *)self codepathIDs];
  v4 = [(ATXSpotlightZKWTrialClientWrapper *)self codePathIdForSuggestionsMaxCount];
  v5 = [v4 UUIDString];
  v6 = [v3 containsString:v5];

  return v6;
}

- (id)codePathForAlternateRecentsControl
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"060589A5-DF6F-4C6A-A954-1E87CE792C96"];

  return v2;
}

- (id)codePathForAlternateRecentsTreatment
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A0E6F9C0-EC33-4884-88D8-36ED11E3E541"];

  return v2;
}

- (BOOL)matchesAlternateRecentsControlCodePath
{
  v3 = [(ATXSpotlightZKWTrialClientWrapper *)self codepathIDs];
  v4 = [(ATXSpotlightZKWTrialClientWrapper *)self codePathForAlternateRecentsControl];
  v5 = [v4 UUIDString];
  v6 = [v3 containsString:v5];

  return v6;
}

- (BOOL)matchesAlternateRecentsTreatmentCodePath
{
  v3 = [(ATXSpotlightZKWTrialClientWrapper *)self codepathIDs];
  v4 = [(ATXSpotlightZKWTrialClientWrapper *)self codePathForAlternateRecentsTreatment];
  v5 = [v4 UUIDString];
  v6 = [v3 containsString:v5];

  return v6;
}

- (id)codepathIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18;
  v10 = __Block_byref_object_dispose__18;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__ATXSpotlightZKWTrialClientWrapper_codepathIDs__block_invoke;
  v5[3] = &unk_1E80C58A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)suggestionsMaxCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__ATXSpotlightZKWTrialClientWrapper_suggestionsMaxCount__block_invoke;
  v5[3] = &unk_1E80C58A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)nsuaSuggestions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ATXSpotlightZKWTrialClientWrapper_nsuaSuggestions__block_invoke;
  v5[3] = &unk_1E80C58A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)showNSUASuggestionsAsAppLaunches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ATXSpotlightZKWTrialClientWrapper_showNSUASuggestionsAsAppLaunches__block_invoke;
  v5[3] = &unk_1E80C58A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end