@interface MailStatusLabelView
- (MailStatusLabelView)initWithFrame:(CGRect)a3;
- (NSAttributedString)secondaryLabelText;
- (UILabel)primaryLabel;
- (UILabel)secondaryLabel;
- (id)_titleFont;
- (id)newLabel:(id)a3;
- (id)preferredPrefixWithStatusInfo:(id)a3;
- (void)_updateBarItemTitle;
- (void)layoutSubviews;
- (void)setPrimaryLabelText:(id)a3 prefix:(id)a4 animated:(BOOL)a5;
- (void)setSecondaryLabelText:(id)a3 animated:(BOOL)a4;
- (void)setShouldShowLargeTitle:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePrimaryLabelAnimated:(BOOL)a3;
- (void)updateWithStatusInfo:(id)a3;
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
  v2 = [(MailStatusLabelView *)self shouldShowLargeTitle];
  v3 = &UIFontTextStyleSubheadline;
  if (!v2)
  {
    v3 = &UIFontTextStyleCaption1;
  }

  v4 = *v3;
  v5 = &UIContentSizeCategoryExtraLarge;
  if (!v2)
  {
    v5 = &UIContentSizeCategoryLarge;
  }

  v6 = [UIFont _preferredFontForTextStyle:v4 maximumContentSizeCategory:*v5];

  return v6;
}

- (void)_updateBarItemTitle
{
  delegate = self->_delegate;
  v4 = [(MailStatusLabelView *)self primaryLabel];
  v5 = [v4 attributedText];
  v6 = [v5 string];
  v7 = [(MailStatusLabelView *)self secondaryLabel];
  v8 = [v7 attributedText];
  v9 = [v8 string];
  [(MailStatusBarViewDelegate *)delegate updateBarItemTitle:v6 secondaryTitle:v9];

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
    v8 = [(MailStatusLabelView *)self primaryLabel];
    [v8 sizeToFit];

    v9 = [(MailStatusLabelView *)self secondaryLabel];
    [v9 sizeToFit];

    v10 = [(MailStatusLabelView *)self primaryLabel];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(MailStatusLabelView *)self secondaryLabel];
    [v19 frame];
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
    v29 = [(MailStatusLabelView *)self primaryLabel];
    v30 = [v29 text];
    [v30 length];

    v31 = [(MailStatusLabelView *)self secondaryLabel];
    v32 = [v31 text];
    [v32 length];

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
    v37 = [(MailStatusLabelView *)self primaryLabel];
    [v37 setFrame:{v27, v34, v16, v18}];

    v38 = [(MailStatusLabelView *)self secondaryLabel];
    [v38 setFrame:{v28, v36, v43, v25}];
  }
}

- (MailStatusLabelView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MailStatusLabelView;
  v3 = [(MailStatusLabelView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailStatusLabelView *)v3 setTextAlignment:1];
    [(MailStatusLabelView *)v4 setOpaque:0];
    [(MailStatusLabelView *)v4 setAutoresizingMask:18];
    if (MUISolariumFeatureEnabled())
    {
      [(MailStatusLabelView *)v4 setLayoutMargins:2.0, 0.0, 2.0, 0.0];
      v5 = [(MailStatusLabelView *)v4 primaryLabel];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

      v6 = [(MailStatusLabelView *)v4 primaryLabel];
      [(MailStatusLabelView *)v4 addSubview:v6];

      v7 = [(MailStatusLabelView *)v4 primaryLabel];
      [v7 mf_pinToView:v4 usingLayoutMargins:1];
    }
  }

  return v4;
}

- (void)setPrimaryLabelText:(id)a3 prefix:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  v9 = [(MailStatusLabelView *)self prefix];
  if (([v8 isEqualToString:v9] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [(MailStatusLabelView *)self primaryLabelText];
  v11 = [v12 isEqualToAttributedString:v10];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    [(MailStatusLabelView *)self setPrefix:v8];
    [(MailStatusLabelView *)self setPrimaryLabelText:v12];
    [(MailStatusLabelView *)self updatePrimaryLabelAnimated:v5];
  }
}

- (void)updatePrimaryLabelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(NSMutableAttributedString);
  v6 = [(MailStatusLabelView *)self prefix];
  if ([v6 length])
  {
    v7 = [(MailStatusLabelView *)self primaryLabelText];

    if (v7)
    {
      v8 = _EFLocalizedString();
      v9 = [(MailStatusLabelView *)self prefix];
      v10 = [(MailStatusLabelView *)self primaryLabelText];
      v11 = [v10 string];
      v12 = [NSString localizedStringWithFormat:v8, v9, v11];

      v13 = [[NSMutableAttributedString alloc] initWithString:v12];
      v14 = [(MailStatusLabelView *)self primaryLabelText];
      v15 = [v14 string];
      v16 = [v12 rangeOfString:v15];
      v18 = v17;

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [(MailStatusLabelView *)self primaryLabelText];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [(MailStatusLabelView *)self primaryLabelText];
          v22 = [v21 attributesAtIndex:0 effectiveRange:0];

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

  v23 = [(MailStatusLabelView *)self prefix];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [NSAttributedString alloc];
    v8 = [(MailStatusLabelView *)self prefix];
    v12 = [v25 initWithString:v8];
    [v5 appendAttributedString:v12];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v31 = [(MailStatusLabelView *)self primaryLabelText];

  if (v31)
  {
    v8 = [(MailStatusLabelView *)self primaryLabelText];
    [v5 appendAttributedString:v8];
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
  if (v3)
  {
    v28 = [(MailStatusLabelView *)self primaryLabel];
    [UIView transitionWithView:v28 duration:5242880 options:v27 animations:0 completion:0.4];
  }

  else
  {
    [UIView performWithoutAnimation:v27];
  }

  [(MailStatusLabelView *)self _updateBarItemTitle];
  v29 = [v26 length];
  v30 = [(MailStatusLabelView *)self primaryLabel];
  [v30 setHidden:v29 == 0];
}

- (void)setSecondaryLabelText:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MailStatusLabelView *)self secondaryLabel];
  v8 = [v7 attributedText];
  v9 = [v6 isEqualToAttributedString:v8];

  if ((v9 & 1) == 0)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100132DB8;
    v15 = &unk_10064C660;
    v16 = self;
    v17 = v6;
    v10 = objc_retainBlock(&v12);
    if (v4)
    {
      v11 = [(MailStatusLabelView *)self secondaryLabel:v12];
      [UIView transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.4];
    }

    else
    {
      [UIView performWithoutAnimation:v10, v12, v13, v14, v15, v16];
    }

    [(MailStatusLabelView *)self _updateBarItemTitle];
  }
}

- (void)setShouldShowLargeTitle:(BOOL)a3
{
  if (self->_shouldShowLargeTitle != a3)
  {
    self->_shouldShowLargeTitle = a3;
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
  v2 = [(MailStatusLabelView *)self secondaryLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (id)newLabel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UILabel);
  v6 = [(MailStatusLabelView *)self _titleFont];
  [v5 setFont:v6];

  [v5 setOpaque:0];
  [v5 setBackgroundColor:0];
  v7 = v4;
  if (!v4)
  {
    v7 = +[UIColor labelColor];
  }

  [v5 setTextColor:v7];
  if (!v4)
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

- (void)updateWithStatusInfo:(id)a3
{
  v5 = a3;
  [(MailStatusLabelView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailStatusLabelView updateWithStatusInfo:]", "MailStatusLabelView.m", 186, "0");
}

- (id)preferredPrefixWithStatusInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MailStatusLabelView *)self superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MailStatusLabelView *)self delegate];
      v7 = [v6 statusBarView:v5 preferredPrefixFromStatusInfo:v4];
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

- (void)traitCollectionDidChange:(id)a3
{
  sub_100132E74(self);

  [(MailStatusLabelView *)self setNeedsLayout];
}

@end