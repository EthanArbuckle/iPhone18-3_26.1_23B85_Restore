@interface ButtonContainingCollectionReusableView
- (_TtC16MusicApplication38ButtonContainingCollectionReusableView)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ButtonContainingCollectionReusableView

- (_TtC16MusicApplication38ButtonContainingCollectionReusableView)initWithCoder:(id)a3
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

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_3A92A0(v4);

  return v6;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3A8A24();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  v2 = v7.receiver;
  [(ButtonContainingCollectionReusableView *)&v7 tintColorDidChange];
  v3 = [v2 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
    [v5 setTitleColor:v3 forState:0];
    v6 = [v4 colorWithAlphaComponent:0.2];
    [v5 setTitleColor:v6 forState:1];
  }

  else
  {
    __break(1u);
  }
}

@end