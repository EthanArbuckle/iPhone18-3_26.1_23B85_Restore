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
  sub_1004DD43C();
  v9 = a3;
  v10 = self;
  sub_1000EBD24(v9, location, length);

  return 1;
}

- (_TtC9MusicCore14TextFieldAlert)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = 0;
  result = sub_1004DECCC();
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