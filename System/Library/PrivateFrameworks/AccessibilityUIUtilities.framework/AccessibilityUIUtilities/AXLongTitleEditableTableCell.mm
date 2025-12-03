@interface AXLongTitleEditableTableCell
- (AXLongTitleEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation AXLongTitleEditableTableCell

- (AXLongTitleEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = AXLongTitleEditableTableCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setNumberOfLines:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AXLongTitleEditableTableCell;
  [(PSEditableTableCell *)&v47 layoutSubviews];
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length];

  if (v5)
  {
    traitCollection = [(AXLongTitleEditableTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (!IsAccessibilityCategory)
    {
      editableTextField = [(AXLongTitleEditableTableCell *)self editableTextField];
      [editableTextField frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v48 = *MEMORY[0x1E69DB648];
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v49[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];

      text2 = [editableTextField text];
      [text2 sizeWithAttributes:v19];
      v22 = v21;

      if (v22 <= v15)
      {
        [editableTextField setAdjustsFontSizeToFitWidth:1];
      }

      else
      {
        v46 = v13;
        v23 = v22 - v15;
        contentView = [(AXLongTitleEditableTableCell *)self contentView];
        [contentView bounds];
        v26 = v25;
        v28 = v27;

        titleLabel2 = [(PSTableCell *)self titleLabel];
        [titleLabel2 frame];
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

        [editableTextField setAdjustsFontSizeToFitWidth:0];
        v35 = v33 - v34;
        titleLabel3 = [(PSTableCell *)self titleLabel];
        [titleLabel3 sizeThatFits:{v34, v28}];
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

        titleLabel4 = [(PSTableCell *)self titleLabel];
        [titleLabel4 setNumberOfLines:0];

        titleLabel5 = [(PSTableCell *)self titleLabel];
        [titleLabel5 setFrame:{v31, v42, v38, v40}];

        [editableTextField setFrame:{v11, v46, v43, v17}];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v42[1] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AXLongTitleEditableTableCell;
  [(AXLongTitleEditableTableCell *)&v40 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  v10 = [text length];

  if (v10)
  {
    traitCollection = [(AXLongTitleEditableTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (!IsAccessibilityCategory)
    {
      contentView = [(AXLongTitleEditableTableCell *)self contentView];
      [contentView sizeThatFits:{v5, v7}];
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

      editableTextField = [(AXLongTitleEditableTableCell *)self editableTextField];
      text2 = [editableTextField text];
      [text2 sizeWithAttributes:v24];
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

      titleLabel2 = [(PSTableCell *)self titleLabel];
      [titleLabel2 sizeThatFits:{v31, v18}];
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