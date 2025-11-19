@interface AXLTSettingsManager
+ (AXLTSettingsManager)shared;
- (NSLocale)locale;
- (_TtP19LiveTranscriptionUI27AXLTSettingsManagerProtocol_)delegate;
- (id)fontObjc;
- (void)setLocale:(id)a3;
- (void)updateBackgroundColor;
- (void)updateNubbitIdleOpacity;
- (void)updateTextColor;
@end

@implementation AXLTSettingsManager

- (_TtP19LiveTranscriptionUI27AXLTSettingsManagerProtocol_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLocale)locale
{
  v3 = sub_100003968(&qword_100063820, &qword_100048F80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_100006098(self + v7, v6, &qword_100063820, &qword_100048F80);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setLocale:(id)a3
{
  v5 = sub_100003968(&qword_100063820, &qword_100048F80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Locale();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  v12 = self;
  sub_100026EAC(v8, self + v11);
  swift_endAccess();
}

+ (AXLTSettingsManager)shared
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v3 = static AXLTSettingsManager.shared;

  return v3;
}

- (void)updateNubbitIdleOpacity
{
  v2 = self;
  sub_100028014();
}

- (void)updateTextColor
{
  v2 = self;
  sub_1000282D4();
}

- (void)updateBackgroundColor
{
  v2 = self;
  sub_100028D8C();
}

- (id)fontObjc
{
  v2 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v3 = [v2 preferredFontForTextStyle:textFontStyle];

  return v3;
}

@end