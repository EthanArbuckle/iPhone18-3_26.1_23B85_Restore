@interface CSSubtitleDisclosureTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSSubtitleDisclosureTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_valueLabelForSpecifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CSSubtitleDisclosureTableCell

- (CSSubtitleDisclosureTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = CSSubtitleDisclosureTableCell;
  v9 = [(CSSubtitleDisclosureTableCell *)&v16 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(CSSubtitleDisclosureTableCell *)v9 _valueLabelForSpecifier:specifierCopy];
    v11 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v11 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v15.receiver = v10;
      v15.super_class = CSSubtitleDisclosureTableCell;
      [(CSSubtitleDisclosureTableCell *)&v15 layoutSubviews];
    }
  }

  return v10;
}

- (void)_valueLabelForSpecifier:(id)specifier
{
  if (!specifier)
  {
    return;
  }

  v4 = [specifier propertyForKey:PSTableCellSubtitleTextKey];
  detailTextLabel = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
  [detailTextLabel setText:v4];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  detailTextLabel2 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
  [detailTextLabel2 setFont:v6];

  value = [(CSSubtitleDisclosureTableCell *)self value];
  valueLabel = self->_valueLabel;
  v24 = value;
  if (!valueLabel)
  {
    v11 = 0;
    if (!value)
    {
      goto LABEL_16;
    }

LABEL_9:
    v13 = [value length];
    v14 = self->_valueLabel;
    if (v13)
    {
      if (!v14)
      {
        v15 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:&stru_210B8];
        detailTextLabel3 = [v15 detailTextLabel];

        v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        v18 = self->_valueLabel;
        self->_valueLabel = v17;

        font = [detailTextLabel3 font];
        [(UILabel *)self->_valueLabel setFont:font];

        detailTextLabel4 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
        textColor = [detailTextLabel4 textColor];
        [(UILabel *)self->_valueLabel setTextColor:textColor];

        -[UILabel setNumberOfLines:](self->_valueLabel, "setNumberOfLines:", [detailTextLabel3 numberOfLines]);
        -[UILabel setLineBreakMode:](self->_valueLabel, "setLineBreakMode:", [detailTextLabel3 lineBreakMode]);
        contentView = [(CSSubtitleDisclosureTableCell *)self contentView];
        [contentView addSubview:self->_valueLabel];

        v14 = self->_valueLabel;
      }

      [(UILabel *)v14 setText:v24];
    }

    else
    {
      if (!v14)
      {
        goto LABEL_16;
      }

      [(UILabel *)v14 removeFromSuperview];
      v23 = self->_valueLabel;
      self->_valueLabel = 0;
    }

    [(CSSubtitleDisclosureTableCell *)self setNeedsLayout];
    goto LABEL_16;
  }

  text = [(UILabel *)valueLabel text];
  value = v24;
  v11 = text;
  if (v24 != text)
  {
    if (!text)
    {
      goto LABEL_9;
    }

    v12 = [v24 isEqualToString:text];
    value = v24;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
}

- (void)layoutSubviews
{
  v74.receiver = self;
  v74.super_class = CSSubtitleDisclosureTableCell;
  [(CSSubtitleDisclosureTableCell *)&v74 layoutSubviews];
  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel sizeToFit];
    layoutManager = [(CSSubtitleDisclosureTableCell *)self layoutManager];
    [layoutManager contentRectForCell:self forState:0];
    v6 = v5;
    v8 = v7;

    [(UILabel *)self->_valueLabel frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _shouldReverseLayoutDirection = [(CSSubtitleDisclosureTableCell *)self _shouldReverseLayoutDirection];
    traitCollection = [(CSSubtitleDisclosureTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      detailTextLabel = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [detailTextLabel frame];
      MaxX = v20;
      if (_shouldReverseLayoutDirection)
      {
        MaxX = CGRectGetMaxX(*&v20);
      }

      v25 = self->_valueLabel;
      textLabel = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [textLabel frame];
      [(UILabel *)v25 sizeThatFits:CGRectGetWidth(v75), 1.79769313e308];
      v28 = v27;
      v30 = v29;

      if (_shouldReverseLayoutDirection)
      {
        MaxX = MaxX - v28;
      }

      textLabel2 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [textLabel2 frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v76.origin.x = MaxX;
      v76.origin.y = v10;
      v76.size.width = v28;
      v76.size.height = v30;
      v40 = v35 - CGRectGetHeight(v76) * 0.5;
      textLabel3 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [textLabel3 setFrame:{v33, v40, v37, v39}];

      detailTextLabel2 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [detailTextLabel2 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v77.origin.x = MaxX;
      v77.origin.y = v10;
      v77.size.width = v28;
      v77.size.height = v30;
      v51 = v46 - CGRectGetHeight(v77) * 0.5;
      detailTextLabel3 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [detailTextLabel3 setFrame:{v44, v51, v48, v50}];

      detailTextLabel4 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [detailTextLabel4 frame];
      MaxY = CGRectGetMaxY(v78);

      [(UILabel *)self->_valueLabel setFrame:MaxX, MaxY, v28, v30];
    }

    else
    {
      if (_shouldReverseLayoutDirection)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v6 - v12;
      }

      v56 = (v8 - v14) * 0.5;
      v57 = floorf(v56);
      [(UILabel *)self->_valueLabel setFrame:v55, v57, v12, v14];
      textLabel4 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [textLabel4 frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v73 = v62;
      if (_shouldReverseLayoutDirection)
      {
        v79.origin.x = v55;
        v79.origin.y = v57;
        v79.size.width = v12;
        v79.size.height = v14;
        v57 = v62;
        v67 = CGRectGetMaxX(v79);
        v55 = v60;
        v12 = v64;
        v14 = v66;
      }

      else
      {
        v80.origin.x = v60;
        v80.origin.y = v62;
        v80.size.width = v64;
        v80.size.height = v66;
        v67 = CGRectGetMaxX(v80);
      }

      v81.origin.x = v55;
      v81.origin.y = v57;
      v81.size.width = v12;
      v81.size.height = v14;
      v68 = v67 - CGRectGetMinX(v81) + 10.0;
      if (v68 > 0.0)
      {
        v69 = v64 - v68;
        v70 = v60 + v68;
        if (_shouldReverseLayoutDirection)
        {
          v71 = v70;
        }

        else
        {
          v71 = v60;
        }

        textLabel5 = [(CSSubtitleDisclosureTableCell *)self textLabel];
        [textLabel5 setFrame:{v71, v73, v69, v66}];
      }
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = CSSubtitleDisclosureTableCell;
  specifierCopy = specifier;
  [(CSSubtitleDisclosureTableCell *)&v5 refreshCellContentsWithSpecifier:specifierCopy];
  [(CSSubtitleDisclosureTableCell *)self _valueLabelForSpecifier:specifierCopy, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v17.receiver = self;
  v17.super_class = CSSubtitleDisclosureTableCell;
  [(CSSubtitleDisclosureTableCell *)&v17 sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  traitCollection = [(CSSubtitleDisclosureTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    valueLabel = self->_valueLabel;

    if (valueLabel)
    {
      textLabel = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [textLabel frame];
      CGRectGetMinX(v19);

      [(UILabel *)self->_valueLabel sizeThatFits:width, height];
      v9 = v9 + v14;
    }
  }

  else
  {
  }

  v15 = v7;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

@end