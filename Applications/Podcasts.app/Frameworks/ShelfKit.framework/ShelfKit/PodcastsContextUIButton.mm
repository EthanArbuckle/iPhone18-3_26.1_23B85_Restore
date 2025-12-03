@interface PodcastsContextUIButton
- (NSArray)accessibilityCustomActions;
- (_TtC8ShelfKit23PodcastsContextUIButton)initWithCoder:(id)coder;
- (_TtC8ShelfKit23PodcastsContextUIButton)initWithFrame:(CGRect)frame;
- (void)setAccessibilityCustomActions:(id)actions;
@end

@implementation PodcastsContextUIButton

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
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

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_36174(0, &qword_501A08);
    sub_3ED584();
    selfCopy = self;
    isa = sub_3ED574().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for PodcastsContextUIButton();
  [(PodcastsContextUIButton *)&v7 setAccessibilityCustomActions:isa];
}

- (_TtC8ShelfKit23PodcastsContextUIButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PodcastsContextUIButton();
  return [(PodcastsContextUIButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8ShelfKit23PodcastsContextUIButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PodcastsContextUIButton();
  coderCopy = coder;
  v5 = [(PodcastsContextUIButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end