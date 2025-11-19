@interface NFCMiFareTag
- (NFCMiFareTag)initWithSession:(id)a3 tag:(id)a4 startupConfig:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)sendMiFareCommand:(id)a3 completionHandler:(id)a4;
- (void)sendMiFareISO7816Command:(id)a3 completionHandler:(id)a4;
@end

@implementation NFCMiFareTag

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NFCMiFareTag;
  return [(NFCTag *)&v4 copyWithZone:a3];
}

- (NFCMiFareTag)initWithSession:(id)a3 tag:(id)a4 startupConfig:(int64_t)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NFCMiFareTag;
  v9 = [(NFCTag *)&v13 initWithSession:a3 tag:v8 startupConfig:a5];
  if (v9)
  {
    v10 = [v8 type] - 14;
    if (v10 >= 3)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 2;
    }

    v9->_mifareFamily = v11;
  }

  return v9;
}

- (void)sendMiFareCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _os_activity_create(&dword_23728C000, "NFCMiFareTag sendMiFareCommand:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372AC4F4;
  v10[3] = &unk_278A29C10;
  v11 = v6;
  v9 = v6;
  [(NFCTag *)self _transceiveWithData:v7 completionHandler:v10];
}

- (void)sendMiFareISO7816Command:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_23728C000, "NFCMiFareTag sendMiFareISO7816Command:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  if (self->_mifareFamily - 3 >= 2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2372AC628;
    v10[3] = &unk_278A29C38;
    v11 = v7;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v10];
    v9 = v11;
  }

  else
  {
    v9 = [v6 asData];
    [(NFCTag *)self _sendAPDU:v9 completionHandler:v7];
  }
}

@end