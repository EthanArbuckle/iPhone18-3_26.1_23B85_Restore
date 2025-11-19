@interface HKObjectTypeAnchorQuery
@end

@implementation HKObjectTypeAnchorQuery

void __55___HKObjectTypeAnchorQuery_client_deliverAnchor_query___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55___HKObjectTypeAnchorQuery_client_deliverAnchor_query___block_invoke_2;
  v6[3] = &unk_1E7376618;
  v8 = v2;
  v6[4] = v4;
  v7 = *(a1 + 48);
  v5 = v2;
  [v4 queue_dispatchToClientForUUID:v3 shouldDeactivate:0 block:v6];
}

@end