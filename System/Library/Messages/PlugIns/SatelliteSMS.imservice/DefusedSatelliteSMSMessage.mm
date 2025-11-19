@interface DefusedSatelliteSMSMessage
+ (id)defusedSatelliteSMSMessageWithDictionary:(id)a3 senderID:(id)a4;
- (DefusedSatelliteSMSMessage)initWithTexts:(id)a3;
@end

@implementation DefusedSatelliteSMSMessage

+ (id)defusedSatelliteSMSMessageWithDictionary:(id)a3 senderID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(DefusedSatelliteSMSMessage);
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 hasKnownSenderChatWithChatIdentifier:v5];

  v10 = [IMSenderContext contextWithKnownSender:v9 serviceName:IMServiceNameiMessageLite];
  v14 = 0;
  v11 = [IMBlastdoor sendSatelliteSMSDictionary:v6 senderContext:v10 error:&v14];

  if (v11)
  {
    v12 = [v11 plainTextBodies];
    [(DefusedSatelliteSMSMessage *)v7 setTexts:v12];
  }

  return v7;
}

- (DefusedSatelliteSMSMessage)initWithTexts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DefusedSatelliteSMSMessage;
  v6 = [(DefusedSatelliteSMSMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texts, a3);
  }

  return v7;
}

@end