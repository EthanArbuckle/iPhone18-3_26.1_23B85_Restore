@interface AAUIMessageBubbleView
- (AAUIMessageBubbleView)initWithText:(id)a3;
- (id)_horizontalStackView;
- (id)_memoBalloonViewWithText:(id)a3;
- (void)_setupContentViewWithBubbleText:(id)a3;
@end

@implementation AAUIMessageBubbleView

- (AAUIMessageBubbleView)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIMessageBubbleView;
  v6 = [(AAUIMessageBubbleView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bubbleText, a3);
    [(AAUIMessageBubbleView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AAUIMessageBubbleView *)v7 _setupContentViewWithBubbleText:v5];
  }

  return v7;
}

- (void)_setupContentViewWithBubbleText:(id)a3
{
  v32[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = objc_alloc_init(AAUIProfilePictureStore);
  [(AAUIProfilePictureStore *)v31 setPictureDiameter:40.0];
  v5 = [(AAUIProfilePictureStore *)v31 profilePictureForAccountOwner];
  v30 = [v5 imageWithAlignmentRectInsets:{0.0, 0.0, 10.0, 0.0}];

  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v30];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:2];
  v7 = [(AAUIMessageBubbleView *)self _memoBalloonViewWithText:v4];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(AAUIMessageBubbleView *)self _horizontalStackView];
  v29 = v6;
  [v8 addArrangedSubview:v6];
  [v8 addArrangedSubview:v7];
  [(AAUIMessageBubbleView *)self addSubview:v8];
  [v7 prepareForDisplay];
  [v7 sizeThatFits:{200.0, 1.79769313e308}];
  v10 = v9;
  v12 = v11;
  v22 = MEMORY[0x1E696ACD8];
  v28 = [(AAUIMessageBubbleView *)self heightAnchor];
  v27 = [v28 constraintEqualToConstant:v12];
  v32[0] = v27;
  v26 = [v6 widthAnchor];
  v25 = [v26 constraintEqualToConstant:40.0];
  v32[1] = v25;
  v24 = [v7 topAnchor];
  v23 = [v8 topAnchor];
  v21 = [v24 constraintEqualToAnchor:v23 constant:10.0];
  v32[2] = v21;
  v13 = [v7 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v10];
  v32[3] = v14;
  v15 = [v7 heightAnchor];
  v16 = [v15 constraintEqualToConstant:v12 * 0.899999976];
  v32[4] = v16;
  v17 = [v8 centerXAnchor];
  v18 = [(AAUIMessageBubbleView *)self centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v32[5] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];
  [v22 activateConstraints:v20];
}

- (id)_memoBalloonViewWithText:(id)a3
{
  v4 = a3;
  gotLoadHelper_x26__OBJC_CLASS___CKUIBehavior(v5);
  v6 = [*(v3 + 3208) sharedBehaviors];
  gotLoadHelper_x8__OBJC_CLASS___CKTextBalloonView(v7);
  objc_opt_class();
  v9 = CKBalloonViewForClass_delayInitStub(v8);
  [v9 setHasTail:1];
  [v9 setBalloonCorners:-1];
  [v9 setColor:0xFFFFFFFFLL];
  [v9 setCanUseOpaqueMask:0];
  v10 = [*(v3 + 3208) sharedBehaviors];
  [v10 balloonCornerRadius];
  [v9 setCornerRadius:?];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
  if ([v6 hyphenatesTextContent])
  {
    v12 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v13 = [v12 mutableCopy];

    LODWORD(v14) = 1.0;
    [v13 setHyphenationFactor:v14];
    [v11 addAttribute:*MEMORY[0x1E69DB688] value:v13 range:{0, objc_msgSend(v11, "length")}];
  }

  v15 = [v11 length];
  if ([v4 __ck_shouldUseBigEmoji])
  {
    [v6 bigEmojiFont];
  }

  else
  {
    [v6 balloonTextFont];
  }
  v16 = ;
  [v11 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v15}];
  v17 = *MEMORY[0x1E69DB650];
  v18 = [*(v3 + 3208) sharedBehaviors];
  v19 = [v18 theme];
  v20 = [v19 balloonTextColorForColorType:{objc_msgSend(v9, "color")}];
  [v11 addAttribute:v17 value:v20 range:{0, v15}];

  [v9 setAttributedText:v11];
  [v9 setOrientation:0];

  return v9;
}

- (id)_horizontalStackView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAxis:0];
  [v2 setAlignment:4];
  [v2 setDistribution:0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setSpacing:20.0];

  return v2;
}

@end