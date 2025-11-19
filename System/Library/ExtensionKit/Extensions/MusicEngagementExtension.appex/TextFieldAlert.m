@interface TextFieldAlert
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC9MusicCore14TextFieldAlert)initWithCoder:(id)a3;
- (_TtC9MusicCore14TextFieldAlert)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TextFieldAlert

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  v14.location = location;
  v14.length = length;
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  TextFieldAlert.textField(_:shouldChangeCharactersIn:replacementString:)(v12, v14, v15);

  return 1;
}

- (_TtC9MusicCore14TextFieldAlert)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MusicCore14TextFieldAlert)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end