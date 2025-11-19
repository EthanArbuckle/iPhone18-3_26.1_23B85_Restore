@interface ExpandableTextView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIColor)backgroundColor;
- (_TtC22SubscribePageExtension18ExpandableTextView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension18ExpandableTextView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)moreFrom:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ExpandableTextView

- (_TtC22SubscribePageExtension18ExpandableTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines) = 3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ExpandableTextView();
  [(ExpandableTextView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for ExpandableTextView();
  v18.receiver = self;
  v18.super_class = v8;
  v9 = self;
  [(ExpandableTextView *)&v18 frame];
  v11 = v10;
  v13 = v12;
  v17.receiver = v9;
  v17.super_class = v8;
  [(ExpandableTextView *)&v17 setFrame:x, y, width, height];
  [(ExpandableTextView *)v9 frame];
  if (v11 != v15 || v13 != v14)
  {
    sub_100260550();
  }
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ExpandableTextView();
  v2 = [(ExpandableTextView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExpandableTextView();
  v4 = a3;
  v5 = v10.receiver;
  [(ExpandableTextView *)&v10 setBackgroundColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  v7 = [v5 backgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
  v9 = [v5 backgroundColor];
  [v8 setBackgroundColor:v9];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002601F8();
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ExpandableTextView();
  v2 = v5.receiver;
  [(ExpandableTextView *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
  v4 = [v2 tintColor];
  [v3 setTitleColor:v4 forState:0];
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) measurementsWithFitting:a4 in:{a3.width, a3.height}];
  v8 = width;
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ExpandableTextView();
  v4 = a3;
  v5 = v6.receiver;
  [(ExpandableTextView *)&v6 traitCollectionDidChange:v4];
  sub_100260550();
}

- (void)moreFrom:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (_TtC22SubscribePageExtension18ExpandableTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end