@interface KeyboardUpdatingTextViewUIKit
- (NSArray)_additionalTextInputLocales;
- (UITextInputMode)textInputMode;
- (_TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation KeyboardUpdatingTextViewUIKit

- (_TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_textTranslationLocaleSubscription) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_allowKeyboardLocaleChange) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)_additionalTextInputLocales
{
  sub_100005AD4(qword_1003B5180);
  type metadata accessor for Locale();
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (UITextInputMode)textInputMode
{
  v2 = self;
  v3 = sub_10012E72C();

  return v3;
}

- (_TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end