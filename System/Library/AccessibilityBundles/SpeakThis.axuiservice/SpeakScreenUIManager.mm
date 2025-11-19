@interface SpeakScreenUIManager
- (_TtC9SpeakThis20SpeakScreenUIManager)init;
- (void)beginActivity;
- (void)endActivity;
- (void)hideUI;
- (void)showUI;
@end

@implementation SpeakScreenUIManager

- (void)showUI
{
  v2 = self;
  sub_18380();
}

- (void)beginActivity
{
  v2 = sub_1A724(&qword_38390, &qword_23330);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v9 - v5;
  v7 = sub_1BF44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_19868(0, 0, v6, &unk_23340, v8);
}

- (void)hideUI
{
  v2 = self;
  sub_19C18();
}

- (_TtC9SpeakThis20SpeakScreenUIManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager____lazy_storage___displayManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpeakScreenUIManager();
  return [(SpeakScreenUIManager *)&v3 init];
}

- (void)endActivity
{
  v0 = sub_1BEA4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0, v2);
  if (AXDeviceHasJindo())
  {
    sub_1BDC4();
    v3 = sub_1BDB4();
    v6._object = 0x80000000000297B0;
    v6._countAndFlagsBits = 0xD000000000000013;
    v4 = v3;
    sub_1BD94(v6);
  }
}

@end