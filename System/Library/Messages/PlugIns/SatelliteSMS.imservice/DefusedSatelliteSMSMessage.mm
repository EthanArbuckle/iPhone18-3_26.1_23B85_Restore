@interface DefusedSatelliteSMSMessage
+ (id)defusedSatelliteSMSMessageWithDictionary:(id)dictionary senderID:(id)d;
- (DefusedSatelliteSMSMessage)initWithTexts:(id)texts;
@end

@implementation DefusedSatelliteSMSMessage

+ (id)defusedSatelliteSMSMessageWithDictionary:(id)dictionary senderID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(DefusedSatelliteSMSMessage);
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 hasKnownSenderChatWithChatIdentifier:dCopy];

  v10 = [IMSenderContext contextWithKnownSender:v9 serviceName:IMServiceNameiMessageLite];
  v14 = 0;
  v11 = [IMBlastdoor sendSatelliteSMSDictionary:dictionaryCopy senderContext:v10 error:&v14];

  if (v11)
  {
    plainTextBodies = [v11 plainTextBodies];
    [(DefusedSatelliteSMSMessage *)v7 setTexts:plainTextBodies];
  }

  return v7;
}

- (DefusedSatelliteSMSMessage)initWithTexts:(id)texts
{
  textsCopy = texts;
  v9.receiver = self;
  v9.super_class = DefusedSatelliteSMSMessage;
  v6 = [(DefusedSatelliteSMSMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texts, texts);
  }

  return v7;
}

@end