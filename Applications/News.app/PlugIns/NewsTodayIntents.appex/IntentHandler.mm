@interface IntentHandler
- (_TtC16NewsTodayIntents13IntentHandler)init;
- (id)defaultTagForTag:(id)tag;
- (void)provideTagOptionsCollectionForTag:(id)tag searchTerm:(id)term withCompletion:(id)completion;
@end

@implementation IntentHandler

- (_TtC16NewsTodayIntents13IntentHandler)init
{
  v3 = OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler_container;
  type metadata accessor for TodayIntentsContainer();
  swift_allocObject();
  *(&self->super.super.isa + v3) = sub_10000694C();
  v4 = self + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___resolver;
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = self + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___followingTagsService;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = self + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___searchService;
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC16NewsTodayIntents13IntentHandler____lazy_storage___configurationManager) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v8 init];
}

- (void)provideTagOptionsCollectionForTag:(id)tag searchTerm:(id)term withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  if (term)
  {
    v9 = sub_10000F154();
    term = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  tagCopy = tag;
  selfCopy = self;
  sub_1000093AC(v9, term, sub_10000A0F8, v11);
}

- (id)defaultTagForTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  v6 = sub_100009CC8();

  return v6;
}

@end