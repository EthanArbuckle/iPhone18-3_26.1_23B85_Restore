@interface MKCuratedCollectionTicket
@end

@implementation MKCuratedCollectionTicket

void __78___MKCuratedCollectionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
    if (v6)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78___MKCuratedCollectionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
      v16[3] = &unk_1E76CDA20;
      v10 = &v18;
      v18 = v8;
      v11 = &v17;
      v17 = v7;
      if (!v9)
      {
        __78___MKCuratedCollectionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(v16);
        goto LABEL_10;
      }

      v12 = v16;
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __78___MKCuratedCollectionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
      v13[3] = &unk_1E76CDA20;
      v10 = &v15;
      v15 = v8;
      v11 = &v14;
      v14 = v5;
      if (!v9)
      {
        __78___MKCuratedCollectionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3(v13);
        goto LABEL_10;
      }

      v12 = v13;
    }

    dispatch_async(v9, v12);
LABEL_10:
  }
}

@end