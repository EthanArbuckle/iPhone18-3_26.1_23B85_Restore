@interface TTRIRemindersCommonPresenter
- (void)dismissViewContact:(id)a3;
- (void)representedListWasDeleted;
- (void)willNavigateTo;
@end

@implementation TTRIRemindersCommonPresenter

- (void)dismissViewContact:(id)a3
{
  if (a3)
  {

    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1001E7D9C();

  sub_1000079B4(v3, &qword_10076AE40);
}

- (void)willNavigateTo
{

  sub_10021BDCC();
}

- (void)representedListWasDeleted
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->moduleDelegate[15];
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v6[4] = &off_10071AA88;
    v6[0] = self;
    v5 = *(v3 + 16);
    swift_retain_n();
    v5(v6, 0, ObjectType, v3);
    swift_unknownObjectRelease();
    sub_100004758(v6);
  }
}

@end