@interface SRUserUtteranceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRUserUtteranceView)initWithFrame:(CGRect)frame;
- (double)_indentWidth;
- (double)_scaledSiriTapToEditViewLeading;
- (double)_streamingTextMaxYToTapToEditOriginDistance;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (void)layoutSubviews;
- (void)setBlendEffectEnabled:(BOOL)enabled;
- (void)setChevronHidden:(BOOL)hidden;
- (void)setText:(id)text;
@end

@implementation SRUserUtteranceView

- (SRUserUtteranceView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = SRUserUtteranceView;
  v7 = [(SRUserUtteranceView *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [[SUICStreamingTextView alloc] initWithFrame:{x, y, width, height}];
    streamingTextView = v7->_streamingTextView;
    v7->_streamingTextView = v8;

    v10 = v7->_streamingTextView;
    v11 = +[UIFont siriui_userUtteranceFont];
    [(SUICStreamingTextView *)v10 setFont:v11];

    [(SUICStreamingTextView *)v7->_streamingTextView setAnimationDuration:0.3];
    v12 = v7->_streamingTextView;
    SiriUITextHyphenationFactor();
    [(SUICStreamingTextView *)v12 setHyphenationFactor:?];
    [(SRUserUtteranceView *)v7 addSubview:v7->_streamingTextView];
    height = [[SRTapToEditView alloc] initWithFrame:x, y, width, height];
    tapToEditView = v7->_tapToEditView;
    v7->_tapToEditView = height;

    [(SRUserUtteranceView *)v7 addSubview:v7->_tapToEditView];
    [(SRTapToEditView *)v7->_tapToEditView setHidden:1];
    v15 = SiriUIDefaultEdgePadding;
    v7->_edgeInsets.top = 0.0;
    v7->_edgeInsets.leading = v15;
    v7->_edgeInsets.bottom = 0.0;
    v7->_edgeInsets.trailing = v15;
    [(SRUserUtteranceView *)v7 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  }

  return v7;
}

- (void)setChevronHidden:(BOOL)hidden
{
  if (self->_blendEffectEnabled)
  {
    [(SRTapToEditView *)self->_tapToEditView setHidden:hidden];

    [(SRUserUtteranceView *)self setNeedsLayout];
  }
}

- (double)firstLineBaselineOffsetFromTop
{
  v2 = +[UIFont siriui_userUtteranceFont];
  [v2 ascender];
  v4 = v3;

  return v4;
}

- (double)baselineOffsetFromBottom
{
  v3 = +[UIFont siriui_userUtteranceFont];
  [v3 descender];
  v5 = v4;

  if (([(SRTapToEditView *)self->_tapToEditView isHidden]& 1) != 0)
  {
    return -v5;
  }

  tapToEditView = self->_tapToEditView;

  [(SRTapToEditView *)tapToEditView baselineOffsetFromBottom];
  return result;
}

- (void)setText:(id)text
{
  textCopy = text;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000768F0;
  v36 = sub_100076900;
  v37 = 0;
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:v5];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = v33[5];
    v33[5] = v7;

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_1000768F0;
    v30 = sub_100076900;
    v31 = 0;
    if (SiriUIIsTextInputEnabled())
    {
      v9 = [v6 length];
      if (v9 >= 0x8C)
      {
        v10 = 140;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = [v6 length];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100076908;
    v17 = &unk_100168860;
    v19 = &v22;
    v20 = &v26;
    v11 = v6;
    v18 = v11;
    v21 = &v32;
    [v11 enumerateSubstringsInRange:0 options:v10 usingBlock:{1027, &v14}];
    if (v27[5])
    {
      [v33[5] addObject:{v14, v15, v16, v17}];
    }

    if (![v33[5] count] && objc_msgSend(v11, "length"))
    {
      [v33[5] addObject:v11];
    }

    if (SiriUIIsTextInputEnabled() && [v11 length] >= 0x8D)
    {
      if (*(v23 + 24) == 1 && [v33[5] count] >= 2)
      {
        [v33[5] removeLastObject];
      }

      v12 = v33[5];
      v13 = [NSString stringWithFormat:@"…"];
      [v12 addObject:v13];
    }

    [(SUICStreamingTextView *)self->_streamingTextView setWords:v33[5]];
    [(SUICStreamingTextView *)self->_streamingTextView siriui_setBlendEffectEnabled:self->_blendEffectEnabled];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)setBlendEffectEnabled:(BOOL)enabled
{
  if (self->_blendEffectEnabled != enabled)
  {
    self->_blendEffectEnabled = enabled;
    if (enabled)
    {
      v4 = [SUICStreamingTextView alloc];
      [(SUICStreamingTextView *)self->_streamingTextView frame];
      v5 = [v4 initWithFrame:?];
      clonedStreamingTextView = self->_clonedStreamingTextView;
      self->_clonedStreamingTextView = v5;

      [(SUICStreamingTextView *)self->_clonedStreamingTextView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
      v7 = self->_clonedStreamingTextView;
      v8 = +[UIFont siriui_userUtteranceFont];
      [(SUICStreamingTextView *)v7 setFont:v8];

      [(SUICStreamingTextView *)self->_clonedStreamingTextView setAnimationDuration:0.0];
      v9 = self->_clonedStreamingTextView;
      SiriUITextHyphenationFactor();
      [(SUICStreamingTextView *)v9 setHyphenationFactor:?];
      v10 = self->_clonedStreamingTextView;
      words = [(SUICStreamingTextView *)self->_streamingTextView words];
      [(SUICStreamingTextView *)v10 setWords:words];

      [(SRUserUtteranceView *)self addSubview:self->_clonedStreamingTextView];
      streamingTextView = self->_streamingTextView;
      v13 = +[UIColor siriui_blendEffectColor];
      [(SUICStreamingTextView *)streamingTextView setEndTextColor:v13];

      [(SUICStreamingTextView *)self->_streamingTextView siriui_setBlendEffectEnabled:1];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100076DD0;
      v20[3] = &unk_100167010;
      v20[4] = self;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100076DE8;
      v19[3] = &unk_100168888;
      v19[4] = self;
      [UIView animateWithDuration:v20 animations:v19 completion:0.3];
      if ([(SRUserUtteranceView *)self isEditable])
      {
        [(SRTapToEditView *)self->_tapToEditView setHidden:0];
        [(SRTapToEditView *)self->_tapToEditView setAlpha:0.0];
        v17[4] = self;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100076E38;
        v18[3] = &unk_100167010;
        v18[4] = self;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100076E50;
        v17[3] = &unk_100168888;
        [UIView animateWithDuration:v18 animations:v17 completion:0.3];
      }
    }

    else
    {
      v14 = self->_streamingTextView;
      v15 = +[UIColor lightTextColor];
      [(SUICStreamingTextView *)v14 setEndTextColor:v15];

      v16 = self->_streamingTextView;

      [(SUICStreamingTextView *)v16 siriui_setBlendEffectEnabled:0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SRUserUtteranceView *)self _indentWidth];
  SiriUIUtteranceWidthForAvailableWidthAndInsets();
  [(SUICStreamingTextView *)self->_streamingTextView sizeThatFits:?];
  v7 = v6;
  if (![(SRTapToEditView *)self->_tapToEditView isHidden]|| self->_chevronHasBeenShown)
  {
    [(SRUserUtteranceView *)self _streamingTextMaxYToTapToEditOriginDistance];
    v9 = v7 + v8;
    [(SRTapToEditView *)self->_tapToEditView sizeThatFits:width, height];
    v7 = v9 + v10;
  }

  v11 = width;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SRUserUtteranceView;
  [(SRUserUtteranceView *)&v27 layoutSubviews];
  [(SRUserUtteranceView *)self bounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  CGRectGetWidth(v28);
  [(SRUserUtteranceView *)self _indentWidth];
  SiriUIUtteranceWidthForAvailableWidthAndInsets();
  v8 = v7;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v9 = CGRectGetHeight(v29);
  [(SUICStreamingTextView *)self->_streamingTextView sizeThatFits:v8, v9];
  v11 = v10;
  if (SiriLanguageIsRTL())
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v12 = CGRectGetWidth(v30) - v8 - self->_edgeInsets.leading;
    [(SRUserUtteranceView *)self _indentWidth];
    v14 = v12 - v13;
  }

  else
  {
    leading = self->_edgeInsets.leading;
    [(SRUserUtteranceView *)self _indentWidth];
    v14 = leading + v16;
  }

  [(SUICStreamingTextView *)self->_clonedStreamingTextView setFrame:v14, y, v8, v11];
  [(SUICStreamingTextView *)self->_streamingTextView setFrame:v14, y, v8, v11];
  if (([(SRTapToEditView *)self->_tapToEditView isHidden]& 1) == 0)
  {
    [(SRTapToEditView *)self->_tapToEditView sizeThatFits:v8, v9];
    v25 = v18;
    v26 = v17;
    v19 = v14;
    if (SiriLanguageIsRTL())
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v20 = CGRectGetWidth(v31);
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.height = v25;
      v32.size.width = v26;
      v21 = v20 - CGRectGetWidth(v32) - self->_edgeInsets.leading;
      [(SRUserUtteranceView *)self _indentWidth];
      v19 = v21 - v22;
    }

    v33.origin.x = v14;
    v33.origin.y = y;
    v33.size.width = v8;
    v33.size.height = v11;
    MaxY = CGRectGetMaxY(v33);
    [(SRUserUtteranceView *)self _streamingTextMaxYToTapToEditOriginDistance];
    [(SRTapToEditView *)self->_tapToEditView setFrame:v19, MaxY + v24, v26, v25];
  }
}

- (double)_streamingTextMaxYToTapToEditOriginDistance
{
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;
  [(SRUserUtteranceView *)self _scaledSiriTapToEditViewLeading];
  v7 = v6;
  font = [(SUICStreamingTextView *)self->_streamingTextView font];
  [font descender];
  v10 = v7 + v9;
  [(SRTapToEditView *)self->_tapToEditView firstLineBaselineOffsetFromTop];
  v12 = v10 - v11;
  v13 = floor(v12);
  if (v5 < 2.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  return v14;
}

- (double)_indentWidth
{
  v2 = 28.0;
  if ((SiriUIIsCompactWidth() & 1) == 0)
  {
    if (SiriUIIsCompactHeight())
    {
      return 28.0;
    }

    else
    {
      return 31.0;
    }
  }

  return v2;
}

- (double)_scaledSiriTapToEditViewLeading
{
  v2 = +[UIFont siriui_serverUtteranceCorrectionPromptFont];
  [v2 _scaledValueForValue:26.0];
  v4 = v3;

  return v4;
}

@end