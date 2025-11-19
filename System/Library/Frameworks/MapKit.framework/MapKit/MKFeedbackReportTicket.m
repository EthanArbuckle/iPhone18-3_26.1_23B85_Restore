@interface MKFeedbackReportTicket
@end

@implementation MKFeedbackReportTicket

void __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
    v12[3] = &unk_1E76CD8C8;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    if (v11)
    {
      dispatch_async(v11, v12);
    }

    else
    {
      __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(v12);
    }
  }
}

void __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_4;
    v5[3] = &unk_1E76C9DB0;
    v6 = v2;
    v7 = a2;
    if (v4)
    {
      dispatch_async(v4, v5);
    }

    else
    {
      __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_4(v5);
    }
  }
}

@end