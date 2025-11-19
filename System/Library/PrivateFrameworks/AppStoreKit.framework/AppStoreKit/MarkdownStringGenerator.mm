@interface MarkdownStringGenerator
- (_TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidFindNewline:(id)a3;
@end

@implementation MarkdownStringGenerator

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E161E9D4();
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  v6 = 0xE200000000000000;
  v7 = 32382;
  v8 = 0xE000000000000000;
  v9 = 95;
  if (a4 == 1)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v9 = 0;
  }

  if (a4 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a4)
  {
    v10 = v7;
  }

  else
  {
    v10 = 10794;
  }

  if (a4)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  swift_beginAccess();
  v12 = self;
  MEMORY[0x1E68FECA0](v10, v11);
  swift_endAccess();
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v5 = 0xE200000000000000;
  v6 = 32382;
  v7 = 0xE000000000000000;
  v8 = 95;
  if (a4 == 1)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if (a4 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a4)
  {
    v9 = v6;
  }

  else
  {
    v9 = 10794;
  }

  if (a4)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  swift_beginAccess();
  v11 = self;
  MEMORY[0x1E68FECA0](v9, v10);
  swift_endAccess();
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1E161EBA4(v6, v8);
}

- (void)parserDidFindNewline:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_configuration);
  v5 = *&self->parser[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_configuration];
  swift_beginAccess();
  v6 = self;
  MEMORY[0x1E68FECA0](v4, v5);
  swift_endAccess();
}

- (_TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end