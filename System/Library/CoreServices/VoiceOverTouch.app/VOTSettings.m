@interface VOTSettings
- (AXCVoiceSelection)_systemVoiceSelection;
- (AXCVoiceSelection)systemVoiceSelection;
- (AXVoiceOverActivity)_currentActivity;
- (AXVoiceOverActivity)currentActivity;
- (BOOL)speakUpEnabled;
- (BOOL)stringIsSupported:(id)a3 language:(id)a4;
- (NSArray)voiceRotors;
- (void)currentElementDidUpdate:(id)a3;
- (void)initialize;
- (void)rotorRateWithCompletionHandler:(id)a3;
- (void)setCurrentActivity:(id)a3;
- (void)setRotorRate:(float)a3 completionHandler:(id)a4;
- (void)setSelectedLanguageIdentifier:(id)a3;
- (void)setSystemVoiceSelection:(id)a3;
- (void)set_currentActivity:(id)a3;
- (void)set_systemVoiceSelection:(id)a3;
- (void)voiceHasSuperCompactCounterpart:(NSString *)a3 completionHandler:(id)a4;
- (void)voiceSelectionForAction:(id)a3 languageCode:(id)a4 completionHandler:(id)a5;
- (void)voiceSelectionWithLanguageCode:(id)a3 withActivity:(id)a4 completionHandler:(id)a5;
@end

@implementation VOTSettings

- (AXCVoiceSelection)_systemVoiceSelection
{
  v3 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
  swift_beginAccess();
  sub_10012346C(self + v6, v5, &qword_1001FE890);
  v7 = type metadata accessor for VoiceSelection();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = VoiceSelection._bridgeToObjectiveC()();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)set_systemVoiceSelection:(id)a3
{
  v5 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  if (a3)
  {
    v8 = self;
    v9 = a3;
    static VoiceSelection._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for VoiceSelection();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for VoiceSelection();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = self;
  }

  v13 = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
  swift_beginAccess();
  sub_10012392C(v7, self + v13, &qword_1001FE890);
  swift_endAccess();
}

- (AXCVoiceSelection)systemVoiceSelection
{
  v3 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  swift_getKeyPath();
  v14[1] = self;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  v6 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
  swift_beginAccess();
  sub_10012346C(v6 + v7, v5, &qword_1001FE890);

  v8 = type metadata accessor for VoiceSelection();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = VoiceSelection._bridgeToObjectiveC()();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setSystemVoiceSelection:(id)a3
{
  v5 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (a3)
  {
    v8 = self;
    v9 = a3;
    static VoiceSelection._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for VoiceSelection();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for VoiceSelection();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = self;
  }

  sub_100118474(v7);
}

- (NSArray)voiceRotors
{
  v2 = self;
  AXSettings.VoiceOver.voiceRotors.getter();

  type metadata accessor for UserVoiceConfiguration();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (AXVoiceOverActivity)_currentActivity
{
  v3 = sub_100117630(&qword_1001FE8C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(self + v6, v5, &qword_1001FE8C0);
  v7 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = AXSettings.VoiceOver.Activity._bridgeToObjectiveC()();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)set_currentActivity:(id)a3
{
  v5 = sub_100117630(&qword_1001FE8C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  if (a3)
  {
    v11 = self;
    v12 = a3;
    static AXSettings.VoiceOver.Activity._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = self;
  }

  v16 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(self + v16, v8, &qword_1001FE8C0);
  swift_beginAccess();
  sub_100124008(v10, self + v16, &qword_1001FE8C0);
  swift_endAccess();
  sub_100118BC0(v8);

  sub_10012408C(v8, &qword_1001FE8C0);
  sub_10012408C(v10, &qword_1001FE8C0);
}

- (AXVoiceOverActivity)currentActivity
{
  v3 = sub_100117630(&qword_1001FE8C0);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  swift_getKeyPath();
  v14[1] = self;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  v6 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(v6 + v7, v5, &qword_1001FE8C0);

  v8 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = AXSettings.VoiceOver.Activity._bridgeToObjectiveC()();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setCurrentActivity:(id)a3
{
  v5 = sub_100117630(&qword_1001FE8C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (a3)
  {
    v8 = self;
    v9 = a3;
    static AXSettings.VoiceOver.Activity._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = self;
  }

  sub_100119690(v7);
}

- (void)currentElementDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100119A58(v4);
}

- (BOOL)speakUpEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.speakUpEnabled.getter();

  return v3 & 1;
}

- (void)setSelectedLanguageIdentifier:(id)a3
{
  v5 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = self;
    Locale.init(withAXRemapping:)();
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Locale();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = self;
  }

  sub_10011B48C(v7);
  [*(self + OBJC_IVAR____TtC3vot11VOTSettings_workspace) _preferencesSelectedLanguageChanged];
}

- (void)rotorRateWithCompletionHandler:(id)a3
{
  v5 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10017EA68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10017EA70;
  v12[5] = v11;
  v13 = self;
  sub_100126474(0, 0, v7, &unk_10017EA78, v12);
}

- (void)setRotorRate:(float)a3 completionHandler:(id)a4
{
  v7 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10017EA48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10017EA50;
  v14[5] = v13;
  v15 = self;
  sub_100126474(0, 0, v9, &unk_10017EA58, v14);
}

- (void)voiceSelectionForAction:(id)a3 languageCode:(id)a4 completionHandler:(id)a5
{
  v8 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(a5);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = *(self + OBJC_IVAR____TtC3vot11VOTSettings_executor);
  v17 = sub_1001240EC(&qword_1001FE870, &type metadata accessor for TTSExecutor);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = sub_100124F90;
  v19[3] = v15;
  v19[4] = self;
  v19[5] = a3;
  v19[6] = v12;
  v19[7] = v14;
  v20 = a3;
  v21 = self;

  sub_1001246AC(0, 0, v16, v17, v10, &unk_10017EA38, v19);
}

- (void)voiceSelectionWithLanguageCode:(id)a3 withActivity:(id)a4 completionHandler:(id)a5
{
  v8 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_100117630(&qword_1001FE8C0);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = _Block_copy(a5);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  if (a4)
  {
    v20 = self;
    v21 = a4;
    static AXSettings.VoiceOver.Activity._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    v24 = self;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  v26 = *(self + OBJC_IVAR____TtC3vot11VOTSettings_executor);
  v34 = sub_1001240EC(&qword_1001FE870, &type metadata accessor for TTSExecutor);
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  sub_10012346C(v16, v14, &qword_1001FE8C0);
  v28 = v10;
  v29 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v30 = swift_allocObject();
  v30[2] = sub_1001243F8;
  v30[3] = v25;
  v31 = v35;
  v32 = v36;
  v30[4] = self;
  v30[5] = v32;
  v30[6] = v31;
  sub_10012452C(v14, v30 + v29, &qword_1001FE8C0);
  v33 = self;

  sub_1001246AC(0, 0, v26, v34, v28, &unk_10017EA18, v30);

  sub_10012408C(v16, &qword_1001FE8C0);
}

- (void)initialize
{
  v2 = self;
  sub_10012076C();
}

- (BOOL)stringIsSupported:(id)a3 language:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_100121108(v6, v8, v9, a4);

  return v12 & 1;
}

- (void)voiceHasSuperCompactCounterpart:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10017E9E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10017E9F0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100126474(0, 0, v9, &unk_10017E9F8, v14);
}

@end