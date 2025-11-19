@interface MKAllCollectionsViewTicket
@end

@implementation MKAllCollectionsViewTicket

void __79___MKAllCollectionsViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 32);
    if (v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79___MKAllCollectionsViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
      block[3] = &unk_1E76CDA20;
      v13 = &v21;
      v21 = v11;
      v14 = &v20;
      v20 = v10;
      if (v12)
      {
        dispatch_async(v12, block);
      }

      else
      {
        __79___MKAllCollectionsViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(block);
      }
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79___MKAllCollectionsViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
      v15[3] = &unk_1E76CAA70;
      v13 = &v18;
      v18 = v11;
      v14 = &v16;
      v16 = v7;
      v17 = v8;
      if (v12)
      {
        dispatch_async(v12, v15);
      }

      else
      {
        __79___MKAllCollectionsViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3(v15);
      }
    }
  }
}

@end