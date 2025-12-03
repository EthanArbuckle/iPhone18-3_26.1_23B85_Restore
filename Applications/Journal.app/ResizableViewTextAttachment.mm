@interface ResizableViewTextAttachment
- (_TtC7Journal27ResizableViewTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
@end

@implementation ResizableViewTextAttachment

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  v12 = sub_1007C9488(view, location, container);

  swift_unknownObjectRelease();

  return v12;
}

- (_TtC7Journal27ResizableViewTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000340DC(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end