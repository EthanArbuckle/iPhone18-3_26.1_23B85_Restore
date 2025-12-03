@interface WorkoutControlsSettingsProvider
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
@end

@implementation WorkoutControlsSettingsProvider

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  v6 = sub_6DF4(&qword_2D800, &qword_21CA8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_20050();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_20030();
  swift_retain_n();
  v11 = sub_20020();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = self;
  *(v12 + 40) = change;
  sub_1792C(0, 0, v9, &unk_21CB8, v12);
}

@end