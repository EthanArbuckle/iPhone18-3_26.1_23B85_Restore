@interface _UIFontPickerTableViewCell
- (void)setFontInfo:(id)info usingSystemFont:(BOOL)font;
@end

@implementation _UIFontPickerTableViewCell

- (void)setFontInfo:(id)info usingSystemFont:(BOOL)font
{
  infoCopy = info;
  defaultContentConfiguration = [(_UIFontPickerTableViewCell *)self defaultContentConfiguration];
  if (font)
  {
    previewImage = [infoCopy previewImage];
    [defaultContentConfiguration setImage:previewImage];

    v8 = +[UIColor labelColor];
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setTintColor:v8];

    [defaultContentConfiguration setImageToTextPadding:10.0];
    [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:0];
    [defaultContentConfiguration setDirectionalLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  }

  else
  {
    if (([infoCopy fontCanRenderLocalizedName] & 1) == 0)
    {
      traitCollection = [(_UIFontPickerTableViewCell *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 6)
      {
        v12 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
        v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v12];

        [v13 lineHeight];
        [defaultContentConfiguration setDirectionalLayoutMargins:{v14 * 0.5, 0.0, v14 * 0.5, 0.0}];
      }
    }

    if ([infoCopy fontCanRenderLocalizedName])
    {
      attributedString = [infoCopy attributedString];
      [defaultContentConfiguration setAttributedText:attributedString];

      [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:1];
      [defaultContentConfiguration setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      goto LABEL_9;
    }
  }

  localizedName = [infoCopy localizedName];
  [defaultContentConfiguration setText:localizedName];

LABEL_9:
  [(_UIFontPickerTableViewCell *)self setContentConfiguration:defaultContentConfiguration];
}

@end