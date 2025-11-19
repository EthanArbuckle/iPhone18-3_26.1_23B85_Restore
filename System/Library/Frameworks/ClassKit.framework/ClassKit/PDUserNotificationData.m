@interface PDUserNotificationData
- (id)description;
@end

@implementation PDUserNotificationData

- (id)description
{
  v3 = [NSNumber numberWithInteger:self->_type];
  v4 = [NSString stringWithFormat:@"Type: %@ Title: %@ Message %@ HandoutID: %@ ClassID: %@", v3, self->_title, self->_message, self->_handoutID, self->_classID];

  return v4;
}

@end