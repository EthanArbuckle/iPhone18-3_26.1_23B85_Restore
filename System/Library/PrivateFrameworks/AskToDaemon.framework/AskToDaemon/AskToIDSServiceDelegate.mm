@interface AskToIDSServiceDelegate
- (_TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate)init;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation AskToIDSServiceDelegate

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_241165D18();
    if (v8)
    {
LABEL_3:
      v13 = sub_241165DD8();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_24114A088(a3, v12, v13, v8);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (a5)
  {
    v12 = sub_241165DD8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_24114A63C(v12, v14, a6, a7);
}

- (_TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_pendingSendCompletions;
  *(&self->super.isa + v4) = sub_2410FC21C(MEMORY[0x277D84F90]);
  *&self->pendingSendCompletions[OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_relay] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(AskToIDSServiceDelegate *)&v6 init];
}

@end