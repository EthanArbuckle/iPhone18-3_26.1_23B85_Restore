@interface ATResponse(ATProtocolUtilities)
- (id)ATPMessage;
- (id)ATPMessageWithPayloadData:()ATProtocolUtilities;
- (id)initWithATPMessage:()ATProtocolUtilities;
@end

@implementation ATResponse(ATProtocolUtilities)

- (id)ATPMessageWithPayloadData:()ATProtocolUtilities
{
  v7.receiver = a1;
  v7.super_class = &off_283701520;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_ATPMessageWithPayloadData_, v4);
  [v5 setMessageType:{4, v7.receiver, v7.super_class}];
  [v5 setMessageID:{objc_msgSend(a1, "messageID")}];
  [v5 setSessionID:{objc_msgSend(a1, "sessionID")}];
  [v5 setPayload:v4];

  return v5;
}

- (id)ATPMessage
{
  v10.receiver = a1;
  v10.super_class = &off_283701520;
  v2 = objc_msgSendSuper2(&v10, sel_ATPMessage);
  v3 = objc_alloc_init(ATPResponse);
  [v2 setResponse:v3];

  if ([a1 isPartial])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setMessageType:v4];
  v5 = [a1 error];

  if (v5)
  {
    v6 = [a1 error];
    v7 = [v6 ATPError];
    v8 = [v2 response];
    [v8 setError:v7];
  }

  return v2;
}

- (id)initWithATPMessage:()ATProtocolUtilities
{
  v4 = a3;
  v13.receiver = a1;
  v13.super_class = &off_283701520;
  v5 = objc_msgSendSuper2(&v13, sel_initWithATPMessage_, v4);
  if (v5)
  {
    v6 = [v4 response];
    v7 = [v6 error];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CCA9B8]);
      v9 = [v4 response];
      v10 = [v9 error];
      v11 = [v8 initWithATPError:v10];
      [v5 setError:v11];
    }
  }

  return v5;
}

@end