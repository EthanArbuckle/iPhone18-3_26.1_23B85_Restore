@interface LPVerticalTextStackViewStyle
- (LPVerticalTextStackViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor;
- (void)applyToAllTextViewStyles:(id)styles;
- (void)applyToLowerTextRowStyles:(id)styles;
@end

@implementation LPVerticalTextStackViewStyle

- (LPVerticalTextStackViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor
{
  v53.receiver = self;
  v53.super_class = LPVerticalTextStackViewStyle;
  v8 = [(LPVerticalTextStackViewStyle *)&v53 init];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = +[LPPointUnit zero];
  firstLineLeading = v8->_firstLineLeading;
  v8->_firstLineLeading = v9;

  v11 = +[LPPointUnit zero];
  lastLineDescent = v8->_lastLineDescent;
  v8->_lastLineDescent = v11;

  v8->_shouldAlignToBaselines = 1;
  v13 = topCaptionFont(platform, class);
  v14 = [[LPTextRowStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
  aboveTopCaption = v8->_aboveTopCaption;
  v8->_aboveTopCaption = v14;

  leading = [(LPTextRowStyle *)v8->_aboveTopCaption leading];
  [leading setFont:v13];

  trailing = [(LPTextRowStyle *)v8->_aboveTopCaption trailing];
  [trailing setFont:v13];

  v18 = [[LPTextRowStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
  topCaption = v8->_topCaption;
  v8->_topCaption = v18;

  leading2 = [(LPTextRowStyle *)v8->_topCaption leading];
  [leading2 setFont:v13];

  trailing2 = [(LPTextRowStyle *)v8->_topCaption trailing];
  [trailing2 setFont:v13];

  v22 = bottomCaptionFont(platform, class);
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v24 = [[LPTextRowStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
  bottomCaption = v8->_bottomCaption;
  v8->_bottomCaption = v24;

  leading3 = [(LPTextRowStyle *)v8->_bottomCaption leading];
  [leading3 setFont:v22];

  trailing3 = [(LPTextRowStyle *)v8->_bottomCaption trailing];
  [trailing3 setFont:v22];

  leading4 = [(LPTextRowStyle *)v8->_bottomCaption leading];
  [leading4 setColor:secondaryLabelColor];

  trailing4 = [(LPTextRowStyle *)v8->_bottomCaption trailing];
  [trailing4 setColor:secondaryLabelColor];

  v30 = [[LPTextRowStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
  belowBottomCaption = v8->_belowBottomCaption;
  v8->_belowBottomCaption = v30;

  leading5 = [(LPTextRowStyle *)v8->_belowBottomCaption leading];
  [leading5 setFont:v22];

  trailing5 = [(LPTextRowStyle *)v8->_belowBottomCaption trailing];
  [trailing5 setFont:v22];

  leading6 = [(LPTextRowStyle *)v8->_belowBottomCaption leading];
  [leading6 setColor:secondaryLabelColor];

  trailing6 = [(LPTextRowStyle *)v8->_belowBottomCaption trailing];
  [trailing6 setColor:secondaryLabelColor];

  if (platform > 2)
  {
    if ((platform - 3) >= 2)
    {
      if (platform == 5)
      {
        v37 = [LPPointUnit alloc];
        if (class == 5)
        {
          v38 = 17.0;
        }

        else
        {
          v38 = 19.0;
        }

        goto LABEL_13;
      }

      if (platform != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  switch(platform)
  {
    case 0:
LABEL_12:
      v37 = [LPPointUnit alloc];
      v38 = 18.0;
      goto LABEL_13;
    case 1:
LABEL_11:
      v37 = [LPPointUnit alloc];
      v39 = 14.0;
LABEL_14:
      v36 = [(LPPointUnit *)v37 initWithValue:v39];
      break;
    case 2:
      v37 = [LPPointUnit alloc];
      v38 = 12.5;
LABEL_13:
      v39 = factor * v38;
      goto LABEL_14;
  }

LABEL_15:
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __77__LPVerticalTextStackViewStyle_initWithPlatform_sizeClass_fontScalingFactor___block_invoke;
  v51[3] = &unk_1E7A36C48;
  v40 = v36;
  v52 = v40;
  [(LPVerticalTextStackViewStyle *)v8 applyToAllTextViewStyles:v51];
  v41 = objc_alloc_init(LPPadding);
  captionTextPadding = v8->_captionTextPadding;
  v8->_captionTextPadding = v41;

  v43 = outerHorizontalTextMargin(platform);
  [(LPPadding *)v8->_captionTextPadding setLeading:v43];

  v44 = outerHorizontalTextMargin(platform);
  [(LPPadding *)v8->_captionTextPadding setTrailing:v44];

  v45 = objc_alloc_init(LPPadding);
  emailCompatibleMargin = v8->_emailCompatibleMargin;
  v8->_emailCompatibleMargin = v45;

  if (!initWithPlatform_sizeClass_fontScalingFactor__emailCompatibleVerticalMargin)
  {
    v47 = [[LPPointUnit alloc] initWithValue:8.0];
    v48 = initWithPlatform_sizeClass_fontScalingFactor__emailCompatibleVerticalMargin;
    initWithPlatform_sizeClass_fontScalingFactor__emailCompatibleVerticalMargin = v47;
  }

  [(LPPadding *)v8->_emailCompatibleMargin setTop:?];
  [(LPPadding *)v8->_emailCompatibleMargin setBottom:initWithPlatform_sizeClass_fontScalingFactor__emailCompatibleVerticalMargin];
  v49 = v8;

LABEL_18:
  return v8;
}

- (void)applyToAllTextViewStyles:(id)styles
{
  stylesCopy = styles;
  [(LPTextRowStyle *)self->_aboveTopCaption applyToAllTextViewStyles:?];
  [(LPTextRowStyle *)self->_topCaption applyToAllTextViewStyles:stylesCopy];
  [(LPTextRowStyle *)self->_bottomCaption applyToAllTextViewStyles:stylesCopy];
  [(LPTextRowStyle *)self->_belowBottomCaption applyToAllTextViewStyles:stylesCopy];
}

- (void)applyToLowerTextRowStyles:(id)styles
{
  stylesCopy = styles;
  stylesCopy[2](stylesCopy, self->_bottomCaption);
  stylesCopy[2](stylesCopy, self->_belowBottomCaption);
}

@end