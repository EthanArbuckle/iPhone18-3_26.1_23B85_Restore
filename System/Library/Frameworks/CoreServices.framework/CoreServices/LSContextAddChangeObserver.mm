@interface LSContextAddChangeObserver
@end

@implementation LSContextAddChangeObserver

uint64_t ___LSContextAddChangeObserver_block_invoke_3(uint64_t a1)
{
  v2 = gChangeObservers;
  if (!gChangeObservers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = gChangeObservers;
    gChangeObservers = v3;

    v2 = gChangeObservers;
  }

  v5 = *(a1 + 32);

  return [v2 addObject:v5];
}

void ___LSContextAddChangeObserver_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _LSGetDispatchTokenQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSContextAddChangeObserver_block_invoke_2;
  v4[3] = &unk_1E6A1ABE8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  _LSDispatchCoalescedAfterDelay((v2 + 24), v3, v4, 0.25);
}

void ___LSContextAddChangeObserver_block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1865D71B0](*(*(a1 + 32) + 8));
  if (v2)
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    if (LaunchServices::Database::Context::_get(&v5, *(a1 + 40), 0))
    {
      v2[2](v2);
    }

    if (v5 && v7 == 1)
    {
      _LSContextDestroy(v5);
    }

    v3 = v6;
    v5 = 0;
    v6 = 0;

    v7 = 0;
    v4 = v8;
    v8 = 0;
  }
}

@end