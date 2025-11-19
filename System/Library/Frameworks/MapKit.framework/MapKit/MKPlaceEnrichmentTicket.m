@interface MKPlaceEnrichmentTicket
@end

@implementation MKPlaceEnrichmentTicket

void __62___MKPlaceEnrichmentTicket_submitWithHandler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    if (v6)
    {
      v9 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v10 = __62___MKPlaceEnrichmentTicket_submitWithHandler_networkActivity___block_invoke_2;
      v11 = v6;
    }

    else
    {
      v9 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v10 = __62___MKPlaceEnrichmentTicket_submitWithHandler_networkActivity___block_invoke_3;
      v11 = v5;
    }

    v9[2] = v10;
    v9[3] = &unk_1E76CDA20;
    v9[5] = v8;
    v9[4] = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

@end