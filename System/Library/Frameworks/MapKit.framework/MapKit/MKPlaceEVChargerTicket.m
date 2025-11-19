@interface MKPlaceEVChargerTicket
@end

@implementation MKPlaceEVChargerTicket

void __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke_2;
    block[3] = &unk_1E76CDA20;
    v7 = &v14;
    v14 = *(a1 + 32);
    v13 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if ([v5 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke_4;
    v8[3] = &unk_1E76C8490;
    v7 = &v9;
    v9 = *(a1 + 32);
    _mapItemsForGeoMapItemsWithHandler(v5, v8);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke_3;
    v10[3] = &unk_1E76CD4D0;
    v7 = &v11;
    v11 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke_5;
  block[3] = &unk_1E76CAA70;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

@end