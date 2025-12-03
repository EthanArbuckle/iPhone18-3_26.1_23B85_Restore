@interface EmojiTextField
- (NSString)textInputContextIdentifier;
- (_TtC21FindMyRemoteUIService14EmojiTextField)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService14EmojiTextField)initWithFrame:(CGRect)frame;
@end

@implementation EmojiTextField

- (NSString)textInputContextIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC21FindMyRemoteUIService14EmojiTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(EmojiTextField *)&v9 initWithFrame:x, y, width, height];
  [(EmojiTextField *)height setKeyboardType:124];
  return height;
}

- (_TtC21FindMyRemoteUIService14EmojiTextField)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end