@interface TextFieldAlert
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC9MusicCore14TextFieldAlert)initWithCoder:(id)coder;
- (_TtC9MusicCore14TextFieldAlert)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TextFieldAlert

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  v14.location = location;
  v14.length = length;
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  TextFieldAlert.textField(_:shouldChangeCharactersIn:replacementString:)(fieldCopy, v14, v15);

  return 1;
}

- (_TtC9MusicCore14TextFieldAlert)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MusicCore14TextFieldAlert)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end