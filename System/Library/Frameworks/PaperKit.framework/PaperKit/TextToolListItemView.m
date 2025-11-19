@interface TextToolListItemView
- (BOOL)isHighlighted;
- (_TtC8PaperKit20TextToolListItemView)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TextToolListItemView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TextToolListItemView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  [(TextToolListItemView *)&v9 setHighlighted:v3];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if ([(TextToolListItemView *)&v8 isHighlighted])
  {
    v7 = [objc_opt_self() secondarySystemFillColor];
  }

  else
  {
    v7 = 0;
  }

  [(TextToolListItemView *)v6 setBackgroundColor:v7];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, partial apply for closure #1 in TextToolListItemView.contextMenuInteraction(_:configurationForMenuAtLocation:), v4);

  return v5;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerRegion);
  v6 = self;
  [(TextToolListItemView *)v6 bounds];
  v7 = UIPointerRegion.init(rect:identifier:)();

  return v7;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized TextToolListItemView.pointerInteraction(_:styleFor:)();

  return v9;
}

- (_TtC8PaperKit20TextToolListItemView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end