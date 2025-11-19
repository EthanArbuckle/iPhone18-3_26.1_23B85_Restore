@interface MFQuickReplyExpandButton
+ (id)buttonWithType:(int64_t)a3;
- (id)_quickReplyExpandButtonPointerStyleInView:(id)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation MFQuickReplyExpandButton

+ (id)buttonWithType:(int64_t)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MFQuickReplyExpandButton;
  v3 = objc_msgSendSuper2(&v8, sel_buttonWithType_, a3);
  v4 = [MEMORY[0x1E69DCAB8] mf_symbolConfigurationForView:25];
  [v3 setPreferredSymbolConfiguration:v4 forImageInState:0];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.left.square"];
  [v3 setImage:v5 forState:0];

  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69ADBC0]];
  [v3 setShowsLargeContentViewer:1];
  v6 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
  [v3 addInteraction:v6];

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [(MFQuickReplyExpandButton *)self _quickReplyExpandButtonPointerStyleInView:self, a4];

  return v4;
}

- (id)_quickReplyExpandButtonPointerStyleInView:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DCD98];
  v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v7 = [v5 effectWithPreview:v6];

  [v4 frame];
  v8 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:?];
  v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v8];

  return v9;
}

@end