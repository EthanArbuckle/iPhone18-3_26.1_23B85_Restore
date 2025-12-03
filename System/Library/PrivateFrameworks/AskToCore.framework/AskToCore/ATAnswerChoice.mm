@interface ATAnswerChoice
- (BOOL)isEqual:(id)equal;
- (NSString)completedRequestTitle;
- (NSString)description;
- (NSString)id;
- (NSString)title;
- (_TtC5AskTo14ATAnswerChoice)init;
- (_TtC5AskTo14ATAnswerChoice)initWithId:(id)id title:(id)title;
- (_TtC5AskTo14ATAnswerChoice)initWithId:(id)id title:(id)title completedRequestTitle:(id)requestTitle;
- (int64_t)hash;
- (signed)kind;
- (void)encodeWithCoder:(id)coder;
- (void)setCompletedRequestTitle:(id)title;
- (void)setKind:(signed __int16)kind;
- (void)setTitle:(id)title;
@end

@implementation ATAnswerChoice

- (NSString)id
{
  v2 = *(self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = *(self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);

  v4 = sub_2410DF0A0();

  return v4;
}

- (NSString)title
{
  v2 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_2410DF0A0();

  return v5;
}

- (void)setTitle:(id)title
{
  v4 = sub_2410DF0C0();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)completedRequestTitle
{
  v2 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_2410DF0A0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCompletedRequestTitle:(id)title
{
  if (title)
  {
    v4 = sub_2410DF0C0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (signed)kind
{
  v3 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setKind:(signed __int16)kind
{
  v5 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  *(self + v5) = kind;
}

- (_TtC5AskTo14ATAnswerChoice)initWithId:(id)id title:(id)title
{
  ObjectType = swift_getObjectType();
  v6 = sub_2410DF0C0();
  v8 = v7;
  v9 = sub_2410DF0C0();
  v10 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  *v10 = 0;
  v10[1] = 0;
  *(self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind) = 0;
  v11 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  *v12 = v9;
  v12[1] = v13;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(ATAnswerChoice *)&v15 init];
}

- (_TtC5AskTo14ATAnswerChoice)initWithId:(id)id title:(id)title completedRequestTitle:(id)requestTitle
{
  ObjectType = swift_getObjectType();
  v8 = sub_2410DF0C0();
  v10 = v9;
  v11 = sub_2410DF0C0();
  v13 = v12;
  if (requestTitle)
  {
    requestTitle = sub_2410DF0C0();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  *v16 = 0;
  v16[1] = 0;
  *(self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind) = 0;
  v17 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  *v17 = v8;
  v17[1] = v10;
  v18 = (self + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  *v18 = v11;
  v18[1] = v13;
  swift_beginAccess();
  *v16 = requestTitle;
  v16[1] = v15;
  v20.receiver = self;
  v20.super_class = ObjectType;
  return [(ATAnswerChoice *)&v20 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ATAnswerChoice.isEqual(_:)(v8);

  sub_241086184(v8, &unk_27E525CA0, "P?");
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ATAnswerChoice.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  ATAnswerChoice.description.getter();

  v3 = sub_2410DF0A0();

  return v3;
}

- (_TtC5AskTo14ATAnswerChoice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ATAnswerChoice.encode(with:)(coderCopy);
}

@end