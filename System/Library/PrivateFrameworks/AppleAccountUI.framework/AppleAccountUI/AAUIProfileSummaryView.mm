@interface AAUIProfileSummaryView
+ (double)desiredHeight;
- (AAUIProfileSummaryView)initWithName:(id)a3 email:(id)a4 image:(id)a5;
- (void)layoutSubviews;
- (void)setHidesPhoto:(BOOL)a3;
@end

@implementation AAUIProfileSummaryView

- (AAUIProfileSummaryView)initWithName:(id)a3 email:(id)a4 image:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = AAUIProfileSummaryView;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(AAUIProfileSummaryView *)&v35 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    profileImageView = v15->_profileImageView;
    v15->_profileImageView = v16;

    [(AAUIProfileSummaryView *)v15 addSubview:v15->_profileImageView];
    v18 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
    if ([v8 length])
    {
      v19 = v8;
    }

    else
    {
      v19 = v9;
    }

    v20 = MEMORY[0x1E69DCC10];
    v21 = v19;
    v22 = [[v20 alloc] initWithFrame:{v11, v12, v13, v14}];
    nameLabel = v15->_nameLabel;
    v15->_nameLabel = v22;

    [(UILabel *)v15->_nameLabel setText:v21];
    v24 = v15->_nameLabel;
    v25 = MEMORY[0x1E69DB878];
    [v18 scaledValueForValue:20.0];
    v26 = [v25 boldSystemFontOfSize:?];
    [(UILabel *)v24 setFont:v26];

    [(UILabel *)v15->_nameLabel setNumberOfLines:1];
    [(AAUIProfileSummaryView *)v15 addSubview:v15->_nameLabel];
    v27 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    emailLabel = v15->_emailLabel;
    v15->_emailLabel = v27;

    [(UILabel *)v15->_emailLabel setText:v9];
    v29 = v15->_emailLabel;
    v30 = MEMORY[0x1E69DB878];
    [v18 scaledValueForValue:15.0];
    v31 = [v30 systemFontOfSize:?];
    [(UILabel *)v29 setFont:v31];

    [(UILabel *)v15->_emailLabel setNumberOfLines:1];
    v32 = v15->_emailLabel;
    v33 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v32 setTextColor:v33];

    [(AAUIProfileSummaryView *)v15 addSubview:v15->_emailLabel];
  }

  return v15;
}

- (void)setHidesPhoto:(BOOL)a3
{
  if (self->_hidesPhoto != a3)
  {
    if (a3)
    {
      [(UIImageView *)self->_profileImageView removeFromSuperview];
    }

    else
    {
      [(AAUIProfileSummaryView *)self addSubview:self->_profileImageView];
    }
  }
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = AAUIProfileSummaryView;
  [(AAUIProfileSummaryView *)&v39 layoutSubviews];
  v3 = [(AAUIProfileSummaryView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(AAUIProfileSummaryView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = (isKindOfClass ^ 1) & IsAccessibilityCategory;
  [(UIImageView *)self->_profileImageView frame];
  v10 = v9;
  v12 = v11;
  [(AAUIProfileSummaryView *)self frame];
  UIRoundToViewScale();
  if (v8)
  {
    [(AAUIProfileSummaryView *)self frame];
    UIRectCenteredXInRect();
LABEL_5:
    v19 = v14;
    v18 = v15;
    v10 = v16;
    v12 = v17;
    goto LABEL_6;
  }

  v18 = v13 + self->_topPadding;
  if (IsAccessibilityCategory)
  {
    [(AAUIProfileSummaryView *)self frame];
    UIRectCenteredYInRect();
    goto LABEL_5;
  }

  v19 = 15.0;
  if ([(AAUIProfileSummaryView *)self _shouldReverseLayoutDirection])
  {
    [(AAUIProfileSummaryView *)self bounds];
    v19 = v30 + -15.0 - v10;
  }

LABEL_6:
  [(UIImageView *)self->_profileImageView setFrame:v19, v18, v10, v12];
  [(UILabel *)self->_nameLabel sizeToFit];
  [(UILabel *)self->_nameLabel frame];
  v21 = v20;
  v38 = v19;
  if (v8)
  {
    v40.origin.x = v19;
    v40.origin.y = v18;
    v40.size.width = v10;
    v40.size.height = v12;
    CGRectGetMaxY(v40);
    [(AAUIProfileSummaryView *)self frame];
    [(AAUIProfileSummaryView *)self frame];
    UIRectCenteredXInRect();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v21 = v28;
  }

  else
  {
    v25 = self->_topPadding + 18.0;
    if (([(AAUIProfileSummaryView *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      [(AAUIProfileSummaryView *)self bounds];
      v27 = v29 - v10 + -30.0;
      v23 = v19 + -15.0 - v27;
    }

    else
    {
      v23 = v10 + v19 + 15.0;
      [(AAUIProfileSummaryView *)self frame];
      v27 = v31 - v23;
    }
  }

  [(UILabel *)self->_nameLabel setFrame:v23, v25, v27, v21];
  [(UILabel *)self->_emailLabel sizeToFit];
  [(UILabel *)self->_emailLabel frame];
  UIRoundToViewScale();
  if (v8)
  {
    v41.origin.x = v23;
    v41.origin.y = v25;
    v41.size.width = v27;
    v41.size.height = v21;
    CGRectGetMaxY(v41);
    [(AAUIProfileSummaryView *)self frame];
    [(AAUIProfileSummaryView *)self frame];
    UIRectCenteredXInRect();
    v23 = v33;
    v35 = v34;
    v36 = 1;
  }

  else
  {
    v35 = v32;
    if (([(AAUIProfileSummaryView *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      [(AAUIProfileSummaryView *)self bounds];
      v23 = v38 + -15.0 - (v37 - v10 + -30.0);
    }

    else
    {
      [(AAUIProfileSummaryView *)self frame];
    }

    v36 = 4;
  }

  [(UILabel *)self->_emailLabel setFrame:v23, v35];
  [(UILabel *)self->_nameLabel setTextAlignment:v36];
  [(UILabel *)self->_emailLabel setTextAlignment:v36];
}

+ (double)desiredHeight
{
  v2 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  if (!IsAccessibilityCategory)
  {
    return 81.0;
  }

  v4 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = MEMORY[0x1E69DB878];
  [v4 scaledValueForValue:20.0];
  v6 = [v5 systemFontOfSize:?];
  v7 = MEMORY[0x1E69DB878];
  [v4 scaledValueForValue:15.0];
  v8 = [v7 systemFontOfSize:?];
  [v6 _bodyLeading];
  v10 = v9 + 60.0;
  [v8 _bodyLeading];
  v12 = v10 + v11;

  return v12;
}

@end