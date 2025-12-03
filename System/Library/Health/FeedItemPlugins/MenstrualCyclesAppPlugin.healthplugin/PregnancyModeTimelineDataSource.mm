@interface PregnancyModeTimelineDataSource
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation PregnancyModeTimelineDataSource

- (void)pregnancyModelDidUpdate:(id)update
{
  isa = self->super.super.isa;
  sub_29E160940(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_29E2C3734();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E2C3714();
  updateCopy = update;
  swift_retain_n();
  v11 = updateCopy;
  v12 = sub_29E2C3704();
  v13 = swift_allocObject();
  v14 = MEMORY[0x29EDCA390];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = self;
  v13[6] = isa;
  sub_29E13C63C(0, 0, v8, &unk_29E2E18C8, v13);
}

@end