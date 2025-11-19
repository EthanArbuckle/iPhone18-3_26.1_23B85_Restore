@interface HKWorkoutClusterStore
+ (id)taskIdentifier;
- (HKWorkoutClusterStore)initWithHealthStore:(id)a3;
- (id)_coordinatesHandlerWithCallback:(id)a3 completion:(id)a4;
- (id)_workoutFilterForPredicate:(id)a3;
- (void)createWorkoutCluster:(id)a3 completion:(id)a4;
- (void)deleteWorkoutClusterWithUUID:(id)a3 completion:(id)a4;
- (void)fetchRouteCoordinatesForWorkoutUUID:(id)a3 dateInterval:(id)a4 limit:(unint64_t)a5 handler:(id)a6 completion:(id)a7;
- (void)fetchRouteCoordinatesForWorkoutUUID:(id)a3 startDate:(id)a4 limit:(unint64_t)a5 handler:(id)a6 completion:(id)a7;
- (void)fetchWorkoutClusterContainingWorkoutUUID:(id)a3 completion:(id)a4;
- (void)fetchWorkoutClustersContainingWorkoutUUIDs:(id)a3 completion:(id)a4;
- (void)fetchWorkoutClustersWithCompletion:(id)a3;
- (void)fetchWorkoutCountWithPredicate:(id)a3 completion:(id)a4;
- (void)fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 completion:(id)a4;
- (void)fetchWorkoutUUIDsForClusterUUID:(id)a3 completion:(id)a4;
- (void)fetchWorkoutsWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 completion:(id)a6;
- (void)fetchWorkoutsWithPredicate:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 completion:(id)a6;
- (void)generateRaceRouteClustersWithLimit:(unint64_t)a3 completion:(id)a4;
- (void)updateWorkoutClusterWithUUID:(id)a3 newRelevance:(id)a4 newLastWorkoutUUID:(id)a5 newBestWorkoutUUID:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 completion:(id)a9;
- (void)updateWorkoutRouteLabel:(id)a3 forClusterUUID:(id)a4 completion:(id)a5;
- (void)updateWorkoutRouteSnapshot:(id)a3 forClusterUUID:(id)a4 completion:(id)a5;
@end

@implementation HKWorkoutClusterStore

- (HKWorkoutClusterStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKWorkoutClusterStore;
  v5 = [(HKWorkoutClusterStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchWorkoutCountWithPredicate:(id)a3 completion:(id)a4
{
  proxyProvider = self->_proxyProvider;
  v7 = a3;
  v8 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  v9 = [(HKWorkoutClusterStore *)self _workoutFilterForPredicate:v7];

  v10 = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HKWorkoutClusterStore_fetchWorkoutCountWithPredicate_completion___block_invoke;
  v15[3] = &unk_1E7376D18;
  v16 = v9;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__HKWorkoutClusterStore_fetchWorkoutCountWithPredicate_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v9;
  [(HKProxyProvider *)v10 fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)fetchWorkoutsWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  proxyProvider = self->_proxyProvider;
  v12 = a3;
  v13 = [(HKProxyProvider *)proxyProvider clientQueueDoubleObjectHandlerWithCompletion:a6];
  v14 = [(HKWorkoutClusterStore *)self _workoutFilterForPredicate:v12];

  v15 = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__HKWorkoutClusterStore_fetchWorkoutsWithPredicate_anchor_limit_completion___block_invoke;
  v21[3] = &unk_1E7376D40;
  v22 = v14;
  v23 = v10;
  v25 = a5;
  v24 = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__HKWorkoutClusterStore_fetchWorkoutsWithPredicate_anchor_limit_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v24;
  v16 = v24;
  v17 = v10;
  v18 = v14;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)fetchWorkoutsWithPredicate:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 completion:(id)a6
{
  v10 = a5;
  proxyProvider = self->_proxyProvider;
  v12 = a3;
  v13 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:a6];
  v14 = [(HKWorkoutClusterStore *)self _workoutFilterForPredicate:v12];

  v15 = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__HKWorkoutClusterStore_fetchWorkoutsWithPredicate_limit_sortDescriptors_completion___block_invoke;
  v21[3] = &unk_1E7376D40;
  v25 = a4;
  v22 = v14;
  v23 = v10;
  v24 = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__HKWorkoutClusterStore_fetchWorkoutsWithPredicate_limit_sortDescriptors_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v24;
  v16 = v24;
  v17 = v10;
  v18 = v14;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v21 errorHandler:v19];
}

- (id)_workoutFilterForPredicate:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = +[(HKObjectType *)HKSampleType];
  v7 = [v5 initWithObjects:{v6, 0}];

  v8 = [v4 hk_filterRepresentationForDataTypes:v7];

  return v8;
}

- (void)fetchRouteCoordinatesForWorkoutUUID:(id)a3 startDate:(id)a4 limit:(unint64_t)a5 handler:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_startDate_limit_handler_completion___block_invoke;
  v23[3] = &unk_1E7376D68;
  v24 = v12;
  v25 = v13;
  v29 = a5;
  v26 = self;
  v27 = v14;
  v28 = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_startDate_limit_handler_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v28;
  v17 = v28;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

void __96__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_startDate_limit_handler_completion___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  v6 = a1[9];
  v8 = a2;
  v9 = [v4 _coordinatesHandlerWithCallback:v5 completion:v7];
  [v8 remote_fetchRouteCoordinatesForWorkoutUUID:v2 startDate:v3 limit:v6 completion:v9];
}

- (void)fetchRouteCoordinatesForWorkoutUUID:(id)a3 dateInterval:(id)a4 limit:(unint64_t)a5 handler:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __99__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_dateInterval_limit_handler_completion___block_invoke;
  v23[3] = &unk_1E7376D68;
  v24 = v12;
  v25 = v13;
  v29 = a5;
  v26 = self;
  v27 = v14;
  v28 = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_dateInterval_limit_handler_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v28;
  v17 = v28;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

void __99__HKWorkoutClusterStore_fetchRouteCoordinatesForWorkoutUUID_dateInterval_limit_handler_completion___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  v6 = a1[9];
  v8 = a2;
  v9 = [v4 _coordinatesHandlerWithCallback:v5 completion:v7];
  [v8 remote_fetchRouteCoordinatesForWorkoutUUID:v2 dateInterval:v3 limit:v6 completion:v9];
}

- (id)_coordinatesHandlerWithCallback:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__HKWorkoutClusterStore__coordinatesHandlerWithCallback_completion___block_invoke;
  v11[3] = &unk_1E7376D90;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = _Block_copy(v11);

  return v9;
}

void __68__HKWorkoutClusterStore__coordinatesHandlerWithCallback_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 coordinates];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = *(a1 + 32);
        [v12 latitude];
        v15 = v14;
        [v12 longitude];
        (*(v13 + 16))(v13, v15, v16);
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ([v5 hasResumeDate])
  {
    v17 = MEMORY[0x1E695DF00];
    [v5 resumeDate];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v18 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

- (void)createWorkoutCluster:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__HKWorkoutClusterStore_createWorkoutCluster_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__HKWorkoutClusterStore_createWorkoutCluster_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchWorkoutClustersWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKWorkoutClusterStore_fetchWorkoutClustersWithCompletion___block_invoke;
  v9[3] = &unk_1E7376DB8;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKWorkoutClusterStore_fetchWorkoutClustersWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchWorkoutClusterContainingWorkoutUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__HKWorkoutClusterStore_fetchWorkoutClusterContainingWorkoutUUID_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKWorkoutClusterStore_fetchWorkoutClusterContainingWorkoutUUID_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchWorkoutClustersContainingWorkoutUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKWorkoutClusterStore_fetchWorkoutClustersContainingWorkoutUUIDs_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKWorkoutClusterStore_fetchWorkoutClustersContainingWorkoutUUIDs_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchWorkoutUUIDsForClusterUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__HKWorkoutClusterStore_fetchWorkoutUUIDsForClusterUUID_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__HKWorkoutClusterStore_fetchWorkoutUUIDsForClusterUUID_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__HKWorkoutClusterStore_fetchWorkoutRouteSnapshotForClusterUUID_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__HKWorkoutClusterStore_fetchWorkoutRouteSnapshotForClusterUUID_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)updateWorkoutRouteSnapshot:(id)a3 forClusterUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__HKWorkoutClusterStore_updateWorkoutRouteSnapshot_forClusterUUID_completion___block_invoke;
  v17[3] = &unk_1E7376DE0;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__HKWorkoutClusterStore_updateWorkoutRouteSnapshot_forClusterUUID_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)updateWorkoutRouteLabel:(id)a3 forClusterUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__HKWorkoutClusterStore_updateWorkoutRouteLabel_forClusterUUID_completion___block_invoke;
  v17[3] = &unk_1E7376DE0;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__HKWorkoutClusterStore_updateWorkoutRouteLabel_forClusterUUID_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)updateWorkoutClusterWithUUID:(id)a3 newRelevance:(id)a4 newLastWorkoutUUID:(id)a5 newBestWorkoutUUID:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a9];
  proxyProvider = self->_proxyProvider;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __167__HKWorkoutClusterStore_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_completion___block_invoke;
  v32[3] = &unk_1E7376E08;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __167__HKWorkoutClusterStore_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_completion___block_invoke_2;
  v30[3] = &unk_1E7376960;
  v31 = v39;
  v23 = v39;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v32 errorHandler:v30];
}

- (void)deleteWorkoutClusterWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__HKWorkoutClusterStore_deleteWorkoutClusterWithUUID_completion___block_invoke;
  v13[3] = &unk_1E7376D18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__HKWorkoutClusterStore_deleteWorkoutClusterWithUUID_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)generateRaceRouteClustersWithLimit:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v6];

    proxyProvider = self->_proxyProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__HKWorkoutClusterStore_generateRaceRouteClustersWithLimit_completion___block_invoke;
    v12[3] = &unk_1E7376E30;
    v14 = a3;
    v13 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__HKWorkoutClusterStore_generateRaceRouteClustersWithLimit_completion___block_invoke_2;
    v10[3] = &unk_1E7376960;
    v6 = v13;
    v11 = v6;
    [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Cluster limit must be positive."];
    (*(v6 + 2))(v6, 0, v9);
  }
}

@end