@interface ActivitySubjectProvider
- (_TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ActivitySubjectProvider

- (id)activityViewControllerPlaceholderItem:(id)item
{
  outlined init with copy of Any(self + OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_item, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  outlined init with copy of Any(self + OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_item, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);

  return v4;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_subject);
  v5 = *&self->item[OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_subject];

  v6 = MEMORY[0x18D00C850](v4, v5);

  return v6;
}

- (_TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end