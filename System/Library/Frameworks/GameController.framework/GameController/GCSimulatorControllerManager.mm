@interface GCSimulatorControllerManager
@end

@implementation GCSimulatorControllerManager

void __67___GCSimulatorControllerManager_invalidateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) unregisterServicesChangedObserver:*(a1 + 32) notifyExisting:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(*(a1 + 32) + 32) copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 32);
        if (v10)
        {
          [(_GCSimulatorControllerManager *)v10 _onqueue_removeController:?];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DFB0] null];
  [v3 succeedWithResult:v11];

  v12 = *MEMORY[0x1E69E9840];
}

@end