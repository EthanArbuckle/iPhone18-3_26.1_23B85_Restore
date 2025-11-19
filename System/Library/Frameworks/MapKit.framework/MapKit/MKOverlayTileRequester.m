@interface MKOverlayTileRequester
@end

@implementation MKOverlayTileRequester

void __37___MKOverlayTileRequester_cancelKey___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v18 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v17 + 1) + 8 * v5);
      v13 = [v6 key];
      v15 = v7;
      if (GEOTileKeyEquals())
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:{16, v13, v15}];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v6;

    if (!v8)
    {
      goto LABEL_12;
    }

    [*(*(a1 + 32) + 80) removeObject:{v8, v13, v15}];
    [v8 cancel];
  }

  else
  {
LABEL_9:

LABEL_12:
    if ([*(*(a1 + 32) + 72) count])
    {
      v9 = 0;
      while (1)
      {
        v10 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:v9];
        v14 = [v10 key];
        v16 = v11;
        v12 = GEOTileKeyEquals();

        if (v12)
        {
          break;
        }

        if (++v9 >= [*(*(a1 + 32) + 72) count])
        {
          goto LABEL_19;
        }
      }

      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(a1 + 32) + 72) removeObjectAtIndex:{v9, v14, v16}];
      }
    }

LABEL_19:
    v8 = 0;
  }
}

uint64_t __33___MKOverlayTileRequester_cancel__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 64) = 1;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) cancel];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) _cleanup];
}

uint64_t __36___MKOverlayTileRequester_isRunning__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = [*(*(a1 + 32) + 80) count];
    v3 = result != 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void __50___MKOverlayTileRequester__operationFailed_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + *MEMORY[0x1E69A27C8]));
  [WeakRetained tileRequester:a1[4] receivedError:a1[5] forKey:{a1[6], a1[7]}];
}

void __46___MKOverlayTileRequester__operationFinished___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc(MEMORY[0x1E69A2600]);
    v4 = [*(a1 + 32) data];
    v5 = [v3 initWithData:v4];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69A2600]);
    v4 = [*(a1 + 32) data];
    v5 = [v6 initWithDecodedRepresentation:v4];
  }

  v8 = v5;

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + *MEMORY[0x1E69A27C8]));
  [WeakRetained tileRequester:*(a1 + 40) receivedData:v8 tileEdition:1 tileSetDB:1 tileSet:0 etag:0 forKey:*(a1 + 48) userInfo:{*(a1 + 56), 0}];
}

void __42___MKOverlayTileRequester__doWorkOrFinish__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x1E69A27C8]));
  [WeakRetained tileRequesterFinished:*(a1 + 32)];
}

BOOL __42___MKOverlayTileRequester__doWorkOrFinish__block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(3081);
  [_MKOverlayTileRequester _doWorkOrFinish]::enforceMaximumConcurrentLoads = !result;
  return result;
}

@end