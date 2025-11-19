@interface CSSubtitleDisclosureTableCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CSSubtitleDisclosureTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_valueLabelForSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CSSubtitleDisclosureTableCell

- (CSSubtitleDisclosureTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = CSSubtitleDisclosureTableCell;
  v9 = [(CSSubtitleDisclosureTableCell *)&v16 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(CSSubtitleDisclosureTableCell *)v9 _valueLabelForSpecifier:v8];
    v11 = +[UIApplication sharedApplication];
    v12 = [v11 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

    if (IsAccessibilityCategory)
    {
      v15.receiver = v10;
      v15.super_class = CSSubtitleDisclosureTableCell;
      [(CSSubtitleDisclosureTableCell *)&v15 layoutSubviews];
    }
  }

  return v10;
}

- (void)_valueLabelForSpecifier:(id)a3
{
  if (!a3)
  {
    return;
  }

  v4 = [a3 propertyForKey:PSTableCellSubtitleTextKey];
  v5 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
  [v5 setText:v4];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v7 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
  [v7 setFont:v6];

  v8 = [(CSSubtitleDisclosureTableCell *)self value];
  valueLabel = self->_valueLabel;
  v24 = v8;
  if (!valueLabel)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_9:
    v13 = [v8 length];
    v14 = self->_valueLabel;
    if (v13)
    {
      if (!v14)
      {
        v15 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:&stru_210B8];
        v16 = [v15 detailTextLabel];

        v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        v18 = self->_valueLabel;
        self->_valueLabel = v17;

        v19 = [v16 font];
        [(UILabel *)self->_valueLabel setFont:v19];

        v20 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
        v21 = [v20 textColor];
        [(UILabel *)self->_valueLabel setTextColor:v21];

        -[UILabel setNumberOfLines:](self->_valueLabel, "setNumberOfLines:", [v16 numberOfLines]);
        -[UILabel setLineBreakMode:](self->_valueLabel, "setLineBreakMode:", [v16 lineBreakMode]);
        v22 = [(CSSubtitleDisclosureTableCell *)self contentView];
        [v22 addSubview:self->_valueLabel];

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

  v10 = [(UILabel *)valueLabel text];
  v8 = v24;
  v11 = v10;
  if (v24 != v10)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v12 = [v24 isEqualToString:v10];
    v8 = v24;
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
    v4 = [(CSSubtitleDisclosureTableCell *)self layoutManager];
    [v4 contentRectForCell:self forState:0];
    v6 = v5;
    v8 = v7;

    [(UILabel *)self->_valueLabel frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CSSubtitleDisclosureTableCell *)self _shouldReverseLayoutDirection];
    v16 = [(CSSubtitleDisclosureTableCell *)self traitCollection];
    v17 = [v16 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

    if (IsAccessibilityCategory)
    {
      v19 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [v19 frame];
      MaxX = v20;
      if (v15)
      {
        MaxX = CGRectGetMaxX(*&v20);
      }

      v25 = self->_valueLabel;
      v26 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [v26 frame];
      [(UILabel *)v25 sizeThatFits:CGRectGetWidth(v75), 1.79769313e308];
      v28 = v27;
      v30 = v29;

      if (v15)
      {
        MaxX = MaxX - v28;
      }

      v31 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [v31 frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v76.origin.x = MaxX;
      v76.origin.y = v10;
      v76.size.width = v28;
      v76.size.height = v30;
      v40 = v35 - CGRectGetHeight(v76) * 0.5;
      v41 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [v41 setFrame:{v33, v40, v37, v39}];

      v42 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [v42 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v77.origin.x = MaxX;
      v77.origin.y = v10;
      v77.size.width = v28;
      v77.size.height = v30;
      v51 = v46 - CGRectGetHeight(v77) * 0.5;
      v52 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [v52 setFrame:{v44, v51, v48, v50}];

      v53 = [(CSSubtitleDisclosureTableCell *)self detailTextLabel];
      [v53 frame];
      MaxY = CGRectGetMaxY(v78);

      [(UILabel *)self->_valueLabel setFrame:MaxX, MaxY, v28, v30];
    }

    else
    {
      if (v15)
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
      v58 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [v58 frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v73 = v62;
      if (v15)
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
        if (v15)
        {
          v71 = v70;
        }

        else
        {
          v71 = v60;
        }

        v72 = [(CSSubtitleDisclosureTableCell *)self textLabel];
        [v72 setFrame:{v71, v73, v69, v66}];
      }
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSSubtitleDisclosureTableCell;
  v4 = a3;
  [(CSSubtitleDisclosureTableCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(CSSubtitleDisclosureTableCell *)self _valueLabelForSpecifier:v4, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v17.receiver = self;
  v17.super_class = CSSubtitleDisclosureTableCell;
  [(CSSubtitleDisclosureTableCell *)&v17 sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = [(CSSubtitleDisclosureTableCell *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v11))
  {
    valueLabel = self->_valueLabel;

    if (valueLabel)
    {
      v13 = [(CSSubtitleDisclosureTableCell *)self textLabel];
      [v13 frame];
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