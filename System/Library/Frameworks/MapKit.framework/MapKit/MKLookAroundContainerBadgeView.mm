@interface MKLookAroundContainerBadgeView
- (MKLookAroundContainerBadgeView)initWithFrame:(CGRect)frame;
@end

@implementation MKLookAroundContainerBadgeView

- (MKLookAroundContainerBadgeView)initWithFrame:(CGRect)frame
{
  v63[3] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = MKLookAroundContainerBadgeView;
  v3 = [(MKLookAroundContainerBadgeView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKLookAroundContainerBadgeView *)v3 setAccessibilityIdentifier:@"LookAroundContainerBadge"];
    v59 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"binoculars.fill"];
    v5 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v59];
    v58 = v5;
    v6 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v6 isGlassEnabled];

    v8 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v10 = blackColor;
    v11 = 0.64;
    if (isGlassEnabled)
    {
      v12 = 16.0;
    }

    else
    {
      v11 = 0.5;
      v12 = 4.0;
    }

    if (isGlassEnabled)
    {
      v13 = 2.0;
    }

    else
    {
      v13 = 1.0;
    }

    if (isGlassEnabled)
    {
      v14 = MEMORY[0x1E69DDD40];
    }

    else
    {
      v14 = MEMORY[0x1E69DDD80];
    }

    if (isGlassEnabled)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = -2.0;
    }

    if (isGlassEnabled)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 6.0;
    }

    if (isGlassEnabled)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = -6.0;
    }

    if (isGlassEnabled)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 8.0;
    }

    v19 = [blackColor colorWithAlphaComponent:v11];
    [v8 setShadowColor:v19];

    [v8 setShadowBlurRadius:v12];
    v57 = v8;
    [v8 setShadowOffset:{0.0, v13}];
    v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
    v21 = [v20 mutableCopy];

    v22 = MEMORY[0x1E69DB878];
    v23 = *v14;
    v24 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v56 = [v22 preferredFontForTextStyle:v23 compatibleWithTraitCollection:v24];

    v25 = *MEMORY[0x1E69DB648];
    v62[0] = *MEMORY[0x1E69DB6A8];
    v62[1] = v25;
    v63[0] = v8;
    v63[1] = v56;
    v62[2] = *MEMORY[0x1E69DB650];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v63[2] = whiteColor;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
    v55 = v21;
    [v21 addAttributes:v27 range:{0, objc_msgSend(v21, "length")}];

    v28 = [_MKUILabel alloc];
    v29 = [(_MKUILabel *)v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    label = v4->_label;
    v4->_label = v29;

    [(_MKUILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v4->_label setAttributedText:v21];
    [(_MKUILabel *)v4->_label setTextAlignment:1];
    [(MKLookAroundContainerBadgeView *)v4 addSubview:v4->_label];
    [(_MKUILabel *)v4->_label systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
    v32 = v31;
    v34 = v33;
    v48 = MEMORY[0x1E696ACD8];
    topAnchor = [(_MKUILabel *)v4->_label topAnchor];
    topAnchor2 = [(MKLookAroundContainerBadgeView *)v4 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v15];
    v61[0] = v52;
    bottomAnchor = [(_MKUILabel *)v4->_label bottomAnchor];
    bottomAnchor2 = [(MKLookAroundContainerBadgeView *)v4 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v16];
    v61[1] = v49;
    leadingAnchor = [(_MKUILabel *)v4->_label leadingAnchor];
    leadingAnchor2 = [(MKLookAroundContainerBadgeView *)v4 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v17];
    v61[2] = v35;
    trailingAnchor = [(_MKUILabel *)v4->_label trailingAnchor];
    trailingAnchor2 = [(MKLookAroundContainerBadgeView *)v4 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v16];
    v61[3] = v38;
    widthAnchor = [(_MKUILabel *)v4->_label widthAnchor];
    v40 = [widthAnchor constraintEqualToConstant:v18 + v32];
    v61[4] = v40;
    heightAnchor = [(_MKUILabel *)v4->_label heightAnchor];
    v42 = [heightAnchor constraintEqualToConstant:v18 + v34];
    v61[5] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
    [v48 activateConstraints:v43];

    v44 = v4;
  }

  return v4;
}

@end