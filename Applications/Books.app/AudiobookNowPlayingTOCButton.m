@interface AudiobookNowPlayingTOCButton
- (NSString)accessibilityValue;
- (_TtC5Books28AudiobookNowPlayingTOCButton)initWithCoder:(id)a3;
- (void)setAccessibilityValue:(id)a3;
- (void)setHasSupplementalContent:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation AudiobookNowPlayingTOCButton

- (void)setHasSupplementalContent:(BOOL)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1002AD1E0();
  }
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  [(AudiobookNowPlayingTOCButton *)&v6 setImage:a3 forState:a4];
}

- (_TtC5Books28AudiobookNowPlayingTOCButton)initWithCoder:(id)a3
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
  v2 = self;
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

- (void)setAccessibilityValue:(id)a3
{
  if (a3)
  {
    sub_1007A2254();
    v4 = self;
    v5 = sub_1007A2214();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  [(AudiobookNowPlayingTOCButton *)&v7 setAccessibilityValue:v5];
}

@end