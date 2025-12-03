@interface ManagedRestrictions
- (void)effectiveSettingsChanged:(id)changed;
@end

@implementation ManagedRestrictions

- (void)effectiveSettingsChanged:(id)changed
{
  v3 = sub_22261AC60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22261AC40();

  sub_2225FD32C();

  (*(v4 + 8))(v7, v3);
}

@end