@interface DeviceInformationView
- (void)addButtonPressedWithSender:(id)sender;
- (void)ellipsisButtonPressedWithSender:(id)sender;
- (void)infoLabelTapped;
- (void)setInfoLabelType:(int64_t)type;
- (void)tintColorDidChange;
@end

@implementation DeviceInformationView

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_10003E560();
}

- (void)setInfoLabelType:(int64_t)type
{
  selfCopy = self;
  sub_10003F5F4(type);
}

- (void)addButtonPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000442E4();
}

- (void)ellipsisButtonPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100043AD0(senderCopy);
}

- (void)infoLabelTapped
{
  selfCopy = self;
  sub_100043C0C();
}

@end