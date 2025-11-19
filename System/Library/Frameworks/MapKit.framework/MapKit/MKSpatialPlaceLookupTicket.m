@interface MKSpatialPlaceLookupTicket
@end

@implementation MKSpatialPlaceLookupTicket

void __55___MKSpatialPlaceLookupTicket_submitWithHandler_queue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) parameters];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 resultItemForSpatialLookupParameters:v7];

    v9 = [v8 mapItems];
    if ([v9 count])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55___MKSpatialPlaceLookupTicket_submitWithHandler_queue___block_invoke_2;
      v14[3] = &unk_1E76CAA98;
      v14[4] = *(a1 + 32);
      v15 = v8;
      v16 = *(a1 + 40);
      _mapItemsForGeoMapItemsWithHandler(v9, v14);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = [v10 initWithDomain:MKErrorDomain code:4 userInfo:0];
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      *(v12 + 16) = v11;

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __55___MKSpatialPlaceLookupTicket_submitWithHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(a1 + 32) + 16), a3);
  if ([v9 count])
  {
    v6 = [*(a1 + 40) boundingRegion];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;
  }

  (*(*(a1 + 48) + 16))();
}

@end