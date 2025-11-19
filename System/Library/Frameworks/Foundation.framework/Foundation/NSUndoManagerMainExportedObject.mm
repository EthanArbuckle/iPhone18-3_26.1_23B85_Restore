@interface NSUndoManagerMainExportedObject
@end

@implementation NSUndoManagerMainExportedObject

void __88___NSUndoManagerMainExportedObject__registerRemoteUndoGroupForAction_auxUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695D930];
  v3 = @"NSUnderlyingError";
  v4[0] = a2;
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v2 reason:@"NSUndoManager (main) failed to connect to an auxiliary manager" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}]);
}

uint64_t __88___NSUndoManagerMainExportedObject__registerRemoteUndoGroupForAction_auxUUID_withReply___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v2 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((*(a1 + 32) + 8));
    if (*(a1 + 64))
    {
      v9 = @"redo";
    }

    else
    {
      v9 = @"undo";
    }

    v10 = *(a1 + 48);
    v11 = *(*(a1 + 40) + 8);
    *buf = 134218754;
    v14 = Weak;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v10;
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) is triggering remote %{public}@ of %{public}@ over connection %{public}@", buf, 0x2Au);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88___NSUndoManagerMainExportedObject__registerRemoteUndoGroupForAction_auxUUID_withReply___block_invoke_184;
  v12[3] = &unk_1E69F5530;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v12[5] = v6;
  return [v5 _performRemoteUndoForUUID:v3 isRedo:v4 withReply:v12];
}

uint64_t __88___NSUndoManagerMainExportedObject__registerRemoteUndoGroupForAction_auxUUID_withReply___block_invoke_184(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _registerRemoteUndoGroupForAction:a2 auxUUID:*(result + 40) withReply:&__block_literal_global_187];
  }

  return result;
}

@end