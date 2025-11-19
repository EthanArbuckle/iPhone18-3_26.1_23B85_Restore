@interface RemovingNQMLStringGenerator
- (_TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator)init;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidFindNewline:(id)a3;
@end

@implementation RemovingNQMLStringGenerator

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E13E40A8();
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1E13E4278(v6, v8);
}

- (void)parserDidFindNewline:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration);
  v5 = *&self->parser[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
  swift_beginAccess();
  v6 = self;
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