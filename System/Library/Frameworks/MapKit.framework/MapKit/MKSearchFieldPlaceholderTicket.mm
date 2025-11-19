@interface MKSearchFieldPlaceholderTicket
@end

@implementation MKSearchFieldPlaceholderTicket

void __69___MKSearchFieldPlaceholderTicket_submitWithHandler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___MKSearchFieldPlaceholderTicket_submitWithHandler_networkActivity___block_invoke_2;
  block[3] = &unk_1E76CAA70;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __69___MKSearchFieldPlaceholderTicket_submitWithHandler_networkActivity___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __69___MKSearchFieldPlaceholderTicket_submitWithHandler_networkActivity___block_invoke_4;
    v4[3] = &unk_1E76C9DB0;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

@end