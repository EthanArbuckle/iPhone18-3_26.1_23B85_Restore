@interface BSSqliteDeferredPreparedSimpleStatement
@end

@implementation BSSqliteDeferredPreparedSimpleStatement

void __87___BSSqliteDeferredPreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke(uint64_t *a1, sqlite3 *a2)
{
  v3 = *(a1[4] + 24);
  if (v3)
  {
    v5 = [v3 UTF8String];
    pzTail = 0;
    ppStmt = 0;
    v6 = strlen(v5);
    *(*(a1[5] + 8) + 24) = sqlite3_prepare_v2(a2, v5, v6, &ppStmt, &pzTail);
    if (!*(*(a1[5] + 8) + 24))
    {
      if (pzTail)
      {
        if (*pzTail)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:a1[6] object:*(a1[4] + 24) file:pzTail lineNumber:? description:?];
        }
      }

      *(a1[4] + 16) = ppStmt;
      v7 = a1[4];
      v8 = *(v7 + 24);
      *(v7 + 24) = 0;

      WeakRetained = objc_loadWeakRetained((a1[4] + 8));
      [(BSSqliteDatabaseConnection *)WeakRetained addObserver:?];
    }
  }
}

@end