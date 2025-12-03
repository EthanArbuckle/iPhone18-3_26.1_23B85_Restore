@interface NFCTagReaderSessionDelegateSwiftWrapper
- (_TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper)init;
- (void)tagReaderSession:(id)session didDetectTags:(id)tags;
- (void)tagReaderSession:(id)session didInvalidateWithError:(id)error;
- (void)tagReaderSessionDidBecomeActive:(id)active;
@end

@implementation NFCTagReaderSessionDelegateSwiftWrapper

- (void)tagReaderSessionDidBecomeActive:(id)active
{
  v5 = self + OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    activeCopy = active;
    selfCopy = self;
    v8(activeCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)tagReaderSession:(id)session didInvalidateWithError:(id)error
{
  v7 = self + OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    sessionCopy = session;
    errorCopy = error;
    selfCopy = self;
    v10(sessionCopy, errorCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)tagReaderSession:(id)session didDetectTags:(id)tags
{
  sub_23728DDC0(&qword_27DE988A0, &qword_2372D3EA8);
  v6 = sub_2372D10F4();
  sessionCopy = session;
  selfCopy = self;
  sub_23728D778(sessionCopy, v6);
}

- (_TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end