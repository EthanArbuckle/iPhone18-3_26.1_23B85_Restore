@interface SiriGKDisambiguationHeader
- (CGSize)sizeThatFits:(CGSize)result;
- (UIEdgeInsets)_edgeInsets;
- (void)configureWithTitle:(id)title subtitle:(id)subtitle;
- (void)layoutSubviews;
@end

@implementation SiriGKDisambiguationHeader

- (UIEdgeInsets)_edgeInsets
{
  if (SiriUIIsCompactWidth())
  {
    v2 = SiriUIPlatterStyle[32];
  }

  else
  {
    v2 = 0.0;
  }

  if (SiriUIIsCompactWidth())
  {
    v3 = SiriUIPlatterStyle[34];
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v2;
  result.right = v3;
  result.bottom = v5;
  result.left = v6;
  result.top = v4;
  return result;
}

- (void)configureWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  if (!self->_topKeyline)
  {
    v7 = [SiriUIKeyline keylineWithKeylineType:2];
    topKeyline = self->_topKeyline;
    self->_topKeyline = v7;

    [(SiriGKDisambiguationHeader *)self addSubview:self->_topKeyline];
  }

  if (titleCopy | subtitleCopy)
  {
    if (!self->_titleLabel)
    {
      v9 = +[SiriSharedUIContentLabel label];
      titleLabel = self->_titleLabel;
      self->_titleLabel = v9;

      v11 = self->_titleLabel;
      v12 = [UIFont siriui_mediumWeightFontWithSize:14.0];
      [(SiriSharedUIContentLabel *)v11 setFont:v12];

      v13 = self->_titleLabel;
      v14 = +[UIColor siriui_textColor];
      [(SiriSharedUIContentLabel *)v13 setTextColor:v14];

      [(SiriGKDisambiguationHeader *)self addSubview:self->_titleLabel];
    }

    if (titleCopy)
    {
      v15 = titleCopy;
    }

    else
    {
      v15 = subtitleCopy;
    }

    [(SiriSharedUIContentLabel *)self->_titleLabel setText:v15];
  }

  v16 = +[SiriUIContentButton button];
  headerButton = self->_headerButton;
  self->_headerButton = v16;

  [(SiriGKDisambiguationHeader *)self addSubview:self->_headerButton];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = SiriUIPlatterStyle[26];
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = SiriGKDisambiguationHeader;
  [(SiriGKDisambiguationHeader *)&v36 layoutSubviews];
  [(SiriGKDisambiguationHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SiriGKDisambiguationHeader *)self _edgeInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  headerButton = self->_headerButton;
  [(SiriGKDisambiguationHeader *)self bounds];
  [(SiriUIContentButton *)headerButton setFrame:?];
  [(SiriUIKeyline *)self->_topKeyline frame];
  v21 = v20;
  [(SiriUIKeyline *)self->_topKeyline sizeThatFits:v16, v18];
  v23 = v22;
  v25 = v24;
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  [(SiriUIKeyline *)self->_topKeyline setFrame:CGRectGetMinX(v37), v21, v23, v25];
  if (self->_titleLabel)
  {
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    SiriUIRectForLabelWithDistanceFromTopToBaseline();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = SiriUIIsCompactWidth();
    v34 = SiriUIPlatterStyle[32];
    if (v33)
    {
      v34 = v28;
      v35 = v16;
    }

    else
    {
      v35 = v16 - (v34 + SiriUIPlatterStyle[34]);
    }

    [(SiriSharedUIContentLabel *)self->_titleLabel setFrame:v34, v30, v35, v32];
  }
}

@end