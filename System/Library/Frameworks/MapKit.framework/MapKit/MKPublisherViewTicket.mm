@interface MKPublisherViewTicket
@end

@implementation MKPublisherViewTicket

void __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = *(a1 + 32);
    if (v12)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
      block[3] = &unk_1E76CDA20;
      v16 = &v25;
      v25 = v14;
      v17 = &v24;
      v24 = v13;
      if (v15)
      {
        dispatch_async(v15, block);
      }

      else
      {
        __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(block);
      }
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
      v18[3] = &unk_1E76CD8C8;
      v16 = &v22;
      v22 = v14;
      v17 = &v19;
      v19 = v9;
      v20 = v10;
      v21 = v11;
      if (v15)
      {
        dispatch_async(v15, v18);
      }

      else
      {
        __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3(v18);
      }
    }
  }
}

@end