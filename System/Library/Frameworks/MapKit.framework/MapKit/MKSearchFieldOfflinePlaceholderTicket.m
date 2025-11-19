@interface MKSearchFieldOfflinePlaceholderTicket
@end

@implementation MKSearchFieldOfflinePlaceholderTicket

void __76___MKSearchFieldOfflinePlaceholderTicket_submitWithHandler_networkActivity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MKSearchFieldOfflinePlaceholderTicket_submitWithHandler_networkActivity___block_invoke_2;
  block[3] = &unk_1E76C84E0;
  v11 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v8 = v5;
  dispatch_async(v6, block);
}

void __76___MKSearchFieldOfflinePlaceholderTicket_submitWithHandler_networkActivity___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76___MKSearchFieldOfflinePlaceholderTicket_submitWithHandler_networkActivity___block_invoke_4;
    v4[3] = &unk_1E76C9DB0;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

@end