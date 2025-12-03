@interface SuggestionsOrderBanner
+ (id)walletLogo;
- (NSAttributedString)bannerAttributedSubtitle;
- (NSString)merchantName;
- (NSURL)orderDeepLink;
- (UIImage)merchantLogo;
- (_TtC12FinanceKitUI22SuggestionsOrderBanner)init;
- (id)init:(id)init error:(id *)error;
- (void)dealloc;
@end

@implementation SuggestionsOrderBanner

- (id)init:(id)init error:(id *)error
{
  initCopy = init;
  v5 = sub_23875B990();
  v7 = v6;

  return SuggestionsOrderBanner.init(_:)(v5, v7);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle);
  selfCopy = self;

  sub_238757BF0();

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(SuggestionsOrderBanner *)&v6 dealloc];
}

- (NSString)merchantName
{
  v3 = sub_238757CC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle);
  selfCopy = self;
  sub_238759B30();
  sub_238757C60();
  (*(v4 + 8))(v7, v3);
  v10 = sub_238757BD0();

  sub_2387586A0();

  v11 = sub_23875EA50();

  return v11;
}

- (UIImage)merchantLogo
{
  selfCopy = self;
  v3 = SuggestionsOrderBanner.merchantLogo.getter();

  return v3;
}

- (NSURL)orderDeepLink
{
  v22 = sub_23875A710();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238757A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_238757A20();
  LOBYTE(self) = sub_238757A60();
  (*(v8 + 8))(v11, v7);
  if (self)
  {
    sub_238759A40();
    sub_2387576B0();

    (*(v3 + 8))(v6, v22);
    v18 = sub_23875B860();
    (*(v13 + 8))(v16, v12);
    v19 = v18;
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (NSAttributedString)bannerAttributedSubtitle
{
  selfCopy = self;
  v3 = SuggestionsOrderBanner.bannerAttributedSubtitle.getter();

  return v3;
}

+ (id)walletLogo
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v3 = qword_27DF0AE88;

  return v3;
}

- (_TtC12FinanceKitUI22SuggestionsOrderBanner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end