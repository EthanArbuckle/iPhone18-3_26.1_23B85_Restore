@interface TKExtensionClientTokenObject
- (BOOL)deleteWithError:(id *)error;
- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
@end

@implementation TKExtensionClientTokenObject

- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  dataCopy = data;
  algorithmsCopy = algorithms;
  parametersCopy = parameters;
  v15 = _os_activity_create(&dword_1DF413000, "ExtClientObject: operation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  session = [(TKClientTokenObject *)self session];
  accessControlRef = [(TKClientTokenObject *)self accessControlRef];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__TKExtensionClientTokenObject_operation_data_algorithms_parameters_error___block_invoke;
  v24[3] = &unk_1E86B7B98;
  v18 = session;
  v25 = v18;
  selfCopy = self;
  operationCopy = operation;
  v19 = dataCopy;
  v27 = v19;
  v20 = algorithmsCopy;
  v28 = v20;
  v21 = parametersCopy;
  v29 = v21;
  v22 = [v18 withError:error accessControl:accessControlRef invoke:v24];

  os_activity_scope_leave(&state);

  return v22;
}

id __75__TKExtensionClientTokenObject_operation_data_algorithms_parameters_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v6 = [*(a1 + 32) sessionID];
  v7 = [*(a1 + 40) objectID];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__TKExtensionClientTokenObject_operation_data_algorithms_parameters_error___block_invoke_2;
  v15[3] = &unk_1E86B7B70;
  v15[4] = &v22;
  v15[5] = &v16;
  [v5 session:v6 objectID:v7 operation:v10 data:v8 algorithms:v9 parameters:v11 reply:v15];

  v12 = v23[5];
  if (a3 && !v12)
  {
    *a3 = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __75__TKExtensionClientTokenObject_operation_data_algorithms_parameters_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)deleteWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DF413000, "ExtClientObject: delete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  session = [(TKClientTokenObject *)self session];
  accessControlRef = [(TKClientTokenObject *)self accessControlRef];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __48__TKExtensionClientTokenObject_deleteWithError___block_invoke;
  v14 = &unk_1E86B7BC0;
  v8 = session;
  v15 = v8;
  selfCopy = self;
  v9 = [v8 withError:error accessControl:accessControlRef invoke:&v11];
  LOBYTE(error) = [v9 BOOLValue];

  os_activity_scope_leave(&state);
  return error;
}

id __48__TKExtensionClientTokenObject_deleteWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v6 = [*(a1 + 32) sessionID];
  v7 = [*(a1 + 40) objectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__TKExtensionClientTokenObject_deleteWithError___block_invoke_2;
  v11[3] = &unk_1E86B7178;
  v11[4] = &v18;
  v11[5] = &v12;
  [v5 session:v6 deleteObjectWithObjectID:v7 reply:v11];

  v8 = v19[5];
  if (a3 && !v8)
  {
    *a3 = v13[5];
    v8 = v19[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __48__TKExtensionClientTokenObject_deleteWithError___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

@end