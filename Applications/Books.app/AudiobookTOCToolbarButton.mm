@interface AudiobookTOCToolbarButton
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)tintColorDidChange;
@end

@implementation AudiobookTOCToolbarButton

- (void)setImage:(id)image forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  [(AudiobookTOCToolbarButton *)&v6 setImage:image forState:state];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  v2 = v5.receiver;
  [(AudiobookTOCToolbarButton *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView];
  tintColor = [v2 tintColor];
  [v3 setTintColor:tintColor];
}

@end