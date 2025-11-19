@interface ICSTipsHelper
+ (void)donateEventAnnouceCallsEnabled;
- (_TtC17ICSSettingsBundle13ICSTipsHelper)init;
@end

@implementation ICSTipsHelper

+ (void)donateEventAnnouceCallsEnabled
{
  v2 = (*(*(sub_3938(&qword_11008, &qword_80E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = sub_560C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_3D10(0, 0, v4, &unk_8120, v6);
}

- (_TtC17ICSSettingsBundle13ICSTipsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICSTipsHelper();
  return [(ICSTipsHelper *)&v3 init];
}

@end