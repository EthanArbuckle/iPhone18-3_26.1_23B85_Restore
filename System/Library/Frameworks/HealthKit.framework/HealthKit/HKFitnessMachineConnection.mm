@interface HKFitnessMachineConnection
@end

@implementation HKFitnessMachineConnection

void __51___HKFitnessMachineConnection_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerClient];
}

void __42___HKFitnessMachineConnection_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v15 = NSStringFromClass(v4);
  v5 = *(a1 + 32);
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = _HKStringForFitnessMachineConnectionState(*(*(a1 + 32) + 56));
  v9 = v8;
  v10 = *(*(a1 + 32) + 48);
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E737FA58[v10];
  }

  v12 = [v2 stringWithFormat:@"<%@ %p> %@ connectionState: %@ machineState: %@ %@", v15, v5, v7, v8, v11, *(*(a1 + 32) + 24)];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void __58___HKFitnessMachineConnection_currentSessionConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  [v2 _setConnectionUUID:v3];

  [*(a1 + 32) _setSessionUUID:*(*(a1 + 40) + 16)];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 24) identifier];
  [v4 _setMachineUUID:v5];

  [*(a1 + 32) _setMachineType:{objc_msgSend(*(*(a1 + 40) + 24), "type")}];
  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 24) device];
  v8 = [v7 name];
  [v6 _setMachineName:v8];

  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 24) brand];
  [v9 _setMachineBrand:v10];
}

uint64_t __52___HKFitnessMachineConnection_deviceForFinalWorkout__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
    v4 = [*(v2 + 24) brand];
    if (v4)
    {
      v5 = [[HKDevice alloc] initWithName:v4 manufacturer:v4 model:0 hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:@"com.healthd.fitnessmachine" UDIDeviceIdentifier:0];
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      [*(*(a1 + 32) + 32) _setFitnessMachineType:{objc_msgSend(*(*(a1 + 32) + 24), "type")}];
    }

    v3 = *(*(a1 + 32) + 32);
  }

  v8 = [v3 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8]();
}

void __63___HKFitnessMachineConnection_clientRemote_deliverDetectedNFC___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
      [v6 fitnessMachineConnectionDetectedNFC:*(a1 + 32) fitnessMachineSessionUUID:*(a1 + 40)];
    }
  }
}

void __77___HKFitnessMachineConnection_clientRemote_deliverMachineInformationUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

void __77___HKFitnessMachineConnection_clientRemote_deliverMachineInformationUpdated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 fitnessMachineConnection:*(a1 + 32) machineInformationUpdated:*(a1 + 40)];
  }
}

void __114___HKFitnessMachineConnection_clientRemote_deliverMachineChangedToState_fromState_fitnessMachineSessionUUID_date___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 64));
    [v4 fitnessMachineConnection:a1[4] machineChangedToState:a1[7] fromState:a1[8] fitnessMachineSessionUUID:a1[5] date:a1[6]];
  }
}

void __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  *(*(a1 + 32) + 56) = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  if ([v4 isEqual:*(a1 + 40)])
  {
    v3 = *v2;
LABEL_4:
    objc_storeStrong((v3 + 16), *(a1 + 40));
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke_cold_1(v2, (a1 + 40), v5);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  v8 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"SessionID mismatch."];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_8:
  v11 = *v2;
  if (*(*v2 + 56) == 5)
  {
    v12 = *(v11 + 16);
    *(v11 + 16) = 0;

    v13 = *(*v2 + 32);
    *(*v2 + 32) = 0;
  }
}

void __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke_31(void *a1)
{
  v2 = *(*(a1[7] + 8) + 40);
  v3 = a1[4];
  if (v2)
  {

    [v3 _clientQueue_deliverFailedWithError:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v3 + 8);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((a1[4] + 64));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained((a1[4] + 64));
        [v8 fitnessMachineConnection:a1[4] connectionChangedToState:a1[8] fromState:a1[9] fitnessMachineSessionUUID:a1[5] error:a1[6]];
      }
    }
  }
}

void __50___HKFitnessMachineConnection__simulateDisconnect__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "Failed to simulate disconnect: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63___HKFitnessMachineConnection__connectionInterruptedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
      [v6 fitnessMachineConnection:*(a1 + 32) interruptedWithError:*(a1 + 40)];
    }
  }
}

void __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 16);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error currentSessionID: %@ not equal to machineSessionID: %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end