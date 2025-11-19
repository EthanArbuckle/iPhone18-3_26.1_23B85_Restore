@interface EKUIConferenceRoom
- (EKUIConferenceRoom)init;
@end

@implementation EKUIConferenceRoom

- (EKUIConferenceRoom)init
{
  v3.receiver = self;
  v3.super_class = EKUIConferenceRoom;
  result = [(EKUIConferenceRoom *)&v3 init];
  if (result)
  {
    result->_availability = 0;
  }

  return result;
}

@end