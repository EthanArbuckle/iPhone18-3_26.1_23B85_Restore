@interface MessageDeliveryContext
- (MessageDeliveryContext)initWithDisplayIDs:(id)ds didSucceed:(BOOL)succeed error:(unsigned int)error isFromMeToMe:(BOOL)me shouldDeactivate:(BOOL)deactivate isBackwardsCompatibleMessage:(BOOL)message;
@end

@implementation MessageDeliveryContext

- (MessageDeliveryContext)initWithDisplayIDs:(id)ds didSucceed:(BOOL)succeed error:(unsigned int)error isFromMeToMe:(BOOL)me shouldDeactivate:(BOOL)deactivate isBackwardsCompatibleMessage:(BOOL)message
{
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = MessageDeliveryContext;
  v15 = [(MessageDeliveryContext *)&v18 init];
  displayIDs = v15->_displayIDs;
  v15->_displayIDs = dsCopy;

  v15->_success = succeed;
  v15->_error = error;
  v15->_fromMeToMe = me;
  v15->_shouldDeactivate = deactivate;
  v15->_isBackwardsCompatibleMessage = message;
  return v15;
}

@end