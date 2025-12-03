@interface MailStatusLabelView
- (MailStatusLabelView)initWithFrame:(CGRect)frame;
- (NSAttributedString)secondaryLabelText;
- (UILabel)primaryLabel;
- (UILabel)secondaryLabel;
- (id)_titleFont;
- (id)newLabel:(id)label;
- (id)preferredPrefixWithStatusInfo:(id)info;
- (void)_updateBarItemTitle;
- (void)layoutSubviews;
- (void)setPrimaryLabelText:(id)text prefix:(id)prefix animated:(BOOL)animated;
- (void)setSecondaryLabelText:(id)text animated:(BOOL)animated;
- (void)setShouldShowLargeTitle:(BOOL)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePrimaryLabelAnimated:(BOOL)animated;
- (void)updateWithStatusInfo:(id)info;
- (void)viewDidMoveToSuperview;
@end

@implementation MailStatusLabelView

- (UILabel)primaryLabel
{
  primaryLabel = self->_primaryLabel;
  if (!primaryLabel)
  {
    if (MUISolariumFeatureEnabled())
    {
      v4 = +[UIColor secondaryLabelColor];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(MailStatusLabelView *)self newLabel:v4];
    v6 = self->_primaryLabel;
    self->_primaryLabel = v5;

    primaryLabel = self->_primaryLabel;
  }

  return primaryLabel;
}

- (id)_titleFont
{
  shouldShowLargeTitle = [(MailStatusLabelView *)self shouldShowLargeTitle];
  v3 = &UIFontTextStyleSubheadline;
  if (!shouldShowLargeTitle)
  {
    v3 = &UIFontTextStyleCaption1;
  }

  v4 = *v3;
  v5 = &UIContentSizeCategoryExtraLarge;
  if (!shouldShowLargeTitle)
  {
    v5 = &UIContentSizeCategoryLarge;
  }

  v6 = [UIFont _preferredFontForTextStyle:v4 maximumContentSizeCategory:*v5];

  return v6;
}

- (void)_updateBarItemTitle
{
  delegate = self->_delegate;
  primaryLabel = [(MailStatusLabelView *)self primaryLabel];
  attributedText = [primaryLabel attributedText];
  string = [attributedText string];
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText2 = [secondaryLabel attributedText];
  string2 = [attributedText2 string];
  [(MailStatusBarViewDelegate *)delegate updateBarItemTitle:string secondaryTitle:string2];

  [(MailStatusLabelView *)self setNeedsLayout];
}

- (UILabel)secondaryLabel
{
  secondaryLabel = self->_secondaryLabel;
  if (!secondaryLabel)
  {
    v4 = +[UIColor systemGrayColor];
    v5 = [(MailStatusLabelView *)self newLabel:v4];
    v6 = self->_secondaryLabel;
    self->_secondaryLabel = v5;

    secondaryLabel = self->_secondaryLabel;
  }

  return secondaryLabel;
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = MailStatusLabelView;
  [(MailStatusLabelView *)&v45 layoutSubviews];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    [(MailStatusLabelView *)self frame];
    v4 = v3;
    v41 = v6;
    v42 = v5;
    rect = v7;
    primaryLabel = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel sizeToFit];

    secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel sizeToFit];

    primaryLabel2 = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel2 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    secondaryLabel2 = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel2 frame];
    v39 = v20;
    v43 = v21;
    v23 = v22;
    v25 = v24;

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100133274;
    v44[3] = &unk_1006511C0;
    v44[4] = self;
    *&v44[5] = v4;
    *&v44[6] = v42;
    *&v44[7] = v41;
    *&v44[8] = rect;
    v44[9] = 0;
    v26 = objc_retainBlock(v44);
    v27 = (v26[2])(v12, v14, v16, v18);
    v28 = (v26[2])(v26, v23, v39, v43, v25);
    primaryLabel3 = [(MailStatusLabelView *)self primaryLabel];
    text = [primaryLabel3 text];
    [text length];

    secondaryLabel3 = [(MailStatusLabelView *)self secondaryLabel];
    text2 = [secondaryLabel3 text];
    [text2 length];

    v46.origin.x = v4;
    v46.size.width = v41;
    v46.origin.y = v42;
    v46.size.height = rect;
    CGRectGetHeight(v46);
    UIRoundToViewScale();
    v34 = v33;
    v47.origin.x = v27;
    v47.origin.y = v34;
    v47.size.width = v16;
    v47.size.height = v18;
    CGRectGetMinY(v47);
    v48.origin.x = v28;
    v48.origin.y = v39;
    v48.size.width = v43;
    v48.size.height = v25;
    CGRectGetHeight(v48);
    UIRoundToViewScale();
    v36 = v35;
    primaryLabel4 = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel4 setFrame:{v27, v34, v16, v18}];

    secondaryLabel4 = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel4 setFrame:{v28, v36, v43, v25}];
  }
}

- (MailStatusLabelView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MailStatusLabelView;
  v3 = [(MailStatusLabelView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailStatusLabelView *)v3 setTextAlignment:1];
    [(MailStatusLabelView *)v4 setOpaque:0];
    [(MailStatusLabelView *)v4 setAutoresizingMask:18];
    if (MUISolariumFeatureEnabled())
    {
      [(MailStatusLabelView *)v4 setLayoutMargins:2.0, 0.0, 2.0, 0.0];
      primaryLabel = [(MailStatusLabelView *)v4 primaryLabel];
      [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      primaryLabel2 = [(MailStatusLabelView *)v4 primaryLabel];
      [(MailStatusLabelView *)v4 addSubview:primaryLabel2];

      primaryLabel3 = [(MailStatusLabelView *)v4 primaryLabel];
      [primaryLabel3 mf_pinToView:v4 usingLayoutMargins:1];
    }
  }

  return v4;
}

- (void)setPrimaryLabelText:(id)text prefix:(id)prefix animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  prefixCopy = prefix;
  prefix = [(MailStatusLabelView *)self prefix];
  if (([prefixCopy isEqualToString:prefix] & 1) == 0)
  {

    goto LABEL_5;
  }

  primaryLabelText = [(MailStatusLabelView *)self primaryLabelText];
  v11 = [textCopy isEqualToAttributedString:primaryLabelText];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    [(MailStatusLabelView *)self setPrefix:prefixCopy];
    [(MailStatusLabelView *)self setPrimaryLabelText:textCopy];
    [(MailStatusLabelView *)self updatePrimaryLabelAnimated:animatedCopy];
  }
}

- (void)updatePrimaryLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_alloc_init(NSMutableAttributedString);
  prefix = [(MailStatusLabelView *)self prefix];
  if ([prefix length])
  {
    primaryLabelText = [(MailStatusLabelView *)self primaryLabelText];

    if (primaryLabelText)
    {
      prefix4 = _EFLocalizedString();
      prefix2 = [(MailStatusLabelView *)self prefix];
      primaryLabelText2 = [(MailStatusLabelView *)self primaryLabelText];
      string = [primaryLabelText2 string];
      v12 = [NSString localizedStringWithFormat:prefix4, prefix2, string];

      v13 = [[NSMutableAttributedString alloc] initWithString:v12];
      primaryLabelText3 = [(MailStatusLabelView *)self primaryLabelText];
      string2 = [primaryLabelText3 string];
      v16 = [v12 rangeOfString:string2];
      v18 = v17;

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        primaryLabelText4 = [(MailStatusLabelView *)self primaryLabelText];
        v20 = [primaryLabelText4 length];

        if (v20)
        {
          primaryLabelText5 = [(MailStatusLabelView *)self primaryLabelText];
          v22 = [primaryLabelText5 attributesAtIndex:0 effectiveRange:0];

          if ([v22 count])
          {
            [v13 addAttributes:v22 range:{v16, v18}];
          }
        }
      }

      v5 = v13;
      goto LABEL_12;
    }
  }

  else
  {
  }

  prefix3 = [(MailStatusLabelView *)self prefix];
  v24 = [prefix3 length];

  if (v24)
  {
    v25 = [NSAttributedString alloc];
    prefix4 = [(MailStatusLabelView *)self prefix];
    v12 = [v25 initWithString:prefix4];
    [v5 appendAttributedString:v12];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  primaryLabelText6 = [(MailStatusLabelView *)self primaryLabelText];

  if (primaryLabelText6)
  {
    prefix4 = [(MailStatusLabelView *)self primaryLabelText];
    [v5 appendAttributedString:prefix4];
    goto LABEL_13;
  }

LABEL_14:
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100132BC4;
  v32[3] = &unk_10064C660;
  v32[4] = self;
  v26 = v5;
  v33 = v26;
  v27 = objc_retainBlock(v32);
  if (animatedCopy)
  {
    primaryLabel = [(MailStatusLabelView *)self primaryLabel];
    [UIView transitionWithView:primaryLabel duration:5242880 options:v27 animations:0 completion:0.4];
  }

  else
  {
    [UIView performWithoutAnimation:v27];
  }

  [(MailStatusLabelView *)self _updateBarItemTitle];
  v29 = [v26 length];
  primaryLabel2 = [(MailStatusLabelView *)self primaryLabel];
  [primaryLabel2 setHidden:v29 == 0];
}

- (void)setSecondaryLabelText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];
  v9 = [textCopy isEqualToAttributedString:attributedText];

  if ((v9 & 1) == 0)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100132DB8;
    v15 = &unk_10064C660;
    selfCopy = self;
    v17 = textCopy;
    v10 = objc_retainBlock(&v12);
    if (animatedCopy)
    {
      v11 = [(MailStatusLabelView *)self secondaryLabel:v12];
      [UIView transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.4];
    }

    else
    {
      [UIView performWithoutAnimation:v10, v12, v13, v14, v15, selfCopy];
    }

    [(MailStatusLabelView *)self _updateBarItemTitle];
  }
}

- (void)setShouldShowLargeTitle:(BOOL)title
{
  if (self->_shouldShowLargeTitle != title)
  {
    self->_shouldShowLargeTitle = title;
    sub_100132E74(self);
  }
}

- (void)viewDidMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MailStatusLabelView;
  [(MailStatusLabelView *)&v3 viewDidMoveToSuperview];
  [(MailStatusLabelView *)self _updateBarItemTitle];
}

- (NSAttributedString)secondaryLabelText
{
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];

  return attributedText;
}

- (id)newLabel:(id)label
{
  labelCopy = label;
  v5 = objc_alloc_init(UILabel);
  _titleFont = [(MailStatusLabelView *)self _titleFont];
  [v5 setFont:_titleFont];

  [v5 setOpaque:0];
  [v5 setBackgroundColor:0];
  v7 = labelCopy;
  if (!labelCopy)
  {
    v7 = +[UIColor labelColor];
  }

  [v5 setTextColor:v7];
  if (!labelCopy)
  {
  }

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 sizeToFit];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    [(MailStatusLabelView *)self addSubview:v5];
  }

  return v5;
}

- (void)updateWithStatusInfo:(id)info
{
  infoCopy = info;
  [(MailStatusLabelView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailStatusLabelView updateWithStatusInfo:]", "MailStatusLabelView.m", 186, "0");
}

- (id)preferredPrefixWithStatusInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    superview = [(MailStatusLabelView *)self superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(MailStatusLabelView *)self delegate];
      v7 = [delegate statusBarView:superview preferredPrefixFromStatusInfo:infoCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  sub_100132E74(self);

  [(MailStatusLabelView *)self setNeedsLayout];
}

@end