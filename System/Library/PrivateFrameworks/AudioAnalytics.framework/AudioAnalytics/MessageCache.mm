@interface MessageCache
- (void)getServiceNameFor:(int64_t)for completion:(id)completion;
- (void)getTailspinSessionIDFor:(int64_t)for reply:(id)reply;
- (void)requestMessageFor:(int64_t)for category:(unsigned int)category type:(unsigned __int16)type reply:(id)reply;
- (void)sendWithMessage:(id)message with:(unsigned int)with and:(unsigned __int16)and for:(int64_t)for;
- (void)setWithConfiguration:(id)configuration for:(int64_t)for;
- (void)validateFor:(int64_t)for completion:(id)completion;
@end

@implementation MessageCache

- (void)getServiceNameFor:(int64_t)for completion:(id)completion
{
  v4 = _Block_copy(completion);
  v4[2](v4, 0, 0xFFFFLL);

  _Block_release(v4);
}

- (void)validateFor:(int64_t)for completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  v5 = sub_1C0BEC038();

  v4[2](v4, 0, v5);

  _Block_release(v4);
}

- (void)setWithConfiguration:(id)configuration for:(int64_t)for
{
  v5 = sub_1C0BEC058();

  sub_1C0BDE668(v5, for);
}

- (void)sendWithMessage:(id)message with:(unsigned int)with and:(unsigned __int16)and for:(int64_t)for
{
  v9 = sub_1C0BEC058();

  sub_1C0BDEBB4(v9, with, and, for);
}

- (void)requestMessageFor:(int64_t)for category:(unsigned int)category type:(unsigned __int16)type reply:(id)reply
{
  v6 = _Block_copy(reply);
  sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  v7 = sub_1C0BEC038();
  v6[2](v6, 0, v7);

  _Block_release(v6);
}

- (void)getTailspinSessionIDFor:(int64_t)for reply:(id)reply
{
  v4 = _Block_copy(reply);
  (*(v4 + 2))(v4, 0, 0, 0);

  _Block_release(v4);
}

@end