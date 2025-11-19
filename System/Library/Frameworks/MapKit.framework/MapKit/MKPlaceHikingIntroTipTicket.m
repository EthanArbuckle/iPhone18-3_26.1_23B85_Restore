@interface MKPlaceHikingIntroTipTicket
@end

@implementation MKPlaceHikingIntroTipTicket

void __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v11 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke_2;
    block[3] = &unk_1E76CDA20;
    v10 = &v18;
    v18 = *(a1 + 32);
    v17 = v6;
    v13 = a2;
    dispatch_async(v11, block);

    v9 = v17;
  }

  else
  {
    v19[0] = a2;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a2;
    v9 = [v7 arrayWithObjects:v19 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke_3;
    v14[3] = &unk_1E76C8490;
    v10 = &v15;
    v15 = *(a1 + 32);
    _mapItemsForGeoMapItemsWithHandler(v9, v14);
  }
}

void __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke_4;
  block[3] = &unk_1E76CAA70;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __66___MKPlaceHikingIntroTipTicket_submitWithHandler_networkActivity___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) firstObject];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

@end