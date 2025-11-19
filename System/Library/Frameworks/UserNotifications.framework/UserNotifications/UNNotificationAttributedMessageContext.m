@interface UNNotificationAttributedMessageContext
+ (id)contextWithSendMessageIntent:(id)a3 attributedContent:(id)a4;
- (id)_initWithSendMessageIntent:(id)a3 attributedContent:(id)a4;
@end

@implementation UNNotificationAttributedMessageContext

- (id)_initWithSendMessageIntent:(id)a3 attributedContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UNNotificationAttributedMessageContext;
  v8 = [(UNNotificationAttributedMessageContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sendMessageIntent = v8->_sendMessageIntent;
    v8->_sendMessageIntent = v9;

    v11 = [v7 copy];
    attributedContent = v8->_attributedContent;
    v8->_attributedContent = v11;
  }

  return v8;
}

+ (id)contextWithSendMessageIntent:(id)a3 attributedContent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithSendMessageIntent:v6 attributedContent:v5];

  return v7;
}

@end