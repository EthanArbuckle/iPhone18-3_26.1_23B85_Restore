@interface DeviceInformationView
- (void)addButtonPressedWithSender:(id)a3;
- (void)ellipsisButtonPressedWithSender:(id)a3;
- (void)infoLabelTapped;
- (void)setInfoLabelType:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation DeviceInformationView

- (void)tintColorDidChange
{
  v2 = self;
  sub_10003E560();
}

- (void)setInfoLabelType:(int64_t)a3
{
  v4 = self;
  sub_10003F5F4(a3);
}

- (void)addButtonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000442E4();
}

- (void)ellipsisButtonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100043AD0(v4);
}

- (void)infoLabelTapped
{
  v2 = self;
  sub_100043C0C();
}

@end