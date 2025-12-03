@interface EmojiTextField
- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithCoder:(id)coder;
- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithFrame:(CGRect)frame;
@end

@implementation EmojiTextField

- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(EmojiTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(EmojiTextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end