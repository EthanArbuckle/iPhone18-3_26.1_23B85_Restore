@interface DSDeepLinkSpecifier
- (DSDeepLinkSpecifier)init;
- (DSDeepLinkSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (NSURL)inputURL;
- (void)setInputURL:(id)l;
@end

@implementation DSDeepLinkSpecifier

- (NSURL)inputURL
{
  v3 = (*(*(sub_5210(&qword_166F0, &qword_C6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  sub_5650(self + v6, v5);
  v7 = sub_8808();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    sub_87E8(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setInputURL:(id)l
{
  v5 = (*(*(sub_5210(&qword_166F0, &qword_C6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  if (l)
  {
    sub_87F8();
    v8 = sub_8808();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_8808();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  selfCopy = self;
  sub_5860(v7, self + v10);
  swift_endAccess();
}

- (DSDeepLinkSpecifier)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  v5 = sub_8808();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR___DSDeepLinkSpecifier_relay;
  *(self + v6) = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(DSDeepLinkSpecifier *)&v9 init];
  [(DSDeepLinkSpecifier *)v7 setProperty:*(v7 + OBJC_IVAR___DSDeepLinkSpecifier_relay) forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  return v7;
}

- (DSDeepLinkSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_8AA8();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end