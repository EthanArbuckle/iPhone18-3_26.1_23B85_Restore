@interface LIDDisambiguationView.Coordinator
- (_TtCV17SequoiaTranslator21LIDDisambiguationView11Coordinator)init;
- (void)cancelConfirmation;
- (void)lidConfirmedWithLocale:(id)locale;
@end

@implementation LIDDisambiguationView.Coordinator

- (void)cancelConfirmation
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator21LIDDisambiguationView11Coordinator_onDismiss);
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  selfCopy = self;
  v6(v5);
  sub_1000E20D4(v5);
}

- (void)lidConfirmedWithLocale:(id)locale
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator21LIDDisambiguationView11Coordinator_onDismiss);
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  selfCopy = self;
  v11(v6);
  sub_1000E20D4(v6);
  (*(v8 + 8))(v10, v7);
}

- (_TtCV17SequoiaTranslator21LIDDisambiguationView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end