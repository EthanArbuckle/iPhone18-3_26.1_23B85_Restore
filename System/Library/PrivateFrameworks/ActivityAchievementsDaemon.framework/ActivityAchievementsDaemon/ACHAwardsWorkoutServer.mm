@interface ACHAwardsWorkoutServer
- (ACHAwardsWorkoutServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_protectedDataAvailabilityError;
- (void)remote_bestDistanceForFirstPartyWorkoutsWithType:(unint64_t)type endingBeforeDate:(id)date completion:(id)completion;
- (void)remote_bestEnergyBurnedForFirstPartyWorkoutsWithType:(unint64_t)type endingBeforeDate:(id)date completion:(id)completion;
- (void)remote_mindfulMinutesForForDateInterval:(id)interval completion:(id)completion;
- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration containedInInterval:(id)interval completion:(id)completion;
- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration type:(unint64_t)type andLocation:(unint64_t)location containedInInterval:(id)interval completion:(id)completion;
- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration type:(unint64_t)type endingOnOrBeforeDate:(id)date completion:(id)completion;
- (void)remote_numberOfWorkoutsWithDuration:(double)duration containedInInterval:(id)interval completion:(id)completion;
- (void)remote_workoutsInDateInterval:(id)interval completion:(id)completion;
@end

@implementation ACHAwardsWorkoutServer

- (ACHAwardsWorkoutServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = ACHAwardsWorkoutServer;
  v11 = [(HDStandardTaskServer *)&v21 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = [ACHWorkoutUtility alloc];
    profile = [clientCopy profile];
    v14 = [(ACHWorkoutUtility *)v12 initWithProfile:profile];
    workoutUtility = v11->_workoutUtility;
    v11->_workoutUtility = v14;

    v16 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v16;

    v18 = HKCreateSerialDispatchQueue();
    clientQueue = v11->_clientQueue;
    v11->_clientQueue = v18;
  }

  return v11;
}

- (id)_protectedDataAvailabilityError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"Protected data unavailable";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)remote_workoutsInDateInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACHAwardsWorkoutServer_remote_workoutsInDateInterval_completion___block_invoke;
  block[3] = &unk_278491280;
  v12 = intervalCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = intervalCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __67__ACHAwardsWorkoutServer_remote_workoutsInDateInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 workoutsInDateInterval:*(a1 + 40)];

    v9 = [*(a1 + 32) clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__ACHAwardsWorkoutServer_remote_workoutsInDateInterval_completion___block_invoke_3;
    v14[3] = &unk_278491258;
    v10 = *(a1 + 48);
    v15 = v8;
    v16 = v10;
    v11 = v8;
    dispatch_async(v9, v14);
  }

  else
  {
    v12 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ACHAwardsWorkoutServer_remote_workoutsInDateInterval_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v13 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __67__ACHAwardsWorkoutServer_remote_workoutsInDateInterval_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, MEMORY[0x277CBEBF8], v2);
}

- (void)remote_numberOfWorkoutsWithDuration:(double)duration containedInInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__ACHAwardsWorkoutServer_remote_numberOfWorkoutsWithDuration_containedInInterval_completion___block_invoke;
  v13[3] = &unk_2784912D0;
  v14 = intervalCopy;
  v15 = completionCopy;
  durationCopy = duration;
  v13[4] = self;
  v11 = intervalCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __93__ACHAwardsWorkoutServer_remote_numberOfWorkoutsWithDuration_containedInInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 numberOfWorkoutsWithDuration:*(a1 + 40) containedInInterval:*(a1 + 56)];

    v9 = [*(a1 + 32) clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __93__ACHAwardsWorkoutServer_remote_numberOfWorkoutsWithDuration_containedInInterval_completion___block_invoke_3;
    v13[3] = &unk_2784912A8;
    v10 = v14;
    v14[0] = *(a1 + 48);
    v14[1] = v8;
    v11 = v13;
  }

  else
  {
    v9 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__ACHAwardsWorkoutServer_remote_numberOfWorkoutsWithDuration_containedInInterval_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v10 = &v16;
    v12 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v16 = v12;
    v11 = block;
  }

  dispatch_async(v9, v11);
}

void __93__ACHAwardsWorkoutServer_remote_numberOfWorkoutsWithDuration_containedInInterval_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration type:(unint64_t)type endingOnOrBeforeDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_endingOnOrBeforeDate_completion___block_invoke;
  block[3] = &unk_2784912F8;
  v16 = dateCopy;
  v17 = completionCopy;
  durationCopy = duration;
  typeCopy = type;
  block[4] = self;
  v13 = dateCopy;
  v14 = completionCopy;
  dispatch_async(queue, block);
}

void __109__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_endingOnOrBeforeDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 numberOfFirstPartyWorkoutsWithDuration:*(a1 + 64) withType:*(a1 + 40) endingOnOrBeforeDate:*(a1 + 56)];

    v9 = [*(a1 + 32) clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __109__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_endingOnOrBeforeDate_completion___block_invoke_3;
    v13[3] = &unk_2784912A8;
    v10 = v14;
    v14[0] = *(a1 + 48);
    v14[1] = v8;
    v11 = v13;
  }

  else
  {
    v9 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_endingOnOrBeforeDate_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v10 = &v16;
    v12 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v16 = v12;
    v11 = block;
  }

  dispatch_async(v9, v11);
}

void __109__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_endingOnOrBeforeDate_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration containedInInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_containedInInterval_completion___block_invoke;
  v13[3] = &unk_2784912D0;
  v14 = intervalCopy;
  v15 = completionCopy;
  durationCopy = duration;
  v13[4] = self;
  v11 = intervalCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __103__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_containedInInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 numberOfFirstPartyWorkoutsWithDuration:*(a1 + 40) containedInInterval:*(a1 + 56)];

    v9 = [*(a1 + 32) clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_containedInInterval_completion___block_invoke_3;
    v13[3] = &unk_2784912A8;
    v10 = v14;
    v14[0] = *(a1 + 48);
    v14[1] = v8;
    v11 = v13;
  }

  else
  {
    v9 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_containedInInterval_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v10 = &v16;
    v12 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v16 = v12;
    v11 = block;
  }

  dispatch_async(v9, v11);
}

void __103__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_containedInInterval_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_numberOfFirstPartyWorkoutsWithDuration:(double)duration type:(unint64_t)type andLocation:(unint64_t)location containedInInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __120__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_andLocation_containedInInterval_completion___block_invoke;
  v17[3] = &unk_278491320;
  v18 = intervalCopy;
  v19 = completionCopy;
  durationCopy = duration;
  typeCopy = type;
  locationCopy = location;
  v17[4] = self;
  v15 = intervalCopy;
  v16 = completionCopy;
  dispatch_async(queue, v17);
}

void __120__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_andLocation_containedInInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 numberOfFirstPartyWorkoutsWithDuration:*(a1 + 64) withType:*(a1 + 72) andLocation:*(a1 + 40) containedInInterval:*(a1 + 56)];

    v9 = [*(a1 + 32) clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __120__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_andLocation_containedInInterval_completion___block_invoke_3;
    v13[3] = &unk_2784912A8;
    v10 = v14;
    v14[0] = *(a1 + 48);
    v14[1] = v8;
    v11 = v13;
  }

  else
  {
    v9 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_andLocation_containedInInterval_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v10 = &v16;
    v12 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v16 = v12;
    v11 = block;
  }

  dispatch_async(v9, v11);
}

void __120__ACHAwardsWorkoutServer_remote_numberOfFirstPartyWorkoutsWithDuration_type_andLocation_containedInInterval_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_bestEnergyBurnedForFirstPartyWorkoutsWithType:(unint64_t)type endingBeforeDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__ACHAwardsWorkoutServer_remote_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke;
  v13[3] = &unk_2784912D0;
  v15 = completionCopy;
  typeCopy = type;
  v13[4] = self;
  v14 = dateCopy;
  v11 = dateCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __107__ACHAwardsWorkoutServer_remote_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 bestEnergyBurnedForFirstPartyWorkoutsWithType:*(a1 + 56) endingBeforeDate:*(a1 + 40)];

    v9 = [*(a1 + 32) clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __107__ACHAwardsWorkoutServer_remote_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_3;
    v14[3] = &unk_278491258;
    v10 = *(a1 + 48);
    v15 = v8;
    v16 = v10;
    v11 = v8;
    dispatch_async(v9, v14);
  }

  else
  {
    v12 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__ACHAwardsWorkoutServer_remote_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v13 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __107__ACHAwardsWorkoutServer_remote_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_bestDistanceForFirstPartyWorkoutsWithType:(unint64_t)type endingBeforeDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ACHAwardsWorkoutServer_remote_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke;
  v13[3] = &unk_2784912D0;
  v15 = completionCopy;
  typeCopy = type;
  v13[4] = self;
  v14 = dateCopy;
  v11 = dateCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __103__ACHAwardsWorkoutServer_remote_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 bestDistanceForFirstPartyWorkoutsWithType:*(a1 + 56) endingBeforeDate:*(a1 + 40)];

    v9 = [*(a1 + 32) clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__ACHAwardsWorkoutServer_remote_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_3;
    v14[3] = &unk_278491258;
    v10 = *(a1 + 48);
    v15 = v8;
    v16 = v10;
    v11 = v8;
    dispatch_async(v9, v14);
  }

  else
  {
    v12 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__ACHAwardsWorkoutServer_remote_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v13 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __103__ACHAwardsWorkoutServer_remote_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)remote_mindfulMinutesForForDateInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  queue = [(ACHAwardsWorkoutServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ACHAwardsWorkoutServer_remote_mindfulMinutesForForDateInterval_completion___block_invoke;
  block[3] = &unk_278491280;
  v12 = intervalCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = intervalCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __77__ACHAwardsWorkoutServer_remote_mindfulMinutesForForDateInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 workoutUtility];
    v8 = [v7 mindfulMinutesForForDateInterval:*(a1 + 40)];

    v9 = [*(a1 + 32) clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__ACHAwardsWorkoutServer_remote_mindfulMinutesForForDateInterval_completion___block_invoke_3;
    v14[3] = &unk_278491258;
    v10 = *(a1 + 48);
    v15 = v8;
    v16 = v10;
    v11 = v8;
    dispatch_async(v9, v14);
  }

  else
  {
    v12 = [v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ACHAwardsWorkoutServer_remote_mindfulMinutesForForDateInterval_completion___block_invoke_2;
    block[3] = &unk_278491258;
    v13 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __77__ACHAwardsWorkoutServer_remote_mindfulMinutesForForDateInterval_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _protectedDataAvailabilityError];
  (*(v1 + 16))(v1, 0, v2);
}

@end