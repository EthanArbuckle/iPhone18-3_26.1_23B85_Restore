@interface CNIDSDeviceListService
- (CNIDSDeviceListService)init;
- (id)fetch;
@end

@implementation CNIDSDeviceListService

- (id)fetch
{
  selfCopy = self;
  sub_199A9F3A4();

  type metadata accessor for DeviceListServiceDeviceInfo();
  v3 = sub_199DFA0BC();

  return v3;
}

- (CNIDSDeviceListService)init
{
  *(&self->super.isa + OBJC_IVAR___CNIDSDeviceListService____lazy_storage___services) = 0;
  v3 = CNUILogPosters();
  sub_199DF805C();
  v5.receiver = self;
  v5.super_class = type metadata accessor for IDSDeviceListService();
  return [(CNIDSDeviceListService *)&v5 init];
}

@end