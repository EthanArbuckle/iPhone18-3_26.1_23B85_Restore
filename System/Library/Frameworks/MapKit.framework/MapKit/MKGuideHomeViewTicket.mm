@interface MKGuideHomeViewTicket
@end

@implementation MKGuideHomeViewTicket

void __74___MKGuideHomeViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74___MKGuideHomeViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
    block[3] = &unk_1E76CAA70;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    if (v8)
    {
      dispatch_async(v8, block);
    }

    else
    {
      __74___MKGuideHomeViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(block);
    }
  }
}

@end