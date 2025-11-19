@interface LPVerticalTextStackViewStyle
- (LPVerticalTextStackViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5;
- (void)applyToAllTextViewStyles:(id)a3;
- (void)applyToLowerTextRowStyles:(id)a3;
@end

@implementation LPVerticalTextStackViewStyle

- (LPVerticalTextStackViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5
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
  v13 = topCaptionFont(a3, a4);
  v14 = [[LPTextRowStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
  aboveTopCaption = v8->_aboveTopCaption;
  v8->_aboveTopCaption = v14;

  v16 = [(LPTextRowStyle *)v8->_aboveTopCaption leading];
  [v16 setFont:v13];

  v17 = [(LPTextRowStyle *)v8->_aboveTopCaption trailing];
  [v17 setFont:v13];

  v18 = [[LPTextRowStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
  topCaption = v8->_topCaption;
  v8->_topCaption = v18;

  v20 = [(LPTextRowStyle *)v8->_topCaption leading];
  [v20 setFont:v13];

  v21 = [(LPTextRowStyle *)v8->_topCaption trailing];
  [v21 setFont:v13];

  v22 = bottomCaptionFont(a3, a4);
  v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v24 = [[LPTextRowStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
  bottomCaption = v8->_bottomCaption;
  v8->_bottomCaption = v24;

  v26 = [(LPTextRowStyle *)v8->_bottomCaption leading];
  [v26 setFont:v22];

  v27 = [(LPTextRowStyle *)v8->_bottomCaption trailing];
  [v27 setFont:v22];

  v28 = [(LPTextRowStyle *)v8->_bottomCaption leading];
  [v28 setColor:v23];

  v29 = [(LPTextRowStyle *)v8->_bottomCaption trailing];
  [v29 setColor:v23];

  v30 = [[LPTextRowStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
  belowBottomCaption = v8->_belowBottomCaption;
  v8->_belowBottomCaption = v30;

  v32 = [(LPTextRowStyle *)v8->_belowBottomCaption leading];
  [v32 setFont:v22];

  v33 = [(LPTextRowStyle *)v8->_belowBottomCaption trailing];
  [v33 setFont:v22];

  v34 = [(LPTextRowStyle *)v8->_belowBottomCaption leading];
  [v34 setColor:v23];

  v35 = [(LPTextRowStyle *)v8->_belowBottomCaption trailing];
  [v35 setColor:v23];

  if (a3 > 2)
  {
    if ((a3 - 3) >= 2)
    {
      if (a3 == 5)
      {
        v37 = [LPPointUnit alloc];
        if (a4 == 5)
        {
          v38 = 17.0;
        }

        else
        {
          v38 = 19.0;
        }

        goto LABEL_13;
      }

      if (a3 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  switch(a3)
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
      v39 = a5 * v38;
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

  v43 = outerHorizontalTextMargin(a3);
  [(LPPadding *)v8->_captionTextPadding setLeading:v43];

  v44 = outerHorizontalTextMargin(a3);
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

- (void)applyToAllTextViewStyles:(id)a3
{
  v4 = a3;
  [(LPTextRowStyle *)self->_aboveTopCaption applyToAllTextViewStyles:?];
  [(LPTextRowStyle *)self->_topCaption applyToAllTextViewStyles:v4];
  [(LPTextRowStyle *)self->_bottomCaption applyToAllTextViewStyles:v4];
  [(LPTextRowStyle *)self->_belowBottomCaption applyToAllTextViewStyles:v4];
}

- (void)applyToLowerTextRowStyles:(id)a3
{
  v4 = a3;
  v4[2](v4, self->_bottomCaption);
  v4[2](v4, self->_belowBottomCaption);
}

@end