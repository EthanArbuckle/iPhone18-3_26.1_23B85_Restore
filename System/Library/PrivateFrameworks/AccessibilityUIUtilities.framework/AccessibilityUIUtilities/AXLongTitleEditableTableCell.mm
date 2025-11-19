@interface AXLongTitleEditableTableCell
- (AXLongTitleEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation AXLongTitleEditableTableCell

- (AXLongTitleEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = AXLongTitleEditableTableCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 titleLabel];
    [v7 setNumberOfLines:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AXLongTitleEditableTableCell;
  [(PSEditableTableCell *)&v47 layoutSubviews];
  v3 = [(PSTableCell *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(AXLongTitleEditableTableCell *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

    if (!IsAccessibilityCategory)
    {
      v9 = [(AXLongTitleEditableTableCell *)self editableTextField];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v48 = *MEMORY[0x1E69DB648];
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v49[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];

      v20 = [v9 text];
      [v20 sizeWithAttributes:v19];
      v22 = v21;

      if (v22 <= v15)
      {
        [v9 setAdjustsFontSizeToFitWidth:1];
      }

      else
      {
        v46 = v13;
        v23 = v22 - v15;
        v24 = [(AXLongTitleEditableTableCell *)self contentView];
        [v24 bounds];
        v26 = v25;
        v28 = v27;

        v29 = [(PSTableCell *)self titleLabel];
        [v29 frame];
        v31 = v30;
        v33 = v32;

        if (v33 - v23 >= v26 * 0.25)
        {
          v34 = v33 - v23;
        }

        else
        {
          v34 = v26 * 0.25;
        }

        [v9 setAdjustsFontSizeToFitWidth:0];
        v35 = v33 - v34;
        v36 = [(PSTableCell *)self titleLabel];
        [v36 sizeThatFits:{v34, v28}];
        v38 = v37;
        v40 = v39;

        v41 = (v28 - v40) * 0.5;
        v42 = floorf(v41);
        v43 = v15 + v35;
        if ([(AXLongTitleEditableTableCell *)self _shouldReverseLayoutDirection])
        {
          v31 = v31 + v35 + 8.0;
        }

        else
        {
          v11 = v11 - v35;
        }

        v44 = [(PSTableCell *)self titleLabel];
        [v44 setNumberOfLines:0];

        v45 = [(PSTableCell *)self titleLabel];
        [v45 setFrame:{v31, v42, v38, v40}];

        [v9 setFrame:{v11, v46, v43, v17}];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AXLongTitleEditableTableCell;
  [(AXLongTitleEditableTableCell *)&v40 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(PSTableCell *)self titleLabel];
  v9 = [v8 text];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(AXLongTitleEditableTableCell *)self traitCollection];
    v12 = [v11 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

    if (!IsAccessibilityCategory)
    {
      v14 = [(AXLongTitleEditableTableCell *)self contentView];
      [v14 sizeThatFits:{v5, v7}];
      v16 = v15;
      v18 = v17;

      [(AXLongTitleEditableTableCell *)self layoutMargins];
      v20 = v16 - v19;
      [(AXLongTitleEditableTableCell *)self layoutMargins];
      v22 = v20 - v21 + -8.0;
      v41 = *MEMORY[0x1E69DB648];
      v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v42[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];

      v25 = [(AXLongTitleEditableTableCell *)self editableTextField];
      v26 = [v25 text];
      [v26 sizeWithAttributes:v24];
      v28 = v27;
      v30 = v29;

      if (v22 - v28 >= v16 * 0.25)
      {
        v31 = v22 - v28;
      }

      else
      {
        v31 = v16 * 0.25;
      }

      v32 = [(PSTableCell *)self titleLabel];
      [v32 sizeThatFits:{v31, v18}];
      v34 = v33;

      if (v34 < v30)
      {
        v34 = v30;
      }

      [(AXLongTitleEditableTableCell *)self layoutMargins];
      v36 = v34 + v35;
      [(AXLongTitleEditableTableCell *)self layoutMargins];
      if (v7 < v36 + v37)
      {
        v7 = v36 + v37;
      }
    }
  }

  v38 = v5;
  v39 = v7;
  result.height = v39;
  result.width = v38;
  return result;
}

@end