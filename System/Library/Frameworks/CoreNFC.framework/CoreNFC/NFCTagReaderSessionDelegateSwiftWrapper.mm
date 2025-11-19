@interface NFCTagReaderSessionDelegateSwiftWrapper
- (_TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper)init;
- (void)tagReaderSession:(id)a3 didDetectTags:(id)a4;
- (void)tagReaderSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)tagReaderSessionDidBecomeActive:(id)a3;
@end

@implementation NFCTagReaderSessionDelegateSwiftWrapper

- (void)tagReaderSessionDidBecomeActive:(id)a3
{
  v5 = self + OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)tagReaderSession:(id)a3 didInvalidateWithError:(id)a4
{
  v7 = self + OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)tagReaderSession:(id)a3 didDetectTags:(id)a4
{
  sub_23728DDC0(&qword_27DE988A0, &qword_2372D3EA8);
  v6 = sub_2372D10F4();
  v7 = a3;
  v8 = self;
  sub_23728D778(v7, v6);
}

- (_TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end