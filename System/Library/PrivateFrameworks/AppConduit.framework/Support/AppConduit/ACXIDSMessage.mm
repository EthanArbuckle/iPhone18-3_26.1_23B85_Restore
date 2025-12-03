@interface ACXIDSMessage
- (ACXIDSMessage)initWithMessage:(id)message idsContext:(id)context fromID:(id)d;
@end

@implementation ACXIDSMessage

- (ACXIDSMessage)initWithMessage:(id)message idsContext:(id)context fromID:(id)d
{
  messageCopy = message;
  contextCopy = context;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = ACXIDSMessage;
  v12 = [(ACXIDSMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_message, message);
    objc_storeStrong(&v13->_idsContext, context);
    objc_storeStrong(&v13->_fromID, d);
  }

  return v13;
}

@end