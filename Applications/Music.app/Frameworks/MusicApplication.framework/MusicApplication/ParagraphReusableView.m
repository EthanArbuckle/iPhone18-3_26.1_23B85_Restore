@interface ParagraphReusableView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication21ParagraphReusableView)initWithCoder:(id)a3;
- (_TtC16MusicApplication21ParagraphReusableView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
@end

@implementation ParagraphReusableView

- (_TtC16MusicApplication21ParagraphReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16MusicApplication21ParagraphReusableView_paragraphView;
  type metadata accessor for ParagraphView();
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ParagraphReusableView *)&v12 initWithFrame:x, y, width, height];
  [(ParagraphReusableView *)v10 addSubview:*(&v10->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21ParagraphReusableView_paragraphView)];
  return v10;
}

- (_TtC16MusicApplication21ParagraphReusableView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MusicApplication21ParagraphReusableView_paragraphView;
  type metadata accessor for ParagraphView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_4CDE34(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4D1E1C();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ParagraphReusableView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

@end