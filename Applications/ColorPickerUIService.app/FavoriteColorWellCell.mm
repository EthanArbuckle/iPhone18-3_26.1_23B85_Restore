@interface FavoriteColorWellCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isSelected;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)delete:(id)delete;
- (void)layoutSubviews;
@end

@implementation FavoriteColorWellCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FavoriteColorWellCell();
  return [(FavoriteColorWellCell *)&v3 isSelected];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10003A494();
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  [(FavoriteColorWellCell *)self bounds:interaction];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v7 = static Selector.== infix(_:_:)();
  sub_1000386E0(v10);
  if (v7)
  {
    v8 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete);
    sub_10003AC28(v8);

    if (v8)
    {
      sub_10000C134(v8);
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete);
  if (v6)
  {
    v7 = *&self->color[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];

    v6(v8);
    sub_10000C134(v6);
  }

  sub_1000386E0(v9);
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color);
  selfCopy = self;
  _accessibilityNameWithLuma = [v2 _accessibilityNameWithLuma];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = sub_100037A44();

  return v3;
}

@end