@interface AXLongTitleValueTableViewCell
- (AXLongTitleValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)iconImageViewGap;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation AXLongTitleValueTableViewCell

- (AXLongTitleValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = AXLongTitleValueTableViewCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 valueLabel];
    [v7 setNumberOfLines:0];

    v8 = [(PSTableCell *)v6 titleLabel];
    [v8 setNumberOfLines:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = AXLongTitleValueTableViewCell;
  [(PSTableCell *)&v55 layoutSubviews];
  v3 = [(AXLongTitleValueTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (!IsAccessibilityCategory)
  {
    v6 = [(AXLongTitleValueTableViewCell *)self contentView];
    [v6 bounds];
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

    v14 = [(PSTableCell *)self specifier];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69C5920]];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v17 = [(PSTableCell *)self specifier];
      v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69C5930]];
      if (v18)
      {
        v16 = 1;
      }

      else
      {
        v19 = [(PSTableCell *)self specifier];
        v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69C5948]];
        v16 = v20 != 0;
      }
    }

    v21 = [(PSTableCell *)self iconImageView];
    v22 = v21;
    v23 = 0.0;
    if (v16)
    {
      if (v21)
      {
        [v21 frame];
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
    v30 = [(PSTableCell *)self valueLabel];
    v31 = v8;
    v32 = v12;
    [v30 sizeThatFits:{v29 * 0.5, v10}];
    v34 = v33;
    v36 = v35;

    v37 = [(PSTableCell *)self titleLabel];
    v38 = v10;
    [v37 sizeThatFits:{v29 - v34, v10}];
    v54 = v39;
    v41 = v40;

    v42 = [(PSTableCell *)self valueLabel];
    [v42 frame];

    v43 = [(PSTableCell *)self titleLabel];
    [v43 frame];
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
    v51 = [(PSTableCell *)self valueLabel];
    [v51 setFrame:{v32, v48, v34, v36}];

    v52 = [(PSTableCell *)self titleLabel];
    [v52 setFrame:{v45, v50, v54, v41}];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PSTableCell *)self specifier];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C5920]];
  if (!v7)
  {
    v7 = [(PSTableCell *)self specifier];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C5930]];
    if (!v8)
    {
      v55 = [(PSTableCell *)self specifier];
      v13 = [v55 objectForKeyedSubscript:*MEMORY[0x1E69C5948]];

      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v9 = [(PSTableCell *)self iconImageView];

  if (v9)
  {
    v10 = [(AXLongTitleValueTableViewCell *)self traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

    if (IsAccessibilityCategory)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      v14 = [(PSTableCell *)self valueLabel];
      LODWORD(v13) = 1;
      [v14 setNumberOfLines:1];

      v15 = [(PSTableCell *)self titleLabel];
      [v15 setNumberOfLines:1];
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
  v20 = [(AXLongTitleValueTableViewCell *)self traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = UIContentSizeCategoryIsAccessibilityCategory(v21);

  if (!v22)
  {
    v23 = [(AXLongTitleValueTableViewCell *)self contentView];
    [v23 sizeThatFits:{v17, v19}];
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
      v60 = self;
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

      v33 = [(PSTableCell *)self titleLabel];
      [v33 setNumberOfLines:0];
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
    v39 = [(PSTableCell *)self valueLabel];
    v40 = v25 - v38 - v35 + -6.0 - v29;
    [v39 sizeThatFits:{v40 * 0.5, v27}];
    v42 = v41;
    v44 = v43;

    v45 = [(PSTableCell *)self titleLabel];
    [v45 sizeThatFits:{v40 - v42, v27}];
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
  v2 = [(AXLongTitleValueTableViewCell *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 3)
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
  v3 = [(AXLongTitleValueTableViewCell *)&v14 accessibilityTraits];
  v4 = [(PSTableCell *)self specifier];
  v5 = [v4 propertyForKey:@"VOCommandContext"];

  v6 = [(PSTableCell *)self specifier];
  v7 = [v6 propertyForKey:@"command"];

  v8 = [(PSTableCell *)self specifier];
  v9 = [v8 propertyForKey:@"AXLongTitleValueTableViewCellButtonBoolKey"];
  v10 = [v9 BOOLValue];

  if ([(PSTableCell *)self type]== 4 && ([(PSTableCell *)self cellEnabled]& v10) == 1)
  {
    if (v5 || (-[PSTableCell specifier](self, "specifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 detailControllerClass] | v7, v11, v12))
    {
      v3 |= *MEMORY[0x1E69DD9B8];
    }
  }

  return v3;
}

@end