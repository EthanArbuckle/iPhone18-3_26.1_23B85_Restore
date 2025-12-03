@interface RemovingNQMLStringGenerator
- (_TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator)init;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidFindNewline:(id)newline;
@end

@implementation RemovingNQMLStringGenerator

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1E13E40A8();
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1E13E4278(v6, v8);
}

- (void)parserDidFindNewline:(id)newline
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration);
  v5 = *&self->parser[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
  swift_beginAccess();
  selfCopy = self;
  MEMORY[0x1E68FECA0](v4, v5);
  swift_endAccess();
}

- (_TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end