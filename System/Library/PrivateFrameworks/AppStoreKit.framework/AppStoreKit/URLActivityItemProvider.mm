@interface URLActivityItemProvider
- (_TtC11AppStoreKit23URLActivityItemProvider)initWithPlaceholderItem:(id)item;
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
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_1E14AB35C(typeCopy, v7))
    {
      v25 = 0u;
      v26 = 0u;

      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData);
  v14 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v15 = sub_1E1AEFCCC();
  *(&v26 + 1) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v13 + v14, v15);

LABEL_6:
  v17 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1Tm(&v25, *(&v26 + 1));
    v19 = *(v17 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_1E1AF748C();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)item
{
  selfCopy = self;
  sub_1E1708238(v5);

  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v3 = sub_1E1AF748C();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (_TtC11AppStoreKit23URLActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1E17087E4();

  return v6;
}

- (id)activityViewControllerSubject:(id)subject
{
  sub_1E1709778();
  if (v3)
  {

    v4 = sub_1E1AF5DBC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end