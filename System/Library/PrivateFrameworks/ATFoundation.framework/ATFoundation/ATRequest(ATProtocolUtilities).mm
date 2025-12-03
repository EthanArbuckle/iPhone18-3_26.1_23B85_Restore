@interface ATRequest(ATProtocolUtilities)
- (id)ATPMessage;
- (id)ATPMessageWithPayloadData:()ATProtocolUtilities;
- (id)initWithATPMessage:()ATProtocolUtilities;
@end

@implementation ATRequest(ATProtocolUtilities)

- (id)ATPMessageWithPayloadData:()ATProtocolUtilities
{
  v7.receiver = self;
  v7.super_class = &off_283701318;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_ATPMessageWithPayloadData_, v4);
  [v5 setMessageType:{3, v7.receiver, v7.super_class}];
  [v5 setMessageID:{objc_msgSend(self, "messageID")}];
  [v5 setSessionID:{objc_msgSend(self, "sessionID")}];
  [v5 setPayload:v4];

  return v5;
}

- (id)ATPMessage
{
  v9.receiver = self;
  v9.super_class = &off_283701318;
  v2 = objc_msgSendSuper2(&v9, sel_ATPMessage);
  [v2 setMessageType:0];
  v3 = objc_alloc_init(ATPRequest);
  [v2 setRequest:v3];

  command = [self command];
  request = [v2 request];
  [request setCommand:command];

  dataClass = [self dataClass];
  request2 = [v2 request];
  [request2 setDataClass:dataClass];

  return v2;
}

- (id)initWithATPMessage:()ATProtocolUtilities
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = &off_283701318;
  v5 = objc_msgSendSuper2(&v11, sel_initWithATPMessage_, v4);
  if (v5)
  {
    request = [v4 request];
    command = [request command];
    [v5 setCommand:command];

    request2 = [v4 request];
    dataClass = [request2 dataClass];
    [v5 setDataClass:dataClass];
  }

  return v5;
}

@end