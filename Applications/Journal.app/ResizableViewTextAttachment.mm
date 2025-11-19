@interface ResizableViewTextAttachment
- (_TtC7Journal27ResizableViewTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
@end

@implementation ResizableViewTextAttachment

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  v12 = sub_1007C9488(a3, a4, a5);

  swift_unknownObjectRelease();

  return v12;
}

- (_TtC7Journal27ResizableViewTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000340DC(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end