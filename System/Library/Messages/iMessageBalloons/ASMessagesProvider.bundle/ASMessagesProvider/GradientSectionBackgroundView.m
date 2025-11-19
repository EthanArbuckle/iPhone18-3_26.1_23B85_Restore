@interface GradientSectionBackgroundView
- (_TtC18ASMessagesProvider29GradientSectionBackgroundView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider29GradientSectionBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GradientSectionBackgroundView

- (_TtC18ASMessagesProvider29GradientSectionBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for GradientSectionBackgroundView();
  v9 = [(GradientSectionBackgroundView *)&v11 initWithFrame:x, y, width, height];
  [(GradientSectionBackgroundView *)v9 addSubview:*(&v9->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView)];
  return v9;
}

- (_TtC18ASMessagesProvider29GradientSectionBackgroundView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  v2 = v4.receiver;
  [(GradientSectionBackgroundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  v2 = v4.receiver;
  [(GradientSectionBackgroundView *)&v4 prepareForReuse];
  sub_396E8();
  v3 = sub_76A000();
  [v2 setBackgroundColor:{v3, v4.receiver, v4.super_class}];
}

@end