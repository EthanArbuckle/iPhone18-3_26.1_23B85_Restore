@interface MKTicket
@end

@implementation MKTicket

void __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_2;
    block[3] = &unk_1E76CDA20;
    v7 = *(a1 + 40);
    v18 = *(a1 + 48);
    v17 = v6;
    if (v7)
    {
      dispatch_async(v7, block);
    }

    else
    {
      __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_2(block);
    }

    v9 = v18;
  }

  else if ([v5 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_4;
    v11[3] = &unk_1E76CAA98;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    v13 = *(a1 + 48);
    _mapItemsForGeoMapItemsWithHandler(v5, v11);

    v9 = v12;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_3;
    v14[3] = &unk_1E76CD4D0;
    v10 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (v10)
    {
      dispatch_async(v10, v14);
    }

    else
    {
      __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_3(v14);
    }

    v9 = v15;
  }
}

void __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  objc_storeStrong((*(a1 + 32) + 32), a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_5;
  block[3] = &unk_1E76CAA70;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v13 = v6;
  v14 = v10;
  v15 = v9;
  v11 = v6;
  if (v8)
  {
    dispatch_async(v8, block);
  }

  else
  {
    __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke_5(block);
  }
}

void __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(a1 + 32) + 32), a4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke_2;
    block[3] = &unk_1E76CDA20;
    v23 = *(a1 + 40);
    v22 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v10 = v23;
  }

  else
  {
    v11 = [v7 count];
    v12 = [v8 count];
    if (v11 | v12)
    {
      if (v11)
      {
        v13 = v7;
      }

      else
      {
        v13 = v8;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke_4;
      v15[3] = &unk_1E76C8418;
      v17 = v11;
      v18 = v12;
      v14 = *(a1 + 40);
      v15[4] = *(a1 + 32);
      v16 = v14;
      _mapItemsForGeoMapItemsWithHandler(v13, v15);
      v10 = v16;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke_3;
      v19[3] = &unk_1E76CD4D0;
      v20 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], v19);
      v10 = v20;
    }
  }
}

void __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      v12 = v5;
      v9 = v12;
      if (v12)
      {
        v8 = 0;
        v11 = 0;
        v10 = v12;
        if (![v12 count])
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      v8 = 0;
LABEL_11:
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = [v13 initWithDomain:MKErrorDomain code:4 userInfo:0];

      v8 = 0;
      v10 = 0;
      goto LABEL_12;
    }

    v8 = 0;
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (![v7 count])
  {
    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong((*(a1 + 32) + 16), v8);
  objc_storeStrong((*(a1 + 32) + 24), v10);
  objc_storeStrong((*(a1 + 32) + 32), v11);
  v14 = MEMORY[0x1E69E96A0];
  v15 = MEMORY[0x1E69E96A0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke_5;
  v20[3] = &unk_1E76CD8C8;
  v16 = *(a1 + 40);
  v21 = v8;
  v22 = v10;
  v23 = v11;
  v24 = v16;
  v17 = v11;
  v18 = v10;
  v19 = v8;
  dispatch_async(v14, v20);
}

@end