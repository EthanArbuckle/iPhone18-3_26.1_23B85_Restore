@interface WOWorkoutQueryServer
+ (id)serverWithClient:(id)client profile:(id)profile error:(id *)error;
- (BOOL)_validateConfigurations:(id)configurations withPersistenceType:(unint64_t)type error:(id *)error;
- (WOWorkoutQueryServer)initWithClient:(id)client profile:(id)profile;
- (id)_statePredicateForClass:(Class)class state:(unint64_t)state;
- (void)_delete:(id)_delete ofType:(unint64_t)type withCompletion:(id)completion;
- (void)_deleteConfigurations:(id)configurations ofType:(unint64_t)type withCompletion:(id)completion;
- (void)_deleteExternalProvidersWithSourceIdentifier:(id)identifier completion:(id)completion;
- (void)_deleteManagedFromSource:(id)source withCompletion:(id)completion;
- (void)_fetch:(id)_fetch ofType:(unint64_t)type state:(unint64_t)state withCompletion:(id)completion;
- (void)_fetchAll:(unint64_t)all withCompletion:(id)completion;
- (void)_fetchManagedFromSource:(id)source withCompletion:(id)completion;
- (void)_fetchProtoAll:(unint64_t)all state:(unint64_t)state withCompletion:(id)completion;
- (void)_fetchProviderWithSourceIdentifier:(id)identifier withCompletion:(id)completion;
- (void)_save:(id)_save withCompletion:(id)completion;
- (void)_saveConfigurations:(id)configurations ofType:(unint64_t)type withCompletion:(id)completion;
- (void)connectionInvalidated;
- (void)remote_addManagedConfigurations:(id)configurations withCompletion:(id)completion;
- (void)remote_deleteConfiguration:(id)configuration withCompletion:(id)completion;
- (void)remote_deleteExternalProvider:(id)provider withCompletion:(id)completion;
- (void)remote_deleteManagedConfigurations:(id)configurations withCompletion:(id)completion;
- (void)remote_fetchAllConfigurationsAsSerializedPersistenceWithCompletion:(id)completion;
- (void)remote_fetchAllDeletedConfigurationsAsSerializedPersistenceWithCompletion:(id)completion;
- (void)remote_fetchAllExternalProvidersWithCompletion:(id)completion;
- (void)remote_fetchConfiguration:(id)configuration withCompletion:(id)completion;
- (void)remote_fetchDeletedConfiguration:(id)configuration withCompletion:(id)completion;
- (void)remote_fetchExternalProviderForIdentifier:(id)identifier withCompletion:(id)completion;
- (void)remote_fetchManagedConfigurations:(id)configurations withCompletion:(id)completion;
- (void)remote_fetchManagedConfigurationsByProviderWithCompletion:(id)completion;
- (void)remote_removeManagedConfigurations:(id)configurations withCompletion:(id)completion;
- (void)remote_saveConfiguration:(id)configuration withCompletion:(id)completion;
- (void)remote_saveConfigurations:(id)configurations withCompletion:(id)completion;
- (void)remote_setManagedConfigurations:(id)configurations withCompletion:(id)completion;
@end

@implementation WOWorkoutQueryServer

+ (id)serverWithClient:(id)client profile:(id)profile error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v19 = 0;
  objc_storeStrong(&v19, profile);
  errorCopy = error;
  process = [location[0] process];
  v13 = [process hasRequiredEntitlement:HKPrivateHealthKitEntitlement error:error];

  if (v13)
  {
    v5 = [WOWorkoutQueryServer alloc];
    v21 = [(WOWorkoutQueryServer *)v5 initWithClient:location[0] profile:v19];
    v17 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogWorkouts;
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_0, log, type, "Failing for client without private health kit entitlement.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v21 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  v6 = v21;

  return v6;
}

- (WOWorkoutQueryServer)initWithClient:(id)client profile:(id)profile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, profile);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = WOWorkoutQueryServer;
  selfCopy = [(WOWorkoutQueryServer *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(WOWorkoutQueryServer *)selfCopy setClient:location[0]];
    [(WOWorkoutQueryServer *)selfCopy setProfile:v9];
  }

  v6 = selfCopy;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)connectionInvalidated
{
  client = [(WOWorkoutQueryServer *)self client];
  connection = [(HDXPCClient *)client connection];
  [connection invalidate];
}

- (void)_fetchAll:(unint64_t)all withCompletion:(id)completion
{
  selfCopy = self;
  v38 = a2;
  allCopy = all;
  location = 0;
  objc_storeStrong(&location, completion);
  v35 = 0;
  v34 = [WOWorkoutEntity classForPersistenceType:allCopy];
  queryLimit = [(objc_class *)v34 queryLimit];
  _HKInitializeLogging();
  v32 = HKLogWorkouts;
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    log = v32;
    type = v31;
    v15 = NSStringForWOPersistenceType();
    v11 = v15;
    v30 = v11;
    v14 = NSStringForWOPersistenceObjectState();
    v29 = v14;
    __os_log_helper_16_2_3_8_66_8_66_8_0(v41, v11, v29, queryLimit);
    _os_log_impl(&dword_0, log, type, "[WorkoutQueryServer] fetching %{public}@ of state %{public}@ (limit=%lu)", v41, 0x20u);

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  v28 = +[NSMutableArray array];
  v8 = v34;
  database = [(HDProfile *)selfCopy->_profile database];
  v26 = v35;
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = __49__WOWorkoutQueryServer__fetchAll_withCompletion___block_invoke;
  v23 = &unk_20940;
  v24 = selfCopy;
  v25[1] = v34;
  v25[2] = queryLimit;
  v25[3] = allCopy;
  v25[0] = v28;
  v10 = [(objc_class *)v8 performReadTransactionWithHealthDatabase:database error:&v26 block:&v19];
  objc_storeStrong(&v35, v26);

  v27 = v10;
  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v17;
    v4 = [v28 count];
    [(objc_class *)v34 persistenceType];
    v7 = NSStringForWOPersistenceType();
    v16 = v7;
    __os_log_helper_16_2_2_8_0_8_66(v40, v4, v16);
    _os_log_impl(&dword_0, v5, v6, "[WorkoutQueryServer] fetched %lu %{public}@", v40, 0x16u);

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v27)
  {
    (*(location + 2))(location, v28, 0);
  }

  else
  {
    (*(location + 2))(location, &__NSArray0__struct, v35);
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
}

uint64_t __49__WOWorkoutQueryServer__fetchAll_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = a3;
  v17[1] = a1;
  v17[0] = [*(a1 + 32) _statePredicateForClass:*(a1 + 48) state:0];
  v9 = *(a1 + 48);
  v11 = [v9 allProperties];
  v7 = v17[0];
  v8 = *(a1 + 56);
  v10 = [*(*(a1 + 32) + 16) database];
  v6 = v18;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __49__WOWorkoutQueryServer__fetchAll_withCompletion___block_invoke_2;
  v13[3] = &unk_20918;
  v16[1] = *(a1 + 48);
  v16[2] = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = location[0];
  v16[0] = *(a1 + 40);
  v12 = [v9 enumerateProperties:v11 withPredicate:v7 orderingTerms:0 groupBy:0 limit:v8 healthDatabase:v10 error:v6 enumerationHandler:v13];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);

  objc_storeStrong(v17, 0);
  objc_storeStrong(location, 0);
  return v12;
}

uint64_t __49__WOWorkoutQueryServer__fetchAll_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[3] = a4;
  v10[2] = a5;
  v10[1] = a1;
  v10[0] = [*(a1 + 56) persistenceFromRow:a4 type:*(a1 + 64) profile:*(*(a1 + 32) + 16) transaction:*(a1 + 40)];
  if (v10[0])
  {
    [*(a1 + 48) addObject:v10[0]];
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v14, v12);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "Failed to load persistence from row %lld.", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
  return 1;
}

- (void)_fetchProtoAll:(unint64_t)all state:(unint64_t)state withCompletion:(id)completion
{
  selfCopy = self;
  v41 = a2;
  allCopy = all;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, completion);
  v37 = 0;
  v36 = [WOWorkoutEntity classForPersistenceType:allCopy];
  queryLimit = [(objc_class *)v36 queryLimit];
  _HKInitializeLogging();
  v34 = HKLogWorkouts;
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    log = v34;
    type = v33;
    v17 = NSStringForWOPersistenceType();
    v13 = v17;
    v32 = v13;
    v16 = NSStringForWOPersistenceObjectState();
    v31 = v16;
    __os_log_helper_16_2_3_8_66_8_66_8_0(v44, v13, v31, queryLimit);
    _os_log_impl(&dword_0, log, type, "[WorkoutQueryServer] fetching %{public}@ of state %{public}@ (limit=%lu)", v44, 0x20u);

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  v30 = objc_opt_new();
  v10 = v36;
  database = [(HDProfile *)selfCopy->_profile database];
  v28 = v37;
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = __60__WOWorkoutQueryServer__fetchProtoAll_state_withCompletion___block_invoke;
  v25 = &unk_20968;
  v26 = selfCopy;
  v27[1] = v36;
  v27[2] = stateCopy;
  v27[3] = queryLimit;
  v27[4] = allCopy;
  v27[0] = v30;
  v12 = [(objc_class *)v10 performReadTransactionWithHealthDatabase:database error:&v28 block:&v21];
  objc_storeStrong(&v37, v28);

  v29 = v12;
  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = oslog;
    v7 = v19;
    persistences = [v30 persistences];
    v5 = [persistences count];
    v8 = NSStringForWOPersistenceType();
    v18 = v8;
    __os_log_helper_16_2_2_8_0_8_66(v43, v5, v18);
    _os_log_impl(&dword_0, v6, v7, "[WorkoutQueryServer] fetched %lu %{public}@", v43, 0x16u);

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v29)
  {
    (*(location + 2))(location, v30, 0);
  }

  else
  {
    (*(location + 2))(location, 0, v37);
  }

  objc_storeStrong(v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
}

uint64_t __60__WOWorkoutQueryServer__fetchProtoAll_state_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = a3;
  v23[1] = a1;
  v23[0] = [*(a1 + 32) _statePredicateForClass:*(a1 + 48) state:*(a1 + 56)];
  v22 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:@"proto"];
  v21 = [HDSQLitePredicate compoundPredicateWithPredicate:v23[0] otherPredicate:v22];
  v6 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"occurrence_count_modification_date" entityClass:*(a1 + 48) ascending:0];
  v26[0] = v6;
  v5 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"occurrence_creation_date" entityClass:*(a1 + 48) ascending:0];
  v26[1] = v5;
  v20 = [NSArray arrayWithObjects:v26 count:2];

  v12 = *(a1 + 48);
  v15 = [v12 allProperties];
  v9 = v21;
  v10 = v20;
  v11 = *(a1 + 64);
  v14 = [*(*(a1 + 32) + 16) database];
  v8 = v24;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __60__WOWorkoutQueryServer__fetchProtoAll_state_withCompletion___block_invoke_2;
  v16[3] = &unk_20918;
  v19[1] = *(a1 + 48);
  v19[2] = *(a1 + 72);
  v17 = *(a1 + 32);
  v18 = location[0];
  v19[0] = *(a1 + 40);
  v13 = [v12 enumerateProperties:v15 withPredicate:v9 orderingTerms:v10 groupBy:0 limit:v11 healthDatabase:v14 error:v8 enumerationHandler:v16];
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);
  objc_storeStrong(location, 0);
  return v13;
}

uint64_t __60__WOWorkoutQueryServer__fetchProtoAll_state_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[3] = a4;
  v10[2] = a5;
  v10[1] = a1;
  v10[0] = [*(a1 + 56) protoPersistenceFromRow:a4 type:*(a1 + 64) profile:*(*(a1 + 32) + 16) transaction:*(a1 + 40)];
  if (v10[0])
  {
    [*(a1 + 48) addPersistences:v10[0]];
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v14, v12);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "Failed to load persistence from row %lld.", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
  return 1;
}

- (void)_fetch:(id)_fetch ofType:(unint64_t)type state:(unint64_t)state withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, _fetch);
  typeCopy = type;
  stateCopy = state;
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v41 = 0;
  v40 = [WOWorkoutEntity classForPersistenceType:typeCopy];
  queryLimit = [(objc_class *)v40 queryLimit];
  _HKInitializeLogging();
  v38 = HKLogWorkouts;
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringForWOPersistenceType();
    v36 = v12;
    v11 = NSStringForWOPersistenceObjectState();
    v35 = v11;
    __os_log_helper_16_2_4_8_66_8_66_8_0_8_66(v48, v36, v35, queryLimit, location[0]);
    _os_log_impl(&dword_0, v38, v37, "[WorkoutQueryServer] fetching %{public}@ of state %{public}@ (limit=%lu) for id: %{public}@", v48, 0x2Au);

    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  v28 = 0;
  v29 = &v28;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v10 = v40;
  database = [(HDProfile *)selfCopy->_profile database];
  v26 = v41;
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = __59__WOWorkoutQueryServer__fetch_ofType_state_withCompletion___block_invoke;
  v23 = &unk_20990;
  v25[2] = v40;
  v24 = location[0];
  v25[0] = selfCopy;
  v25[3] = stateCopy;
  v25[4] = queryLimit;
  v25[5] = typeCopy;
  v25[1] = &v28;
  v9 = [(objc_class *)v10 performReadTransactionWithHealthDatabase:database error:&v26 block:&v19];
  objc_storeStrong(&v41, v26);

  v27 = v9;
  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v29[5] != 0;
    v6 = NSStringForWOPersistenceType();
    v16 = v6;
    __os_log_helper_16_2_2_4_0_8_66(v47, v7, v16);
    _os_log_impl(&dword_0, oslog, v17, "[WorkoutQueryServer] fetched %d %{public}@", v47, 0x12u);

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v27)
  {
    (*(v42 + 2))(v42, v29[5], 0);
  }

  else
  {
    (*(v42 + 2))(v42, 0, v41);
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v28, 8);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

uint64_t __59__WOWorkoutQueryServer__fetch_ofType_state_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = a3;
  v20[1] = a1;
  v6 = [*(a1 + 56) propertyForUUID];
  v3 = *(a1 + 32);
  v20[0] = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToValue:" equalToValue:?];

  v19 = [*(a1 + 40) _statePredicateForClass:*(a1 + 56) state:*(a1 + 64)];
  v18 = [HDSQLitePredicate compoundPredicateWithPredicate:v20[0] otherPredicate:v19];
  v11 = *(a1 + 56);
  v13 = [v11 allProperties];
  v9 = v18;
  v10 = *(a1 + 72);
  v12 = [*(*(a1 + 40) + 16) database];
  v8 = v21;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __59__WOWorkoutQueryServer__fetch_ofType_state_withCompletion___block_invoke_2;
  v15[3] = &unk_206C8;
  v17[2] = *(a1 + 56);
  v17[3] = *(a1 + 80);
  v16 = *(a1 + 40);
  v17[0] = location[0];
  v17[1] = *(a1 + 48);
  v14 = [v11 enumerateProperties:v13 withPredicate:v9 orderingTerms:0 groupBy:0 limit:v10 healthDatabase:v12 error:v8 enumerationHandler:v15];
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(location, 0);
  return v14;
}

uint64_t __59__WOWorkoutQueryServer__fetch_ofType_state_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  obja[3] = a4;
  obja[2] = a5;
  obja[1] = a1;
  obja[0] = [*(a1 + 56) persistenceFromRow:a4 type:*(a1 + 64) profile:*(*(a1 + 32) + 16) transaction:*(a1 + 40)];
  if (obja[0])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obja[0]);
    v15 = 1;
    v10 = 1;
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v16, v13);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "Failed to load persistence from row %lld.", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v15 = 0;
    v10 = 1;
  }

  objc_storeStrong(obja, 0);
  objc_storeStrong(&location, 0);
  return v15 & 1;
}

- (void)_fetchManagedFromSource:(id)source withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v40 = 0;
  objc_storeStrong(&v40, completion);
  v39 = 0;
  v38 = objc_opt_class();
  queryLimit = [v38 queryLimit];
  _HKInitializeLogging();
  v36 = HKLogWorkouts;
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    log = v36;
    type = v35;
    [v38 persistenceType];
    v15 = NSStringForWOPersistenceType();
    v11 = v15;
    v34 = v11;
    v14 = NSStringForWOPersistenceObjectState();
    v33 = v14;
    __os_log_helper_16_2_4_8_66_8_66_8_0_8_66(v44, v11, v33, queryLimit, location[0]);
    _os_log_impl(&dword_0, log, type, "[WorkoutQueryServer] fetching %{public}@ of state %{public}@ (limit=%lu) for id: %{public}@", v44, 0x2Au);

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v36, 0);
  v32 = +[WOWorkoutManagedConfigurationEntity propertyForManagedSourceIdentifier];
  v31 = +[NSMutableArray array];
  v8 = v38;
  database = [(HDProfile *)selfCopy->_profile database];
  v29 = v39;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = __63__WOWorkoutQueryServer__fetchManagedFromSource_withCompletion___block_invoke;
  v24 = &unk_209E0;
  v25 = v32;
  v26 = location[0];
  v27 = selfCopy;
  v28[1] = v38;
  v28[2] = queryLimit;
  v28[0] = v31;
  v10 = [v8 performReadTransactionWithHealthDatabase:database error:&v29 block:&v20];
  objc_storeStrong(&v39, v29);

  v30 = v10;
  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v18;
    v4 = [v31 count];
    [v38 persistenceType];
    v7 = NSStringForWOPersistenceType();
    v17 = v7;
    __os_log_helper_16_2_2_8_0_8_66(v43, v4, v17);
    _os_log_impl(&dword_0, v5, v6, "[WorkoutQueryServer] fetched %lu %{public}@", v43, 0x16u);

    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v30)
  {
    (*(v40 + 2))(v40, v31, 0);
  }

  else
  {
    (*(v40 + 2))(v40, &__NSArray0__struct, v39);
  }

  objc_storeStrong(v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

uint64_t __63__WOWorkoutQueryServer__fetchManagedFromSource_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = a3;
  v19[1] = a1;
  v19[0] = [HDSQLiteComparisonPredicate predicateWithProperty:*(a1 + 32) equalToValue:*(a1 + 40)];
  v18 = [*(a1 + 48) _statePredicateForClass:*(a1 + 64) state:0];
  v17 = [HDSQLitePredicate compoundPredicateWithPredicate:v19[0] otherPredicate:v18];
  v9 = *(a1 + 64);
  v11 = [v9 allProperties];
  v7 = v17;
  v8 = *(a1 + 72);
  v10 = [*(*(a1 + 48) + 16) database];
  v6 = v20;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __63__WOWorkoutQueryServer__fetchManagedFromSource_withCompletion___block_invoke_2;
  v13[3] = &unk_209B8;
  v16[1] = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = location[0];
  v16[0] = *(a1 + 56);
  v12 = [v9 enumerateProperties:v11 withPredicate:v7 orderingTerms:0 groupBy:0 limit:v8 healthDatabase:v10 error:v6 enumerationHandler:v13];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(location, 0);
  return v12;
}

uint64_t __63__WOWorkoutQueryServer__fetchManagedFromSource_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[3] = a4;
  v10[2] = a5;
  v10[1] = a1;
  v10[0] = [*(a1 + 56) persistenceFromRow:a4 type:3 profile:*(*(a1 + 32) + 16) transaction:*(a1 + 40)];
  if (v10[0])
  {
    [*(a1 + 48) addObject:v10[0]];
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v14, v12);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "Failed to load persistence from row %lld.", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
  return 1;
}

- (void)remote_fetchAllConfigurationsAsSerializedPersistenceWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __91__WOWorkoutQueryServer_remote_fetchAllConfigurationsAsSerializedPersistenceWithCompletion___block_invoke;
  v8 = &unk_20A08;
  v9 = location[0];
  [(WOWorkoutQueryServer *)v3 _fetchProtoAll:2 state:0 withCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __91__WOWorkoutQueryServer_remote_fetchAllConfigurationsAsSerializedPersistenceWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (location[0])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] data];
    (*v3)();
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchAllDeletedConfigurationsAsSerializedPersistenceWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __98__WOWorkoutQueryServer_remote_fetchAllDeletedConfigurationsAsSerializedPersistenceWithCompletion___block_invoke;
  v8 = &unk_20A08;
  v9 = location[0];
  [(WOWorkoutQueryServer *)v3 _fetchProtoAll:2 state:1 withCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __98__WOWorkoutQueryServer_remote_fetchAllDeletedConfigurationsAsSerializedPersistenceWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (location[0])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] data];
    (*v3)();
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchConfiguration:(id)configuration withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _fetch:location[0] ofType:2 state:0 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchDeletedConfiguration:(id)configuration withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _fetch:location[0] ofType:2 state:1 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_deleteConfiguration:(id)configuration withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _delete:location[0] ofType:2 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_save:(id)_save withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, _save);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v6 = selfCopy;
  v11 = location[0];
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  type = [location[0] type];
  [(WOWorkoutQueryServer *)v6 _saveConfigurations:v7 ofType:type withCompletion:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_saveConfigurations:(id)configurations ofType:(unint64_t)type withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  typeCopy = type;
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = 0;
  v22 = 0;
  v10 = [(WOWorkoutQueryServer *)selfCopy _validateConfigurations:location[0] withPersistenceType:typeCopy error:&v22];
  objc_storeStrong(&v23, v22);
  if (v10)
  {
    v20 = [WOWorkoutEntity classForPersistenceType:typeCopy];
    v5 = v20;
    database = [(HDProfile *)selfCopy->_profile database];
    v18 = v23;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = __66__WOWorkoutQueryServer__saveConfigurations_ofType_withCompletion___block_invoke;
    v15 = &unk_20A58;
    v16 = location[0];
    v17[1] = v20;
    v17[0] = selfCopy;
    v7 = [(objc_class *)v5 performWriteTransactionWithHealthDatabase:database error:&v18 block:&v11];
    objc_storeStrong(&v23, v18);

    v19 = v7;
    if (v7)
    {
      (*(v24 + 2))(v24, 1, 0);
    }

    else
    {
      (*(v24 + 2))(v24, 0, v23);
    }

    objc_storeStrong(v17, 0);
    objc_storeStrong(&v16, 0);
    v21 = 0;
  }

  else
  {
    (*(v24 + 2))(v24, 0, v23);
    v21 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

uint64_t __66__WOWorkoutQueryServer__saveConfigurations_ofType_withCompletion___block_invoke(id *a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = a3;
  v29 = a1;
  memset(__b, 0, sizeof(__b));
  obj = a1[4];
  v17 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
  if (v17)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v17;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v12);
      v7 = a1[6];
      v9 = [location[0] unprotectedDatabase];
      v8 = [a1[6] allProperties];
      v6 = v30;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = __66__WOWorkoutQueryServer__saveConfigurations_ofType_withCompletion___block_invoke_2;
      v23 = &unk_20A30;
      v25[1] = a1[6];
      v24 = v28;
      v25[0] = a1[5];
      v26 = [v7 insertOrReplaceEntity:1 database:v9 properties:v8 error:v6 bindingHandler:&v19];

      if (!v26)
      {
        _HKInitializeLogging();
        oslog = HKLogWorkouts;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v32, v28);
          _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to insert or replace entity for persistence: %@", v32, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v4 = 0;
      objc_storeStrong(&v26, 0);
      objc_storeStrong(v25, 0);
      objc_storeStrong(&v24, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (void)remote_saveConfiguration:(id)configuration withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  if ([location[0] type] - 2 > &dword_0 + 2)
  {
    v5 = [NSError hk_error:3 description:@"Expected a persistable configuration object."];
    (*(v6 + 2))(v6, 0, v5);
    objc_storeStrong(&v5, 0);
  }

  else
  {
    [(WOWorkoutQueryServer *)selfCopy _save:location[0] withCompletion:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_saveConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if ([location[0] count])
  {
    firstObject = [location[0] firstObject];
    type = [firstObject type];

    v17 = type;
    memset(__b, 0, sizeof(__b));
    v11 = location[0];
    v12 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
    if (v12)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v12;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(__b[1] + 8 * v7);
        type2 = [v16 type];
        if (type2 != v17)
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      v14 = [NSError hk_error:3 description:@"Expected configurations with the same persistence type."];
      (*(v19 + 2))(v19, 0, v14);
      v18 = 1;
      objc_storeStrong(&v14, 0);
    }

    else
    {
LABEL_11:
      v18 = 0;
    }

    if (!v18)
    {
      [(WOWorkoutQueryServer *)selfCopy _saveConfigurations:location[0] ofType:v17 withCompletion:v19];
      v18 = 0;
    }
  }

  else
  {
    (*(v19 + 2))(v19, 1, 0);
    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_deleteManagedConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _deleteManagedFromSource:location[0] withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_deleteExternalProvider:(id)provider withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _deleteExternalProvidersWithSourceIdentifier:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchManagedConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _fetchManagedFromSource:location[0] withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchManagedConfigurationsByProviderWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v44 = dispatch_group_create();
  v38[0] = 0;
  v38[1] = v38;
  v39 = 838860800;
  v40 = 48;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  dispatch_group_enter(v44);
  v7 = selfCopy;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke;
  v24 = &unk_20A80;
  v25[1] = v38;
  v25[2] = v26;
  v25[0] = v44;
  [(WOWorkoutQueryServer *)v7 _fetchAll:3 withCompletion:&v20];
  dispatch_group_enter(v44);
  v6 = selfCopy;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke_2;
  v18 = &unk_20A80;
  v19[1] = v26;
  v19[2] = v32;
  v19[0] = v44;
  [(WOWorkoutQueryServer *)v6 _fetchAll:4 withCompletion:&v14];
  group = v44;
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke_3;
  v12 = &unk_20AA8;
  v13[1] = v26;
  v13[0] = location[0];
  v13[2] = v38;
  v13[3] = v32;
  dispatch_group_notify(group, queue, &v8);

  objc_storeStrong(v13, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(v25, 0);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(&v31, 0);
  _Block_object_dispose(v32, 8);
  objc_storeStrong(&v37, 0);
  _Block_object_dispose(v38, 8);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

void __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = a1;
  if (v16)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v16);
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v8 = location[0];
    v9 = [v8 countByEnumeratingWithState:__b objects:v18 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(__b[1] + 8 * v6);
        v3 = [v14 keyedStrings];
        v12 = [v3 objectForKeyedSubscript:WOColumnExternalProviderBundleIdentifierKey];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
        {
          [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:v12];
        }

        objc_storeStrong(&v12, 0);
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:__b objects:v18 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __82__WOWorkoutQueryServer_remote_fetchManagedConfigurationsByProviderWithCompletion___block_invoke_3(void *a1)
{
  v17[2] = a1;
  v17[1] = a1;
  if (*(*(a1[5] + 8) + 40))
  {
    v1 = *(*(a1[5] + 8) + 40);
    (*(a1[4] + 16))();
  }

  v17[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = *(*(a1[6] + 8) + 40);
  v11 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v8);
      v5 = [v16 keyedStrings];
      v14 = [v5 objectForKeyedSubscript:WOColumnManagedSourceIdentifierKey];

      if ([v14 length])
      {
        location = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v14];
        if (location)
        {
          v4 = [v17[0] objectForKeyedSubscript:location];

          if (!v4)
          {
            v3 = objc_opt_new();
            [v17[0] setObject:? forKeyedSubscript:?];
          }

          v2 = [v17[0] objectForKeyedSubscript:location];
          [v2 addObject:v16];
        }

        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(&v14, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  (*(a1[4] + 16))();
  objc_storeStrong(v17, 0);
}

- (void)remote_addManagedConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _saveConfigurations:location[0] ofType:3 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_removeManagedConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _deleteConfigurations:location[0] ofType:3 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_setManagedConfigurations:(id)configurations withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _saveConfigurations:location[0] ofType:3 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchExternalProviderForIdentifier:(id)identifier withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(WOWorkoutQueryServer *)selfCopy _fetchProviderWithSourceIdentifier:location[0] withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remote_fetchAllExternalProvidersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(WOWorkoutQueryServer *)selfCopy _fetchAll:4 withCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_statePredicateForClass:(Class)class state:(unint64_t)state
{
  selfCopy = self;
  v14 = a2;
  classCopy = class;
  stateCopy = state;
  propertyForObjectState = [(objc_class *)class propertyForObjectState];
  v7 = [NSNumber numberWithUnsignedInteger:stateCopy];
  v11 = [HDSQLiteComparisonPredicate predicateWithProperty:propertyForObjectState equalToValue:?];

  if (([(objc_class *)classCopy isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    propertyForConfigurationType = [(objc_class *)classCopy propertyForConfigurationType];
    v9 = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:notEqualToValue:" notEqualToValue:?];

    v16 = [HDSQLitePredicate compoundPredicateWithPredicate:v9 otherPredicate:v11];
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v16 = v11;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  v4 = v16;

  return v4;
}

- (void)_fetchProviderWithSourceIdentifier:(id)identifier withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v37 = 0;
  v36 = objc_opt_class();
  queryLimit = [v36 queryLimit];
  _HKInitializeLogging();
  v34 = HKLogWorkouts;
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    [v36 persistenceType];
    v10 = NSStringForWOPersistenceType();
    v32 = v10;
    v9 = NSStringForWOPersistenceObjectState();
    v31 = v9;
    __os_log_helper_16_2_4_8_66_8_66_8_0_8_66(v42, v32, v31, queryLimit, location[0]);
    _os_log_impl(&dword_0, v34, v33, "[WorkoutQueryServer] fetching %{public}@ of state %{public}@ (limit=%lu) for id: %{public}@", v42, 0x2Au);

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v8 = v36;
  database = [(HDProfile *)selfCopy->_profile database];
  v22 = v37;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = __74__WOWorkoutQueryServer__fetchProviderWithSourceIdentifier_withCompletion___block_invoke;
  v19 = &unk_20AF8;
  v21[2] = v36;
  v20 = location[0];
  v21[0] = selfCopy;
  v21[3] = queryLimit;
  v21[1] = &v24;
  v7 = [v8 performReadTransactionWithHealthDatabase:database error:&v22 block:&v15];
  objc_storeStrong(&v37, v22);

  v23 = v7;
  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v25[5] != 0;
    [v36 persistenceType];
    v4 = NSStringForWOPersistenceType();
    v12 = v4;
    __os_log_helper_16_2_2_4_0_8_66(v41, v5, v12);
    _os_log_impl(&dword_0, oslog, v13, "[WorkoutQueryServer] fetched %d %{public}@", v41, 0x12u);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v23)
  {
    (*(v38 + 2))(v38, v25[5], 0);
  }

  else
  {
    (*(v38 + 2))(v38, 0, v37);
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

uint64_t __74__WOWorkoutQueryServer__fetchProviderWithSourceIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = a3;
  v20[1] = a1;
  v6 = [*(a1 + 56) propertyForProviderIdentifier];
  v3 = *(a1 + 32);
  v20[0] = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToValue:" equalToValue:?];

  v19 = [*(a1 + 40) _statePredicateForClass:*(a1 + 56) state:0];
  v18 = [HDSQLitePredicate compoundPredicateWithPredicate:v20[0] otherPredicate:v19];
  v11 = *(a1 + 56);
  v13 = [v11 allProperties];
  v9 = v18;
  v10 = *(a1 + 64);
  v12 = [*(*(a1 + 40) + 16) database];
  v8 = v21;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __74__WOWorkoutQueryServer__fetchProviderWithSourceIdentifier_withCompletion___block_invoke_2;
  v15[3] = &unk_20AD0;
  v17[2] = *(a1 + 56);
  v16 = *(a1 + 40);
  v17[0] = location[0];
  v17[1] = *(a1 + 48);
  v14 = [v11 enumerateProperties:v13 withPredicate:v9 orderingTerms:0 groupBy:0 limit:v10 healthDatabase:v12 error:v8 enumerationHandler:v15];
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(location, 0);
  return v14;
}

uint64_t __74__WOWorkoutQueryServer__fetchProviderWithSourceIdentifier_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11[3] = a4;
  v11[2] = a5;
  v11[1] = a1;
  v11[0] = [*(a1 + 56) persistenceFromRow:a4 type:objc_msgSend(*(a1 + 56) profile:"persistenceType") transaction:{*(*(a1 + 32) + 16), *(a1 + 40)}];
  if (v11[0])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11[0]);
    v15 = 1;
    v10 = 1;
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v16, v13);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "Failed to load persistence from row %lld.", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v15 = 0;
    v10 = 1;
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v15 & 1;
}

- (BOOL)_validateConfigurations:(id)configurations withPersistenceType:(unint64_t)type error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  typeCopy = type;
  errorCopy = error;
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v17 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v17)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v17;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v12);
      type = [v20 type];
      if (type != typeCopy)
      {
        break;
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    if (errorCopy)
    {
      typeCopy = [NSString stringWithFormat:@"unexpected persistence type: %lu", typeCopy];
      v9 = [NSError hk_error:3 description:?];
      v6 = v9;
      *errorCopy = v9;
    }

    v24 = 0;
    v18 = 1;
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  if (!v18)
  {
    v24 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (void)_delete:(id)_delete ofType:(unint64_t)type withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, _delete);
  typeCopy = type;
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v9 = selfCopy;
  v7 = location[0];
  v8 = typeCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = __54__WOWorkoutQueryServer__delete_ofType_withCompletion___block_invoke;
  v14 = &unk_20B20;
  v15 = selfCopy;
  v16[1] = typeCopy;
  v16[0] = v17;
  [(WOWorkoutQueryServer *)v9 _fetch:v7 ofType:v8 state:0 withCompletion:?];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __54__WOWorkoutQueryServer__delete_ofType_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  if (location[0])
  {
    v5 = a1[4];
    v11 = location[0];
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v3 = a1[6];
    v4 = a1[5];
    [v5 _deleteConfigurations:? ofType:? withCompletion:?];
  }

  else
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_deleteManagedFromSource:(id)source withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __64__WOWorkoutQueryServer__deleteManagedFromSource_withCompletion___block_invoke;
  v11 = &unk_20B48;
  v12 = location[0];
  v13 = selfCopy;
  v14 = v15;
  [(WOWorkoutQueryServer *)v6 _fetchManagedFromSource:v5 withCompletion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __64__WOWorkoutQueryServer__deleteManagedFromSource_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (location[0])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      oslog[0] = HKLogWorkouts;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_0_8_66(v8, [location[0] count], *(a1 + 32));
        _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_INFO, "[WorkoutQueryServer] deleting %lu managed configurations for id: %{public}@", v8, 0x16u);
      }

      objc_storeStrong(oslog, 0);
    }

    [*(a1 + 40) _deleteConfigurations:location[0] ofType:3 withCompletion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_deleteExternalProvidersWithSourceIdentifier:(id)identifier completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __80__WOWorkoutQueryServer__deleteExternalProvidersWithSourceIdentifier_completion___block_invoke;
  v11 = &unk_20B98;
  v12 = location[0];
  v13 = selfCopy;
  v14 = v15;
  [(WOWorkoutQueryServer *)v6 _fetchProviderWithSourceIdentifier:v5 withCompletion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __80__WOWorkoutQueryServer__deleteExternalProvidersWithSourceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (location[0])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v16[0] = HKLogWorkouts;
      v15 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v16[0], OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v20, *(a1 + 32));
        _os_log_impl(&dword_0, v16[0], v15, "[WorkoutQueryServer] deleting provider for id: %{public}@", v20, 0xCu);
      }

      objc_storeStrong(v16, 0);
    }

    v3 = *(a1 + 40);
    v19 = location[0];
    v4 = [NSArray arrayWithObjects:&v19 count:1];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = __80__WOWorkoutQueryServer__deleteExternalProvidersWithSourceIdentifier_completion___block_invoke_388;
    v11 = &unk_20B70;
    v14 = *(a1 + 48);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    [v3 _deleteConfigurations:v4 ofType:4 withCompletion:&v7];

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), v17 == 0, v17);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __80__WOWorkoutQueryServer__deleteExternalProvidersWithSourceIdentifier_completion___block_invoke_388(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _deleteManagedFromSource:*(a1 + 40) withCompletion:*(a1 + 48)];
  }

  objc_storeStrong(&location, 0);
}

- (void)_deleteConfigurations:(id)configurations ofType:(unint64_t)type withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurations);
  typeCopy = type;
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [WOWorkoutEntity classForPersistenceType:typeCopy];
  memset(__b, 0, sizeof(__b));
  v12 = location[0];
  v13 = [v12 countByEnumeratingWithState:__b objects:v21 count:16];
  if (v13)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v13;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v12);
      }

      v15 = *(__b[1] + 8 * v8);
      [v15 setObjectState:1];
      v5 = +[NSDate date];
      [v15 setObjectModificationDate:?];

      [(objc_class *)v16 preparePersistenceForDelete:v15];
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v12 countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  [(WOWorkoutQueryServer *)selfCopy _saveConfigurations:location[0] ofType:typeCopy withCompletion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end