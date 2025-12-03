@interface AskToIDSServiceDelegate
- (_TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation AskToIDSServiceDelegate

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    v12 = sub_241165D18();
    if (dCopy)
    {
LABEL_3:
      v13 = sub_241165DD8();
      dCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_24114A088(service, v12, v13, dCopy);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (identifier)
  {
    v12 = sub_241165DD8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_24114A63C(v12, v14, success, error);
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