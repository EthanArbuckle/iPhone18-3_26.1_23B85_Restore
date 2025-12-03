@interface ExpandableTextView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIColor)backgroundColor;
- (_TtC22SubscribePageExtension18ExpandableTextView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension18ExpandableTextView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)moreFrom:(id)from;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ExpandableTextView

- (_TtC22SubscribePageExtension18ExpandableTextView)initWithCoder:(id)coder
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for ExpandableTextView();
  v18.receiver = self;
  v18.super_class = v8;
  selfCopy = self;
  [(ExpandableTextView *)&v18 frame];
  v11 = v10;
  v13 = v12;
  v17.receiver = selfCopy;
  v17.super_class = v8;
  [(ExpandableTextView *)&v17 setFrame:x, y, width, height];
  [(ExpandableTextView *)selfCopy frame];
  if (v11 != v15 || v13 != v14)
  {
    sub_100260550();
  }
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ExpandableTextView();
  backgroundColor = [(ExpandableTextView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExpandableTextView();
  colorCopy = color;
  v5 = v10.receiver;
  [(ExpandableTextView *)&v10 setBackgroundColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  backgroundColor = [v5 backgroundColor];
  [v6 setBackgroundColor:backgroundColor];

  v8 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
  backgroundColor2 = [v5 backgroundColor];
  [v8 setBackgroundColor:backgroundColor2];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002601F8();
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ExpandableTextView();
  v2 = v5.receiver;
  [(ExpandableTextView *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
  tintColor = [v2 tintColor];
  [v3 setTitleColor:tintColor forState:0];
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) measurementsWithFitting:in in:{fitting.width, fitting.height}];
  v8 = width;
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ExpandableTextView();
  changeCopy = change;
  v5 = v6.receiver;
  [(ExpandableTextView *)&v6 traitCollectionDidChange:changeCopy];
  sub_100260550();
}

- (void)moreFrom:(id)from
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (_TtC22SubscribePageExtension18ExpandableTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end