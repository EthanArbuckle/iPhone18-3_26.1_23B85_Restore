@interface NFCMiFareTag
- (NFCMiFareTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config;
- (id)copyWithZone:(_NSZone *)zone;
- (void)sendMiFareCommand:(id)command completionHandler:(id)handler;
- (void)sendMiFareISO7816Command:(id)command completionHandler:(id)handler;
@end

@implementation NFCMiFareTag

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NFCMiFareTag;
  return [(NFCTag *)&v4 copyWithZone:zone];
}

- (NFCMiFareTag)initWithSession:(id)session tag:(id)tag startupConfig:(int64_t)config
{
  tagCopy = tag;
  v13.receiver = self;
  v13.super_class = NFCMiFareTag;
  v9 = [(NFCTag *)&v13 initWithSession:session tag:tagCopy startupConfig:config];
  if (v9)
  {
    v10 = [tagCopy type] - 14;
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

- (void)sendMiFareCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  v8 = _os_activity_create(&dword_23728C000, "NFCMiFareTag sendMiFareCommand:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372AC4F4;
  v10[3] = &unk_278A29C10;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:commandCopy completionHandler:v10];
}

- (void)sendMiFareISO7816Command:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
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
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v10];
    asData = v11;
  }

  else
  {
    asData = [commandCopy asData];
    [(NFCTag *)self _sendAPDU:asData completionHandler:handlerCopy];
  }
}

@end