@interface EmojiTextField
- (NSString)textInputContextIdentifier;
- (_TtC18SharingViewService14EmojiTextField)initWithCoder:(id)a3;
- (_TtC18SharingViewService14EmojiTextField)initWithFrame:(CGRect)a3;
@end

@implementation EmojiTextField

- (NSString)textInputContextIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC18SharingViewService14EmojiTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for EmojiTextField();
  v7 = [(EmojiTextField *)&v9 initWithFrame:x, y, width, height];
  [(EmojiTextField *)v7 setKeyboardType:124];
  return v7;
}

- (_TtC18SharingViewService14EmojiTextField)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end