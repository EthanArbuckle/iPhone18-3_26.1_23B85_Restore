@interface ATMessage(ATProtocolUtilities)
- (ATPMessage)ATPMessage;
- (ATPMessage)ATPMessageWithPayloadData:()ATProtocolUtilities;
- (void)initWithATPMessage:()ATProtocolUtilities;
@end

@implementation ATMessage(ATProtocolUtilities)

- (ATPMessage)ATPMessageWithPayloadData:()ATProtocolUtilities
{
  v4 = a3;
  v5 = objc_alloc_init(ATPMessage);
  -[ATPMessage setMessageID:](v5, "setMessageID:", [self messageID]);
  -[ATPMessage setSessionID:](v5, "setSessionID:", [self sessionID]);
  [(ATPMessage *)v5 setPayload:v4];

  return v5;
}

- (ATPMessage)ATPMessage
{
  v2 = objc_alloc_init(ATPMessage);
  -[ATPMessage setMessageID:](v2, "setMessageID:", [self messageID]);
  -[ATPMessage setSessionID:](v2, "setSessionID:", [self sessionID]);
  parameters = [self parameters];

  if (parameters)
  {
    v4 = MEMORY[0x277CCAC58];
    parameters2 = [self parameters];
    v6 = [v4 dataWithPropertyList:parameters2 format:200 options:0 error:0];
    [(ATPMessage *)v2 setParameters:v6];
  }

  return v2;
}

- (void)initWithATPMessage:()ATProtocolUtilities
{
  v4 = a3;
  v5 = [self init];
  if (v5)
  {
    [v5 setMessageID:{objc_msgSend(v4, "messageID")}];
    [v5 setSessionID:{objc_msgSend(v4, "sessionID")}];
    if ([v4 hasParameters])
    {
      v6 = MEMORY[0x277CCAC58];
      parameters = [v4 parameters];
      v8 = [v6 propertyListWithData:parameters options:0 format:0 error:0];
      [v5 setParameters:v8];
    }
  }

  return v5;
}

@end