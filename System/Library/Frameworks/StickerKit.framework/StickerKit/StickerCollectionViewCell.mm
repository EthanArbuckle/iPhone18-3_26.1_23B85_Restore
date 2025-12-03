@interface StickerCollectionViewCell
- (NSString)accessibilityIdentifier;
- (NSString)accessibilityLabel;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleLongPress;
- (void)handleTap;
- (void)prepareForReuse;
@end

@implementation StickerCollectionViewCell

- (NSString)accessibilityLabel
{
  v2 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph;
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = qword_1ED8B2A98;
  selfCopy = self;
  if (v4 != -1)
  {
    result = swift_once();
    v3 = *(&self->super.super.super.super.super.super.isa + v2);
    if (!v3)
    {
      __break(1u);
      return result;
    }
  }

  v7 = v3;
  sub_19A6542F4(v7);
  v9 = v8;

  if (v9)
  {
    v10 = sub_19A7AAFE4();

    v11 = v10;
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (NSString)accessibilityIdentifier
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  if (v2 && (v3 = self, v4 = v2, sub_19A7675C8(), v6 = v5, v3, v4, v6))
  {
    v7 = sub_19A7AAFE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_19A6EC86C();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_19A6ECB58(event, x, y);

  return v10;
}

- (void)handleTap
{
  selfCopy = self;
  sub_19A6ED20C();
}

- (void)handleLongPress
{
  selfCopy = self;
  sub_19A6ED38C();
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_19A6F060C();

  return v10;
}

@end