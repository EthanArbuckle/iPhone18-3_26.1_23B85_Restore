@interface AudiobookNowPlayingTOCButton
- (NSString)accessibilityValue;
- (_TtC5Books28AudiobookNowPlayingTOCButton)initWithCoder:(id)coder;
- (void)setAccessibilityValue:(id)value;
- (void)setHasSupplementalContent:(BOOL)content;
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation AudiobookNowPlayingTOCButton

- (void)setHasSupplementalContent:(BOOL)content
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent) = content;
  if (v4 != content)
  {
    selfCopy = self;
    sub_1002AD1E0();
  }
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  [(AudiobookNowPlayingTOCButton *)&v6 setImage:image forState:state];
}

- (_TtC5Books28AudiobookNowPlayingTOCButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor) = 0;
  v3 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView;
  *(&self->super.super.super.super.super.isa + v3) = sub_1002AC700();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  sub_1002AD4CC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityValue:(id)value
{
  if (value)
  {
    sub_1007A2254();
    selfCopy = self;
    v5 = sub_1007A2214();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  [(AudiobookNowPlayingTOCButton *)&v7 setAccessibilityValue:v5];
}

@end