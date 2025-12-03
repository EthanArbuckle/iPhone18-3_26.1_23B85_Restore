@interface ICSTelephonyUnsuportedAlert
- (void)alternateResponse;
- (void)show;
@end

@implementation ICSTelephonyUnsuportedAlert

- (void)alternateResponse
{
  selfCopy = self;
  sub_1001C98D8();
}

- (void)show
{
  selfCopy = self;
  sub_1001C9AD4();
}

@end