@interface LanguageAwareTextView
- (BOOL)resignFirstResponder;
- (NSArray)_additionalTextInputLocales;
- (NSLocale)locale;
- (UITextInputMode)textInputMode;
- (_TtC17SequoiaTranslator21LanguageAwareTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)reloadInputViews;
- (void)setLocale:(id)a3;
- (void)textViewTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LanguageAwareTextView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LanguageAwareTextView();
  v4 = a3;
  v5 = v6.receiver;
  [(LanguageAwareTextView *)&v6 traitCollectionDidChange:v4];
  sub_1001396DC();
}

- (NSLocale)locale
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  sub_1000E1D20(self + v6, v5);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setLocale:(id)a3
{
  v5 = sub_100005AD4(&qword_1003AFCE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  if (a3)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  sub_1000E1D20(self + v13, v8);
  swift_beginAccess();
  v14 = self;
  sub_100135504(v10, self + v13);
  swift_endAccess();
  sub_100139B84(v8);

  sub_100009EBC(v8, &qword_1003AFCE0);
  sub_100009EBC(v10, &qword_1003AFCE0);
}

- (NSArray)_additionalTextInputLocales
{
  v2 = self;
  v3 = sub_10013A330();

  if (v3)
  {
    type metadata accessor for Locale();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (UITextInputMode)textInputMode
{
  v2 = self;
  v3 = sub_10013A558();

  return v3;
}

- (void)reloadInputViews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for LanguageAwareTextView();
  [(LanguageAwareTextView *)&v2 reloadInputViews];
}

- (BOOL)resignFirstResponder
{
  v3 = *(self + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder);
  if (v3)
  {
    v4 = self;
    sub_10001AD18(v3);
    v3(v4);
    sub_10001ABE4(v3);
  }

  else
  {
    v5 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for LanguageAwareTextView();
  v6 = [(LanguageAwareTextView *)&v8 resignFirstResponder];

  return v6;
}

- (void)textViewTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10013AE9C(v4);
}

- (_TtC17SequoiaTranslator21LanguageAwareTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end