@interface MessageDeliveryContext
- (MessageDeliveryContext)initWithDisplayIDs:(id)a3 didSucceed:(BOOL)a4 error:(unsigned int)a5 isFromMeToMe:(BOOL)a6 shouldDeactivate:(BOOL)a7 isBackwardsCompatibleMessage:(BOOL)a8;
@end

@implementation MessageDeliveryContext

- (MessageDeliveryContext)initWithDisplayIDs:(id)a3 didSucceed:(BOOL)a4 error:(unsigned int)a5 isFromMeToMe:(BOOL)a6 shouldDeactivate:(BOOL)a7 isBackwardsCompatibleMessage:(BOOL)a8
{
  v14 = a3;
  v18.receiver = self;
  v18.super_class = MessageDeliveryContext;
  v15 = [(MessageDeliveryContext *)&v18 init];
  displayIDs = v15->_displayIDs;
  v15->_displayIDs = v14;

  v15->_success = a4;
  v15->_error = a5;
  v15->_fromMeToMe = a6;
  v15->_shouldDeactivate = a7;
  v15->_isBackwardsCompatibleMessage = a8;
  return v15;
}

@end