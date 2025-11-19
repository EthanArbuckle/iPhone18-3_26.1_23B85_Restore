@interface AVOuputDeviceCommunicationsChannelBroker
- (void)availableDevicesDidChange;
@end

@implementation AVOuputDeviceCommunicationsChannelBroker

- (void)availableDevicesDidChange
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_23E900A74();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_23E884370(0, 0, v6, &unk_23E9040C8, v8);
}

@end