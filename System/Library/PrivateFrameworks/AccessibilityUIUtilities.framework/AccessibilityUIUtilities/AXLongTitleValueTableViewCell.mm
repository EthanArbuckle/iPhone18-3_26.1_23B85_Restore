@interface AXLongTitleValueTableViewCell
- (AXLongTitleValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)iconImageViewGap;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation AXLongTitleValueTableViewCell

- (AXLongTitleValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = AXLongTitleValueTableViewCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    valueLabel = [(PSTableCell *)v5 valueLabel];
    [valueLabel setNumberOfLines:0];

    titleLabel = [(PSTableCell *)v6 titleLabel];
    [titleLabel setNumberOfLines:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = AXLongTitleValueTableViewCell;
  [(PSTableCell *)&v55 layoutSubviews];
  traitCollection = [(AXLongTitleValueTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    contentView = [(AXLongTitleValueTableViewCell *)self contentView];
    [contentView bounds];
    v8 = v7;
    v10 = v9;

    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    v12 = v11;
    if ([(AXLongTitleValueTableViewCell *)self accessoryType])
    {
      v12 = 0.0;
      if (AXProcessIsSetup())
      {
        [(AXLongTitleValueTableViewCell *)self defaultCellContentTrailingPadding];
        v12 = v13;
      }
    }

    specifier = [(PSTableCell *)self specifier];
    v15 = [specifier objectForKeyedSubscript:*MEMORY[0x1E69C5920]];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      specifier2 = [(PSTableCell *)self specifier];
      v18 = [specifier2 objectForKeyedSubscript:*MEMORY[0x1E69C5930]];
      if (v18)
      {
        v16 = 1;
      }

      else
      {
        specifier3 = [(PSTableCell *)self specifier];
        v20 = [specifier3 objectForKeyedSubscript:*MEMORY[0x1E69C5948]];
        v16 = v20 != 0;
      }
    }

    iconImageView = [(PSTableCell *)self iconImageView];
    v22 = iconImageView;
    v23 = 0.0;
    if (v16)
    {
      if (iconImageView)
      {
        [iconImageView frame];
        if (v24 != 0.0)
        {
          [v22 frame];
          v26 = v25;
          [(AXLongTitleValueTableViewCell *)self iconImageViewGap];
          v23 = v27 + v26;
        }
      }
    }

    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    v29 = v8 - v28 - v12 + -6.0 - v23;
    valueLabel = [(PSTableCell *)self valueLabel];
    v31 = v8;
    v32 = v12;
    [valueLabel sizeThatFits:{v29 * 0.5, v10}];
    v34 = v33;
    v36 = v35;

    titleLabel = [(PSTableCell *)self titleLabel];
    v38 = v10;
    [titleLabel sizeThatFits:{v29 - v34, v10}];
    v54 = v39;
    v41 = v40;

    valueLabel2 = [(PSTableCell *)self valueLabel];
    [valueLabel2 frame];

    titleLabel2 = [(PSTableCell *)self titleLabel];
    [titleLabel2 frame];
    v45 = v44;

    if ([(AXLongTitleValueTableViewCell *)self _shouldReverseLayoutDirection])
    {
      [(AXLongTitleValueTableViewCell *)self layoutMargins];
      v45 = v31 - v46 - v53 - v54;
    }

    else
    {
      v32 = v31 - v34 - v12;
    }

    v47 = (v38 - v36) * 0.5;
    v48 = floorf(v47);
    v49 = (v38 - v41) * 0.5;
    v50 = floorf(v49);
    valueLabel3 = [(PSTableCell *)self valueLabel];
    [valueLabel3 setFrame:{v32, v48, v34, v36}];

    titleLabel3 = [(PSTableCell *)self titleLabel];
    [titleLabel3 setFrame:{v45, v50, v54, v41}];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  specifier = [(PSTableCell *)self specifier];
  specifier2 = [specifier objectForKeyedSubscript:*MEMORY[0x1E69C5920]];
  if (!specifier2)
  {
    specifier2 = [(PSTableCell *)self specifier];
    v8 = [specifier2 objectForKeyedSubscript:*MEMORY[0x1E69C5930]];
    if (!v8)
    {
      specifier3 = [(PSTableCell *)self specifier];
      v13 = [specifier3 objectForKeyedSubscript:*MEMORY[0x1E69C5948]];

      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  iconImageView = [(PSTableCell *)self iconImageView];

  if (iconImageView)
  {
    traitCollection = [(AXLongTitleValueTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      valueLabel = [(PSTableCell *)self valueLabel];
      LODWORD(v13) = 1;
      [valueLabel setNumberOfLines:1];

      titleLabel = [(PSTableCell *)self titleLabel];
      [titleLabel setNumberOfLines:1];
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_10:
  v70.receiver = self;
  v70.super_class = AXLongTitleValueTableViewCell;
  [(AXLongTitleValueTableViewCell *)&v70 sizeThatFits:width, height];
  v17 = v16;
  v19 = v18;
  traitCollection2 = [(AXLongTitleValueTableViewCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v22 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (!v22)
  {
    contentView = [(AXLongTitleValueTableViewCell *)self contentView];
    [contentView sizeThatFits:{v17, v19}];
    v25 = v24;
    v27 = v26;

    v64 = 0;
    v65 = &v64;
    v66 = 0x4010000000;
    v67 = "";
    v28 = *(MEMORY[0x1E695F058] + 16);
    v68 = *MEMORY[0x1E695F058];
    v69 = v28;
    v29 = 0.0;
    if (v13)
    {
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __46__AXLongTitleValueTableViewCell_sizeThatFits___block_invoke;
      v59 = &unk_1E812E558;
      selfCopy = self;
      v61 = &v64;
      v62 = v25;
      v63 = v27;
      AXPerformSafeBlock();
      v30 = v65[6];
      if (v30 != 0.0)
      {
        [(AXLongTitleValueTableViewCell *)self iconImageViewGap:v56];
        v29 = v30 + v31;
      }

      v32 = [(PSTableCell *)self valueLabel:v56];
      [v32 setNumberOfLines:0];

      titleLabel2 = [(PSTableCell *)self titleLabel];
      [titleLabel2 setNumberOfLines:0];
    }

    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    v35 = v34;
    if ([(AXLongTitleValueTableViewCell *)self accessoryType])
    {
      v35 = 0.0;
      if (AXProcessIsSetup())
      {
        [(AXLongTitleValueTableViewCell *)self defaultCellContentTrailingPadding];
        v35 = v36;
      }
    }

    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    v38 = v37;
    valueLabel2 = [(PSTableCell *)self valueLabel];
    v40 = v25 - v38 - v35 + -6.0 - v29;
    [valueLabel2 sizeThatFits:{v40 * 0.5, v27}];
    v42 = v41;
    v44 = v43;

    titleLabel3 = [(PSTableCell *)self titleLabel];
    [titleLabel3 sizeThatFits:{v40 - v42, v27}];
    v47 = v46;

    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    v49 = v48;
    [(AXLongTitleValueTableViewCell *)self layoutMargins];
    if (v47 >= v44)
    {
      v51 = v47;
    }

    else
    {
      v51 = v44;
    }

    v52 = v51 + v49 + v50;
    if (v19 < v52)
    {
      v19 = v52;
    }

    _Block_object_dispose(&v64, 8);
  }

  v53 = v17;
  v54 = v19;
  result.height = v54;
  result.width = v53;
  return result;
}

uint64_t __46__AXLongTitleValueTableViewCell_sizeThatFits___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) imageRectForContentRect:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)iconImageViewGap
{
  traitCollection = [(AXLongTitleValueTableViewCell *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = AXLongTitleValueTableViewCell;
  accessibilityTraits = [(AXLongTitleValueTableViewCell *)&v14 accessibilityTraits];
  specifier = [(PSTableCell *)self specifier];
  v5 = [specifier propertyForKey:@"VOCommandContext"];

  specifier2 = [(PSTableCell *)self specifier];
  v7 = [specifier2 propertyForKey:@"command"];

  specifier3 = [(PSTableCell *)self specifier];
  v9 = [specifier3 propertyForKey:@"AXLongTitleValueTableViewCellButtonBoolKey"];
  bOOLValue = [v9 BOOLValue];

  if ([(PSTableCell *)self type]== 4 && ([(PSTableCell *)self cellEnabled]& bOOLValue) == 1)
  {
    if (v5 || (-[PSTableCell specifier](self, "specifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 detailControllerClass] | v7, v11, v12))
    {
      accessibilityTraits |= *MEMORY[0x1E69DD9B8];
    }
  }

  return accessibilityTraits;
}

@end