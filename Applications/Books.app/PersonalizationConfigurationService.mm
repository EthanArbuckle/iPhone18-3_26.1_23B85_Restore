@interface PersonalizationConfigurationService
- (void)onConfigurationChange:(id)change;
@end

@implementation PersonalizationConfigurationService

- (void)onConfigurationChange:(id)change
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100796594();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = qword_100AD14F0;
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_100AE0708;
  v14 = sub_1003BB37C(&qword_100AE0888, _s5Books18PropertyValueActorV9ActorTypeCMa_0);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = self;

  sub_1003457A0(0, 0, v6, &unk_100821080, v15);

  (*(v8 + 8))(v10, v7);
}

@end