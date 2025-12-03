@interface UNNotificationAttributedMessageContext
+ (id)contextWithSendMessageIntent:(id)intent attributedContent:(id)content;
- (id)_initWithSendMessageIntent:(id)intent attributedContent:(id)content;
@end

@implementation UNNotificationAttributedMessageContext

- (id)_initWithSendMessageIntent:(id)intent attributedContent:(id)content
{
  intentCopy = intent;
  contentCopy = content;
  v14.receiver = self;
  v14.super_class = UNNotificationAttributedMessageContext;
  v8 = [(UNNotificationAttributedMessageContext *)&v14 init];
  if (v8)
  {
    v9 = [intentCopy copy];
    sendMessageIntent = v8->_sendMessageIntent;
    v8->_sendMessageIntent = v9;

    v11 = [contentCopy copy];
    attributedContent = v8->_attributedContent;
    v8->_attributedContent = v11;
  }

  return v8;
}

+ (id)contextWithSendMessageIntent:(id)intent attributedContent:(id)content
{
  contentCopy = content;
  intentCopy = intent;
  v7 = [objc_alloc(objc_opt_class()) _initWithSendMessageIntent:intentCopy attributedContent:contentCopy];

  return v7;
}

@end