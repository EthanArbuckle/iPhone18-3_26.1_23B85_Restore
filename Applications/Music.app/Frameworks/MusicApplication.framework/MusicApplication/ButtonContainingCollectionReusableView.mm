@interface ButtonContainingCollectionReusableView
- (_TtC16MusicApplication38ButtonContainingCollectionReusableView)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ButtonContainingCollectionReusableView

- (_TtC16MusicApplication38ButtonContainingCollectionReusableView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.super.isa + v4) = TextDrawing.Cache.init()();
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler);
  *v6 = 0;
  v6[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_3A92A0(attributesCopy);

  return v6;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3A8A24();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  v2 = v7.receiver;
  [(ButtonContainingCollectionReusableView *)&v7 tintColorDidChange];
  tintColor = [v2 tintColor];
  if (tintColor)
  {
    v4 = tintColor;
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
    [v5 setTitleColor:tintColor forState:0];
    v6 = [v4 colorWithAlphaComponent:0.2];
    [v5 setTitleColor:v6 forState:1];
  }

  else
  {
    __break(1u);
  }
}

@end