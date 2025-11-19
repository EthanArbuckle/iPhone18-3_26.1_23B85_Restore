@interface PodcastsContextUIButton
- (NSArray)accessibilityCustomActions;
- (_TtC8ShelfKit23PodcastsContextUIButton)initWithCoder:(id)a3;
- (_TtC8ShelfKit23PodcastsContextUIButton)initWithFrame:(CGRect)a3;
- (void)setAccessibilityCustomActions:(id)a3;
@end

@implementation PodcastsContextUIButton

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  sub_32905C();
  v4 = v3;

  if (v4)
  {
    sub_36174(0, &qword_501A08);
    v5.super.isa = sub_3ED574().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setAccessibilityCustomActions:(id)a3
{
  isa = a3;
  if (a3)
  {
    sub_36174(0, &qword_501A08);
    sub_3ED584();
    v5 = self;
    isa = sub_3ED574().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for PodcastsContextUIButton();
  [(PodcastsContextUIButton *)&v7 setAccessibilityCustomActions:isa];
}

- (_TtC8ShelfKit23PodcastsContextUIButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PodcastsContextUIButton();
  return [(PodcastsContextUIButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8ShelfKit23PodcastsContextUIButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PodcastsContextUIButton();
  v4 = a3;
  v5 = [(PodcastsContextUIButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end