@interface TextToolListItemView
- (BOOL)isHighlighted;
- (_TtC8PaperKit20TextToolListItemView)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TextToolListItemView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TextToolListItemView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(TextToolListItemView *)&v9 setHighlighted:highlightedCopy];
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  if ([(TextToolListItemView *)&v8 isHighlighted])
  {
    secondarySystemFillColor = [objc_opt_self() secondarySystemFillColor];
  }

  else
  {
    secondarySystemFillColor = 0;
  }

  [(TextToolListItemView *)selfCopy setBackgroundColor:secondarySystemFillColor];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, partial apply for closure #1 in TextToolListItemView.contextMenuInteraction(_:configurationForMenuAtLocation:), v4);

  return v5;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerRegion);
  selfCopy = self;
  [(TextToolListItemView *)selfCopy bounds];
  v7 = UIPointerRegion.init(rect:identifier:)();

  return v7;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = specialized TextToolListItemView.pointerInteraction(_:styleFor:)();

  return v9;
}

- (_TtC8PaperKit20TextToolListItemView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end