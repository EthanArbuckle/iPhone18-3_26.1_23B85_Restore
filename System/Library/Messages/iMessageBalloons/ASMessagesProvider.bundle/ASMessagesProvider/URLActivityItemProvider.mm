@interface URLActivityItemProvider
- (_TtC18ASMessagesProvider23URLActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)activityViewControllerSubject:(id)subject;
- (id)item;
@end

@implementation URLActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23URLActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_6672F8(typeCopy, v7))
    {
      v21 = 0u;
      v22 = 0u;

      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  *(&v22 + 1) = sub_7570A0();
  sub_B1B4(&v21);
  sub_75AE70();

LABEL_6:
  v13 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v14 = sub_B170(&v21, *(&v22 + 1));
    v15 = *(v13 - 8);
    v16 = __chkstk_darwin(v14);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_76A930();
    (*(v15 + 8))(v18, v13);
    sub_BEB8(&v21);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)item
{
  selfCopy = self;
  sub_5E2864(v5);

  sub_B170(v5, v5[3]);
  v3 = sub_76A930();
  sub_BEB8(v5);

  return v3;
}

- (_TtC18ASMessagesProvider23URLActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_5E2DB4();

  return v6;
}

- (id)activityViewControllerSubject:(id)subject
{
  selfCopy = self;
  subjectCopy = subject;
  sub_5E3E50();
  v7 = v6;

  if (v7)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end