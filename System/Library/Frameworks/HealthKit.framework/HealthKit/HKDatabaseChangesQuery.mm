@interface HKDatabaseChangesQuery
@end

@implementation HKDatabaseChangesQuery

void __81___HKDatabaseChangesQuery_client_deliverQueryAnchor_sampleTypeChanges_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 168));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81___HKDatabaseChangesQuery_client_deliverQueryAnchor_sampleTypeChanges_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7378F90;
    v6 = v2;
    v7 = *(a1 + 32);
    v11 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:0 block:v8];
  }
}

@end