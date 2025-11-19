@interface MessageCache
- (void)getServiceNameFor:(int64_t)a3 completion:(id)a4;
- (void)getTailspinSessionIDFor:(int64_t)a3 reply:(id)a4;
- (void)requestMessageFor:(int64_t)a3 category:(unsigned int)a4 type:(unsigned __int16)a5 reply:(id)a6;
- (void)sendWithMessage:(id)a3 with:(unsigned int)a4 and:(unsigned __int16)a5 for:(int64_t)a6;
- (void)setWithConfiguration:(id)a3 for:(int64_t)a4;
- (void)validateFor:(int64_t)a3 completion:(id)a4;
@end

@implementation MessageCache

- (void)getServiceNameFor:(int64_t)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v4[2](v4, 0, 0xFFFFLL);

  _Block_release(v4);
}

- (void)validateFor:(int64_t)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  v5 = sub_1C0BEC038();

  v4[2](v4, 0, v5);

  _Block_release(v4);
}

- (void)setWithConfiguration:(id)a3 for:(int64_t)a4
{
  v5 = sub_1C0BEC058();

  sub_1C0BDE668(v5, a4);
}

- (void)sendWithMessage:(id)a3 with:(unsigned int)a4 and:(unsigned __int16)a5 for:(int64_t)a6
{
  v9 = sub_1C0BEC058();

  sub_1C0BDEBB4(v9, a4, a5, a6);
}

- (void)requestMessageFor:(int64_t)a3 category:(unsigned int)a4 type:(unsigned __int16)a5 reply:(id)a6
{
  v6 = _Block_copy(a6);
  sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  v7 = sub_1C0BEC038();
  v6[2](v6, 0, v7);

  _Block_release(v6);
}

- (void)getTailspinSessionIDFor:(int64_t)a3 reply:(id)a4
{
  v4 = _Block_copy(a4);
  (*(v4 + 2))(v4, 0, 0, 0);

  _Block_release(v4);
}

@end