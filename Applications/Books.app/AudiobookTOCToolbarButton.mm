@interface AudiobookTOCToolbarButton
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)tintColorDidChange;
@end

@implementation AudiobookTOCToolbarButton

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  [(AudiobookTOCToolbarButton *)&v6 setImage:a3 forState:a4];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  v2 = v5.receiver;
  [(AudiobookTOCToolbarButton *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView];
  v4 = [v2 tintColor];
  [v3 setTintColor:v4];
}

@end