@interface _UIFontPickerTableViewCell
- (void)setFontInfo:(id)a3 usingSystemFont:(BOOL)a4;
@end

@implementation _UIFontPickerTableViewCell

- (void)setFontInfo:(id)a3 usingSystemFont:(BOOL)a4
{
  v17 = a3;
  v6 = [(_UIFontPickerTableViewCell *)self defaultContentConfiguration];
  if (a4)
  {
    v7 = [v17 previewImage];
    [v6 setImage:v7];

    v8 = +[UIColor labelColor];
    v9 = [v6 imageProperties];
    [v9 setTintColor:v8];

    [v6 setImageToTextPadding:10.0];
    [v6 setAxesPreservingSuperviewLayoutMargins:0];
    [v6 setDirectionalLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  }

  else
  {
    if (([v17 fontCanRenderLocalizedName] & 1) == 0)
    {
      v10 = [(_UIFontPickerTableViewCell *)self traitCollection];
      v11 = [v10 userInterfaceIdiom];

      if (v11 == 6)
      {
        v12 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
        v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v12];

        [v13 lineHeight];
        [v6 setDirectionalLayoutMargins:{v14 * 0.5, 0.0, v14 * 0.5, 0.0}];
      }
    }

    if ([v17 fontCanRenderLocalizedName])
    {
      v15 = [v17 attributedString];
      [v6 setAttributedText:v15];

      [v6 setAxesPreservingSuperviewLayoutMargins:1];
      [v6 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      goto LABEL_9;
    }
  }

  v16 = [v17 localizedName];
  [v6 setText:v16];

LABEL_9:
  [(_UIFontPickerTableViewCell *)self setContentConfiguration:v6];
}

@end