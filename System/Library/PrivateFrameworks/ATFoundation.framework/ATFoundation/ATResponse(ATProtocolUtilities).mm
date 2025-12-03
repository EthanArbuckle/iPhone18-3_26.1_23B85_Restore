@interface ATResponse(ATProtocolUtilities)
- (id)ATPMessage;
- (id)ATPMessageWithPayloadData:()ATProtocolUtilities;
- (id)initWithATPMessage:()ATProtocolUtilities;
@end

@implementation ATResponse(ATProtocolUtilities)

- (id)ATPMessageWithPayloadData:()ATProtocolUtilities
{
  v7.receiver = self;
  v7.super_class = &off_283701520;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_ATPMessageWithPayloadData_, v4);
  [v5 setMessageType:{4, v7.receiver, v7.super_class}];
  [v5 setMessageID:{objc_msgSend(self, "messageID")}];
  [v5 setSessionID:{objc_msgSend(self, "sessionID")}];
  [v5 setPayload:v4];

  return v5;
}

- (id)ATPMessage
{
  v10.receiver = self;
  v10.super_class = &off_283701520;
  v2 = objc_msgSendSuper2(&v10, sel_ATPMessage);
  v3 = objc_alloc_init(ATPResponse);
  [v2 setResponse:v3];

  if ([self isPartial])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setMessageType:v4];
  error = [self error];

  if (error)
  {
    error2 = [self error];
    aTPError = [error2 ATPError];
    response = [v2 response];
    [response setError:aTPError];
  }

  return v2;
}

- (id)initWithATPMessage:()ATProtocolUtilities
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = &off_283701520;
  v5 = objc_msgSendSuper2(&v13, sel_initWithATPMessage_, v4);
  if (v5)
  {
    response = [v4 response];
    error = [response error];

    if (error)
    {
      v8 = objc_alloc(MEMORY[0x277CCA9B8]);
      response2 = [v4 response];
      error2 = [response2 error];
      v11 = [v8 initWithATPError:error2];
      [v5 setError:v11];
    }
  }

  return v5;
}

@end