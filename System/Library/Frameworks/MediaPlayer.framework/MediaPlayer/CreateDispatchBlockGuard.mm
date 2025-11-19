@interface CreateDispatchBlockGuard
@end

@implementation CreateDispatchBlockGuard

void ___CreateDispatchBlockGuard_block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) command];
  [v2 mediaRemoteCommandType];

  v3 = MEMORY[0x1E696AEC0];
  v4 = MRMediaRemoteCopyCommandDescription();
  v5 = [v3 stringWithFormat:@"command=%@", v4];

  v6 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x1E69B13D8];
  v8 = *MEMORY[0x1E69B1340];
  v9 = [*(a1 + 32) description];
  v19[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___CreateDispatchBlockGuard_block_invoke_2;
  v17 = &unk_1E7682518;
  v18 = v6;
  v11 = v6;
  [v7 snapshotWithDomain:v8 type:@"Bug" subType:@"CommandHandlerNotCalledBug" context:v5 triggerThresholdValues:0 events:v10 completion:&v14];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MSVBlockGuard *_CreateDispatchBlockGuard(NSString *__strong, MPRemoteCommandEvent *__strong)_block_invoke"}];
  [v12 handleFailureInFunction:v13 file:@"MPRemoteCommand.m" lineNumber:215 description:{@"Command handler completion deallocated without being called. event=%@", *(a1 + 32), v14, v15, v16, v17}];
}

@end