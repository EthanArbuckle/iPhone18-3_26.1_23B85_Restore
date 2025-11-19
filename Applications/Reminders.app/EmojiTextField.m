@interface EmojiTextField
- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithCoder:(id)a3;
- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithFrame:(CGRect)a3;
@end

@implementation EmojiTextField

- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(EmojiTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9RemindersP33_4FE8BD245B420E02FDB196B5E5563CD014EmojiTextField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(EmojiTextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end